                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__log10$2F0:
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 1016], rcx
                        mov              qword ptr [rsp + 1024], rdx
                        mov              qword ptr [rsp + 1032], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1000], r13
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 976], r12
                        mov              rdi, rsp
                        mov              esi, 944
                        mov              edx, 976
                        call             rt_jmp_frame_lexprep2@PLT
log10$2F0_α_body:
                        .type            n0_lit_string_bx, @function
n0_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              r11, 1
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_24_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n1_lit_string_α
.Llit_string_α_24_0:    .quad            .Llit_string_α_24_0_s
.Llit_string_α_24_0_s:  .string          "log"
                        .size            n0_lit_string_bx, .-n0_lit_string_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rbp + 816], 2             # result
                        mov              dword ptr [rbp + 820], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_25_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n2_lit_string_α
.Llit_string_α_25_0:    .quad            .Llit_string_α_25_0_s
.Llit_string_α_25_0_s:  .string          "log"
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rbp + 736], 2             # result
                        mov              dword ptr [rbp + 740], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_26_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n3_lit_string_α
.Llit_string_α_26_0:    .quad            .Llit_string_α_26_0_s
.Llit_string_α_26_0_s:  .string          "log"
                        .size            n2_lit_string_bx, .-n2_lit_string_bx
                        .type            n3_lit_string_bx, @function
n3_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rbp + 656], 2             # result
                        mov              dword ptr [rbp + 660], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_27_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n4_lit_string_α
.Llit_string_α_27_0:    .quad            .Llit_string_α_27_0_s
.Llit_string_α_27_0_s:  .string          "log"
                        .size            n3_lit_string_bx, .-n3_lit_string_bx
                        .type            n4_lit_string_bx, @function
n4_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rbp + 576], 2             # result
                        mov              dword ptr [rbp + 580], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_28_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n5_lit_string_α
.Llit_string_α_28_0:    .quad            .Llit_string_α_28_0_s
.Llit_string_α_28_0_s:  .string          "log"
                        .size            n4_lit_string_bx, .-n4_lit_string_bx
                        .type            n5_lit_string_bx, @function
n5_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rbp + 496], 2             # result
                        mov              dword ptr [rbp + 500], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_29_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n6_lit_string_α
.Llit_string_α_29_0:    .quad            .Llit_string_α_29_0_s
.Llit_string_α_29_0_s:  .string          "log"
                        .size            n5_lit_string_bx, .-n5_lit_string_bx
                        .type            n6_lit_string_bx, @function
n6_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_30_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n7_lit_string_α
.Llit_string_α_30_0:    .quad            .Llit_string_α_30_0_s
.Llit_string_α_30_0_s:  .string          "log"
                        .size            n6_lit_string_bx, .-n6_lit_string_bx
                        .type            n7_lit_string_bx, @function
n7_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_31_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n8_lit_string_α
.Llit_string_α_31_0:    .quad            .Llit_string_α_31_0_s
.Llit_string_α_31_0_s:  .string          "log"
                        .size            n7_lit_string_bx, .-n7_lit_string_bx
                        .type            n8_lit_string_bx, @function
n8_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_32_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n9_lit_string_α
.Llit_string_α_32_0:    .quad            .Llit_string_α_32_0_s
.Llit_string_α_32_0_s:  .string          "log"
                        .size            n8_lit_string_bx, .-n8_lit_string_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_33_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n10_lit_string_α
.Llit_string_α_33_0:    .quad            .Llit_string_α_33_0_s
.Llit_string_α_33_0_s:  .string          "log"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_lit_string_bx, @function
n10_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rbp + 96], 2              # result
                        mov              dword ptr [rbp + 100], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_34_0]
                        mov              qword ptr [rbp + 104], rax;          jmp   n11_call_α
.Llit_string_α_34_0:    .quad            .Llit_string_α_34_0_s
.Llit_string_α_34_0_s:  .string          "x"
                        .size            n10_lit_string_bx, .-n10_lit_string_bx
                        .type            n11_call_bx, @function
n11_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:             mov              r11, 12
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n12_call_α
n11_call_β:             mov              r11, 12;                             jmp   log10$2F0_ω
                        .size            n11_call_bx, .-n11_call_bx
                        .type            n12_call_bx, @function
n12_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:             mov              r11, 13
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 120]
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n13_call_α
n12_call_β:             mov              r11, 13;                             jmp   log10$2F0_ω
                        .size            n12_call_bx, .-n12_call_bx
                        .type            n13_call_bx, @function
n13_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:             mov              r11, 14
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 200]
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n14_call_α
n13_call_β:             mov              r11, 14;                             jmp   log10$2F0_ω
                        .size            n13_call_bx, .-n13_call_bx
                        .type            n14_call_bx, @function
n14_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             mov              r11, 15
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 280]
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n15_call_α
n14_call_β:             mov              r11, 15;                             jmp   log10$2F0_ω
                        .size            n14_call_bx, .-n14_call_bx
                        .type            n15_call_bx, @function
n15_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_call_α:             mov              r11, 16
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 360]
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n16_call_α
n15_call_β:             mov              r11, 16;                             jmp   log10$2F0_ω
                        .size            n15_call_bx, .-n15_call_bx
                        .type            n16_call_bx, @function
n16_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_call_α:             mov              r11, 17
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 440]
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n17_call_α
n16_call_β:             mov              r11, 17;                             jmp   log10$2F0_ω
                        .size            n16_call_bx, .-n16_call_bx
                        .type            n17_call_bx, @function
n17_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:             mov              r11, 18
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 520]
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n18_call_α
n17_call_β:             mov              r11, 18;                             jmp   log10$2F0_ω
                        .size            n17_call_bx, .-n17_call_bx
                        .type            n18_call_bx, @function
n18_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_call_α:             mov              r11, 19
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 600]
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n19_call_α
n18_call_β:             mov              r11, 19;                             jmp   log10$2F0_ω
                        .size            n18_call_bx, .-n18_call_bx
                        .type            n19_call_bx, @function
n19_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_α:             mov              r11, 20
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 680]
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n20_call_α
n19_call_β:             mov              r11, 20;                             jmp   log10$2F0_ω
                        .size            n19_call_bx, .-n19_call_bx
                        .type            n20_call_bx, @function
n20_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             mov              r11, 21
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 760]
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    log10$2F0_step
                                                                              jmp   n21_lit_string_α
n20_call_β:             mov              r11, 21;                             jmp   log10$2F0_step
                        .size            n20_call_bx, .-n20_call_bx
                        .type            n21_lit_string_bx, @function
n21_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       mov              r11, 22
                        mov              qword ptr [rbp + 912], 2             # result
                        mov              dword ptr [rbp + 916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_45_0]
                        mov              qword ptr [rbp + 920], rax;          jmp   n22_var_ref_α
.Llit_string_α_45_0:    .quad            .Llit_string_α_45_0_s
.Llit_string_α_45_0_s:  .string          "x"
                        .size            n21_lit_string_bx, .-n21_lit_string_bx
                        .type            n22_var_ref_bx, @function
n22_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n23_call_proc_staged_α
                        .size            n22_var_ref_bx, .-n22_var_ref_bx
                        .type            n23_call_proc_staged_bx, @function
n23_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_call_proc_staged_α: mov              r11, 24
                        mov              qword ptr [rbp + 64], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_49_200
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_49_201
.Lcall_proc_staged_α_49_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_49_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_49_202
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_49_203
.Lcall_proc_staged_α_49_202:
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
.Lcall_proc_staged_α_49_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_49_204
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_49_205
.Lcall_proc_staged_α_49_204:
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
.Lcall_proc_staged_α_49_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_49_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_49_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1040]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_49_99
                        mov              r10, qword ptr [rbp + 1000]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_49_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_49_99
                        mov              rcx, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1024]
                        lea              rsp, [rbp + 1040]
                        mov              rbp, qword ptr [rbp + 1032];         jmp   rax
.Lcall_proc_staged_α_49_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_49_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_49_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_49_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_49_3:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_49_21
                        add              rsp, 32
.Lcall_proc_staged_α_49_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_49_2
.Lcall_proc_staged_α_49_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 64], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_49_2
.Lcall_proc_staged_α_49_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_49_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   log10$2F0_step
.Lcall_proc_staged_α_49_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_49_29
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
.Lcall_proc_staged_α_49_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    log10$2F0_step
                                                                              jmp   log10$2F0_ret0
n23_call_proc_staged_β: mov              r11, 24
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_49_22
                        mov              rax, qword ptr [rbp + 64]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_49_22
                        mov              rcx, qword ptr [rbp + 72]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_49_22:
                                                                              jmp   log10$2F0_step
.Lcall_proc_staged_α_49_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    log10$2F0_step
                                                                              jmp   log10$2F0_ret0
.Lcall_proc_staged_α_49_0:
                        .quad            .Lcall_proc_staged_α_49_0_s
.Lcall_proc_staged_α_49_0_s:
                        .string          "d/3"
                        .size            n23_call_proc_staged_bx, .-n23_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_ret0:
                        lea              rax, [rip + n23_call_proc_staged_β]
                        mov              qword ptr [rbp + 992], rax
                                                                              jmp   log10$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_step:
                        mov              rdi, qword ptr [rbp + 976]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 992], 0
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              rax, qword ptr [rbp + 984]
                        test             rax, rax
                                                                              je    log10$2F0_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_β:
                        test             r15, r15
                                                                              jne   log10$2F0_ω
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 992], 0
                        test             rax, rax
                                                                              jne   log10$2F0_βres
                                                                              jmp   log10$2F0_step
log10$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1016]
                        mov              rax, qword ptr [rbp + 1000]
                        cmp              r13, rax;                            je    log10$2F0_altdet
                        lea              rdx, [rip + log10$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1032];         jmp   rcx
log10$2F0_altdet:       xor              eax, eax
                        lea              rsp, [rbp + 1040]
                        mov              rbp, qword ptr [rbp + 1032];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_ω:
                        mov              rcx, qword ptr [rbp + 1024]
                        mov              r13, qword ptr [rbp + 1000]
                        lea              rsp, [rbp + 1040]
                        mov              rbp, qword ptr [rbp + 1032];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__d$2F3:
                        sub              rsp, 7824
                        mov              qword ptr [rsp + 7800], rcx
                        mov              qword ptr [rsp + 7808], rdx
                        mov              qword ptr [rsp + 7816], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 7824]
                        mov              qword ptr [rsp + 7792], rax
                        mov              qword ptr [rsp + 7784], r13
                        mov              qword ptr [rsp + 7776], 0
                        mov              qword ptr [rsp + 7768], 0
                        mov              qword ptr [rsp + 7760], r12
                        lea              rax, [rip + d$2F3_alt1]
                        mov              qword ptr [rsp + 7768], rax
                        lea              rdi, [rsp + 7760]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 7648
                        mov              edx, 7760
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
d$2F3_α_body:
                        .type            n50_var_ref_bx, @function
n50_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n51_lit_string_α
                        .size            n50_var_ref_bx, .-n50_var_ref_bx
                        .type            n51_lit_string_bx, @function
n51_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rbp + 848], 2             # result
                        mov              dword ptr [rbp + 852], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_278_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n52_var_ref_α
.Llit_string_α_278_0:   .quad            .Llit_string_α_278_0_s
.Llit_string_α_278_0_s: .string          "+"
                        .size            n51_lit_string_bx, .-n51_lit_string_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n53_var_ref_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_var_ref_bx, @function
n53_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n54_call_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_call_bx, @function
n54_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:             mov              r11, 29
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n55_call_α
n54_call_β:             mov              r11, 29;                             jmp   d$2F3_step
                        .size            n54_call_bx, .-n54_call_bx
                        .type            n55_call_bx, @function
n55_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:             mov              r11, 30
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 776]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n56_var_ref_α
n55_call_β:             mov              r11, 30;                             jmp   d$2F3_step
                        .size            n55_call_bx, .-n55_call_bx
                        .type            n56_var_ref_bx, @function
n56_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n57_var_ref_α
                        .size            n56_var_ref_bx, .-n56_var_ref_bx
                        .type            n57_var_ref_bx, @function
n57_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n58_call_α
                        .size            n57_var_ref_bx, .-n57_var_ref_bx
                        .type            n58_call_bx, @function
n58_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_call_α:             mov              r11, 33
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
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n59_var_ref_α
n58_call_β:             mov              r11, 33;                             jmp   d$2F3_step
                        .size            n58_call_bx, .-n58_call_bx
                        .type            n59_var_ref_bx, @function
n59_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n60_lit_string_α
                        .size            n59_var_ref_bx, .-n59_var_ref_bx
                        .type            n60_lit_string_bx, @function
