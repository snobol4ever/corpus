                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__sel$2F3:
                        sub              rsp, 1280
                        mov              qword ptr [rsp + 1256], rcx
                        mov              qword ptr [rsp + 1264], rdx
                        mov              qword ptr [rsp + 1272], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
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
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n1_lit_string_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_33_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n2_var_ref_α
.Llit_string_α_33_0:    .quad            .Llit_string_α_33_0_s
.Llit_string_α_33_0_s:  .string          "."
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_var_ref_bx, @function
n2_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n3_var_ref_α
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n4_call_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_call_bx, @function
n4_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:              mov              r11, 5
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 344]
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
                        cmp              al, 104;                             je    sel$2F3_step
                                                                              jmp   n5_call_α
n4_call_β:              mov              r11, 5;                              jmp   sel$2F3_step
                        .size            n4_call_bx, .-n4_call_bx
                        .type            n5_call_bx, @function
n5_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:              mov              r11, 6
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 376]
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
                        cmp              al, 104;                             je    sel$2F3_step
                                                                              jmp   n6_var_ref_α
n5_call_β:              mov              r11, 6;                              jmp   sel$2F3_step
                        .size            n5_call_bx, .-n5_call_bx
                        .type            n6_var_ref_bx, @function
n6_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n7_var_ref_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n8_call_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_call_bx, @function
n8_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:              mov              r11, 9
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
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
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n13_lit_string_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_lit_string_bx, @function
n13_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rbp + 1104], 2            # result
                        mov              dword ptr [rbp + 1108], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_52_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n14_var_ref_α
.Llit_string_α_52_0:    .quad            .Llit_string_α_52_0_s
.Llit_string_α_52_0_s:  .string          "."
                        .size            n13_lit_string_bx, .-n13_lit_string_bx
                        .type            n14_var_ref_bx, @function
n14_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n15_var_ref_α
                        .size            n14_var_ref_bx, .-n14_var_ref_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n16_call_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_call_bx, @function
n16_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_call_α:             mov              r11, 17
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    sel$2F3_step
                                                                              jmp   n17_call_α
n16_call_β:             mov              r11, 17;                             jmp   sel$2F3_step
                        .size            n16_call_bx, .-n16_call_bx
                        .type            n17_call_bx, @function
n17_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:             mov              r11, 18
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    sel$2F3_step
                                                                              jmp   n18_var_ref_α
n17_call_β:             mov              r11, 18;                             jmp   sel$2F3_step
                        .size            n17_call_bx, .-n17_call_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n19_lit_string_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_lit_string_bx, @function
n19_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_61_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n20_var_ref_α
.Llit_string_α_61_0:    .quad            .Llit_string_α_61_0_s
.Llit_string_α_61_0_s:  .string          "."
                        .size            n19_lit_string_bx, .-n19_lit_string_bx
                        .type            n20_var_ref_bx, @function
n20_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n21_var_ref_α
                        .size            n20_var_ref_bx, .-n20_var_ref_bx
                        .type            n21_var_ref_bx, @function
n21_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n22_call_α
                        .size            n21_var_ref_bx, .-n21_var_ref_bx
                        .type            n22_call_bx, @function
n22_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_call_α:             mov              r11, 23
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 792]
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
                        cmp              al, 104;                             je    sel$2F3_step
                                                                              jmp   n23_call_α
n22_call_β:             mov              r11, 23;                             jmp   sel$2F3_step
                        .size            n22_call_bx, .-n22_call_bx
                        .type            n23_call_bx, @function
n23_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_call_α:             mov              r11, 24
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
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
                        cmp              al, 104;                             je    sel$2F3_step
                                                                              jmp   n24_var_ref_α
n23_call_β:             mov              r11, 24;                             jmp   sel$2F3_step
                        .size            n23_call_bx, .-n23_call_bx
                        .type            n24_var_ref_bx, @function
n24_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n25_var_ref_α
                        .size            n24_var_ref_bx, .-n24_var_ref_bx
                        .type            n25_var_ref_bx, @function
n25_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n26_call_α
                        .size            n25_var_ref_bx, .-n25_var_ref_bx
                        .type            n26_call_bx, @function
n26_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_call_α:             mov              r11, 27
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
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
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n28_var_ref_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_var_ref_bx, @function
n28_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n29_var_ref_α
                        .size            n28_var_ref_bx, .-n28_var_ref_bx
                        .type            n29_var_ref_bx, @function
n29_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1120]
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
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1280]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_80_99
                        mov              r10, qword ptr [rbp + 1240]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_80_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_80_99
                        mov              rcx, qword ptr [rbp + 1256]
                        mov              rdx, qword ptr [rbp + 1264]
                        lea              rsp, [rbp + 1280]
                        mov              rbp, qword ptr [rbp + 1272];         jmp   rax
.Lcall_proc_staged_α_80_99:
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
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1144], 0
                        mov              qword ptr [rbp + 1120], 0
                        mov              qword ptr [rbp + 1128], 0
                        mov              qword ptr [rbp + 1184], 0
                        mov              qword ptr [rbp + 1192], 0
                        mov              qword ptr [rbp + 1152], 0
                        mov              qword ptr [rbp + 1160], 0
                        mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                        mov              rax, qword ptr [rbp + 1224]
                        test             rax, rax
                                                                              je    sel$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1224], rax
                        mov              r13, qword ptr [rbp + 1240]
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
FN__queens$2F3:
                        sub              rsp, 1312
                        mov              qword ptr [rsp + 1288], rcx
                        mov              qword ptr [rsp + 1296], rdx
                        mov              qword ptr [rsp + 1304], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1312]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1272], r13
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1248], r12
                        lea              rax, [rip + queens$2F3_alt1]
                        mov              qword ptr [rsp + 1256], rax
                        lea              rdi, [rsp + 1248]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 1152
                        mov              edx, 1248
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
queens$2F3_α_body:
                        .type            n81_var_ref_bx, @function
n81_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n82_lit_string_α
                        .size            n81_var_ref_bx, .-n81_var_ref_bx
                        .type            n82_lit_string_bx, @function
n82_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_115_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n83_call_α
.Llit_string_α_115_0:   .quad            .Llit_string_α_115_0_s
.Llit_string_α_115_0_s: .string          "[]"
                        .size            n82_lit_string_bx, .-n82_lit_string_bx
                        .type            n83_call_bx, @function
n83_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:             mov              r11, 34
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        mov              rsi, qword ptr [rip + .Lcall_α_116_2]
                                                                              jmp   .Lcall_α_116_3
.Lcall_α_116_2:         .quad            .Lcall_α_116_2_s
.Lcall_α_116_2_s:       .string          "[]"
.Lcall_α_116_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    queens$2F3_step
                                                                              jmp   n84_var_ref_α
n83_call_β:             mov              r11, 34;                             jmp   queens$2F3_step
                        .size            n83_call_bx, .-n83_call_bx
                        .type            n84_var_ref_bx, @function
n84_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n85_var_ref_α
                        .size            n84_var_ref_bx, .-n84_var_ref_bx
                        .type            n85_var_ref_bx, @function
n85_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n86_call_α
                        .size            n85_var_ref_bx, .-n85_var_ref_bx
                        .type            n86_call_bx, @function
n86_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:             mov              r11, 37
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
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
                        cmp              al, 104;                             je    queens$2F3_step
                                                                              jmp   n87_var_ref_α
n86_call_β:             mov              r11, 37;                             jmp   queens$2F3_step
                        .size            n86_call_bx, .-n86_call_bx
                        .type            n87_var_ref_bx, @function
n87_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n88_var_ref_α
                        .size            n87_var_ref_bx, .-n87_var_ref_bx
                        .type            n88_var_ref_bx, @function
n88_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n89_call_α
                        .size            n88_var_ref_bx, .-n88_var_ref_bx
                        .type            n89_call_bx, @function
n89_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_call_α:             mov              r11, 40
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
                        cmp              al, 104;                             je    queens$2F3_step
                                                                              jmp   queens$2F3_γ