n60_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rbp + 544], 2             # result
                        mov              dword ptr [rbp + 548], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_292_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n61_var_ref_α
.Llit_string_α_292_0:   .quad            .Llit_string_α_292_0_s
.Llit_string_α_292_0_s: .string          "+"
                        .size            n60_lit_string_bx, .-n60_lit_string_bx
                        .type            n61_var_ref_bx, @function
n61_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n62_var_ref_α
                        .size            n61_var_ref_bx, .-n61_var_ref_bx
                        .type            n62_var_ref_bx, @function
n62_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n63_call_α
                        .size            n62_var_ref_bx, .-n62_var_ref_bx
                        .type            n63_call_bx, @function
n63_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_call_α:             mov              r11, 38
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n64_call_α
n63_call_β:             mov              r11, 38;                             jmp   d$2F3_step
                        .size            n63_call_bx, .-n63_call_bx
                        .type            n64_call_bx, @function
n64_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_call_α:             mov              r11, 39
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 472]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n65_cut_α
n64_call_β:             mov              r11, 39;                             jmp   d$2F3_step
                        .size            n64_call_bx, .-n64_call_bx
                        .type            n65_cut_bx, @function
n65_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_cut_α:              mov              r11, 40
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n66_var_ref_α
                        .size            n65_cut_bx, .-n65_cut_bx
                        .type            n66_var_ref_bx, @function
n66_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n67_var_ref_α
                        .size            n66_var_ref_bx, .-n66_var_ref_bx
                        .type            n67_var_ref_bx, @function
n67_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n68_var_ref_α
                        .size            n67_var_ref_bx, .-n67_var_ref_bx
                        .type            n68_var_ref_bx, @function
n68_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n69_call_proc_staged_α
                        .size            n68_var_ref_bx, .-n68_var_ref_bx
                        .type            n69_call_proc_staged_bx, @function
n69_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_call_proc_staged_α: mov              r11, 44
                        mov              qword ptr [rbp + 272], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_308_200
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_308_201
.Lcall_proc_staged_α_308_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_308_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_308_202
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_308_203
.Lcall_proc_staged_α_308_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_308_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_308_204
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_308_205
.Lcall_proc_staged_α_308_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_308_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_308_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_308_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_308_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_308_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_308_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_308_3:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_308_21
                        add              rsp, 32
.Lcall_proc_staged_α_308_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_308_2
.Lcall_proc_staged_α_308_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 272], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_308_2
.Lcall_proc_staged_α_308_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_308_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_308_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_308_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
.Lcall_proc_staged_α_308_29:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n70_var_ref_α
n69_call_proc_staged_β: mov              r11, 44
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_308_22
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_308_22
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_308_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_308_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n70_var_ref_α
.Lcall_proc_staged_α_308_0:
                        .quad            .Lcall_proc_staged_α_308_0_s
.Lcall_proc_staged_α_308_0_s:
                        .string          "d/3"
                        .size            n69_call_proc_staged_bx, .-n69_call_proc_staged_bx
                        .type            n70_var_ref_bx, @function
n70_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n71_var_ref_α
                        .size            n70_var_ref_bx, .-n70_var_ref_bx
                        .type            n71_var_ref_bx, @function
n71_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n72_var_ref_α
                        .size            n71_var_ref_bx, .-n71_var_ref_bx
                        .type            n72_var_ref_bx, @function
n72_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n73_call_proc_staged_α
                        .size            n72_var_ref_bx, .-n72_var_ref_bx
                        .type            n73_call_proc_staged_bx, @function
n73_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_call_proc_staged_α: mov              r11, 48
                        mov              qword ptr [rbp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_316_200
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_316_201
.Lcall_proc_staged_α_316_200:
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
.Lcall_proc_staged_α_316_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_316_202
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_316_203
.Lcall_proc_staged_α_316_202:
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
.Lcall_proc_staged_α_316_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_316_204
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_316_205
.Lcall_proc_staged_α_316_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_316_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_316_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_316_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7824]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_316_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_316_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_316_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_316_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_316_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_316_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_316_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_316_3:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_316_21
                        add              rsp, 32
.Lcall_proc_staged_α_316_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_316_2
.Lcall_proc_staged_α_316_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 128], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_316_2
.Lcall_proc_staged_α_316_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_316_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n69_call_proc_staged_β
.Lcall_proc_staged_α_316_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_316_29
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
.Lcall_proc_staged_α_316_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n69_call_proc_staged_β
                                                                              jmp   d$2F3_ret0
n73_call_proc_staged_β: mov              r11, 48
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_316_22
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_316_22
                        mov              rcx, qword ptr [rbp + 136]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_316_22:
                                                                              jmp   n69_call_proc_staged_β
.Lcall_proc_staged_α_316_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n69_call_proc_staged_β
                                                                              jmp   d$2F3_ret0
.Lcall_proc_staged_α_316_0:
                        .quad            .Lcall_proc_staged_α_316_0_s
.Lcall_proc_staged_α_316_0_s:
                        .string          "d/3"
                        .size            n73_call_proc_staged_bx, .-n73_call_proc_staged_bx
                        .type            n74_var_ref_bx, @function
n74_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n75_lit_string_α
                        .size            n74_var_ref_bx, .-n74_var_ref_bx
                        .type            n75_lit_string_bx, @function
n75_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_319_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n76_var_ref_α
.Llit_string_α_319_0:   .quad            .Llit_string_α_319_0_s
.Llit_string_α_319_0_s: .string          "-"
                        .size            n75_lit_string_bx, .-n75_lit_string_bx
                        .type            n76_var_ref_bx, @function
n76_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx;         jmp   n77_var_ref_α
                        .size            n76_var_ref_bx, .-n76_var_ref_bx
                        .type            n77_var_ref_bx, @function
n77_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n78_call_α
                        .size            n77_var_ref_bx, .-n77_var_ref_bx
                        .type            n78_call_bx, @function
n78_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:             mov              r11, 53
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1544]
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
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n79_call_α
n78_call_β:             mov              r11, 53;                             jmp   d$2F3_step
                        .size            n78_call_bx, .-n78_call_bx
                        .type            n79_call_bx, @function
n79_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_call_α:             mov              r11, 54
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
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n80_var_ref_α
n79_call_β:             mov              r11, 54;                             jmp   d$2F3_step
                        .size            n79_call_bx, .-n79_call_bx
                        .type            n80_var_ref_bx, @function
n80_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n81_var_ref_α
                        .size            n80_var_ref_bx, .-n80_var_ref_bx
                        .type            n81_var_ref_bx, @function
n81_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n82_call_α
                        .size            n81_var_ref_bx, .-n81_var_ref_bx
                        .type            n82_call_bx, @function
n82_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_call_α:             mov              r11, 57
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
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n83_var_ref_α
n82_call_β:             mov              r11, 57;                             jmp   d$2F3_step
                        .size            n82_call_bx, .-n82_call_bx
                        .type            n83_var_ref_bx, @function
n83_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n84_lit_string_α
                        .size            n83_var_ref_bx, .-n83_var_ref_bx
                        .type            n84_lit_string_bx, @function
n84_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       mov              r11, 59
                        mov              qword ptr [rbp + 1344], 2            # result
                        mov              dword ptr [rbp + 1348], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_333_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n85_var_ref_α
.Llit_string_α_333_0:   .quad            .Llit_string_α_333_0_s
.Llit_string_α_333_0_s: .string          "-"
                        .size            n84_lit_string_bx, .-n84_lit_string_bx
                        .type            n85_var_ref_bx, @function
n85_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n86_var_ref_α
                        .size            n85_var_ref_bx, .-n85_var_ref_bx
                        .type            n86_var_ref_bx, @function
n86_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n87_call_α
                        .size            n86_var_ref_bx, .-n86_var_ref_bx
                        .type            n87_call_bx, @function
n87_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_call_α:             mov              r11, 62
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1240]
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
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n88_call_α
n87_call_β:             mov              r11, 62;                             jmp   d$2F3_step
                        .size            n87_call_bx, .-n87_call_bx
                        .type            n88_call_bx, @function
n88_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_call_α:             mov              r11, 63
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1168]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n89_cut_α
n88_call_β:             mov              r11, 63;                             jmp   d$2F3_step
                        .size            n88_call_bx, .-n88_call_bx
                        .type            n89_cut_bx, @function
n89_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_cut_α:              mov              r11, 64
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n90_var_ref_α
                        .size            n89_cut_bx, .-n89_cut_bx
                        .type            n90_var_ref_bx, @function
n90_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n91_var_ref_α
                        .size            n90_var_ref_bx, .-n90_var_ref_bx
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n92_var_ref_α
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_var_ref_bx, @function
n92_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n93_call_proc_staged_α
                        .size            n92_var_ref_bx, .-n92_var_ref_bx
                        .type            n93_call_proc_staged_bx, @function
n93_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_proc_staged_α: mov              r11, 68
                        mov              qword ptr [rbp + 1072], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_349_200
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_349_201
.Lcall_proc_staged_α_349_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_349_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_349_202
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_349_203
.Lcall_proc_staged_α_349_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_349_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_349_204
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_349_205
.Lcall_proc_staged_α_349_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_349_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_349_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_349_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_349_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_349_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_349_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_349_3:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_349_21
                        add              rsp, 32
.Lcall_proc_staged_α_349_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_349_2
.Lcall_proc_staged_α_349_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1072], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_349_2
.Lcall_proc_staged_α_349_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_349_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_349_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_349_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
.Lcall_proc_staged_α_349_29:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n94_var_ref_α
n93_call_proc_staged_β: mov              r11, 68
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_349_22
                        mov              rax, qword ptr [rbp + 1072]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_349_22
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_349_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_349_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n94_var_ref_α
.Lcall_proc_staged_α_349_0:
                        .quad            .Lcall_proc_staged_α_349_0_s
.Lcall_proc_staged_α_349_0_s:
                        .string          "d/3"
                        .size            n93_call_proc_staged_bx, .-n93_call_proc_staged_bx
                        .type            n94_var_ref_bx, @function
n94_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n95_var_ref_α
                        .size            n94_var_ref_bx, .-n94_var_ref_bx
                        .type            n95_var_ref_bx, @function
n95_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n96_var_ref_α
                        .size            n95_var_ref_bx, .-n95_var_ref_bx
                        .type            n96_var_ref_bx, @function
n96_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n97_call_proc_staged_α
                        .size            n96_var_ref_bx, .-n96_var_ref_bx
                        .type            n97_call_proc_staged_bx, @function
n97_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_call_proc_staged_α: mov              r11, 72
                        mov              qword ptr [rbp + 928], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_357_200
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_357_201
.Lcall_proc_staged_α_357_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_357_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_357_202
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_357_203
.Lcall_proc_staged_α_357_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_357_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_357_204
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_357_205
.Lcall_proc_staged_α_357_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_357_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_357_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_357_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7824]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_357_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_357_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_357_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_357_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_357_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_357_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_357_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_357_3:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_357_21
                        add              rsp, 32
.Lcall_proc_staged_α_357_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_357_2
.Lcall_proc_staged_α_357_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 928], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_357_2
.Lcall_proc_staged_α_357_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_357_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n93_call_proc_staged_β
.Lcall_proc_staged_α_357_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_357_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
.Lcall_proc_staged_α_357_29:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    n93_call_proc_staged_β
                                                                              jmp   d$2F3_ret1
n97_call_proc_staged_β: mov              r11, 72
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_357_22
                        mov              rax, qword ptr [rbp + 928]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_357_22
                        mov              rcx, qword ptr [rbp + 936]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_357_22:
                                                                              jmp   n93_call_proc_staged_β
.Lcall_proc_staged_α_357_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    n93_call_proc_staged_β
                                                                              jmp   d$2F3_ret1
.Lcall_proc_staged_α_357_0:
                        .quad            .Lcall_proc_staged_α_357_0_s
.Lcall_proc_staged_α_357_0_s:
                        .string          "d/3"
                        .size            n97_call_proc_staged_bx, .-n97_call_proc_staged_bx
                        .type            n98_var_ref_bx, @function
n98_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n99_lit_string_α
                        .size            n98_var_ref_bx, .-n98_var_ref_bx
                        .type            n99_lit_string_bx, @function
n99_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              r11, 74
                        mov              qword ptr [rbp + 2672], 2            # result
                        mov              dword ptr [rbp + 2676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_360_0]
                        mov              qword ptr [rbp + 2680], rax;         jmp   n100_var_ref_α
.Llit_string_α_360_0:   .quad            .Llit_string_α_360_0_s
.Llit_string_α_360_0_s: .string          "*"
                        .size            n99_lit_string_bx, .-n99_lit_string_bx
                        .type            n100_var_ref_bx, @function
n100_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx;         jmp   n101_var_ref_α
                        .size            n100_var_ref_bx, .-n100_var_ref_bx
                        .type            n101_var_ref_bx, @function
n101_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx;         jmp   n102_call_α
                        .size            n101_var_ref_bx, .-n101_var_ref_bx
                        .type            n102_call_bx, @function
n102_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_call_α:            mov              r11, 77
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2648], rax
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2616], rax
                        lea              rdi, [rbp + 2608]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n103_call_α
n102_call_β:            mov              r11, 77;                             jmp   d$2F3_step
                        .size            n102_call_bx, .-n102_call_bx
                        .type            n103_call_bx, @function
n103_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_call_α:            mov              r11, 78
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2520], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2504], rax
                        lea              rdi, [rbp + 2496]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n104_var_ref_α
n103_call_β:            mov              r11, 78;                             jmp   d$2F3_step
                        .size            n103_call_bx, .-n103_call_bx
                        .type            n104_var_ref_bx, @function
n104_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx;         jmp   n105_var_ref_α
                        .size            n104_var_ref_bx, .-n104_var_ref_bx
                        .type            n105_var_ref_bx, @function
n105_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx;         jmp   n106_call_α
                        .size            n105_var_ref_bx, .-n105_var_ref_bx
                        .type            n106_call_bx, @function
n106_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_call_α:            mov              r11, 81
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
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n107_var_ref_α
n106_call_β:            mov              r11, 81;                             jmp   d$2F3_step
                        .size            n106_call_bx, .-n106_call_bx
                        .type            n107_var_ref_bx, @function
n107_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx;         jmp   n108_lit_string_α
                        .size            n107_var_ref_bx, .-n107_var_ref_bx
                        .type            n108_lit_string_bx, @function
n108_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      mov              r11, 83
                        mov              qword ptr [rbp + 2368], 2            # result
                        mov              dword ptr [rbp + 2372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_374_0]
                        mov              qword ptr [rbp + 2376], rax;         jmp   n109_lit_string_α
.Llit_string_α_374_0:   .quad            .Llit_string_α_374_0_s
.Llit_string_α_374_0_s: .string          "+"
                        .size            n108_lit_string_bx, .-n108_lit_string_bx
                        .type            n109_lit_string_bx, @function
n109_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:      mov              r11, 84
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_375_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n110_var_ref_α
.Llit_string_α_375_0:   .quad            .Llit_string_α_375_0_s
.Llit_string_α_375_0_s: .string          "*"
                        .size            n109_lit_string_bx, .-n109_lit_string_bx
                        .type            n110_var_ref_bx, @function
n110_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n111_var_ref_α
                        .size            n110_var_ref_bx, .-n110_var_ref_bx
                        .type            n111_var_ref_bx, @function
n111_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n112_call_α
                        .size            n111_var_ref_bx, .-n111_var_ref_bx
                        .type            n112_call_bx, @function
n112_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:            mov              r11, 87
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2080]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n113_lit_string_α
n112_call_β:            mov              r11, 87;                             jmp   d$2F3_ω
                        .size            n112_call_bx, .-n112_call_bx
                        .type            n113_lit_string_bx, @function
n113_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      mov              r11, 88
                        mov              qword ptr [rbp + 2272], 2            # result
                        mov              dword ptr [rbp + 2276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_381_0]
                        mov              qword ptr [rbp + 2280], rax;         jmp   n114_var_ref_α
.Llit_string_α_381_0:   .quad            .Llit_string_α_381_0_s
.Llit_string_α_381_0_s: .string          "*"
                        .size            n113_lit_string_bx, .-n113_lit_string_bx
                        .type            n114_var_ref_bx, @function
n114_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx;         jmp   n115_var_ref_α
                        .size            n114_var_ref_bx, .-n114_var_ref_bx
                        .type            n115_var_ref_bx, @function
n115_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:         mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx;         jmp   n116_call_α
                        .size            n115_var_ref_bx, .-n115_var_ref_bx
                        .type            n116_call_bx, @function
n116_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_call_α:            mov              r11, 91
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2216], rax
                        lea              rdi, [rbp + 2208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n117_call_α
n116_call_β:            mov              r11, 91;                             jmp   d$2F3_ω
                        .size            n116_call_bx, .-n116_call_bx
                        .type            n117_call_bx, @function
n117_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_call_α:            mov              r11, 92
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2328], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2312], rax
                        lea              rdi, [rbp + 2304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n118_call_α
n117_call_β:            mov              r11, 92;                             jmp   d$2F3_step
                        .size            n117_call_bx, .-n117_call_bx
                        .type            n118_call_bx, @function
n118_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:            mov              r11, 93
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1976], rax
                        lea              rdi, [rbp + 1968]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n119_cut_α
n118_call_β:            mov              r11, 93;                             jmp   d$2F3_step
                        .size            n118_call_bx, .-n118_call_bx
                        .type            n119_cut_bx, @function
n119_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_cut_α:             mov              r11, 94
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n120_var_ref_α
                        .size            n119_cut_bx, .-n119_cut_bx
                        .type            n120_var_ref_bx, @function
n120_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n121_var_ref_α
                        .size            n120_var_ref_bx, .-n120_var_ref_bx
                        .type            n121_var_ref_bx, @function
n121_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:         mov              r11, 96
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx;         jmp   n122_var_ref_α
                        .size            n121_var_ref_bx, .-n121_var_ref_bx
                        .type            n122_var_ref_bx, @function
n122_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n123_call_proc_staged_α
                        .size            n122_var_ref_bx, .-n122_var_ref_bx
                        .type            n123_call_proc_staged_bx, @function
n123_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_call_proc_staged_α:
                        mov              r11, 98
                        mov              qword ptr [rbp + 1872], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_398_200
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_398_201
.Lcall_proc_staged_α_398_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_398_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_398_202
                        mov              rax, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_398_203
.Lcall_proc_staged_α_398_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_398_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_398_204
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_398_205
.Lcall_proc_staged_α_398_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_398_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_398_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_398_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_398_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_398_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_398_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_398_3:
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_398_21
                        add              rsp, 32
.Lcall_proc_staged_α_398_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_398_2
.Lcall_proc_staged_α_398_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1872], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_398_2
.Lcall_proc_staged_α_398_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_398_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_398_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_398_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
.Lcall_proc_staged_α_398_29:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n124_var_ref_α
n123_call_proc_staged_β:
                        mov              r11, 98
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_398_22
                        mov              rax, qword ptr [rbp + 1872]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_398_22
                        mov              rcx, qword ptr [rbp + 1880]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_398_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_398_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n124_var_ref_α
.Lcall_proc_staged_α_398_0:
                        .quad            .Lcall_proc_staged_α_398_0_s
.Lcall_proc_staged_α_398_0_s:
                        .string          "d/3"
                        .size            n123_call_proc_staged_bx, .-n123_call_proc_staged_bx
                        .type            n124_var_ref_bx, @function
n124_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n125_var_ref_α
                        .size            n124_var_ref_bx, .-n124_var_ref_bx
                        .type            n125_var_ref_bx, @function
n125_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              r11, 100
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n126_var_ref_α
                        .size            n125_var_ref_bx, .-n125_var_ref_bx
                        .type            n126_var_ref_bx, @function
n126_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n127_call_proc_staged_α
                        .size            n126_var_ref_bx, .-n126_var_ref_bx
                        .type            n127_call_proc_staged_bx, @function
n127_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_call_proc_staged_α:
                        mov              r11, 102
                        mov              qword ptr [rbp + 1728], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_406_200
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_406_201
.Lcall_proc_staged_α_406_200:
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
.Lcall_proc_staged_α_406_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_406_202
                        mov              rax, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_406_203
.Lcall_proc_staged_α_406_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_406_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_406_204
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_406_205
.Lcall_proc_staged_α_406_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_406_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_406_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_406_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7824]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_406_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_406_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_406_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_406_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_406_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_406_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_406_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_406_3:
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_406_21
                        add              rsp, 32
.Lcall_proc_staged_α_406_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_406_2
.Lcall_proc_staged_α_406_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1728], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_406_2
.Lcall_proc_staged_α_406_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_406_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n123_call_proc_staged_β
.Lcall_proc_staged_α_406_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_406_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
.Lcall_proc_staged_α_406_29:
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              al, 104;                             je    n123_call_proc_staged_β
                                                                              jmp   d$2F3_ret2
n127_call_proc_staged_β:
                        mov              r11, 102
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_406_22
                        mov              rax, qword ptr [rbp + 1728]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_406_22
                        mov              rcx, qword ptr [rbp + 1736]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_406_22:
                                                                              jmp   n123_call_proc_staged_β
.Lcall_proc_staged_α_406_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              al, 104;                             je    n123_call_proc_staged_β
                                                                              jmp   d$2F3_ret2
.Lcall_proc_staged_α_406_0:
                        .quad            .Lcall_proc_staged_α_406_0_s
.Lcall_proc_staged_α_406_0_s:
                        .string          "d/3"
                        .size            n127_call_proc_staged_bx, .-n127_call_proc_staged_bx
                        .type            n128_var_ref_bx, @function
n128_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx;         jmp   n129_lit_string_α
                        .size            n128_var_ref_bx, .-n128_var_ref_bx
                        .type            n129_lit_string_bx, @function
n129_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rbp + 3920], 2            # result
                        mov              dword ptr [rbp + 3924], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_409_0]
                        mov              qword ptr [rbp + 3928], rax;         jmp   n130_var_ref_α
.Llit_string_α_409_0:   .quad            .Llit_string_α_409_0_s
.Llit_string_α_409_0_s: .string          "/"
                        .size            n129_lit_string_bx, .-n129_lit_string_bx
                        .type            n130_var_ref_bx, @function
n130_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:         mov              r11, 105
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx;         jmp   n131_var_ref_α
                        .size            n130_var_ref_bx, .-n130_var_ref_bx
                        .type            n131_var_ref_bx, @function
n131_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx;         jmp   n132_call_α
                        .size            n131_var_ref_bx, .-n131_var_ref_bx
                        .type            n132_call_bx, @function
n132_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_call_α:            mov              r11, 107
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 3896], rax
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3880], rax
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3864], rax
                        lea              rdi, [rbp + 3856]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n133_call_α
n132_call_β:            mov              r11, 107;                            jmp   d$2F3_step
                        .size            n132_call_bx, .-n132_call_bx
                        .type            n133_call_bx, @function
n133_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:            mov              r11, 108
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3768], rax
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3744], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3752], rax
                        lea              rdi, [rbp + 3744]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n134_var_ref_α
n133_call_β:            mov              r11, 108;                            jmp   d$2F3_step
                        .size            n133_call_bx, .-n133_call_bx
                        .type            n134_var_ref_bx, @function
n134_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx;         jmp   n135_var_ref_α
                        .size            n134_var_ref_bx, .-n134_var_ref_bx
                        .type            n135_var_ref_bx, @function
n135_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx;         jmp   n136_call_α
                        .size            n135_var_ref_bx, .-n135_var_ref_bx
                        .type            n136_call_bx, @function
n136_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_call_α:            mov              r11, 111
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3672], rax
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3656], rax
                        lea              rdi, [rbp + 3648]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n137_var_ref_α
n136_call_β:            mov              r11, 111;                            jmp   d$2F3_step
                        .size            n136_call_bx, .-n136_call_bx
                        .type            n137_var_ref_bx, @function
n137_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx;         jmp   n138_lit_string_α
                        .size            n137_var_ref_bx, .-n137_var_ref_bx
                        .type            n138_lit_string_bx, @function
n138_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      mov              r11, 113
                        mov              qword ptr [rbp + 3616], 2            # result
                        mov              dword ptr [rbp + 3620], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_423_0]
                        mov              qword ptr [rbp + 3624], rax;         jmp   n139_lit_string_α
.Llit_string_α_423_0:   .quad            .Llit_string_α_423_0_s
.Llit_string_α_423_0_s: .string          "/"
                        .size            n138_lit_string_bx, .-n138_lit_string_bx
                        .type            n139_lit_string_bx, @function
n139_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:      mov              r11, 114
                        mov              qword ptr [rbp + 3392], 2            # result
                        mov              dword ptr [rbp + 3396], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_424_0]
                        mov              qword ptr [rbp + 3400], rax;         jmp   n140_lit_string_α
.Llit_string_α_424_0:   .quad            .Llit_string_α_424_0_s
.Llit_string_α_424_0_s: .string          "-"
                        .size            n139_lit_string_bx, .-n139_lit_string_bx
                        .type            n140_lit_string_bx, @function