n89_call_β:             mov              r11, 40;                             jmp   queens$2F3_step
                        .size            n89_call_bx, .-n89_call_bx
                        .type            n90_var_ref_bx, @function
n90_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n91_var_ref_α
                        .size            n90_var_ref_bx, .-n90_var_ref_bx
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n92_call_α
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_call_bx, @function
n92_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_call_α:             mov              r11, 43
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    queens$2F3_step
                                                                              jmp   n93_var_ref_α
n92_call_β:             mov              r11, 43;                             jmp   queens$2F3_step
                        .size            n92_call_bx, .-n92_call_bx
                        .type            n93_var_ref_bx, @function
n93_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n94_var_ref_α
                        .size            n93_var_ref_bx, .-n93_var_ref_bx
                        .type            n94_var_ref_bx, @function
n94_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n95_call_α
                        .size            n94_var_ref_bx, .-n94_var_ref_bx
                        .type            n95_call_bx, @function
n95_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_call_α:             mov              r11, 46
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              al, 104;                             je    queens$2F3_step
                                                                              jmp   n96_var_ref_α
n95_call_β:             mov              r11, 46;                             jmp   queens$2F3_step
                        .size            n95_call_bx, .-n95_call_bx
                        .type            n96_var_ref_bx, @function
n96_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n97_var_ref_α
                        .size            n96_var_ref_bx, .-n96_var_ref_bx
                        .type            n97_var_ref_bx, @function
n97_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:          mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n98_call_α
                        .size            n97_var_ref_bx, .-n97_var_ref_bx
                        .type            n98_call_bx, @function
n98_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_call_α:             mov              r11, 49
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    queens$2F3_step
                                                                              jmp   n99_var_ref_α
n98_call_β:             mov              r11, 49;                             jmp   queens$2F3_step
                        .size            n98_call_bx, .-n98_call_bx
                        .type            n99_var_ref_bx, @function
n99_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n100_var_ref_α
                        .size            n99_var_ref_bx, .-n99_var_ref_bx
                        .type            n100_var_ref_bx, @function
n100_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n101_var_ref_α
                        .size            n100_var_ref_bx, .-n100_var_ref_bx
                        .type            n101_var_ref_bx, @function
n101_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n102_call_proc_staged_α
                        .size            n101_var_ref_bx, .-n101_var_ref_bx
                        .type            n102_call_proc_staged_bx, @function
n102_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_call_proc_staged_α:
                        mov              r11, 53
                        mov              qword ptr [rbp + 784], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_149_200
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_149_201
.Lcall_proc_staged_α_149_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_149_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_149_202
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_149_203
.Lcall_proc_staged_α_149_202:
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
.Lcall_proc_staged_α_149_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_149_204
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_149_205
.Lcall_proc_staged_α_149_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_149_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_149_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_149_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_149_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_149_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_149_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_149_3:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_149_21
                        add              rsp, 32
.Lcall_proc_staged_α_149_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_149_2
.Lcall_proc_staged_α_149_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 784], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_149_2
.Lcall_proc_staged_α_149_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_149_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   queens$2F3_step
.Lcall_proc_staged_α_149_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_149_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
.Lcall_proc_staged_α_149_29:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    queens$2F3_step
                                                                              jmp   n103_var_ref_α
n102_call_proc_staged_β:
                        mov              r11, 53
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_149_22
                        mov              rax, qword ptr [rbp + 784]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_149_22
                        mov              rcx, qword ptr [rbp + 792]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_149_22:
                                                                              jmp   queens$2F3_step
.Lcall_proc_staged_α_149_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    queens$2F3_step
                                                                              jmp   n103_var_ref_α
.Lcall_proc_staged_α_149_0:
                        .quad            .Lcall_proc_staged_α_149_0_s
.Lcall_proc_staged_α_149_0_s:
                        .string          "sel/3"
                        .size            n102_call_proc_staged_bx, .-n102_call_proc_staged_bx
                        .type            n103_var_ref_bx, @function
n103_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:         mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n104_var_ref_α
                        .size            n103_var_ref_bx, .-n103_var_ref_bx
                        .type            n104_var_ref_bx, @function
n104_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:         mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n105_call_proc_staged_α
                        .size            n104_var_ref_bx, .-n104_var_ref_bx
                        .type            n105_call_proc_staged_bx, @function
n105_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_call_proc_staged_α:
                        mov              r11, 56
                        mov              qword ptr [rbp + 656], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_155_200
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_155_201
.Lcall_proc_staged_α_155_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_155_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_155_202
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_155_203
.Lcall_proc_staged_α_155_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_155_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_155_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_155_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_155_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_155_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_155_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_155_3:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_155_21
                        add              rsp, 32
.Lcall_proc_staged_α_155_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_155_2
.Lcall_proc_staged_α_155_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 656], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_155_2
.Lcall_proc_staged_α_155_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_155_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n102_call_proc_staged_β
.Lcall_proc_staged_α_155_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_155_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
.Lcall_proc_staged_α_155_29:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    n102_call_proc_staged_β
                                                                              jmp   n106_var_ref_α
n105_call_proc_staged_β:
                        mov              r11, 56
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_155_22
                        mov              rax, qword ptr [rbp + 656]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_155_22
                        mov              rcx, qword ptr [rbp + 664]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_155_22:
                                                                              jmp   n102_call_proc_staged_β
.Lcall_proc_staged_α_155_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    n102_call_proc_staged_β
                                                                              jmp   n106_var_ref_α
.Lcall_proc_staged_α_155_0:
                        .quad            .Lcall_proc_staged_α_155_0_s
.Lcall_proc_staged_α_155_0_s:
                        .string          "not_attack/2"
                        .size            n105_call_proc_staged_bx, .-n105_call_proc_staged_bx
                        .type            n106_var_ref_bx, @function
n106_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:         mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n107_lit_string_α
                        .size            n106_var_ref_bx, .-n106_var_ref_bx
                        .type            n107_lit_string_bx, @function
n107_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              r11, 58
                        mov              qword ptr [rbp + 576], 2             # result
                        mov              dword ptr [rbp + 580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_158_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n108_var_ref_α
.Llit_string_α_158_0:   .quad            .Llit_string_α_158_0_s
.Llit_string_α_158_0_s: .string          "."
                        .size            n107_lit_string_bx, .-n107_lit_string_bx
                        .type            n108_var_ref_bx, @function
n108_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n109_var_ref_α
                        .size            n108_var_ref_bx, .-n108_var_ref_bx
                        .type            n109_var_ref_bx, @function
n109_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:         mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n110_call_α
                        .size            n109_var_ref_bx, .-n109_var_ref_bx
                        .type            n110_call_bx, @function
n110_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_call_α:            mov              r11, 61
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    queens$2F3_step
                                                                              jmp   n111_var_ref_α
n110_call_β:            mov              r11, 61;                             jmp   queens$2F3_step
                        .size            n110_call_bx, .-n110_call_bx
                        .type            n111_var_ref_bx, @function
n111_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n112_call_proc_staged_α
                        .size            n111_var_ref_bx, .-n111_var_ref_bx
                        .type            n112_call_proc_staged_bx, @function
n112_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_call_proc_staged_α:
                        mov              r11, 63
                        mov              qword ptr [rbp + 416], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_167_200
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_167_201
.Lcall_proc_staged_α_167_200:
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
.Lcall_proc_staged_α_167_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_167_202
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_167_203
.Lcall_proc_staged_α_167_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_167_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_167_204
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_167_205
.Lcall_proc_staged_α_167_204:
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
.Lcall_proc_staged_α_167_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_167_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_167_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1312]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_167_99
                        mov              r10, qword ptr [rbp + 1272]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_167_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_167_99
                        mov              rcx, qword ptr [rbp + 1288]
                        mov              rdx, qword ptr [rbp + 1296]
                        lea              rsp, [rbp + 1312]
                        mov              rbp, qword ptr [rbp + 1304];         jmp   rax