n140_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:      mov              r11, 115
                        mov              qword ptr [rbp + 3168], 2            # result
                        mov              dword ptr [rbp + 3172], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_425_0]
                        mov              qword ptr [rbp + 3176], rax;         jmp   n141_var_ref_α
.Llit_string_α_425_0:   .quad            .Llit_string_α_425_0_s
.Llit_string_α_425_0_s: .string          "*"
                        .size            n140_lit_string_bx, .-n140_lit_string_bx
                        .type            n141_var_ref_bx, @function
n141_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx;         jmp   n142_var_ref_α
                        .size            n141_var_ref_bx, .-n141_var_ref_bx
                        .type            n142_var_ref_bx, @function
n142_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx;         jmp   n143_call_α
                        .size            n142_var_ref_bx, .-n142_var_ref_bx
                        .type            n143_call_bx, @function
n143_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_call_α:            mov              r11, 118
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3144], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3128], rax
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3112], rax
                        lea              rdi, [rbp + 3104]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n144_lit_string_α
n143_call_β:            mov              r11, 118;                            jmp   d$2F3_ω
                        .size            n143_call_bx, .-n143_call_bx
                        .type            n144_lit_string_bx, @function
n144_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:      mov              r11, 119
                        mov              qword ptr [rbp + 3296], 2            # result
                        mov              dword ptr [rbp + 3300], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_431_0]
                        mov              qword ptr [rbp + 3304], rax;         jmp   n145_var_ref_α
.Llit_string_α_431_0:   .quad            .Llit_string_α_431_0_s
.Llit_string_α_431_0_s: .string          "*"
                        .size            n144_lit_string_bx, .-n144_lit_string_bx
                        .type            n145_var_ref_bx, @function
n145_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n146_var_ref_α
                        .size            n145_var_ref_bx, .-n145_var_ref_bx
                        .type            n146_var_ref_bx, @function
n146_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n147_call_α
                        .size            n146_var_ref_bx, .-n146_var_ref_bx
                        .type            n147_call_bx, @function
n147_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_call_α:            mov              r11, 122
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3272], rax
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3240], rax
                        lea              rdi, [rbp + 3232]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n148_call_α
n147_call_β:            mov              r11, 122;                            jmp   d$2F3_ω
                        .size            n147_call_bx, .-n147_call_bx
                        .type            n148_call_bx, @function
n148_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_call_α:            mov              r11, 123
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3352], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3336], rax
                        lea              rdi, [rbp + 3328]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n149_lit_string_α
n148_call_β:            mov              r11, 123;                            jmp   d$2F3_ω
                        .size            n148_call_bx, .-n148_call_bx
                        .type            n149_lit_string_bx, @function
n149_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:      mov              r11, 124
                        mov              qword ptr [rbp + 3520], 2            # result
                        mov              dword ptr [rbp + 3524], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_438_0]
                        mov              qword ptr [rbp + 3528], rax;         jmp   n150_var_ref_α
.Llit_string_α_438_0:   .quad            .Llit_string_α_438_0_s
.Llit_string_α_438_0_s: .string          "^"
                        .size            n149_lit_string_bx, .-n149_lit_string_bx
                        .type            n150_var_ref_bx, @function
n150_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx;         jmp   n151_lit_integer_α
                        .size            n150_var_ref_bx, .-n150_var_ref_bx
                        .type            n151_lit_integer_bx, @function
n151_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:     mov              r11, 126
                        mov              qword ptr [rbp + 3424], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_441_0]
                        mov              qword ptr [rbp + 3432], rax;         jmp   n152_call_α
.Llit_integer_α_441_0:  .quad            2
                        .size            n151_lit_integer_bx, .-n151_lit_integer_bx
                        .type            n152_call_bx, @function
n152_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_call_α:            mov              r11, 127
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3496], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3416]
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
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n153_call_α
n152_call_β:            mov              r11, 127;                            jmp   d$2F3_ω
                        .size            n152_call_bx, .-n152_call_bx
                        .type            n153_call_bx, @function
n153_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_call_α:            mov              r11, 128
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3592], rax
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3576], rax
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3560], rax
                        lea              rdi, [rbp + 3552]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n154_call_α
n153_call_β:            mov              r11, 128;                            jmp   d$2F3_step
                        .size            n153_call_bx, .-n153_call_bx
                        .type            n154_call_bx, @function
n154_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_call_α:            mov              r11, 129
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3000], rax
                        lea              rdi, [rbp + 2992]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n155_cut_α
n154_call_β:            mov              r11, 129;                            jmp   d$2F3_step
                        .size            n154_call_bx, .-n154_call_bx
                        .type            n155_cut_bx, @function
n155_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_cut_α:             mov              r11, 130
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n156_var_ref_α
                        .size            n155_cut_bx, .-n155_cut_bx
                        .type            n156_var_ref_bx, @function
n156_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx;         jmp   n157_var_ref_α
                        .size            n156_var_ref_bx, .-n156_var_ref_bx
                        .type            n157_var_ref_bx, @function
n157_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n158_var_ref_α
                        .size            n157_var_ref_bx, .-n157_var_ref_bx
                        .type            n158_var_ref_bx, @function
n158_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx;         jmp   n159_call_proc_staged_α
                        .size            n158_var_ref_bx, .-n158_var_ref_bx
                        .type            n159_call_proc_staged_bx, @function
n159_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_call_proc_staged_α:
                        mov              r11, 134
                        mov              qword ptr [rbp + 2896], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_454_200
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_454_201
.Lcall_proc_staged_α_454_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_454_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_454_202
                        mov              rax, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_454_203
.Lcall_proc_staged_α_454_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_454_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_454_204
                        mov              rax, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_454_205
.Lcall_proc_staged_α_454_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_454_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_454_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_454_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_454_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_454_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_454_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_454_3:
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_454_21
                        add              rsp, 32
.Lcall_proc_staged_α_454_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_454_2
.Lcall_proc_staged_α_454_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2896], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_454_2
.Lcall_proc_staged_α_454_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_454_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_454_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_454_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
.Lcall_proc_staged_α_454_29:
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n160_var_ref_α
n159_call_proc_staged_β:
                        mov              r11, 134
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_454_22
                        mov              rax, qword ptr [rbp + 2896]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_454_22
                        mov              rcx, qword ptr [rbp + 2904]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_454_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_454_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n160_var_ref_α
.Lcall_proc_staged_α_454_0:
                        .quad            .Lcall_proc_staged_α_454_0_s
.Lcall_proc_staged_α_454_0_s:
                        .string          "d/3"
                        .size            n159_call_proc_staged_bx, .-n159_call_proc_staged_bx
                        .type            n160_var_ref_bx, @function
n160_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n161_var_ref_α
                        .size            n160_var_ref_bx, .-n160_var_ref_bx
                        .type            n161_var_ref_bx, @function
n161_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx;         jmp   n162_var_ref_α
                        .size            n161_var_ref_bx, .-n161_var_ref_bx
                        .type            n162_var_ref_bx, @function
n162_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx;         jmp   n163_call_proc_staged_α
                        .size            n162_var_ref_bx, .-n162_var_ref_bx
                        .type            n163_call_proc_staged_bx, @function
n163_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_call_proc_staged_α:
                        mov              r11, 138
                        mov              qword ptr [rbp + 2752], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_462_200
                        mov              rax, qword ptr [rbp + 2784]
                        mov              rdx, qword ptr [rbp + 2792]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_462_201
.Lcall_proc_staged_α_462_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2784]
                        mov              rdx, qword ptr [rbp + 2792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_462_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_462_202
                        mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_462_203
.Lcall_proc_staged_α_462_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_462_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_462_204
                        mov              rax, qword ptr [rbp + 2816]
                        mov              rdx, qword ptr [rbp + 2824]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_462_205
.Lcall_proc_staged_α_462_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2816]
                        mov              rdx, qword ptr [rbp + 2824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_462_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_462_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_462_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7824]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_462_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_462_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_462_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_462_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_462_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_462_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_462_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_462_3:
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_462_21
                        add              rsp, 32
.Lcall_proc_staged_α_462_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_462_2
.Lcall_proc_staged_α_462_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2752], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_462_2
.Lcall_proc_staged_α_462_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_462_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n159_call_proc_staged_β
.Lcall_proc_staged_α_462_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_462_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
.Lcall_proc_staged_α_462_29:
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              al, 104;                             je    n159_call_proc_staged_β
                                                                              jmp   d$2F3_ret3
n163_call_proc_staged_β:
                        mov              r11, 138
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_462_22
                        mov              rax, qword ptr [rbp + 2752]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_462_22
                        mov              rcx, qword ptr [rbp + 2760]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_462_22:
                                                                              jmp   n159_call_proc_staged_β
.Lcall_proc_staged_α_462_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              al, 104;                             je    n159_call_proc_staged_β
                                                                              jmp   d$2F3_ret3
.Lcall_proc_staged_α_462_0:
                        .quad            .Lcall_proc_staged_α_462_0_s
.Lcall_proc_staged_α_462_0_s:
                        .string          "d/3"
                        .size            n163_call_proc_staged_bx, .-n163_call_proc_staged_bx
                        .type            n164_var_ref_bx, @function
n164_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx;         jmp   n165_lit_string_α
                        .size            n164_var_ref_bx, .-n164_var_ref_bx
                        .type            n165_lit_string_bx, @function
n165_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      mov              r11, 140
                        mov              qword ptr [rbp + 5136], 2            # result
                        mov              dword ptr [rbp + 5140], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_465_0]
                        mov              qword ptr [rbp + 5144], rax;         jmp   n166_var_ref_α
.Llit_string_α_465_0:   .quad            .Llit_string_α_465_0_s
.Llit_string_α_465_0_s: .string          "^"
                        .size            n165_lit_string_bx, .-n165_lit_string_bx
                        .type            n166_var_ref_bx, @function
n166_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx;         jmp   n167_var_ref_α
                        .size            n166_var_ref_bx, .-n166_var_ref_bx
                        .type            n167_var_ref_bx, @function
n167_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx;         jmp   n168_call_α
                        .size            n167_var_ref_bx, .-n167_var_ref_bx
                        .type            n168_call_bx, @function
n168_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:            mov              r11, 143
                        mov              rax, qword ptr [rbp + 5040]
                        mov              qword ptr [rbp + 5104], rax
                        mov              rax, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 5112], rax
                        mov              rax, qword ptr [rbp + 5024]
                        mov              qword ptr [rbp + 5088], rax
                        mov              rax, qword ptr [rbp + 5032]
                        mov              qword ptr [rbp + 5096], rax
                        mov              rax, qword ptr [rbp + 5136]
                        mov              qword ptr [rbp + 5072], rax
                        mov              rax, qword ptr [rbp + 5144]
                        mov              qword ptr [rbp + 5080], rax
                        lea              rdi, [rbp + 5072]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n169_call_α
n168_call_β:            mov              r11, 143;                            jmp   d$2F3_step
                        .size            n168_call_bx, .-n168_call_bx
                        .type            n169_call_bx, @function
n169_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_call_α:            mov              r11, 144
                        mov              rax, qword ptr [rbp + 5056]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 5064]
                        mov              qword ptr [rbp + 4984], rax
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 4968], rax
                        lea              rdi, [rbp + 4960]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n170_var_ref_α
n169_call_β:            mov              r11, 144;                            jmp   d$2F3_step
                        .size            n169_call_bx, .-n169_call_bx
                        .type            n170_var_ref_bx, @function
n170_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx;         jmp   n171_var_ref_α
                        .size            n170_var_ref_bx, .-n170_var_ref_bx
                        .type            n171_var_ref_bx, @function
n171_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx;         jmp   n172_call_α
                        .size            n171_var_ref_bx, .-n171_var_ref_bx
                        .type            n172_call_bx, @function
n172_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_call_α:            mov              r11, 147
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n173_var_ref_α
n172_call_β:            mov              r11, 147;                            jmp   d$2F3_step
                        .size            n172_call_bx, .-n172_call_bx
                        .type            n173_var_ref_bx, @function
n173_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx;         jmp   n174_lit_string_α
                        .size            n173_var_ref_bx, .-n173_var_ref_bx
                        .type            n174_lit_string_bx, @function
n174_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rbp + 4832], 2            # result
                        mov              dword ptr [rbp + 4836], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_479_0]
                        mov              qword ptr [rbp + 4840], rax;         jmp   n175_lit_string_α
.Llit_string_α_479_0:   .quad            .Llit_string_α_479_0_s
.Llit_string_α_479_0_s: .string          "*"
                        .size            n174_lit_string_bx, .-n174_lit_string_bx
                        .type            n175_lit_string_bx, @function
n175_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:      mov              r11, 150
                        mov              qword ptr [rbp + 4608], 2            # result
                        mov              dword ptr [rbp + 4612], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_480_0]
                        mov              qword ptr [rbp + 4616], rax;         jmp   n176_var_ref_α
.Llit_string_α_480_0:   .quad            .Llit_string_α_480_0_s
.Llit_string_α_480_0_s: .string          "*"
                        .size            n175_lit_string_bx, .-n175_lit_string_bx
                        .type            n176_var_ref_bx, @function
n176_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx;         jmp   n177_var_ref_α
                        .size            n176_var_ref_bx, .-n176_var_ref_bx
                        .type            n177_var_ref_bx, @function
n177_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx;         jmp   n178_call_α
                        .size            n177_var_ref_bx, .-n177_var_ref_bx
                        .type            n178_call_bx, @function
n178_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_call_α:            mov              r11, 153
                        mov              rax, qword ptr [rbp + 4512]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 4520]
                        mov              qword ptr [rbp + 4584], rax
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 4560], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 4568], rax
                        mov              rax, qword ptr [rbp + 4608]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 4616]
                        mov              qword ptr [rbp + 4552], rax
                        lea              rdi, [rbp + 4544]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n179_lit_string_α
n178_call_β:            mov              r11, 153;                            jmp   d$2F3_ω
                        .size            n178_call_bx, .-n178_call_bx
                        .type            n179_lit_string_bx, @function
n179_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:      mov              r11, 154
                        mov              qword ptr [rbp + 4736], 2            # result
                        mov              dword ptr [rbp + 4740], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_486_0]
                        mov              qword ptr [rbp + 4744], rax;         jmp   n180_var_ref_α
.Llit_string_α_486_0:   .quad            .Llit_string_α_486_0_s
.Llit_string_α_486_0_s: .string          "^"
                        .size            n179_lit_string_bx, .-n179_lit_string_bx
                        .type            n180_var_ref_bx, @function
n180_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:         mov              r11, 155
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx;         jmp   n181_var_ref_α
                        .size            n180_var_ref_bx, .-n180_var_ref_bx
                        .type            n181_var_ref_bx, @function
n181_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx;         jmp   n182_call_α
                        .size            n181_var_ref_bx, .-n181_var_ref_bx
                        .type            n182_call_bx, @function
n182_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_call_α:            mov              r11, 157
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 4712], rax
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 4696], rax
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4672], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4680], rax
                        lea              rdi, [rbp + 4672]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4656], rax
                        mov              qword ptr [rbp + 4664], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n183_call_α
n182_call_β:            mov              r11, 157;                            jmp   d$2F3_ω
                        .size            n182_call_bx, .-n182_call_bx
                        .type            n183_call_bx, @function
n183_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_call_α:            mov              r11, 158
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4808], rax
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4792], rax
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 4776], rax
                        lea              rdi, [rbp + 4768]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n184_call_α
n183_call_β:            mov              r11, 158;                            jmp   d$2F3_step
                        .size            n183_call_bx, .-n183_call_bx
                        .type            n184_call_bx, @function
n184_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_call_α:            mov              r11, 159
                        mov              rax, qword ptr [rbp + 4752]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4760]
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
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n185_cut_α
n184_call_β:            mov              r11, 159;                            jmp   d$2F3_step
                        .size            n184_call_bx, .-n184_call_bx
                        .type            n185_cut_bx, @function
n185_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_cut_α:             mov              r11, 160
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n186_var_ref_α
                        .size            n185_cut_bx, .-n185_cut_bx
                        .type            n186_var_ref_bx, @function
n186_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:         mov              r11, 161
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx;         jmp   n187_call_α
                        .size            n186_var_ref_bx, .-n186_var_ref_bx
                        .type            n187_call_bx, @function
n187_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_call_α:            mov              r11, 162
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 4376], rax
                        lea              rdi, [rbp + 4368]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dop_pl_integer@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n188_var_ref_α
n187_call_β:            mov              r11, 162;                            jmp   d$2F3_ω
                        .size            n187_call_bx, .-n187_call_bx
                        .type            n188_var_ref_bx, @function
n188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx;         jmp   n189_var_α
                        .size            n188_var_ref_bx, .-n188_var_ref_bx
                        .type            n189_var_bx, @function
n189_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             mov              r11, 164
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 4232], rax;         jmp   n190_call_α
                        .size            n189_var_bx, .-n189_var_bx
                        .type            n190_call_bx, @function
n190_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_call_α:            mov              r11, 165
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4264], rax
                        lea              rdi, [rbp + 4256]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n191_lit_integer_α
n190_call_β:            mov              r11, 165;                            jmp   d$2F3_step
                        .size            n190_call_bx, .-n190_call_bx
                        .type            n191_lit_integer_bx, @function
n191_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:     mov              r11, 166
                        mov              qword ptr [rbp + 4288], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_504_0]
                        mov              qword ptr [rbp + 4296], rax;         jmp   n192_call_α
.Llit_integer_α_504_0:  .quad            1
                        .size            n191_lit_integer_bx, .-n191_lit_integer_bx
                        .type            n192_call_bx, @function
n192_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_call_α:            mov              r11, 167
                        mov              rax, qword ptr [rbp + 4288]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 4328], rax
                        lea              rdi, [rbp + 4320]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n193_call_α
n192_call_β:            mov              r11, 167;                            jmp   d$2F3_step
                        .size            n192_call_bx, .-n192_call_bx
                        .type            n193_call_bx, @function
n193_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_call_α:            mov              r11, 168
                        mov              rax, qword ptr [rbp + 4288]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 4200], rax
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4184], rax
                        lea              rdi, [rbp + 4176]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n194_call_α
n193_call_β:            mov              r11, 168;                            jmp   d$2F3_step
                        .size            n193_call_bx, .-n193_call_bx
                        .type            n194_call_bx, @function
n194_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_call_α:            mov              r11, 169
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 4120], rax
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4104], rax
                        lea              rdi, [rbp + 4096]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n195_var_ref_α
n194_call_β:            mov              r11, 169;                            jmp   d$2F3_ω
                        .size            n194_call_bx, .-n194_call_bx
                        .type            n195_var_ref_bx, @function
n195_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx;         jmp   n196_var_ref_α
                        .size            n195_var_ref_bx, .-n195_var_ref_bx
                        .type            n196_var_ref_bx, @function
n196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx;         jmp   n197_var_ref_α
                        .size            n196_var_ref_bx, .-n196_var_ref_bx
                        .type            n197_var_ref_bx, @function
n197_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx;         jmp   n198_call_proc_staged_α
                        .size            n197_var_ref_bx, .-n197_var_ref_bx
                        .type            n198_call_proc_staged_bx, @function
n198_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_call_proc_staged_α:
                        mov              r11, 173
                        mov              qword ptr [rbp + 4000], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_515_200
                        mov              rax, qword ptr [rbp + 4032]
                        mov              rdx, qword ptr [rbp + 4040]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_515_201
.Lcall_proc_staged_α_515_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4032]
                        mov              rdx, qword ptr [rbp + 4040]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_515_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_515_202
                        mov              rax, qword ptr [rbp + 4048]
                        mov              rdx, qword ptr [rbp + 4056]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_515_203
.Lcall_proc_staged_α_515_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 4048]
                        mov              rdx, qword ptr [rbp + 4056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_515_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_515_204
                        mov              rax, qword ptr [rbp + 4064]
                        mov              rdx, qword ptr [rbp + 4072]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_515_205
.Lcall_proc_staged_α_515_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 4064]
                        mov              rdx, qword ptr [rbp + 4072]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_515_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_515_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_515_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7824]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_515_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_515_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_515_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_515_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_515_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_515_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_515_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_515_3:
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_515_21
                        add              rsp, 32
.Lcall_proc_staged_α_515_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_515_2
.Lcall_proc_staged_α_515_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4000], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_515_2
.Lcall_proc_staged_α_515_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_515_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_515_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_515_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3936]
                        mov              rdx, qword ptr [rbp + 3944]
.Lcall_proc_staged_α_515_29:
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret4
n198_call_proc_staged_β:
                        mov              r11, 173
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_515_22
                        mov              rax, qword ptr [rbp + 4000]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_515_22
                        mov              rcx, qword ptr [rbp + 4008]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_515_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_515_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret4
.Lcall_proc_staged_α_515_0:
                        .quad            .Lcall_proc_staged_α_515_0_s
.Lcall_proc_staged_α_515_0_s:
                        .string          "d/3"
                        .size            n198_call_proc_staged_bx, .-n198_call_proc_staged_bx
                        .type            n199_var_ref_bx, @function
n199_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5632], rax
                        mov              qword ptr [rbp + 5640], rdx;         jmp   n200_lit_string_α
                        .size            n199_var_ref_bx, .-n199_var_ref_bx
                        .type            n200_lit_string_bx, @function
n200_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:      mov              r11, 175
                        mov              qword ptr [rbp + 5728], 2            # result
                        mov              dword ptr [rbp + 5732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_518_0]
                        mov              qword ptr [rbp + 5736], rax;         jmp   n201_var_ref_α
.Llit_string_α_518_0:   .quad            .Llit_string_α_518_0_s
.Llit_string_α_518_0_s: .string          "-"
                        .size            n200_lit_string_bx, .-n200_lit_string_bx
                        .type            n201_var_ref_bx, @function
n201_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:         mov              r11, 176
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx;         jmp   n202_call_α
                        .size            n201_var_ref_bx, .-n201_var_ref_bx
                        .type            n202_call_bx, @function
n202_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_call_α:            mov              r11, 177
                        mov              rax, qword ptr [rbp + 5648]
                        mov              qword ptr [rbp + 5696], rax
                        mov              rax, qword ptr [rbp + 5656]
                        mov              qword ptr [rbp + 5704], rax
                        mov              rax, qword ptr [rbp + 5728]
                        mov              qword ptr [rbp + 5680], rax
                        mov              rax, qword ptr [rbp + 5736]
                        mov              qword ptr [rbp + 5688], rax
                        lea              rdi, [rbp + 5680]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n203_call_α
n202_call_β:            mov              r11, 177;                            jmp   d$2F3_step
                        .size            n202_call_bx, .-n202_call_bx
                        .type            n203_call_bx, @function
n203_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_call_α:            mov              r11, 178
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5600], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5608], rax
                        mov              rax, qword ptr [rbp + 5632]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 5640]
                        mov              qword ptr [rbp + 5592], rax
                        lea              rdi, [rbp + 5584]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n204_var_ref_α
n203_call_β:            mov              r11, 178;                            jmp   d$2F3_step
                        .size            n203_call_bx, .-n203_call_bx
                        .type            n204_var_ref_bx, @function
n204_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 5536], rax
                        mov              qword ptr [rbp + 5544], rdx;         jmp   n205_var_ref_α
                        .size            n204_var_ref_bx, .-n204_var_ref_bx
                        .type            n205_var_ref_bx, @function
n205_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:         mov              r11, 180
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx;         jmp   n206_call_α
                        .size            n205_var_ref_bx, .-n205_var_ref_bx
                        .type            n206_call_bx, @function
n206_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_call_α:            mov              r11, 181
                        mov              rax, qword ptr [rbp + 5552]
                        mov              qword ptr [rbp + 5504], rax
                        mov              rax, qword ptr [rbp + 5560]
                        mov              qword ptr [rbp + 5512], rax
                        mov              rax, qword ptr [rbp + 5536]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 5544]
                        mov              qword ptr [rbp + 5496], rax
                        lea              rdi, [rbp + 5488]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n207_var_ref_α
n206_call_β:            mov              r11, 181;                            jmp   d$2F3_step
                        .size            n206_call_bx, .-n206_call_bx
                        .type            n207_var_ref_bx, @function
n207_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:         mov              r11, 182
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5360], rax
                        mov              qword ptr [rbp + 5368], rdx;         jmp   n208_lit_string_α
                        .size            n207_var_ref_bx, .-n207_var_ref_bx
                        .type            n208_lit_string_bx, @function
n208_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:      mov              r11, 183
                        mov              qword ptr [rbp + 5456], 2            # result
                        mov              dword ptr [rbp + 5460], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_530_0]
                        mov              qword ptr [rbp + 5464], rax;         jmp   n209_var_ref_α
.Llit_string_α_530_0:   .quad            .Llit_string_α_530_0_s
.Llit_string_α_530_0_s: .string          "-"
                        .size            n208_lit_string_bx, .-n208_lit_string_bx
                        .type            n209_var_ref_bx, @function
n209_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 184
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx;         jmp   n210_call_α
                        .size            n209_var_ref_bx, .-n209_var_ref_bx
                        .type            n210_call_bx, @function