.Lcall_proc_staged_α_167_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_167_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_167_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_167_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_167_3:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_167_21
                        add              rsp, 32
.Lcall_proc_staged_α_167_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_167_2
.Lcall_proc_staged_α_167_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 416], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_167_2
.Lcall_proc_staged_α_167_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_167_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n105_call_proc_staged_β
.Lcall_proc_staged_α_167_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_167_29
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
.Lcall_proc_staged_α_167_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n105_call_proc_staged_β
                                                                              jmp   queens$2F3_ret1
n112_call_proc_staged_β:
                        mov              r11, 63
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_167_22
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_167_22
                        mov              rcx, qword ptr [rbp + 424]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_167_22:
                                                                              jmp   n105_call_proc_staged_β
.Lcall_proc_staged_α_167_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n105_call_proc_staged_β
                                                                              jmp   queens$2F3_ret1
.Lcall_proc_staged_α_167_0:
                        .quad            .Lcall_proc_staged_α_167_0_s
.Lcall_proc_staged_α_167_0_s:
                        .string          "queens/3"
                        .size            n112_call_proc_staged_bx, .-n112_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
queens$2F3_ret1:
                        lea              rax, [rip + n112_call_proc_staged_β]
                        mov              qword ptr [rbp + 1264], rax
                                                                              jmp   queens$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
queens$2F3_step:
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1264], 0
                        mov              qword ptr [rbp + 1216], 0
                        mov              qword ptr [rbp + 1224], 0
                        mov              qword ptr [rbp + 1152], 0
                        mov              qword ptr [rbp + 1160], 0
                        mov              qword ptr [rbp + 1200], 0
                        mov              qword ptr [rbp + 1208], 0
                        mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                        mov              qword ptr [rbp + 1184], 0
                        mov              qword ptr [rbp + 1192], 0
                        mov              rax, qword ptr [rbp + 1256]
                        test             rax, rax
                                                                              je    queens$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
queens$2F3_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1256], rax
                        mov              r13, qword ptr [rbp + 1272]
                                                                              jmp   n90_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
queens$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
queens$2F3_β:
                        test             r15, r15
                                                                              jne   queens$2F3_ω
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1264], 0
                        test             rax, rax
                                                                              jne   queens$2F3_βres
                                                                              jmp   queens$2F3_step
queens$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
queens$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1288]
                        mov              rax, qword ptr [rbp + 1272]
                        cmp              r13, rax;                            je    queens$2F3_altdet
                        lea              rdx, [rip + queens$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1304];         jmp   rcx
queens$2F3_altdet:      xor              eax, eax
                        lea              rsp, [rbp + 1312]
                        mov              rbp, qword ptr [rbp + 1304];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
queens$2F3_ω:
                        mov              rcx, qword ptr [rbp + 1296]
                        mov              r13, qword ptr [rbp + 1272]
                        lea              rsp, [rbp + 1312]
                        mov              rbp, qword ptr [rbp + 1304];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__queens$2F2:
                        sub              rsp, 656
                        mov              qword ptr [rsp + 632], rcx
                        mov              qword ptr [rsp + 640], rdx
                        mov              qword ptr [rsp + 648], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 616], r13
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 592], r12
                        mov              rdi, rsp
                        mov              esi, 528
                        mov              edx, 592
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
queens$2F2_α_body:
                        .type            n168_var_ref_bx, @function
n168_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:         mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n169_var_ref_α
                        .size            n168_var_ref_bx, .-n168_var_ref_bx
                        .type            n169_var_ref_bx, @function
n169_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:         mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n170_call_α
                        .size            n169_var_ref_bx, .-n169_var_ref_bx
                        .type            n170_call_bx, @function
n170_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_call_α:            mov              r11, 66
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    queens$2F2_step
                                                                              jmp   n171_var_ref_α
n170_call_β:            mov              r11, 66;                             jmp   queens$2F2_step
                        .size            n170_call_bx, .-n170_call_bx
                        .type            n171_var_ref_bx, @function
n171_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:         mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n172_var_ref_α
                        .size            n171_var_ref_bx, .-n171_var_ref_bx
                        .type            n172_var_ref_bx, @function
n172_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:         mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n173_call_α
                        .size            n172_var_ref_bx, .-n172_var_ref_bx
                        .type            n173_call_bx, @function
n173_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_call_α:            mov              r11, 69
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    queens$2F2_step
                                                                              jmp   n174_lit_integer_α
n173_call_β:            mov              r11, 69;                             jmp   queens$2F2_step
                        .size            n173_call_bx, .-n173_call_bx
                        .type            n174_lit_integer_bx, @function
n174_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:     mov              r11, 70
                        mov              qword ptr [rbp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_192_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n175_var_ref_α
.Llit_integer_α_192_0:  .quad            1
                        .size            n174_lit_integer_bx, .-n174_lit_integer_bx
                        .type            n175_var_ref_bx, @function
n175_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n176_var_ref_α
                        .size            n175_var_ref_bx, .-n175_var_ref_bx
                        .type            n176_var_ref_bx, @function
n176_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:         mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n177_call_proc_staged_α
                        .size            n176_var_ref_bx, .-n176_var_ref_bx
                        .type            n177_call_proc_staged_bx, @function
n177_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_call_proc_staged_α:
                        mov              r11, 73
                        mov              qword ptr [rbp + 256], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_198_200
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_198_201
.Lcall_proc_staged_α_198_200:
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
.Lcall_proc_staged_α_198_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_198_202
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_198_203
.Lcall_proc_staged_α_198_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_198_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_198_204
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_198_205
.Lcall_proc_staged_α_198_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_198_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_198_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_198_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_198_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_198_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_198_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_198_3:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_198_21
                        add              rsp, 32
.Lcall_proc_staged_α_198_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_198_2
.Lcall_proc_staged_α_198_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 256], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_198_2
.Lcall_proc_staged_α_198_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_198_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   queens$2F2_step
.Lcall_proc_staged_α_198_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_198_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
.Lcall_proc_staged_α_198_29:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    queens$2F2_step
                                                                              jmp   n178_var_ref_α
n177_call_proc_staged_β:
                        mov              r11, 73
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_198_22
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_198_22
                        mov              rcx, qword ptr [rbp + 264]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_198_22:
                                                                              jmp   queens$2F2_step
.Lcall_proc_staged_α_198_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    queens$2F2_step
                                                                              jmp   n178_var_ref_α
.Lcall_proc_staged_α_198_0:
                        .quad            .Lcall_proc_staged_α_198_0_s
.Lcall_proc_staged_α_198_0_s:
                        .string          "range/3"
                        .size            n177_call_proc_staged_bx, .-n177_call_proc_staged_bx
                        .type            n178_var_ref_bx, @function
n178_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n179_lit_string_α
                        .size            n178_var_ref_bx, .-n178_var_ref_bx
                        .type            n179_lit_string_bx, @function
n179_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:      mov              r11, 75
                        mov              qword ptr [rbp + 160], 2             # result
                        mov              dword ptr [rbp + 164], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_201_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n180_var_ref_α
.Llit_string_α_201_0:   .quad            .Llit_string_α_201_0_s
.Llit_string_α_201_0_s: .string          "[]"
                        .size            n179_lit_string_bx, .-n179_lit_string_bx
                        .type            n180_var_ref_bx, @function
n180_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n181_call_proc_staged_α
                        .size            n180_var_ref_bx, .-n180_var_ref_bx
                        .type            n181_call_proc_staged_bx, @function
n181_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_call_proc_staged_α:
                        mov              r11, 77
                        mov              qword ptr [rbp + 112], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_205_200
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_205_201
.Lcall_proc_staged_α_205_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_205_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_205_202
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_205_203
.Lcall_proc_staged_α_205_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_205_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_205_204
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_205_205
.Lcall_proc_staged_α_205_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_205_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_205_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_205_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 656]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_205_99
                        mov              r10, qword ptr [rbp + 616]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_205_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_205_99
                        mov              rcx, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 640]
                        lea              rsp, [rbp + 656]
                        mov              rbp, qword ptr [rbp + 648];          jmp   rax