n210_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_call_α:            mov              r11, 185
                        mov              rax, qword ptr [rbp + 5376]
                        mov              qword ptr [rbp + 5424], rax
                        mov              rax, qword ptr [rbp + 5384]
                        mov              qword ptr [rbp + 5432], rax
                        mov              rax, qword ptr [rbp + 5456]
                        mov              qword ptr [rbp + 5408], rax
                        mov              rax, qword ptr [rbp + 5464]
                        mov              qword ptr [rbp + 5416], rax
                        lea              rdi, [rbp + 5408]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5392], rax
                        mov              qword ptr [rbp + 5400], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n211_call_α
n210_call_β:            mov              r11, 185;                            jmp   d$2F3_step
                        .size            n210_call_bx, .-n210_call_bx
                        .type            n211_call_bx, @function
n211_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_call_α:            mov              r11, 186
                        mov              rax, qword ptr [rbp + 5392]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 5400]
                        mov              qword ptr [rbp + 5336], rax
                        mov              rax, qword ptr [rbp + 5360]
                        mov              qword ptr [rbp + 5312], rax
                        mov              rax, qword ptr [rbp + 5368]
                        mov              qword ptr [rbp + 5320], rax
                        lea              rdi, [rbp + 5312]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n212_cut_α
n211_call_β:            mov              r11, 186;                            jmp   d$2F3_step
                        .size            n211_call_bx, .-n211_call_bx
                        .type            n212_cut_bx, @function
n212_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_cut_α:             mov              r11, 187
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n213_var_ref_α
                        .size            n212_cut_bx, .-n212_cut_bx
                        .type            n213_var_ref_bx, @function
n213_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx;         jmp   n214_var_ref_α
                        .size            n213_var_ref_bx, .-n213_var_ref_bx
                        .type            n214_var_ref_bx, @function
n214_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx;         jmp   n215_var_ref_α
                        .size            n214_var_ref_bx, .-n214_var_ref_bx
                        .type            n215_var_ref_bx, @function
n215_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:         mov              r11, 190
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx;         jmp   n216_call_proc_staged_α
                        .size            n215_var_ref_bx, .-n215_var_ref_bx
                        .type            n216_call_proc_staged_bx, @function
n216_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_call_proc_staged_α:
                        mov              r11, 191
                        mov              qword ptr [rbp + 5216], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_544_200
                        mov              rax, qword ptr [rbp + 5248]
                        mov              rdx, qword ptr [rbp + 5256]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_544_201
.Lcall_proc_staged_α_544_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 5248]
                        mov              rdx, qword ptr [rbp + 5256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_544_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_544_202
                        mov              rax, qword ptr [rbp + 5264]
                        mov              rdx, qword ptr [rbp + 5272]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_544_203
.Lcall_proc_staged_α_544_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 5264]
                        mov              rdx, qword ptr [rbp + 5272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_544_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_544_204
                        mov              rax, qword ptr [rbp + 5280]
                        mov              rdx, qword ptr [rbp + 5288]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_544_205
.Lcall_proc_staged_α_544_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 5280]
                        mov              rdx, qword ptr [rbp + 5288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_544_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_544_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_544_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7824]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_544_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_544_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_544_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_544_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_544_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_544_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_544_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_544_3:
                        mov              qword ptr [rbp + 5216], rax
                        mov              qword ptr [rbp + 5224], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_544_21
                        add              rsp, 32
.Lcall_proc_staged_α_544_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_544_2
.Lcall_proc_staged_α_544_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 5216], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_544_2
.Lcall_proc_staged_α_544_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_544_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_544_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_544_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 5152]
                        mov              rdx, qword ptr [rbp + 5160]
.Lcall_proc_staged_α_544_29:
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret5
n216_call_proc_staged_β:
                        mov              r11, 191
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_544_22
                        mov              rax, qword ptr [rbp + 5216]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_544_22
                        mov              rcx, qword ptr [rbp + 5224]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_544_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_544_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret5
.Lcall_proc_staged_α_544_0:
                        .quad            .Lcall_proc_staged_α_544_0_s
.Lcall_proc_staged_α_544_0_s:
                        .string          "d/3"
                        .size            n216_call_proc_staged_bx, .-n216_call_proc_staged_bx
                        .type            n217_var_ref_bx, @function
n217_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx;         jmp   n218_lit_string_α
                        .size            n217_var_ref_bx, .-n217_var_ref_bx
                        .type            n218_lit_string_bx, @function
n218_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_string_α:      mov              r11, 193
                        mov              qword ptr [rbp + 6432], 2            # result
                        mov              dword ptr [rbp + 6436], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_547_0]
                        mov              qword ptr [rbp + 6440], rax;         jmp   n219_var_ref_α
.Llit_string_α_547_0:   .quad            .Llit_string_α_547_0_s
.Llit_string_α_547_0_s: .string          "exp"
                        .size            n218_lit_string_bx, .-n218_lit_string_bx
                        .type            n219_var_ref_bx, @function
n219_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx;         jmp   n220_call_α
                        .size            n219_var_ref_bx, .-n219_var_ref_bx
                        .type            n220_call_bx, @function
n220_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_call_α:            mov              r11, 195
                        mov              rax, qword ptr [rbp + 6352]
                        mov              qword ptr [rbp + 6400], rax
                        mov              rax, qword ptr [rbp + 6360]
                        mov              qword ptr [rbp + 6408], rax
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 6384], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 6392], rax
                        lea              rdi, [rbp + 6384]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6368], rax
                        mov              qword ptr [rbp + 6376], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n221_call_α
n220_call_β:            mov              r11, 195;                            jmp   d$2F3_step
                        .size            n220_call_bx, .-n220_call_bx
                        .type            n221_call_bx, @function
n221_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_call_α:            mov              r11, 196
                        mov              rax, qword ptr [rbp + 6368]
                        mov              qword ptr [rbp + 6304], rax
                        mov              rax, qword ptr [rbp + 6376]
                        mov              qword ptr [rbp + 6312], rax
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 6288], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 6296], rax
                        lea              rdi, [rbp + 6288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6272], rax
                        mov              qword ptr [rbp + 6280], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n222_var_ref_α
n221_call_β:            mov              r11, 196;                            jmp   d$2F3_step
                        .size            n221_call_bx, .-n221_call_bx
                        .type            n222_var_ref_bx, @function
n222_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx;         jmp   n223_var_ref_α
                        .size            n222_var_ref_bx, .-n222_var_ref_bx
                        .type            n223_var_ref_bx, @function
n223_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx;         jmp   n224_call_α
                        .size            n223_var_ref_bx, .-n223_var_ref_bx
                        .type            n224_call_bx, @function
n224_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_call_α:            mov              r11, 199
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6176], rax
                        mov              qword ptr [rbp + 6184], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n225_var_ref_α
n224_call_β:            mov              r11, 199;                            jmp   d$2F3_step
                        .size            n224_call_bx, .-n224_call_bx
                        .type            n225_var_ref_bx, @function
n225_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5952], rax
                        mov              qword ptr [rbp + 5960], rdx;         jmp   n226_lit_string_α
                        .size            n225_var_ref_bx, .-n225_var_ref_bx
                        .type            n226_lit_string_bx, @function
n226_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:      mov              r11, 201
                        mov              qword ptr [rbp + 6160], 2            # result
                        mov              dword ptr [rbp + 6164], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_559_0]
                        mov              qword ptr [rbp + 6168], rax;         jmp   n227_lit_string_α
.Llit_string_α_559_0:   .quad            .Llit_string_α_559_0_s
.Llit_string_α_559_0_s: .string          "*"
                        .size            n226_lit_string_bx, .-n226_lit_string_bx
                        .type            n227_lit_string_bx, @function
n227_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:      mov              r11, 202
                        mov              qword ptr [rbp + 6048], 2            # result
                        mov              dword ptr [rbp + 6052], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_560_0]
                        mov              qword ptr [rbp + 6056], rax;         jmp   n228_var_ref_α
.Llit_string_α_560_0:   .quad            .Llit_string_α_560_0_s
.Llit_string_α_560_0_s: .string          "exp"
                        .size            n227_lit_string_bx, .-n227_lit_string_bx
                        .type            n228_var_ref_bx, @function
n228_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 5968], rax
                        mov              qword ptr [rbp + 5976], rdx;         jmp   n229_call_α
                        .size            n228_var_ref_bx, .-n228_var_ref_bx
                        .type            n229_call_bx, @function
n229_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_call_α:            mov              r11, 204
                        mov              rax, qword ptr [rbp + 5968]
                        mov              qword ptr [rbp + 6016], rax
                        mov              rax, qword ptr [rbp + 5976]
                        mov              qword ptr [rbp + 6024], rax
                        mov              rax, qword ptr [rbp + 6048]
                        mov              qword ptr [rbp + 6000], rax
                        mov              rax, qword ptr [rbp + 6056]
                        mov              qword ptr [rbp + 6008], rax
                        lea              rdi, [rbp + 6000]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5984], rax
                        mov              qword ptr [rbp + 5992], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n230_var_ref_α
n229_call_β:            mov              r11, 204;                            jmp   d$2F3_ω
                        .size            n229_call_bx, .-n229_call_bx
                        .type            n230_var_ref_bx, @function
n230_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:         mov              r11, 205
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx;         jmp   n231_call_α
                        .size            n230_var_ref_bx, .-n230_var_ref_bx
                        .type            n231_call_bx, @function
n231_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_call_α:            mov              r11, 206
                        mov              rax, qword ptr [rbp + 6064]
                        mov              qword ptr [rbp + 6128], rax
                        mov              rax, qword ptr [rbp + 6072]
                        mov              qword ptr [rbp + 6136], rax
                        mov              rax, qword ptr [rbp + 5984]
                        mov              qword ptr [rbp + 6112], rax
                        mov              rax, qword ptr [rbp + 5992]
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
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n232_call_α
n231_call_β:            mov              r11, 206;                            jmp   d$2F3_step
                        .size            n231_call_bx, .-n231_call_bx
                        .type            n232_call_bx, @function
n232_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_call_α:            mov              r11, 207
                        mov              rax, qword ptr [rbp + 6080]
                        mov              qword ptr [rbp + 5920], rax
                        mov              rax, qword ptr [rbp + 6088]
                        mov              qword ptr [rbp + 5928], rax
                        mov              rax, qword ptr [rbp + 5952]
                        mov              qword ptr [rbp + 5904], rax
                        mov              rax, qword ptr [rbp + 5960]
                        mov              qword ptr [rbp + 5912], rax
                        lea              rdi, [rbp + 5904]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5888], rax
                        mov              qword ptr [rbp + 5896], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n233_cut_α
n232_call_β:            mov              r11, 207;                            jmp   d$2F3_step
                        .size            n232_call_bx, .-n232_call_bx
                        .type            n233_cut_bx, @function
n233_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_cut_α:             mov              r11, 208
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n234_var_ref_α
                        .size            n233_cut_bx, .-n233_cut_bx
                        .type            n234_var_ref_bx, @function
n234_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 5840], rax
                        mov              qword ptr [rbp + 5848], rdx;         jmp   n235_var_ref_α
                        .size            n234_var_ref_bx, .-n234_var_ref_bx
                        .type            n235_var_ref_bx, @function
n235_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              r11, 210
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx;         jmp   n236_var_ref_α
                        .size            n235_var_ref_bx, .-n235_var_ref_bx
                        .type            n236_var_ref_bx, @function
n236_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx;         jmp   n237_call_proc_staged_α
                        .size            n236_var_ref_bx, .-n236_var_ref_bx
                        .type            n237_call_proc_staged_bx, @function
n237_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_call_proc_staged_α:
                        mov              r11, 212
                        mov              qword ptr [rbp + 5808], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_577_200
                        mov              rax, qword ptr [rbp + 5840]
                        mov              rdx, qword ptr [rbp + 5848]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_577_201
.Lcall_proc_staged_α_577_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 5840]
                        mov              rdx, qword ptr [rbp + 5848]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_577_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_577_202
                        mov              rax, qword ptr [rbp + 5856]
                        mov              rdx, qword ptr [rbp + 5864]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_577_203
.Lcall_proc_staged_α_577_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 5856]
                        mov              rdx, qword ptr [rbp + 5864]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_577_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_577_204
                        mov              rax, qword ptr [rbp + 5872]
                        mov              rdx, qword ptr [rbp + 5880]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_577_205
.Lcall_proc_staged_α_577_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 5872]
                        mov              rdx, qword ptr [rbp + 5880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_577_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_577_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_577_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7824]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_577_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_577_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_577_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_577_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_577_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_577_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_577_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_577_3:
                        mov              qword ptr [rbp + 5808], rax
                        mov              qword ptr [rbp + 5816], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_577_21
                        add              rsp, 32