.Lcall_proc_staged_α_205_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_205_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_205_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_205_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_205_3:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_205_21
                        add              rsp, 32
.Lcall_proc_staged_α_205_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_205_2
.Lcall_proc_staged_α_205_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 112], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_205_2
.Lcall_proc_staged_α_205_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_205_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n177_call_proc_staged_β
.Lcall_proc_staged_α_205_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_205_29
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
.Lcall_proc_staged_α_205_29:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n177_call_proc_staged_β
                                                                              jmp   queens$2F2_ret0
n181_call_proc_staged_β:
                        mov              r11, 77
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_205_22
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_205_22
                        mov              rcx, qword ptr [rbp + 120]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_205_22:
                                                                              jmp   n177_call_proc_staged_β
.Lcall_proc_staged_α_205_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n177_call_proc_staged_β
                                                                              jmp   queens$2F2_ret0
.Lcall_proc_staged_α_205_0:
                        .quad            .Lcall_proc_staged_α_205_0_s
.Lcall_proc_staged_α_205_0_s:
                        .string          "queens/3"
                        .size            n181_call_proc_staged_bx, .-n181_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_ret0:
                        lea              rax, [rip + n181_call_proc_staged_β]
                        mov              qword ptr [rbp + 608], rax
                                                                              jmp   queens$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_step:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], 0
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                        mov              rax, qword ptr [rbp + 600]
                        test             rax, rax
                                                                              je    queens$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_β:
                        test             r15, r15
                                                                              jne   queens$2F2_ω
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 608], 0
                        test             rax, rax
                                                                              jne   queens$2F2_βres
                                                                              jmp   queens$2F2_step
queens$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 632]
                        mov              rax, qword ptr [rbp + 616]
                        cmp              r13, rax;                            je    queens$2F2_altdet
                        lea              rdx, [rip + queens$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 648];          jmp   rcx
queens$2F2_altdet:      xor              eax, eax
                        lea              rsp, [rbp + 656]
                        mov              rbp, qword ptr [rbp + 648];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_ω:
                        mov              rcx, qword ptr [rbp + 640]
                        mov              r13, qword ptr [rbp + 616]
                        lea              rsp, [rbp + 656]
                        mov              rbp, qword ptr [rbp + 648];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__range$2F3:
                        sub              rsp, 1568
                        mov              qword ptr [rsp + 1544], rcx
                        mov              qword ptr [rsp + 1552], rdx
                        mov              qword ptr [rsp + 1560], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1568]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1528], r13
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1504], r12
                        lea              rax, [rip + range$2F3_alt1]
                        mov              qword ptr [rsp + 1512], rax
                        lea              rdi, [rsp + 1504]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 1424
                        mov              edx, 1504
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
range$2F3_α_body:
                        .type            n206_var_ref_bx, @function
n206_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n207_var_ref_α
                        .size            n206_var_ref_bx, .-n206_var_ref_bx
                        .type            n207_var_ref_bx, @function
n207_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n208_call_α
                        .size            n207_var_ref_bx, .-n207_var_ref_bx
                        .type            n208_call_bx, @function
n208_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_call_α:            mov              r11, 80
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
                        cmp              al, 104;                             je    range$2F3_step
                                                                              jmp   n209_var_ref_α
n208_call_β:            mov              r11, 80;                             jmp   range$2F3_step
                        .size            n208_call_bx, .-n208_call_bx
                        .type            n209_var_ref_bx, @function
n209_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n210_var_ref_α
                        .size            n209_var_ref_bx, .-n209_var_ref_bx
                        .type            n210_var_ref_bx, @function
n210_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n211_call_α
                        .size            n210_var_ref_bx, .-n210_var_ref_bx
                        .type            n211_call_bx, @function
n211_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_call_α:            mov              r11, 83
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
                        cmp              al, 104;                             je    range$2F3_step
                                                                              jmp   n212_var_ref_α
n211_call_β:            mov              r11, 83;                             jmp   range$2F3_step
                        .size            n211_call_bx, .-n211_call_bx
                        .type            n212_var_ref_bx, @function
n212_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n213_lit_string_α
                        .size            n212_var_ref_bx, .-n212_var_ref_bx
                        .type            n213_lit_string_bx, @function
n213_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:      mov              r11, 85
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_258_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n214_var_ref_α
.Llit_string_α_258_0:   .quad            .Llit_string_α_258_0_s
.Llit_string_α_258_0_s: .string          "."
                        .size            n213_lit_string_bx, .-n213_lit_string_bx
                        .type            n214_var_ref_bx, @function
n214_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n215_lit_string_α
                        .size            n214_var_ref_bx, .-n214_var_ref_bx
                        .type            n215_lit_string_bx, @function
n215_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      mov              r11, 87
                        mov              qword ptr [rbp + 144], 2             # result
                        mov              dword ptr [rbp + 148], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_261_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n216_call_α
.Llit_string_α_261_0:   .quad            .Llit_string_α_261_0_s
.Llit_string_α_261_0_s: .string          "[]"
                        .size            n215_lit_string_bx, .-n215_lit_string_bx
                        .type            n216_call_bx, @function
n216_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_call_α:            mov              r11, 88
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
                        cmp              al, 104;                             je    range$2F3_step
                                                                              jmp   n217_call_α
n216_call_β:            mov              r11, 88;                             jmp   range$2F3_step
                        .size            n216_call_bx, .-n216_call_bx
                        .type            n217_call_bx, @function
n217_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_call_α:            mov              r11, 89
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
                        cmp              al, 104;                             je    range$2F3_step
                                                                              jmp   n218_cut_α
n217_call_β:            mov              r11, 89;                             jmp   range$2F3_step
                        .size            n217_call_bx, .-n217_call_bx
                        .type            n218_cut_bx, @function
n218_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_cut_α:             mov              r11, 90
                        mov              qword ptr [rbp + 1512], 0
                        mov              qword ptr [rbp + 1520], 0
                        lea              rdi, [rbp + 1504]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   range$2F3_γ
                        .size            n218_cut_bx, .-n218_cut_bx
                        .type            n219_var_ref_bx, @function
n219_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx;         jmp   n220_var_ref_α
                        .size            n219_var_ref_bx, .-n219_var_ref_bx
                        .type            n220_var_ref_bx, @function
n220_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n221_call_α
                        .size            n220_var_ref_bx, .-n220_var_ref_bx
                        .type            n221_call_bx, @function
n221_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_call_α:            mov              r11, 93
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              al, 104;                             je    range$2F3_step
                                                                              jmp   n222_var_ref_α
n221_call_β:            mov              r11, 93;                             jmp   range$2F3_step
                        .size            n221_call_bx, .-n221_call_bx
                        .type            n222_var_ref_bx, @function
n222_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n223_var_ref_α
                        .size            n222_var_ref_bx, .-n222_var_ref_bx
                        .type            n223_var_ref_bx, @function
n223_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:         mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n224_call_α
                        .size            n223_var_ref_bx, .-n223_var_ref_bx
                        .type            n224_call_bx, @function
n224_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_call_α:            mov              r11, 96
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1320]
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
                        cmp              al, 104;                             je    range$2F3_step
                                                                              jmp   n225_var_ref_α
n224_call_β:            mov              r11, 96;                             jmp   range$2F3_step
                        .size            n224_call_bx, .-n224_call_bx
                        .type            n225_var_ref_bx, @function
n225_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n226_lit_string_α
                        .size            n225_var_ref_bx, .-n225_var_ref_bx
                        .type            n226_lit_string_bx, @function
n226_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:      mov              r11, 98
                        mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_278_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n227_var_ref_α
.Llit_string_α_278_0:   .quad            .Llit_string_α_278_0_s
.Llit_string_α_278_0_s: .string          "."
                        .size            n226_lit_string_bx, .-n226_lit_string_bx
                        .type            n227_var_ref_bx, @function
n227_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n228_var_ref_α
                        .size            n227_var_ref_bx, .-n227_var_ref_bx
                        .type            n228_var_ref_bx, @function
n228_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:         mov              r11, 100
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1472]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n229_call_α
                        .size            n228_var_ref_bx, .-n228_var_ref_bx
                        .type            n229_call_bx, @function
n229_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_call_α:            mov              r11, 101
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
                        cmp              al, 104;                             je    range$2F3_step
                                                                              jmp   n230_call_α
n229_call_β:            mov              r11, 101;                            jmp   range$2F3_step
                        .size            n229_call_bx, .-n229_call_bx
                        .type            n230_call_bx, @function
n230_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_call_α:            mov              r11, 102
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
                        cmp              al, 104;                             je    range$2F3_step
                                                                              jmp   n231_var_α
n230_call_β:            mov              r11, 102;                            jmp   range$2F3_step
                        .size            n230_call_bx, .-n230_call_bx
                        .type            n231_var_bx, @function
n231_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             mov              r11, 103
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 904], rax;          jmp   n232_call_α
                        .size            n231_var_bx, .-n231_var_bx
                        .type            n232_call_bx, @function
n232_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_call_α:            mov              r11, 104
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    range$2F3_step
                                                                              jmp   n233_var_α
n232_call_β:            mov              r11, 104;                            jmp   range$2F3_step
                        .size            n232_call_bx, .-n232_call_bx
                        .type            n233_var_bx, @function
n233_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             mov              r11, 105
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 920], rax;          jmp   n234_call_α
                        .size            n233_var_bx, .-n233_var_bx
                        .type            n234_call_bx, @function
n234_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_call_α:            mov              r11, 106
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    range$2F3_step
                                                                              jmp   n235_call_α
n234_call_β:            mov              r11, 106;                            jmp   range$2F3_step
                        .size            n234_call_bx, .-n234_call_bx
                        .type            n235_call_bx, @function
n235_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_call_α:            mov              r11, 107
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
                        call             rt_pl_dop_cmp_lt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    range$2F3_step
                                                                              jmp   n236_var_ref_α
n235_call_β:            mov              r11, 107;                            jmp   range$2F3_step
                        .size            n235_call_bx, .-n235_call_bx
                        .type            n236_var_ref_bx, @function
n236_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n237_var_α
                        .size            n236_var_ref_bx, .-n236_var_ref_bx
                        .type            n237_var_bx, @function
n237_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:             mov              r11, 109
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 760], rax;          jmp   n238_lit_integer_α
                        .size            n237_var_bx, .-n237_var_bx
                        .type            n238_lit_integer_bx, @function
n238_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_integer_α:     mov              r11, 110
                        mov              qword ptr [rbp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_296_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n239_call_α
.Llit_integer_α_296_0:  .quad            1
                        .size            n238_lit_integer_bx, .-n238_lit_integer_bx
                        .type            n239_call_bx, @function
n239_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_call_α:            mov              r11, 111
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    range$2F3_step
                                                                              jmp   n240_call_α
n239_call_β:            mov              r11, 111;                            jmp   range$2F3_step
                        .size            n239_call_bx, .-n239_call_bx
                        .type            n240_call_bx, @function
n240_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_call_α:            mov              r11, 112
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    range$2F3_step
                                                                              jmp   n241_call_α
n240_call_β:            mov              r11, 112;                            jmp   range$2F3_step
                        .size            n240_call_bx, .-n240_call_bx
                        .type            n241_call_bx, @function
n241_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_call_α:            mov              r11, 113
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    range$2F3_step
                                                                              jmp   n242_var_ref_α
n241_call_β:            mov              r11, 113;                            jmp   range$2F3_step
                        .size            n241_call_bx, .-n241_call_bx
                        .type            n242_var_ref_bx, @function
n242_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n243_var_ref_α
                        .size            n242_var_ref_bx, .-n242_var_ref_bx
                        .type            n243_var_ref_bx, @function
n243_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n244_var_ref_α
                        .size            n243_var_ref_bx, .-n243_var_ref_bx
                        .type            n244_var_ref_bx, @function
n244_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1472]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n245_call_proc_staged_α
                        .size            n244_var_ref_bx, .-n244_var_ref_bx
                        .type            n245_call_proc_staged_bx, @function
n245_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_call_proc_staged_α:
                        mov              r11, 117
                        mov              qword ptr [rbp + 528], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_307_200
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_307_201
.Lcall_proc_staged_α_307_200:
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
.Lcall_proc_staged_α_307_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_307_202
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_307_203
.Lcall_proc_staged_α_307_202:
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
.Lcall_proc_staged_α_307_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_307_204
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_307_205
.Lcall_proc_staged_α_307_204:
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
.Lcall_proc_staged_α_307_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_307_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_307_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1568]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_307_99
                        mov              r10, qword ptr [rbp + 1528]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_307_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_307_99
                        mov              rcx, qword ptr [rbp + 1544]
                        mov              rdx, qword ptr [rbp + 1552]
                        lea              rsp, [rbp + 1568]
                        mov              rbp, qword ptr [rbp + 1560];         jmp   rax
.Lcall_proc_staged_α_307_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_307_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_307_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_307_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_307_3:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_307_21
                        add              rsp, 32
.Lcall_proc_staged_α_307_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_307_2
.Lcall_proc_staged_α_307_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 528], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_307_2
.Lcall_proc_staged_α_307_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_307_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   range$2F3_step
.Lcall_proc_staged_α_307_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_307_29
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
.Lcall_proc_staged_α_307_29:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    range$2F3_step
                                                                              jmp   range$2F3_ret1
n245_call_proc_staged_β:
                        mov              r11, 117
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_307_22
                        mov              rax, qword ptr [rbp + 528]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_307_22
                        mov              rcx, qword ptr [rbp + 536]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_307_22:
                                                                              jmp   range$2F3_step
.Lcall_proc_staged_α_307_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    range$2F3_step
                                                                              jmp   range$2F3_ret1
.Lcall_proc_staged_α_307_0:
                        .quad            .Lcall_proc_staged_α_307_0_s
.Lcall_proc_staged_α_307_0_s:
                        .string          "range/3"
                        .size            n245_call_proc_staged_bx, .-n245_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
range$2F3_ret1:
                        lea              rax, [rip + n245_call_proc_staged_β]
                        mov              qword ptr [rbp + 1520], rax
                                                                              jmp   range$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
range$2F3_step:
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1520], 0
                        mov              qword ptr [rbp + 1424], 0
                        mov              qword ptr [rbp + 1432], 0
                        mov              qword ptr [rbp + 1456], 0
                        mov              qword ptr [rbp + 1464], 0
                        mov              qword ptr [rbp + 1472], 0
                        mov              qword ptr [rbp + 1480], 0
                        mov              qword ptr [rbp + 1440], 0
                        mov              qword ptr [rbp + 1448], 0
                        mov              rax, qword ptr [rbp + 1512]
                        test             rax, rax
                                                                              je    range$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
range$2F3_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1512], rax
                        mov              r13, qword ptr [rbp + 1528]
                                                                              jmp   n219_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
range$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
range$2F3_β:
                        test             r15, r15
                                                                              jne   range$2F3_ω
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1520], 0
                        test             rax, rax
                                                                              jne   range$2F3_βres
                                                                              jmp   range$2F3_step
range$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
range$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1544]
                        mov              rax, qword ptr [rbp + 1528]
                        cmp              r13, rax;                            je    range$2F3_altdet
                        lea              rdx, [rip + range$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1560];         jmp   rcx
range$2F3_altdet:       xor              eax, eax
                        lea              rsp, [rbp + 1568]
                        mov              rbp, qword ptr [rbp + 1560];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