.Lcall_proc_staged_α_577_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_577_2
.Lcall_proc_staged_α_577_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 5808], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_577_2
.Lcall_proc_staged_α_577_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_577_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_577_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_577_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 5744], rax
                        mov              qword ptr [rbp + 5752], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 5744]
                        mov              rdx, qword ptr [rbp + 5752]
.Lcall_proc_staged_α_577_29:
                        mov              qword ptr [rbp + 5744], rax
                        mov              qword ptr [rbp + 5752], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret6
n237_call_proc_staged_β:
                        mov              r11, 212
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_577_22
                        mov              rax, qword ptr [rbp + 5808]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_577_22
                        mov              rcx, qword ptr [rbp + 5816]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_577_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_577_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5744], rax
                        mov              qword ptr [rbp + 5752], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret6
.Lcall_proc_staged_α_577_0:
                        .quad            .Lcall_proc_staged_α_577_0_s
.Lcall_proc_staged_α_577_0_s:
                        .string          "d/3"
                        .size            n237_call_proc_staged_bx, .-n237_call_proc_staged_bx
                        .type            n238_var_ref_bx, @function
n238_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_var_ref_α:         mov              r11, 213
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6960], rax
                        mov              qword ptr [rbp + 6968], rdx;         jmp   n239_lit_string_α
                        .size            n238_var_ref_bx, .-n238_var_ref_bx
                        .type            n239_lit_string_bx, @function
n239_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:      mov              r11, 214
                        mov              qword ptr [rbp + 7056], 2            # result
                        mov              dword ptr [rbp + 7060], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_580_0]
                        mov              qword ptr [rbp + 7064], rax;         jmp   n240_var_ref_α
.Llit_string_α_580_0:   .quad            .Llit_string_α_580_0_s
.Llit_string_α_580_0_s: .string          "log"
                        .size            n239_lit_string_bx, .-n239_lit_string_bx
                        .type            n240_var_ref_bx, @function
n240_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_var_ref_α:         mov              r11, 215
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 6976], rax
                        mov              qword ptr [rbp + 6984], rdx;         jmp   n241_call_α
                        .size            n240_var_ref_bx, .-n240_var_ref_bx
                        .type            n241_call_bx, @function
n241_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_call_α:            mov              r11, 216
                        mov              rax, qword ptr [rbp + 6976]
                        mov              qword ptr [rbp + 7024], rax
                        mov              rax, qword ptr [rbp + 6984]
                        mov              qword ptr [rbp + 7032], rax
                        mov              rax, qword ptr [rbp + 7056]
                        mov              qword ptr [rbp + 7008], rax
                        mov              rax, qword ptr [rbp + 7064]
                        mov              qword ptr [rbp + 7016], rax
                        lea              rdi, [rbp + 7008]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6992], rax
                        mov              qword ptr [rbp + 7000], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n242_call_α
n241_call_β:            mov              r11, 216;                            jmp   d$2F3_step
                        .size            n241_call_bx, .-n241_call_bx
                        .type            n242_call_bx, @function
n242_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_call_α:            mov              r11, 217
                        mov              rax, qword ptr [rbp + 6992]
                        mov              qword ptr [rbp + 6928], rax
                        mov              rax, qword ptr [rbp + 7000]
                        mov              qword ptr [rbp + 6936], rax
                        mov              rax, qword ptr [rbp + 6960]
                        mov              qword ptr [rbp + 6912], rax
                        mov              rax, qword ptr [rbp + 6968]
                        mov              qword ptr [rbp + 6920], rax
                        lea              rdi, [rbp + 6912]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6896], rax
                        mov              qword ptr [rbp + 6904], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n243_var_ref_α
n242_call_β:            mov              r11, 217;                            jmp   d$2F3_step
                        .size            n242_call_bx, .-n242_call_bx
                        .type            n243_var_ref_bx, @function
n243_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6864], rax
                        mov              qword ptr [rbp + 6872], rdx;         jmp   n244_var_ref_α
                        .size            n243_var_ref_bx, .-n243_var_ref_bx
                        .type            n244_var_ref_bx, @function
n244_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx;         jmp   n245_call_α
                        .size            n244_var_ref_bx, .-n244_var_ref_bx
                        .type            n245_call_bx, @function
n245_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_call_α:            mov              r11, 220
                        mov              rax, qword ptr [rbp + 6880]
                        mov              qword ptr [rbp + 6832], rax
                        mov              rax, qword ptr [rbp + 6888]
                        mov              qword ptr [rbp + 6840], rax
                        mov              rax, qword ptr [rbp + 6864]
                        mov              qword ptr [rbp + 6816], rax
                        mov              rax, qword ptr [rbp + 6872]
                        mov              qword ptr [rbp + 6824], rax
                        lea              rdi, [rbp + 6816]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6800], rax
                        mov              qword ptr [rbp + 6808], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n246_var_ref_α
n245_call_β:            mov              r11, 220;                            jmp   d$2F3_step
                        .size            n245_call_bx, .-n245_call_bx
                        .type            n246_var_ref_bx, @function
n246_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6656], rax
                        mov              qword ptr [rbp + 6664], rdx;         jmp   n247_lit_string_α
                        .size            n246_var_ref_bx, .-n246_var_ref_bx
                        .type            n247_lit_string_bx, @function
n247_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:      mov              r11, 222
                        mov              qword ptr [rbp + 6784], 2            # result
                        mov              dword ptr [rbp + 6788], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_592_0]
                        mov              qword ptr [rbp + 6792], rax;         jmp   n248_var_ref_α
.Llit_string_α_592_0:   .quad            .Llit_string_α_592_0_s
.Llit_string_α_592_0_s: .string          "/"
                        .size            n247_lit_string_bx, .-n247_lit_string_bx
                        .type            n248_var_ref_bx, @function
n248_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:         mov              r11, 223
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 6672], rax
                        mov              qword ptr [rbp + 6680], rdx;         jmp   n249_var_ref_α
                        .size            n248_var_ref_bx, .-n248_var_ref_bx
                        .type            n249_var_ref_bx, @function
n249_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:         mov              r11, 224
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx;         jmp   n250_call_α
                        .size            n249_var_ref_bx, .-n249_var_ref_bx
                        .type            n250_call_bx, @function
n250_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_call_α:            mov              r11, 225
                        mov              rax, qword ptr [rbp + 6688]
                        mov              qword ptr [rbp + 6752], rax
                        mov              rax, qword ptr [rbp + 6696]
                        mov              qword ptr [rbp + 6760], rax
                        mov              rax, qword ptr [rbp + 6672]
                        mov              qword ptr [rbp + 6736], rax
                        mov              rax, qword ptr [rbp + 6680]
                        mov              qword ptr [rbp + 6744], rax
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 6720], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 6728], rax
                        lea              rdi, [rbp + 6720]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6704], rax
                        mov              qword ptr [rbp + 6712], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n251_call_α
n250_call_β:            mov              r11, 225;                            jmp   d$2F3_step
                        .size            n250_call_bx, .-n250_call_bx
                        .type            n251_call_bx, @function
n251_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_call_α:            mov              r11, 226
                        mov              rax, qword ptr [rbp + 6704]
                        mov              qword ptr [rbp + 6624], rax
                        mov              rax, qword ptr [rbp + 6712]
                        mov              qword ptr [rbp + 6632], rax
                        mov              rax, qword ptr [rbp + 6656]
                        mov              qword ptr [rbp + 6608], rax
                        mov              rax, qword ptr [rbp + 6664]
                        mov              qword ptr [rbp + 6616], rax
                        lea              rdi, [rbp + 6608]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6592], rax
                        mov              qword ptr [rbp + 6600], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n252_cut_α
n251_call_β:            mov              r11, 226;                            jmp   d$2F3_step
                        .size            n251_call_bx, .-n251_call_bx
                        .type            n252_cut_bx, @function
n252_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_cut_α:             mov              r11, 227
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n253_var_ref_α
                        .size            n252_cut_bx, .-n252_cut_bx
                        .type            n253_var_ref_bx, @function
n253_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx;         jmp   n254_var_ref_α
                        .size            n253_var_ref_bx, .-n253_var_ref_bx
                        .type            n254_var_ref_bx, @function
n254_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:         mov              r11, 229
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx;         jmp   n255_var_ref_α
                        .size            n254_var_ref_bx, .-n254_var_ref_bx
                        .type            n255_var_ref_bx, @function
n255_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 6576], rax
                        mov              qword ptr [rbp + 6584], rdx;         jmp   n256_call_proc_staged_α
                        .size            n255_var_ref_bx, .-n255_var_ref_bx
                        .type            n256_call_proc_staged_bx, @function
n256_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_call_proc_staged_α:
                        mov              r11, 231
                        mov              qword ptr [rbp + 6512], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_608_200
                        mov              rax, qword ptr [rbp + 6544]
                        mov              rdx, qword ptr [rbp + 6552]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_608_201
.Lcall_proc_staged_α_608_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 6544]
                        mov              rdx, qword ptr [rbp + 6552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_608_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_608_202
                        mov              rax, qword ptr [rbp + 6560]
                        mov              rdx, qword ptr [rbp + 6568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_608_203
.Lcall_proc_staged_α_608_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 6560]
                        mov              rdx, qword ptr [rbp + 6568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_608_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_608_204
                        mov              rax, qword ptr [rbp + 6576]
                        mov              rdx, qword ptr [rbp + 6584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_608_205
.Lcall_proc_staged_α_608_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 6576]
                        mov              rdx, qword ptr [rbp + 6584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_608_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_608_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_608_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7824]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_608_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_608_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_608_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_608_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_608_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_608_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_608_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_608_3:
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_608_21
                        add              rsp, 32
.Lcall_proc_staged_α_608_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_608_2
.Lcall_proc_staged_α_608_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 6512], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_608_2
.Lcall_proc_staged_α_608_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_608_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_608_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_608_29
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
.Lcall_proc_staged_α_608_29:
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret7
n256_call_proc_staged_β:
                        mov              r11, 231
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_608_22
                        mov              rax, qword ptr [rbp + 6512]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_608_22
                        mov              rcx, qword ptr [rbp + 6520]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_608_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_608_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret7
.Lcall_proc_staged_α_608_0:
                        .quad            .Lcall_proc_staged_α_608_0_s
.Lcall_proc_staged_α_608_0_s:
                        .string          "d/3"
                        .size            n256_call_proc_staged_bx, .-n256_call_proc_staged_bx
                        .type            n257_var_ref_bx, @function
n257_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:         mov              r11, 232
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7328], rax
                        mov              qword ptr [rbp + 7336], rdx;         jmp   n258_var_ref_α
                        .size            n257_var_ref_bx, .-n257_var_ref_bx
                        .type            n258_var_ref_bx, @function
n258_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7728]
                        mov              qword ptr [rbp + 7344], rax
                        mov              qword ptr [rbp + 7352], rdx;         jmp   n259_call_α
                        .size            n258_var_ref_bx, .-n258_var_ref_bx
                        .type            n259_call_bx, @function
n259_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_call_α:            mov              r11, 234
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 7296], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 7304], rax
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 7280], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 7288], rax
                        lea              rdi, [rbp + 7280]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7264], rax
                        mov              qword ptr [rbp + 7272], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n260_var_ref_α
n259_call_β:            mov              r11, 234;                            jmp   d$2F3_step
                        .size            n259_call_bx, .-n259_call_bx
                        .type            n260_var_ref_bx, @function
n260_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7232], rax
                        mov              qword ptr [rbp + 7240], rdx;         jmp   n261_var_ref_α
                        .size            n260_var_ref_bx, .-n260_var_ref_bx
                        .type            n261_var_ref_bx, @function
n261_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_var_ref_α:         mov              r11, 236
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7728]
                        mov              qword ptr [rbp + 7248], rax
                        mov              qword ptr [rbp + 7256], rdx;         jmp   n262_call_α
                        .size            n261_var_ref_bx, .-n261_var_ref_bx
                        .type            n262_call_bx, @function
n262_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_call_α:            mov              r11, 237
                        mov              rax, qword ptr [rbp + 7248]
                        mov              qword ptr [rbp + 7200], rax
                        mov              rax, qword ptr [rbp + 7256]
                        mov              qword ptr [rbp + 7208], rax
                        mov              rax, qword ptr [rbp + 7232]
                        mov              qword ptr [rbp + 7184], rax
                        mov              rax, qword ptr [rbp + 7240]
                        mov              qword ptr [rbp + 7192], rax
                        lea              rdi, [rbp + 7184]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7168], rax
                        mov              qword ptr [rbp + 7176], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n263_var_ref_α