range$2F3_ω:
                        mov              rcx, qword ptr [rbp + 1552]
                        mov              r13, qword ptr [rbp + 1528]
                        lea              rsp, [rbp + 1568]
                        mov              rbp, qword ptr [rbp + 1560];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__not_attack$2F2:
                        sub              rsp, 496
                        mov              qword ptr [rsp + 472], rcx
                        mov              qword ptr [rsp + 480], rdx
                        mov              qword ptr [rsp + 488], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 456], r13
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 432], r12
                        mov              rdi, rsp
                        mov              esi, 384
                        mov              edx, 432
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
not_attack$2F2_α_body:
                        .type            n308_var_ref_bx, @function
n308_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n309_var_ref_α
                        .size            n308_var_ref_bx, .-n308_var_ref_bx
                        .type            n309_var_ref_bx, @function
n309_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n310_call_α
                        .size            n309_var_ref_bx, .-n309_var_ref_bx
                        .type            n310_call_bx, @function
n310_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_call_α:            mov              r11, 120
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
                        cmp              al, 104;                             je    not_attack$2F2_step
                                                                              jmp   n311_var_ref_α
n310_call_β:            mov              r11, 120;                            jmp   not_attack$2F2_step
                        .size            n310_call_bx, .-n310_call_bx
                        .type            n311_var_ref_bx, @function
n311_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n312_var_ref_α
                        .size            n311_var_ref_bx, .-n311_var_ref_bx
                        .type            n312_var_ref_bx, @function
n312_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n313_call_α
                        .size            n312_var_ref_bx, .-n312_var_ref_bx
                        .type            n313_call_bx, @function
n313_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_call_α:            mov              r11, 123
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    not_attack$2F2_step
                                                                              jmp   n314_var_ref_α
n313_call_β:            mov              r11, 123;                            jmp   not_attack$2F2_step
                        .size            n313_call_bx, .-n313_call_bx
                        .type            n314_var_ref_bx, @function
n314_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 384]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n315_var_ref_α
                        .size            n314_var_ref_bx, .-n314_var_ref_bx
                        .type            n315_var_ref_bx, @function
n315_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n316_lit_integer_α
                        .size            n315_var_ref_bx, .-n315_var_ref_bx
                        .type            n316_lit_integer_bx, @function
n316_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_integer_α:     mov              r11, 126
                        mov              qword ptr [rbp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_332_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n317_call_proc_staged_α
.Llit_integer_α_332_0:  .quad            1
                        .size            n316_lit_integer_bx, .-n316_lit_integer_bx
                        .type            n317_call_proc_staged_bx, @function
n317_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_call_proc_staged_α:
                        mov              r11, 127
                        mov              qword ptr [rbp + 112], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_334_200
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_334_201
.Lcall_proc_staged_α_334_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_334_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_334_202
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_334_203
.Lcall_proc_staged_α_334_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_334_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_334_204
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_334_205
.Lcall_proc_staged_α_334_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_334_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_334_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_334_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 496]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_334_99
                        mov              r10, qword ptr [rbp + 456]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_334_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_334_99
                        mov              rcx, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 480]
                        lea              rsp, [rbp + 496]
                        mov              rbp, qword ptr [rbp + 488];          jmp   rax
.Lcall_proc_staged_α_334_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_334_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_334_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_334_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_334_3:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_334_21
                        add              rsp, 32
.Lcall_proc_staged_α_334_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_334_2
.Lcall_proc_staged_α_334_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 112], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_334_2
.Lcall_proc_staged_α_334_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_334_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   not_attack$2F2_step
.Lcall_proc_staged_α_334_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_334_29
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
.Lcall_proc_staged_α_334_29:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    not_attack$2F2_step
                                                                              jmp   not_attack$2F2_ret0
n317_call_proc_staged_β:
                        mov              r11, 127
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_334_22
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_334_22
                        mov              rcx, qword ptr [rbp + 120]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_334_22:
                                                                              jmp   not_attack$2F2_step
.Lcall_proc_staged_α_334_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    not_attack$2F2_step
                                                                              jmp   not_attack$2F2_ret0
.Lcall_proc_staged_α_334_0:
                        .quad            .Lcall_proc_staged_α_334_0_s
.Lcall_proc_staged_α_334_0_s:
                        .string          "not_attack/3"
                        .size            n317_call_proc_staged_bx, .-n317_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_ret0:
                        lea              rax, [rip + n317_call_proc_staged_β]
                        mov              qword ptr [rbp + 448], rax
                                                                              jmp   not_attack$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_step:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 448], 0
                        mov              qword ptr [rbp + 384], 0
                        mov              qword ptr [rbp + 392], 0
                        mov              qword ptr [rbp + 400], 0
                        mov              qword ptr [rbp + 408], 0
                        mov              rax, qword ptr [rbp + 440]
                        test             rax, rax
                                                                              je    not_attack$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_β:
                        test             r15, r15
                                                                              jne   not_attack$2F2_ω
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 448], 0
                        test             rax, rax
                                                                              jne   not_attack$2F2_βres
                                                                              jmp   not_attack$2F2_step
not_attack$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 472]
                        mov              rax, qword ptr [rbp + 456]
                        cmp              r13, rax;                            je    not_attack$2F2_altdet
                        lea              rdx, [rip + not_attack$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 488];          jmp   rcx
not_attack$2F2_altdet:  xor              eax, eax
                        lea              rsp, [rbp + 496]
                        mov              rbp, qword ptr [rbp + 488];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_ω:
                        mov              rcx, qword ptr [rbp + 480]
                        mov              r13, qword ptr [rbp + 456]
                        lea              rsp, [rbp + 496]
                        mov              rbp, qword ptr [rbp + 488];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__not_attack$2F3:
                        sub              rsp, 1824
                        mov              qword ptr [rsp + 1800], rcx
                        mov              qword ptr [rsp + 1808], rdx
                        mov              qword ptr [rsp + 1816], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1824]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1784], r13
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1760], r12
                        lea              rax, [rip + not_attack$2F3_alt1]
                        mov              qword ptr [rsp + 1768], rax
                        lea              rdi, [rsp + 1760]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 1664
                        mov              edx, 1760
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
not_attack$2F3_α_body:
                        .type            n335_var_ref_bx, @function
n335_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n336_lit_string_α
                        .size            n335_var_ref_bx, .-n335_var_ref_bx
                        .type            n336_lit_string_bx, @function
n336_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:      mov              r11, 129
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_382_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n337_call_α
.Llit_string_α_382_0:   .quad            .Llit_string_α_382_0_s
.Llit_string_α_382_0_s: .string          "[]"
                        .size            n336_lit_string_bx, .-n336_lit_string_bx
                        .type            n337_call_bx, @function
n337_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_call_α:            mov              r11, 130
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        mov              rsi, qword ptr [rip + .Lcall_α_383_2]
                                                                              jmp   .Lcall_α_383_3
.Lcall_α_383_2:         .quad            .Lcall_α_383_2_s
.Lcall_α_383_2_s:       .string          "[]"
.Lcall_α_383_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   n338_var_ref_α
n337_call_β:            mov              r11, 130;                            jmp   not_attack$2F3_step
                        .size            n337_call_bx, .-n337_call_bx
                        .type            n338_var_ref_bx, @function
n338_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n339_var_ref_α
                        .size            n338_var_ref_bx, .-n338_var_ref_bx
                        .type            n339_var_ref_bx, @function
n339_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n340_call_α
                        .size            n339_var_ref_bx, .-n339_var_ref_bx
                        .type            n340_call_bx, @function
n340_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_call_α:            mov              r11, 133
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
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
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   n341_var_ref_α
n340_call_β:            mov              r11, 133;                            jmp   not_attack$2F3_step
                        .size            n340_call_bx, .-n340_call_bx
                        .type            n341_var_ref_bx, @function
n341_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n342_var_ref_α
                        .size            n341_var_ref_bx, .-n341_var_ref_bx
                        .type            n342_var_ref_bx, @function
n342_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n343_call_α
                        .size            n342_var_ref_bx, .-n342_var_ref_bx
                        .type            n343_call_bx, @function
n343_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_call_α:            mov              r11, 136
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
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   not_attack$2F3_γ
n343_call_β:            mov              r11, 136;                            jmp   not_attack$2F3_step
                        .size            n343_call_bx, .-n343_call_bx
                        .type            n344_var_ref_bx, @function
n344_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n345_lit_string_α
                        .size            n344_var_ref_bx, .-n344_var_ref_bx
                        .type            n345_lit_string_bx, @function
n345_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_string_α:      mov              r11, 138
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_396_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n346_var_ref_α
.Llit_string_α_396_0:   .quad            .Llit_string_α_396_0_s
.Llit_string_α_396_0_s: .string          "."
                        .size            n345_lit_string_bx, .-n345_lit_string_bx
                        .type            n346_var_ref_bx, @function
n346_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n347_var_ref_α
                        .size            n346_var_ref_bx, .-n346_var_ref_bx
                        .type            n347_var_ref_bx, @function
n347_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx;         jmp   n348_call_α
                        .size            n347_var_ref_bx, .-n347_var_ref_bx
                        .type            n348_call_bx, @function
n348_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_call_α:            mov              r11, 141
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1544]
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
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   n349_call_α
n348_call_β:            mov              r11, 141;                            jmp   not_attack$2F3_step
                        .size            n348_call_bx, .-n348_call_bx
                        .type            n349_call_bx, @function
n349_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_call_α:            mov              r11, 142
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1576]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   n350_var_ref_α
n349_call_β:            mov              r11, 142;                            jmp   not_attack$2F3_step
                        .size            n349_call_bx, .-n349_call_bx
                        .type            n350_var_ref_bx, @function
n350_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n351_var_ref_α
                        .size            n350_var_ref_bx, .-n350_var_ref_bx
                        .type            n351_var_ref_bx, @function
n351_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1696]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n352_call_α
                        .size            n351_var_ref_bx, .-n351_var_ref_bx
                        .type            n352_call_bx, @function
n352_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_call_α:            mov              r11, 145
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1376]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   n353_var_ref_α
n352_call_β:            mov              r11, 145;                            jmp   not_attack$2F3_step
                        .size            n352_call_bx, .-n352_call_bx
                        .type            n353_var_ref_bx, @function
n353_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n354_var_ref_α
                        .size            n353_var_ref_bx, .-n353_var_ref_bx
                        .type            n354_var_ref_bx, @function
n354_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:         mov              r11, 147
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1728]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx;         jmp   n355_call_α
                        .size            n354_var_ref_bx, .-n354_var_ref_bx
                        .type            n355_call_bx, @function
n355_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_call_α:            mov              r11, 148
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
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   n356_var_α
n355_call_β:            mov              r11, 148;                            jmp   not_attack$2F3_step
                        .size            n355_call_bx, .-n355_call_bx
                        .type            n356_var_bx, @function
n356_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_var_α:             mov              r11, 149
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n357_call_α
                        .size            n356_var_bx, .-n356_var_bx
                        .type            n357_call_bx, @function
n357_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_call_α:            mov              r11, 150
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1064]
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
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   n358_var_α
n357_call_β:            mov              r11, 150;                            jmp   not_attack$2F3_step
                        .size            n357_call_bx, .-n357_call_bx
                        .type            n358_var_bx, @function
n358_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_var_α:             mov              r11, 151
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n359_var_α
                        .size            n358_var_bx, .-n358_var_bx
                        .type            n359_var_bx, @function
n359_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:             mov              r11, 152
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1160], rax;         jmp   n360_call_α
                        .size            n359_var_bx, .-n359_var_bx
                        .type            n360_call_bx, @function
n360_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_call_α:            mov              r11, 153
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
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
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   n361_call_α
n360_call_β:            mov              r11, 153;                            jmp   not_attack$2F3_step
                        .size            n360_call_bx, .-n360_call_bx
                        .type            n361_call_bx, @function
n361_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_call_α:            mov              r11, 154
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1080]
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
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   n362_call_α
n361_call_β:            mov              r11, 154;                            jmp   not_attack$2F3_step
                        .size            n361_call_bx, .-n361_call_bx
                        .type            n362_call_bx, @function
n362_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_call_α:            mov              r11, 155
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
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   n363_var_α
n362_call_β:            mov              r11, 155;                            jmp   not_attack$2F3_step
                        .size            n362_call_bx, .-n362_call_bx
                        .type            n363_var_bx, @function
n363_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_var_α:             mov              r11, 156
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 792], rax;          jmp   n364_call_α
                        .size            n363_var_bx, .-n363_var_bx
                        .type            n364_call_bx, @function
n364_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_call_α:            mov              r11, 157
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 792]
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
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   n365_var_α
n364_call_β:            mov              r11, 157;                            jmp   not_attack$2F3_step
                        .size            n364_call_bx, .-n364_call_bx
                        .type            n365_var_bx, @function
n365_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:             mov              r11, 158
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 872], rax;          jmp   n366_var_α
                        .size            n365_var_bx, .-n365_var_bx
                        .type            n366_var_bx, @function
n366_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_var_α:             mov              r11, 159
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 888], rax;          jmp   n367_call_α
                        .size            n366_var_bx, .-n366_var_bx
                        .type            n367_call_bx, @function
n367_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_call_α:            mov              r11, 160
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
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   n368_call_α
n367_call_β:            mov              r11, 160;                            jmp   not_attack$2F3_step
                        .size            n367_call_bx, .-n367_call_bx
                        .type            n368_call_bx, @function
n368_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_call_α:            mov              r11, 161
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 808]
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
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   n369_call_α
n368_call_β:            mov              r11, 161;                            jmp   not_attack$2F3_step
                        .size            n368_call_bx, .-n368_call_bx
                        .type            n369_call_bx, @function
n369_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_call_α:            mov              r11, 162
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
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   n370_var_ref_α
n369_call_β:            mov              r11, 162;                            jmp   not_attack$2F3_step
                        .size            n369_call_bx, .-n369_call_bx
                        .type            n370_var_ref_bx, @function
n370_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1712]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n371_var_α
                        .size            n370_var_ref_bx, .-n370_var_ref_bx
                        .type            n371_var_bx, @function
n371_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_var_α:             mov              r11, 164
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 648], rax;          jmp   n372_lit_integer_α
                        .size            n371_var_bx, .-n371_var_bx
                        .type            n372_lit_integer_bx, @function
n372_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_integer_α:     mov              r11, 165
                        mov              qword ptr [rbp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_437_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n373_call_α
.Llit_integer_α_437_0:  .quad            1
                        .size            n372_lit_integer_bx, .-n372_lit_integer_bx
                        .type            n373_call_bx, @function
n373_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_call_α:            mov              r11, 166
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
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
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   n374_call_α
n373_call_β:            mov              r11, 166;                            jmp   not_attack$2F3_step
                        .size            n373_call_bx, .-n373_call_bx
                        .type            n374_call_bx, @function
n374_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:            mov              r11, 167
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   n375_call_α
n374_call_β:            mov              r11, 167;                            jmp   not_attack$2F3_step
                        .size            n374_call_bx, .-n374_call_bx
                        .type            n375_call_bx, @function
n375_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_call_α:            mov              r11, 168
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   n376_var_ref_α
n375_call_β:            mov              r11, 168;                            jmp   not_attack$2F3_step
                        .size            n375_call_bx, .-n375_call_bx
                        .type            n376_var_ref_bx, @function
n376_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_var_ref_α:         mov              r11, 169
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n377_var_ref_α
                        .size            n376_var_ref_bx, .-n376_var_ref_bx
                        .type            n377_var_ref_bx, @function
n377_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1696]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n378_var_ref_α
                        .size            n377_var_ref_bx, .-n377_var_ref_bx
                        .type            n378_var_ref_bx, @function
n378_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1712]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n379_call_proc_staged_α
                        .size            n378_var_ref_bx, .-n378_var_ref_bx
                        .type            n379_call_proc_staged_bx, @function