n262_call_β:            mov              r11, 237;                            jmp   d$2F3_step
                        .size            n262_call_bx, .-n262_call_bx
                        .type            n263_var_ref_bx, @function
n263_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:         mov              r11, 238
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7136], rax
                        mov              qword ptr [rbp + 7144], rdx;         jmp   n264_lit_integer_α
                        .size            n263_var_ref_bx, .-n263_var_ref_bx
                        .type            n264_lit_integer_bx, @function
n264_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_integer_α:     mov              r11, 239
                        mov              qword ptr [rbp + 7152], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_621_0]
                        mov              qword ptr [rbp + 7160], rax;         jmp   n265_call_α
.Llit_integer_α_621_0:  .quad            1
                        .size            n264_lit_integer_bx, .-n264_lit_integer_bx
                        .type            n265_call_bx, @function
n265_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_call_α:            mov              r11, 240
                        mov              rax, qword ptr [rbp + 7136]
                        mov              qword ptr [rbp + 7088], rax
                        mov              rax, qword ptr [rbp + 7144]
                        mov              qword ptr [rbp + 7096], rax
                        lea              rdi, [rbp + 7088]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7072], rax
                        mov              qword ptr [rbp + 7080], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n266_cut_α
n265_call_β:            mov              r11, 240;                            jmp   d$2F3_step
                        .size            n265_call_bx, .-n265_call_bx
                        .type            n266_cut_bx, @function
n266_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_cut_α:             mov              r11, 241
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   d$2F3_γ
                        .size            n266_cut_bx, .-n266_cut_bx
                        .type            n267_var_ref_bx, @function
n267_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:         mov              r11, 242
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7616], rax
                        mov              qword ptr [rbp + 7624], rdx;         jmp   n268_var_ref_α
                        .size            n267_var_ref_bx, .-n267_var_ref_bx
                        .type            n268_var_ref_bx, @function
n268_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_var_ref_α:         mov              r11, 243
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx;         jmp   n269_call_α
                        .size            n268_var_ref_bx, .-n268_var_ref_bx
                        .type            n269_call_bx, @function
n269_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_call_α:            mov              r11, 244
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 7584], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 7592], rax
                        mov              rax, qword ptr [rbp + 7616]
                        mov              qword ptr [rbp + 7568], rax
                        mov              rax, qword ptr [rbp + 7624]
                        mov              qword ptr [rbp + 7576], rax
                        lea              rdi, [rbp + 7568]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n270_var_ref_α
n269_call_β:            mov              r11, 244;                            jmp   d$2F3_step
                        .size            n269_call_bx, .-n269_call_bx
                        .type            n270_var_ref_bx, @function
n270_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_var_ref_α:         mov              r11, 245
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx;         jmp   n271_var_ref_α
                        .size            n270_var_ref_bx, .-n270_var_ref_bx
                        .type            n271_var_ref_bx, @function
n271_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx;         jmp   n272_call_α
                        .size            n271_var_ref_bx, .-n271_var_ref_bx
                        .type            n272_call_bx, @function
n272_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_call_α:            mov              r11, 247
                        mov              rax, qword ptr [rbp + 7536]
                        mov              qword ptr [rbp + 7488], rax
                        mov              rax, qword ptr [rbp + 7544]
                        mov              qword ptr [rbp + 7496], rax
                        mov              rax, qword ptr [rbp + 7520]
                        mov              qword ptr [rbp + 7472], rax
                        mov              rax, qword ptr [rbp + 7528]
                        mov              qword ptr [rbp + 7480], rax
                        lea              rdi, [rbp + 7472]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7456], rax
                        mov              qword ptr [rbp + 7464], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n273_var_ref_α
n272_call_β:            mov              r11, 247;                            jmp   d$2F3_step
                        .size            n272_call_bx, .-n272_call_bx
                        .type            n273_var_ref_bx, @function
n273_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:         mov              r11, 248
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx;         jmp   n274_lit_integer_α
                        .size            n273_var_ref_bx, .-n273_var_ref_bx
                        .type            n274_lit_integer_bx, @function
n274_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_integer_α:     mov              r11, 249
                        mov              qword ptr [rbp + 7440], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_637_0]
                        mov              qword ptr [rbp + 7448], rax;         jmp   n275_call_α
.Llit_integer_α_637_0:  .quad            0
                        .size            n274_lit_integer_bx, .-n274_lit_integer_bx
                        .type            n275_call_bx, @function
n275_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_call_α:            mov              r11, 250
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 7376], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 7384], rax
                        lea              rdi, [rbp + 7376]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7360], rax
                        mov              qword ptr [rbp + 7368], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   d$2F3_γ
n275_call_β:            mov              r11, 250;                            jmp   d$2F3_step
                        .size            n275_call_bx, .-n275_call_bx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret0:
                        lea              rax, [rip + n73_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret1:
                        lea              rax, [rip + n97_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret2:
                        lea              rax, [rip + n127_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret3:
                        lea              rax, [rip + n163_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret4:
                        lea              rax, [rip + n198_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret5:
                        lea              rax, [rip + n216_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret6:
                        lea              rax, [rip + n237_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret7:
                        lea              rax, [rip + n256_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_step:
                        mov              rdi, qword ptr [rbp + 7760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7776], 0
                        mov              qword ptr [rbp + 7728], 0
                        mov              qword ptr [rbp + 7736], 0
                        mov              qword ptr [rbp + 7664], 0
                        mov              qword ptr [rbp + 7672], 0
                        mov              qword ptr [rbp + 7696], 0
                        mov              qword ptr [rbp + 7704], 0
                        mov              qword ptr [rbp + 7648], 0
                        mov              qword ptr [rbp + 7656], 0
                        mov              qword ptr [rbp + 7712], 0
                        mov              qword ptr [rbp + 7720], 0
                        mov              qword ptr [rbp + 7680], 0
                        mov              qword ptr [rbp + 7688], 0
                        mov              rax, qword ptr [rbp + 7768]
                        test             rax, rax
                                                                              je    d$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt1:
                        lea              rax, [rip + d$2F3_alt2]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n74_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt2:
                        lea              rax, [rip + d$2F3_alt3]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n98_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt3:
                        lea              rax, [rip + d$2F3_alt4]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n128_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt4:
                        lea              rax, [rip + d$2F3_alt5]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n164_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt5:
                        lea              rax, [rip + d$2F3_alt6]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n199_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt6:
                        lea              rax, [rip + d$2F3_alt7]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n217_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt7:
                        lea              rax, [rip + d$2F3_alt8]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n238_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt8:
                        lea              rax, [rip + d$2F3_alt9]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n257_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt9:
                        xor              eax, eax
                        mov              qword ptr [rbp + 7768], rax
                        mov              r13, qword ptr [rbp + 7784]
                                                                              jmp   n267_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_β:
                        test             r15, r15
                                                                              jne   d$2F3_ω
                        mov              rax, qword ptr [rbp + 7776]
                        mov              qword ptr [rbp + 7776], 0
                        test             rax, rax
                                                                              jne   d$2F3_βres
                                                                              jmp   d$2F3_step
d$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rax, qword ptr [rbp + 7784]
                        cmp              r13, rax;                            je    d$2F3_altdet
                        lea              rdx, [rip + d$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rcx
d$2F3_altdet:           xor              eax, eax
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ω:
                        mov              rcx, qword ptr [rbp + 7808]
                        mov              r13, qword ptr [rbp + 7784]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__top$2F0:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 88], r13
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 64], r12
                        mov              rdi, rsp
                        mov              esi, 48
                        mov              edx, 64
                        call             rt_jmp_frame_lexprep2@PLT
top$2F0_α_body:
                        .type            n639_call_proc_staged_bx, @function
n639_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n639_call_proc_staged_α:
                        mov              r11, 251
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_641_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_641_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 0
                        mov              rsi, rbp
                        lea              rdx, [rbp + 128]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_641_99
                        mov              r10, qword ptr [rbp + 88]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_641_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_641_99
                        mov              rcx, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120];          jmp   rax
.Lcall_proc_staged_α_641_99:
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
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   top$2F0_step
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
                        cmp              al, 104;                             je    top$2F0_step
                                                                              jmp   top$2F0_ret0
n639_call_proc_staged_β:
                        mov              r11, 251
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_641_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_641_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_641_22:
                                                                              jmp   top$2F0_step
.Lcall_proc_staged_α_641_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    top$2F0_step
                                                                              jmp   top$2F0_ret0
.Lcall_proc_staged_α_641_0:
                        .quad            .Lcall_proc_staged_α_641_0_s
.Lcall_proc_staged_α_641_0_s:
                        .string          "log10/0"
                        .size            n639_call_proc_staged_bx, .-n639_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_ret0:
                        lea              rax, [rip + n639_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                              jmp   top$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_step:
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
                                                                              je    top$2F0_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_β:
                        test             r15, r15
                                                                              jne   top$2F0_ω
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 80], 0
                        test             rax, rax
                                                                              jne   top$2F0_βres
                                                                              jmp   top$2F0_step
top$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 104]
                        mov              rax, qword ptr [rbp + 88]
                        cmp              r13, rax;                            je    top$2F0_altdet
                        lea              rdx, [rip + top$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 120];          jmp   rcx
top$2F0_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_ω:
                        mov              rcx, qword ptr [rbp + 112]
                        mov              r13, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__main$2F0:
                        sub              rsp, 1776
                        mov              qword ptr [rsp + 1752], rcx
                        mov              qword ptr [rsp + 1760], rdx
                        mov              qword ptr [rsp + 1768], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1776]
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1736], r13
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1712], r12
                        mov              rdi, rsp
                        mov              esi, 1584
                        mov              edx, 1712
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                        .type            n642_lit_string_bx, @function
n642_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n642_lit_string_α:      mov              r11, 252
                        mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_644_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n643_call_α
.Llit_string_α_644_0:   .quad            .Llit_string_α_644_0_s
.Llit_string_α_644_0_s: .string          "wall_us/1"
                        .size            n642_lit_string_bx, .-n642_lit_string_bx
                        .type            n643_call_bx, @function
n643_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n643_call_α:            mov              r11, 253
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1544], rax
                        lea              rdi, [rbp + 1536]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   main$2F0_step
n643_call_β:            mov              r11, 253;                            jmp   main$2F0_step
                        .size            n643_call_bx, .-n643_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1728], 0
                        mov              qword ptr [rbp + 1664], 0
                        mov              qword ptr [rbp + 1672], 0
                        mov              qword ptr [rbp + 1632], 0
                        mov              qword ptr [rbp + 1640], 0
                        mov              qword ptr [rbp + 1680], 0
                        mov              qword ptr [rbp + 1688], 0
                        mov              qword ptr [rbp + 1648], 0
                        mov              qword ptr [rbp + 1656], 0
                        mov              qword ptr [rbp + 1616], 0
                        mov              qword ptr [rbp + 1624], 0
                        mov              qword ptr [rbp + 1600], 0
                        mov              qword ptr [rbp + 1608], 0
                        mov              qword ptr [rbp + 1584], 0
                        mov              qword ptr [rbp + 1592], 0
                        mov              rax, qword ptr [rbp + 1720]
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
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1728], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1752]
                        mov              rax, qword ptr [rbp + 1736]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1768];         jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 1776]
                        mov              rbp, qword ptr [rbp + 1768];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 1760]
                        mov              r13, qword ptr [rbp + 1736]
                        lea              rsp, [rbp + 1776]
                        mov              rbp, qword ptr [rbp + 1768];         jmp   rcx
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
                        .type            n646_call_proc_staged_bx, @function
n646_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n646_call_proc_staged_α:
                        mov              r11, 254
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_648_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_648_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_648_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_648_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_648_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_648_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_648_21
                        add              rsp, 32
.Lcall_proc_staged_α_648_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_648_2
.Lcall_proc_staged_α_648_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_648_2
.Lcall_proc_staged_α_648_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_648_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_648_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_648_29
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
.Lcall_proc_staged_α_648_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n646_call_proc_staged_β:
                        mov              r11, 254
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_648_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_648_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_648_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_648_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_648_0:
                        .quad            .Lcall_proc_staged_α_648_0_s
.Lcall_proc_staged_α_648_0_s:
                        .string          "main/0"
                        .size            n646_call_proc_staged_bx, .-n646_call_proc_staged_bx
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
.Lstartup_pname0:       .string          "log10/0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__log10$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            960
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "d/3"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__d$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            7744
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "top/0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__top$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            48
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "main/0"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__main$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1696
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