n379_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_call_proc_staged_α:
                        mov              r11, 172
                        mov              qword ptr [rbp + 416], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_448_200
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_448_201
.Lcall_proc_staged_α_448_200:
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
.Lcall_proc_staged_α_448_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_448_202
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_448_203
.Lcall_proc_staged_α_448_202:
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
.Lcall_proc_staged_α_448_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_448_204
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_448_205
.Lcall_proc_staged_α_448_204:
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
.Lcall_proc_staged_α_448_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_448_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_448_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1824]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_448_99
                        mov              r10, qword ptr [rbp + 1784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_448_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_448_99
                        mov              rcx, qword ptr [rbp + 1800]
                        mov              rdx, qword ptr [rbp + 1808]
                        lea              rsp, [rbp + 1824]
                        mov              rbp, qword ptr [rbp + 1816];         jmp   rax
.Lcall_proc_staged_α_448_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_448_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_448_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_448_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_448_3:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_448_21
                        add              rsp, 32
.Lcall_proc_staged_α_448_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_448_2
.Lcall_proc_staged_α_448_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 416], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_448_2
.Lcall_proc_staged_α_448_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_448_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   not_attack$2F3_step
.Lcall_proc_staged_α_448_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_448_29
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
.Lcall_proc_staged_α_448_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   not_attack$2F3_ret1
n379_call_proc_staged_β:
                        mov              r11, 172
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_448_22
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_448_22
                        mov              rcx, qword ptr [rbp + 424]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_448_22:
                                                                              jmp   not_attack$2F3_step
.Lcall_proc_staged_α_448_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    not_attack$2F3_step
                                                                              jmp   not_attack$2F3_ret1
.Lcall_proc_staged_α_448_0:
                        .quad            .Lcall_proc_staged_α_448_0_s
.Lcall_proc_staged_α_448_0_s:
                        .string          "not_attack/3"
                        .size            n379_call_proc_staged_bx, .-n379_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_ret1:
                        lea              rax, [rip + n379_call_proc_staged_β]
                        mov              qword ptr [rbp + 1776], rax
                                                                              jmp   not_attack$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_step:
                        mov              rdi, qword ptr [rbp + 1760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1776], 0
                        mov              qword ptr [rbp + 1696], 0
                        mov              qword ptr [rbp + 1704], 0
                        mov              qword ptr [rbp + 1728], 0
                        mov              qword ptr [rbp + 1736], 0
                        mov              qword ptr [rbp + 1680], 0
                        mov              qword ptr [rbp + 1688], 0
                        mov              qword ptr [rbp + 1664], 0
                        mov              qword ptr [rbp + 1672], 0
                        mov              qword ptr [rbp + 1712], 0
                        mov              qword ptr [rbp + 1720], 0
                        mov              rax, qword ptr [rbp + 1768]
                        test             rax, rax
                                                                              je    not_attack$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1768], rax
                        mov              r13, qword ptr [rbp + 1784]
                                                                              jmp   n344_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_β:
                        test             r15, r15
                                                                              jne   not_attack$2F3_ω
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1776], 0
                        test             rax, rax
                                                                              jne   not_attack$2F3_βres
                                                                              jmp   not_attack$2F3_step
not_attack$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1800]
                        mov              rax, qword ptr [rbp + 1784]
                        cmp              r13, rax;                            je    not_attack$2F3_altdet
                        lea              rdx, [rip + not_attack$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1816];         jmp   rcx
not_attack$2F3_altdet:  xor              eax, eax
                        lea              rsp, [rbp + 1824]
                        mov              rbp, qword ptr [rbp + 1816];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_ω:
                        mov              rcx, qword ptr [rbp + 1808]
                        mov              r13, qword ptr [rbp + 1784]
                        lea              rsp, [rbp + 1824]
                        mov              rbp, qword ptr [rbp + 1816];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__main$2F0:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 264], r13
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 240], r12
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                        .type            n449_lit_integer_bx, @function
n449_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_integer_α:     mov              r11, 173
                        mov              qword ptr [rbp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_455_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n450_var_ref_α
.Llit_integer_α_455_0:  .quad            16
                        .size            n449_lit_integer_bx, .-n449_lit_integer_bx
                        .type            n450_var_ref_bx, @function
n450_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n451_call_proc_staged_α
                        .size            n450_var_ref_bx, .-n450_var_ref_bx
                        .type            n451_call_proc_staged_bx, @function
n451_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_call_proc_staged_α:
                        mov              r11, 175
                        mov              qword ptr [rbp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_459_200
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_459_201
.Lcall_proc_staged_α_459_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_459_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_459_202
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_459_203
.Lcall_proc_staged_α_459_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_459_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_459_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_459_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_459_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_459_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_459_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_459_3:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_459_21
                        add              rsp, 32
.Lcall_proc_staged_α_459_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_459_2
.Lcall_proc_staged_α_459_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 144], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_459_2
.Lcall_proc_staged_α_459_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_459_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main$2F0_step
.Lcall_proc_staged_α_459_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_459_29
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
.Lcall_proc_staged_α_459_29:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n452_var_α
n451_call_proc_staged_β:
                        mov              r11, 175
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_459_22
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_459_22
                        mov              rcx, qword ptr [rbp + 152]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_459_22:
                                                                              jmp   main$2F0_step
.Lcall_proc_staged_α_459_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n452_var_α
.Lcall_proc_staged_α_459_0:
                        .quad            .Lcall_proc_staged_α_459_0_s
.Lcall_proc_staged_α_459_0_s:
                        .string          "queens/2"
                        .size            n451_call_proc_staged_bx, .-n451_call_proc_staged_bx
                        .type            n452_var_bx, @function
n452_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_var_α:             mov              r11, 176
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 88], rax;           jmp   n453_call_α
                        .size            n452_var_bx, .-n452_var_bx
                        .type            n453_call_bx, @function
n453_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_call_α:            mov              r11, 177
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
                        cmp              al, 104;                             je    n451_call_proc_staged_β
                                                                              jmp   n454_call_α
n453_call_β:            mov              r11, 177;                            jmp   n451_call_proc_staged_β
                        .size            n453_call_bx, .-n453_call_bx
                        .type            n454_call_bx, @function
n454_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_call_α:            mov              r11, 178
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
                        cmp              al, 104;                             je    n451_call_proc_staged_β
                                                                              jmp   main$2F0_ret0
n454_call_β:            mov              r11, 178;                            jmp   n451_call_proc_staged_β
                        .size            n454_call_bx, .-n454_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ret0:
                        lea              rax, [rip + n451_call_proc_staged_β]
                        mov              qword ptr [rbp + 256], rax
                                                                              jmp   main$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 208], 0
                        mov              qword ptr [rbp + 216], 0
                        mov              rax, qword ptr [rbp + 248]
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
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 256], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rax, qword ptr [rbp + 264]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 296];          jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 304]
                        mov              rbp, qword ptr [rbp + 296];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 288]
                        mov              r13, qword ptr [rbp + 264]
                        lea              rsp, [rbp + 304]
                        mov              rbp, qword ptr [rbp + 296];          jmp   rcx
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
                        .type            n464_call_proc_staged_bx, @function
n464_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_call_proc_staged_α:
                        mov              r11, 179
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_466_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_466_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_466_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_466_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_466_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_466_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_466_21
                        add              rsp, 32
.Lcall_proc_staged_α_466_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_466_2
.Lcall_proc_staged_α_466_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_466_2
.Lcall_proc_staged_α_466_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_466_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_466_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_466_29
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
.Lcall_proc_staged_α_466_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n464_call_proc_staged_β:
                        mov              r11, 179
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_466_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_466_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_466_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_466_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_466_0:
                        .quad            .Lcall_proc_staged_α_466_0_s
.Lcall_proc_staged_α_466_0_s:
                        .string          "main/0"
                        .size            n464_call_proc_staged_bx, .-n464_call_proc_staged_bx
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
.Lstartup_pname1:       .string          "queens/3"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__queens$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1232
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "queens/2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__queens$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            576
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "range/3"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__range$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1488
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "not_attack/2"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__not_attack$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            416
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "not_attack/3"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__not_attack$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1744
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
                        .long            224
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
