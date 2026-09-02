                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__log10$2F0:
                        sub              rsp, 1088
                        mov              qword ptr [rsp + 1064], rcx
                        mov              qword ptr [rsp + 1072], rdx
                        mov              qword ptr [rsp + 1080], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1056
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
log10$2F0_α_body:
                        .type            n0_call_prolog_bx, @function
n0_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_28_102
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40];           jmp   .Lcall_prolog_α_28_101
.Lcall_prolog_α_28_102: lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_28_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_28_101
.Lcall_prolog_α_28_100: lea              rdi, [rbp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_28_101: mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n1_lit_string_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   log10$2F0_ω
                        .size            n0_call_prolog_bx, .-n0_call_prolog_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rbp + 976], 2             # result
                        mov              dword ptr [rbp + 980], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_29_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n2_lit_string_α
.Llit_string_α_29_0:    .quad            .Llit_string_α_29_0_s
.Llit_string_α_29_0_s:  .string          "log"
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_30_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n3_lit_string_α
.Llit_string_α_30_0:    .quad            .Llit_string_α_30_0_s
.Llit_string_α_30_0_s:  .string          "log"
                        .size            n2_lit_string_bx, .-n2_lit_string_bx
                        .type            n3_lit_string_bx, @function
n3_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rbp + 816], 2             # result
                        mov              dword ptr [rbp + 820], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_31_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n4_lit_string_α
.Llit_string_α_31_0:    .quad            .Llit_string_α_31_0_s
.Llit_string_α_31_0_s:  .string          "log"
                        .size            n3_lit_string_bx, .-n3_lit_string_bx
                        .type            n4_lit_string_bx, @function
n4_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rbp + 736], 2             # result
                        mov              dword ptr [rbp + 740], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_32_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n5_lit_string_α
.Llit_string_α_32_0:    .quad            .Llit_string_α_32_0_s
.Llit_string_α_32_0_s:  .string          "log"
                        .size            n4_lit_string_bx, .-n4_lit_string_bx
                        .type            n5_lit_string_bx, @function
n5_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rbp + 656], 2             # result
                        mov              dword ptr [rbp + 660], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_33_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n6_lit_string_α
.Llit_string_α_33_0:    .quad            .Llit_string_α_33_0_s
.Llit_string_α_33_0_s:  .string          "log"
                        .size            n5_lit_string_bx, .-n5_lit_string_bx
                        .type            n6_lit_string_bx, @function
n6_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rbp + 576], 2             # result
                        mov              dword ptr [rbp + 580], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_34_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n7_lit_string_α
.Llit_string_α_34_0:    .quad            .Llit_string_α_34_0_s
.Llit_string_α_34_0_s:  .string          "log"
                        .size            n6_lit_string_bx, .-n6_lit_string_bx
                        .type            n7_lit_string_bx, @function
n7_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rbp + 496], 2             # result
                        mov              dword ptr [rbp + 500], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_35_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n8_lit_string_α
.Llit_string_α_35_0:    .quad            .Llit_string_α_35_0_s
.Llit_string_α_35_0_s:  .string          "log"
                        .size            n7_lit_string_bx, .-n7_lit_string_bx
                        .type            n8_lit_string_bx, @function
n8_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_36_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n9_lit_string_α
.Llit_string_α_36_0:    .quad            .Llit_string_α_36_0_s
.Llit_string_α_36_0_s:  .string          "log"
                        .size            n8_lit_string_bx, .-n8_lit_string_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_37_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n10_lit_string_α
.Llit_string_α_37_0:    .quad            .Llit_string_α_37_0_s
.Llit_string_α_37_0_s:  .string          "log"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_lit_string_bx, @function
n10_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_38_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n11_lit_string_α
.Llit_string_α_38_0:    .quad            .Llit_string_α_38_0_s
.Llit_string_α_38_0_s:  .string          "log"
                        .size            n10_lit_string_bx, .-n10_lit_string_bx
                        .type            n11_lit_string_bx, @function
n11_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_39_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n12_call_prolog_α
.Llit_string_α_39_0:    .quad            .Llit_string_α_39_0_s
.Llit_string_α_39_0_s:  .string          "x"
                        .size            n11_lit_string_bx, .-n11_lit_string_bx
                        .type            n12_call_prolog_bx, @function
n12_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_prolog_α:      mov              r11, 13
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 184]
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n13_call_prolog_α
n12_call_prolog_β:      mov              r11, 13;                             jmp   log10$2F0_ω
                        .size            n12_call_prolog_bx, .-n12_call_prolog_bx
                        .type            n13_call_prolog_bx, @function
n13_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_call_prolog_α:      mov              r11, 14
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n14_call_prolog_α
n13_call_prolog_β:      mov              r11, 14;                             jmp   log10$2F0_ω
                        .size            n13_call_prolog_bx, .-n13_call_prolog_bx
                        .type            n14_call_prolog_bx, @function
n14_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_prolog_α:      mov              r11, 15
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n15_call_prolog_α
n14_call_prolog_β:      mov              r11, 15;                             jmp   log10$2F0_ω
                        .size            n14_call_prolog_bx, .-n14_call_prolog_bx
                        .type            n15_call_prolog_bx, @function
n15_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_call_prolog_α:      mov              r11, 16
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n16_call_prolog_α
n15_call_prolog_β:      mov              r11, 16;                             jmp   log10$2F0_ω
                        .size            n15_call_prolog_bx, .-n15_call_prolog_bx
                        .type            n16_call_prolog_bx, @function
n16_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_call_prolog_α:      mov              r11, 17
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n17_call_prolog_α
n16_call_prolog_β:      mov              r11, 17;                             jmp   log10$2F0_ω
                        .size            n16_call_prolog_bx, .-n16_call_prolog_bx
                        .type            n17_call_prolog_bx, @function
n17_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_prolog_α:      mov              r11, 18
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n18_call_prolog_α
n17_call_prolog_β:      mov              r11, 18;                             jmp   log10$2F0_ω
                        .size            n17_call_prolog_bx, .-n17_call_prolog_bx
                        .type            n18_call_prolog_bx, @function
n18_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_call_prolog_α:      mov              r11, 19
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n19_call_prolog_α
n18_call_prolog_β:      mov              r11, 19;                             jmp   log10$2F0_ω
                        .size            n18_call_prolog_bx, .-n18_call_prolog_bx
                        .type            n19_call_prolog_bx, @function
n19_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_prolog_α:      mov              r11, 20
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n20_call_prolog_α
n19_call_prolog_β:      mov              r11, 20;                             jmp   log10$2F0_ω
                        .size            n19_call_prolog_bx, .-n19_call_prolog_bx
                        .type            n20_call_prolog_bx, @function
n20_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_prolog_α:      mov              r11, 21
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n21_call_prolog_α
n20_call_prolog_β:      mov              r11, 21;                             jmp   log10$2F0_ω
                        .size            n20_call_prolog_bx, .-n20_call_prolog_bx
                        .type            n21_call_prolog_bx, @function
n21_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_prolog_α:      mov              r11, 22
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 840]
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    n27_call_prolog_α
                                                                              jmp   n22_lit_string_α
n21_call_prolog_β:      mov              r11, 22;                             jmp   n27_call_prolog_α
                        .size            n21_call_prolog_bx, .-n21_call_prolog_bx
                        .type            n22_lit_string_bx, @function
n22_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_50_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n23_var_ref_α
.Llit_string_α_50_0:    .quad            .Llit_string_α_50_0_s
.Llit_string_α_50_0_s:  .string          "x"
                        .size            n22_lit_string_bx, .-n22_lit_string_bx
                        .type            n23_var_ref_bx, @function
n23_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n24_call_proc_staged_α
                        .size            n23_var_ref_bx, .-n23_var_ref_bx
                        .type            n24_call_proc_staged_bx, @function
n24_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_call_proc_staged_α: mov              r11, 25
                        lea              rsi, [rbp + 912]
                        lea              rdx, [rbp + 992]
                        lea              rcx, [rbp + 1008]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_54_2
.Lcall_proc_staged_α_54_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_54_29
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
.Lcall_proc_staged_α_54_29:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    n27_call_prolog_α
                                                                              jmp   n25_move_label_α
n24_call_proc_staged_β: mov              r11, 25;                             jmp   n27_call_prolog_α
.Lcall_proc_staged_β_54_0:
                        .quad            .Lcall_proc_staged_β_54_0_s
.Lcall_proc_staged_β_54_0_s:
                        .string          "d/3"
                        .size            n24_call_proc_staged_bx, .-n24_call_proc_staged_bx
                        .type            n25_move_label_bx, @function
n25_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_move_label_α:       mov              r11, 26
                        lea              rax, [rip + n24_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax;           jmp   log10$2F0_γ
                        .size            n25_move_label_bx, .-n25_move_label_bx
                        .type            n26_disjunction_bx, @function
n26_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_disjunction_α:      mov              r11, 27
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    log10$2F0_ω
                                                                              jmp   rax
n26_disjunction_β:      mov              r11, 27;                             jmp   log10$2F0_ω
                        .size            n26_disjunction_bx, .-n26_disjunction_bx
                        .type            n27_call_prolog_bx, @function
n27_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_call_prolog_α:      mov              r11, 28
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   log10$2F0_ω
n27_call_prolog_β:      mov              r11, 28;                             jmp   log10$2F0_ω
                        .size            n27_call_prolog_bx, .-n27_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_β:
                                                                              jmp   n26_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1064]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_ω:
                        mov              rcx, qword ptr [rsp + 1072]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Llog10$2F0_α_60_2]
                        lea              rdx, [rip + .Llog10$2F0_α_60_3];     jmp   FN__log10$2F0
.Llog10$2F0_α_60_2:     pop              r12
                        pop              r12;                                 jmp   r12
.Llog10$2F0_α_60_3:     pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__d$2F3:
                        sub              rsp, 8272
                        mov              qword ptr [rsp + 8248], rcx
                        mov              qword ptr [rsp + 8256], rdx
                        mov              qword ptr [rsp + 8264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 8240
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
d$2F3_α_body:
                        .type            n61_call_prolog_bx, @function
n61_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_call_prolog_α:      mov              r11, 29
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_339_102
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104];          jmp   .Lcall_prolog_α_339_101
.Lcall_prolog_α_339_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_339_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_339_101
.Lcall_prolog_α_339_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_339_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n62_var_ref_α
n61_call_prolog_β:      mov              r11, 29;                             jmp   d$2F3_ω
                        .size            n61_call_prolog_bx, .-n61_call_prolog_bx
                        .type            n62_var_ref_bx, @function
n62_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 8080], rax
                        mov              qword ptr [rbp + 8088], rdx;         jmp   n63_lit_integer_α
                        .size            n62_var_ref_bx, .-n62_var_ref_bx
                        .type            n63_lit_integer_bx, @function
n63_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rbp + 8096], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_342_0]
                        mov              qword ptr [rbp + 8104], rax;         jmp   n64_lit_string_α
.Llit_integer_α_342_0:  .quad            516
                        .size            n63_lit_integer_bx, .-n63_lit_integer_bx
                        .type            n64_lit_string_bx, @function
n64_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       mov              r11, 32
                        mov              qword ptr [rbp + 8112], 2            # result
                        mov              dword ptr [rbp + 8116], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_343_0]
                        mov              qword ptr [rbp + 8120], rax;         jmp   n65_call_prolog_α
.Llit_string_α_343_0:   .quad            .Llit_string_α_343_0_s
.Llit_string_α_343_0_s: .string          "+"
                        .size            n64_lit_string_bx, .-n64_lit_string_bx
                        .type            n65_call_prolog_bx, @function
n65_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_call_prolog_α:      mov              r11, 33
                        mov              rax, qword ptr [rbp + 8112]
                        mov              qword ptr [rbp + 8064], rax
                        mov              rax, qword ptr [rbp + 8120]
                        mov              qword ptr [rbp + 8072], rax
                        mov              rax, qword ptr [rbp + 8096]
                        mov              qword ptr [rbp + 8048], rax
                        mov              rax, qword ptr [rbp + 8104]
                        mov              qword ptr [rbp + 8056], rax
                        mov              rax, qword ptr [rbp + 8080]
                        mov              qword ptr [rbp + 8032], rax
                        mov              rax, qword ptr [rbp + 8088]
                        mov              qword ptr [rbp + 8040], rax
                        lea              rdi, [rbp + 8032]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8016], rax
                        mov              qword ptr [rbp + 8024], rdx
                        cmp              al, 104;                             je    n92_var_ref_α
                                                                              jmp   n66_var_ref_α
n65_call_prolog_β:      mov              r11, 33;                             jmp   n92_var_ref_α
                        .size            n65_call_prolog_bx, .-n65_call_prolog_bx
                        .type            n66_var_ref_bx, @function
n66_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7872], rax
                        mov              qword ptr [rbp + 7880], rdx;         jmp   n67_lit_string_α
                        .size            n66_var_ref_bx, .-n66_var_ref_bx
                        .type            n67_lit_string_bx, @function
n67_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rbp + 8000], 2            # result
                        mov              dword ptr [rbp + 8004], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_347_0]
                        mov              qword ptr [rbp + 8008], rax;         jmp   n68_var_ref_α
.Llit_string_α_347_0:   .quad            .Llit_string_α_347_0_s
.Llit_string_α_347_0_s: .string          "+"
                        .size            n67_lit_string_bx, .-n67_lit_string_bx
                        .type            n68_var_ref_bx, @function
n68_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7888], rax
                        mov              qword ptr [rbp + 7896], rdx;         jmp   n69_var_ref_α
                        .size            n68_var_ref_bx, .-n68_var_ref_bx
                        .type            n69_var_ref_bx, @function
n69_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7904], rax
                        mov              qword ptr [rbp + 7912], rdx;         jmp   n70_call_prolog_α
                        .size            n69_var_ref_bx, .-n69_var_ref_bx
                        .type            n70_call_prolog_bx, @function
n70_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_call_prolog_α:      mov              r11, 38
                        mov              rax, qword ptr [rbp + 7904]
                        mov              qword ptr [rbp + 7968], rax
                        mov              rax, qword ptr [rbp + 7912]
                        mov              qword ptr [rbp + 7976], rax
                        mov              rax, qword ptr [rbp + 7888]
                        mov              qword ptr [rbp + 7952], rax
                        mov              rax, qword ptr [rbp + 7896]
                        mov              qword ptr [rbp + 7960], rax
                        mov              rax, qword ptr [rbp + 8000]
                        mov              qword ptr [rbp + 7936], rax
                        mov              rax, qword ptr [rbp + 8008]
                        mov              qword ptr [rbp + 7944], rax
                        lea              rdi, [rbp + 7936]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7920], rax
                        mov              qword ptr [rbp + 7928], rdx
                        cmp              al, 104;                             je    n91_call_prolog_α
                                                                              jmp   n71_call_prolog_α
n70_call_prolog_β:      mov              r11, 38;                             jmp   n91_call_prolog_α
                        .size            n70_call_prolog_bx, .-n70_call_prolog_bx
                        .type            n71_call_prolog_bx, @function
n71_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_call_prolog_α:      mov              r11, 39
                        mov              rax, qword ptr [rbp + 7920]
                        mov              qword ptr [rbp + 7856], rax
                        mov              rax, qword ptr [rbp + 7928]
                        mov              qword ptr [rbp + 7864], rax
                        mov              rax, qword ptr [rbp + 7872]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 7880]
                        mov              qword ptr [rbp + 7848], rax
                        lea              rdi, [rbp + 7840]
                        lea              r8, [rbp + 7840]
.Lcall_prolog_α_353_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_353_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_353_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_353_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_353_40
.Lcall_prolog_α_353_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_353_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_353_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_353_40
.Lcall_prolog_α_353_56: cmp              al, 72;                              jne   .Lcall_prolog_α_353_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_353_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_353_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_353_40
.Lcall_prolog_α_353_41: lea              r9, [rbp + 7856]
.Lcall_prolog_α_353_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_353_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_353_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_353_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_353_42
.Lcall_prolog_α_353_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_353_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_353_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_353_42
.Lcall_prolog_α_353_58: cmp              al, 72;                              jne   .Lcall_prolog_α_353_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_353_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_353_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_353_42
.Lcall_prolog_α_353_43: cmp              r8, r9;                              je    .Lcall_prolog_α_353_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_353_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_353_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_353_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_353_44
                                                                              jmp   .Lcall_prolog_α_353_45
.Lcall_prolog_α_353_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_353_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_353_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_353_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_353_53
                                                                              jmp   .Lcall_prolog_α_353_46
.Lcall_prolog_α_353_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_353_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_353_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_353_51
.Lcall_prolog_α_353_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_353_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_353_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_353_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_353_47
                                                                              jmp   .Lcall_prolog_α_353_48
.Lcall_prolog_α_353_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_353_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_353_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_353_51
.Lcall_prolog_α_353_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_353_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_353_53
                                                                              jmp   .Lcall_prolog_α_353_52
.Lcall_prolog_α_353_49: cmp              dl, 80;                              je    .Lcall_prolog_α_353_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_353_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_353_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_353_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_353_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_353_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_353_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_353_51
                                                                              jmp   .Lcall_prolog_α_353_52
.Lcall_prolog_α_353_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_353_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_353_53
.Lcall_prolog_α_353_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_353_54
.Lcall_prolog_α_353_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_353_54
.Lcall_prolog_α_353_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_353_54: mov              qword ptr [rbp + 7824], rax
                        mov              qword ptr [rbp + 7832], rdx
                        cmp              al, 104;                             je    n91_call_prolog_α
                                                                              jmp   n72_var_ref_α
n71_call_prolog_β:      mov              r11, 39;                             jmp   n91_call_prolog_α
                        .size            n71_call_prolog_bx, .-n71_call_prolog_bx
                        .type            n72_var_ref_bx, @function
n72_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7792], rax
                        mov              qword ptr [rbp + 7800], rdx;         jmp   n73_var_ref_α
                        .size            n72_var_ref_bx, .-n72_var_ref_bx
                        .type            n73_var_ref_bx, @function
n73_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7808], rax
                        mov              qword ptr [rbp + 7816], rdx;         jmp   n74_call_prolog_α
                        .size            n73_var_ref_bx, .-n73_var_ref_bx
                        .type            n74_call_prolog_bx, @function
n74_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_call_prolog_α:      mov              r11, 42
                        mov              rax, qword ptr [rbp + 7808]
                        mov              qword ptr [rbp + 7776], rax
                        mov              rax, qword ptr [rbp + 7816]
                        mov              qword ptr [rbp + 7784], rax
                        mov              rax, qword ptr [rbp + 7792]
                        mov              qword ptr [rbp + 7760], rax
                        mov              rax, qword ptr [rbp + 7800]
                        mov              qword ptr [rbp + 7768], rax
                        lea              rdi, [rbp + 7760]
                        lea              r8, [rbp + 7760]
.Lcall_prolog_α_358_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_358_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_358_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_358_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_358_40
.Lcall_prolog_α_358_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_358_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_358_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_358_40
.Lcall_prolog_α_358_56: cmp              al, 72;                              jne   .Lcall_prolog_α_358_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_358_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_358_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_358_40
.Lcall_prolog_α_358_41: lea              r9, [rbp + 7776]
.Lcall_prolog_α_358_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_358_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_358_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_358_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_358_42
.Lcall_prolog_α_358_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_358_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_358_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_358_42
.Lcall_prolog_α_358_58: cmp              al, 72;                              jne   .Lcall_prolog_α_358_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_358_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_358_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_358_42
.Lcall_prolog_α_358_43: cmp              r8, r9;                              je    .Lcall_prolog_α_358_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_358_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_358_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_358_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_358_44
                                                                              jmp   .Lcall_prolog_α_358_45
.Lcall_prolog_α_358_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_358_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_358_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_358_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_358_53
                                                                              jmp   .Lcall_prolog_α_358_46
.Lcall_prolog_α_358_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_358_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_358_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_358_51
.Lcall_prolog_α_358_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_358_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_358_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_358_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_358_47
                                                                              jmp   .Lcall_prolog_α_358_48
.Lcall_prolog_α_358_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_358_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_358_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_358_51
.Lcall_prolog_α_358_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_358_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_358_53
                                                                              jmp   .Lcall_prolog_α_358_52
.Lcall_prolog_α_358_49: cmp              dl, 80;                              je    .Lcall_prolog_α_358_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_358_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_358_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_358_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_358_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_358_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_358_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_358_51
                                                                              jmp   .Lcall_prolog_α_358_52
.Lcall_prolog_α_358_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_358_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_358_53
.Lcall_prolog_α_358_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_358_54
.Lcall_prolog_α_358_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_358_54
.Lcall_prolog_α_358_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_358_54: mov              qword ptr [rbp + 7744], rax
                        mov              qword ptr [rbp + 7752], rdx
                        cmp              al, 104;                             je    n91_call_prolog_α
                                                                              jmp   n75_var_ref_α
n74_call_prolog_β:      mov              r11, 42;                             jmp   n91_call_prolog_α
                        .size            n74_call_prolog_bx, .-n74_call_prolog_bx
                        .type            n75_var_ref_bx, @function
n75_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7600], rax
                        mov              qword ptr [rbp + 7608], rdx;         jmp   n76_lit_string_α
                        .size            n75_var_ref_bx, .-n75_var_ref_bx
                        .type            n76_lit_string_bx, @function
n76_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rbp + 7728], 2            # result
                        mov              dword ptr [rbp + 7732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_361_0]
                        mov              qword ptr [rbp + 7736], rax;         jmp   n77_var_ref_α
.Llit_string_α_361_0:   .quad            .Llit_string_α_361_0_s
.Llit_string_α_361_0_s: .string          "+"
                        .size            n76_lit_string_bx, .-n76_lit_string_bx
                        .type            n77_var_ref_bx, @function
n77_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 7616], rax
                        mov              qword ptr [rbp + 7624], rdx;         jmp   n78_var_ref_α
                        .size            n77_var_ref_bx, .-n77_var_ref_bx
                        .type            n78_var_ref_bx, @function
n78_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx;         jmp   n79_call_prolog_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_call_prolog_bx, @function
n79_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_call_prolog_α:      mov              r11, 47
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 7696], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 7704], rax
                        mov              rax, qword ptr [rbp + 7616]
                        mov              qword ptr [rbp + 7680], rax
                        mov              rax, qword ptr [rbp + 7624]
                        mov              qword ptr [rbp + 7688], rax
                        mov              rax, qword ptr [rbp + 7728]
                        mov              qword ptr [rbp + 7664], rax
                        mov              rax, qword ptr [rbp + 7736]
                        mov              qword ptr [rbp + 7672], rax
                        lea              rdi, [rbp + 7664]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                        cmp              al, 104;                             je    n91_call_prolog_α
                                                                              jmp   n80_call_prolog_α
n79_call_prolog_β:      mov              r11, 47;                             jmp   n91_call_prolog_α
                        .size            n79_call_prolog_bx, .-n79_call_prolog_bx
                        .type            n80_call_prolog_bx, @function
n80_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_call_prolog_α:      mov              r11, 48
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 7584], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 7592], rax
                        mov              rax, qword ptr [rbp + 7600]
                        mov              qword ptr [rbp + 7568], rax
                        mov              rax, qword ptr [rbp + 7608]
                        mov              qword ptr [rbp + 7576], rax
                        lea              rdi, [rbp + 7568]
                        lea              r8, [rbp + 7568]
.Lcall_prolog_α_367_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_367_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_367_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_367_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_367_40
.Lcall_prolog_α_367_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_367_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_367_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_367_40
.Lcall_prolog_α_367_56: cmp              al, 72;                              jne   .Lcall_prolog_α_367_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_367_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_367_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_367_40
.Lcall_prolog_α_367_41: lea              r9, [rbp + 7584]
.Lcall_prolog_α_367_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_367_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_367_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_367_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_367_42
.Lcall_prolog_α_367_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_367_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_367_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_367_42
.Lcall_prolog_α_367_58: cmp              al, 72;                              jne   .Lcall_prolog_α_367_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_367_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_367_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_367_42
.Lcall_prolog_α_367_43: cmp              r8, r9;                              je    .Lcall_prolog_α_367_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_367_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_367_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_367_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_367_44
                                                                              jmp   .Lcall_prolog_α_367_45
.Lcall_prolog_α_367_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_367_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_367_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_367_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_367_53
                                                                              jmp   .Lcall_prolog_α_367_46
.Lcall_prolog_α_367_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_367_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_367_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_367_51
.Lcall_prolog_α_367_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_367_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_367_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_367_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_367_47
                                                                              jmp   .Lcall_prolog_α_367_48
.Lcall_prolog_α_367_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_367_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_367_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_367_51
.Lcall_prolog_α_367_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_367_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_367_53
                                                                              jmp   .Lcall_prolog_α_367_52
.Lcall_prolog_α_367_49: cmp              dl, 80;                              je    .Lcall_prolog_α_367_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_367_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_367_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_367_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_367_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_367_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_367_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_367_51
                                                                              jmp   .Lcall_prolog_α_367_52
.Lcall_prolog_α_367_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_367_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_367_53
.Lcall_prolog_α_367_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_367_54
.Lcall_prolog_α_367_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_367_54
.Lcall_prolog_α_367_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_367_54: mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                        cmp              al, 104;                             je    n91_call_prolog_α
                                                                              jmp   n81_cut_α
n80_call_prolog_β:      mov              r11, 48;                             jmp   n91_call_prolog_α
                        .size            n80_call_prolog_bx, .-n80_call_prolog_bx
                        .type            n81_cut_bx, @function
n81_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_cut_α:              mov              r11, 49;                             jmp   n82_var_ref_α
                        .size            n81_cut_bx, .-n81_cut_bx
                        .type            n82_var_ref_bx, @function
n82_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7504], rax
                        mov              qword ptr [rbp + 7512], rdx;         jmp   n83_var_ref_α
                        .size            n82_var_ref_bx, .-n82_var_ref_bx
                        .type            n83_var_ref_bx, @function
n83_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx;         jmp   n84_var_ref_α
                        .size            n83_var_ref_bx, .-n83_var_ref_bx
                        .type            n84_var_ref_bx, @function
n84_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx;         jmp   n85_call_proc_staged_α
                        .size            n84_var_ref_bx, .-n84_var_ref_bx
                        .type            n85_call_proc_staged_bx, @function
n85_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_call_proc_staged_α: mov              r11, 53
                        lea              rsi, [rbp + 7504]
                        lea              rdx, [rbp + 7520]
                        lea              rcx, [rbp + 7536]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_376_2
.Lcall_proc_staged_α_376_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_376_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 7424]
                        mov              rdx, qword ptr [rbp + 7432]
.Lcall_proc_staged_α_376_29:
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                        cmp              al, 104;                             je    n338_call_prolog_α
                                                                              jmp   n86_var_ref_α
n85_call_proc_staged_β: mov              r11, 53;                             jmp   n338_call_prolog_α
.Lcall_proc_staged_β_376_0:
                        .quad            .Lcall_proc_staged_β_376_0_s
.Lcall_proc_staged_β_376_0_s:
                        .string          "d/3"
                        .size            n85_call_proc_staged_bx, .-n85_call_proc_staged_bx
                        .type            n86_var_ref_bx, @function
n86_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7376], rax
                        mov              qword ptr [rbp + 7384], rdx;         jmp   n87_var_ref_α
                        .size            n86_var_ref_bx, .-n86_var_ref_bx
                        .type            n87_var_ref_bx, @function
n87_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx;         jmp   n88_var_ref_α
                        .size            n87_var_ref_bx, .-n87_var_ref_bx
                        .type            n88_var_ref_bx, @function
n88_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 7408], rax
                        mov              qword ptr [rbp + 7416], rdx;         jmp   n89_call_proc_staged_α
                        .size            n88_var_ref_bx, .-n88_var_ref_bx
                        .type            n89_call_proc_staged_bx, @function
n89_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_call_proc_staged_α: mov              r11, 57
                        lea              rsi, [rbp + 7376]
                        lea              rdx, [rbp + 7392]
                        lea              rcx, [rbp + 7408]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_384_2
.Lcall_proc_staged_α_384_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_384_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 7296], rax
                        mov              qword ptr [rbp + 7304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 7296]
                        mov              rdx, qword ptr [rbp + 7304]
.Lcall_proc_staged_α_384_29:
                        mov              qword ptr [rbp + 7296], rax
                        mov              qword ptr [rbp + 7304], rdx
                        cmp              al, 104;                             je    n85_call_proc_staged_β
                                                                              jmp   n90_move_label_α
n89_call_proc_staged_β: mov              r11, 57;                             jmp   n85_call_proc_staged_β
.Lcall_proc_staged_β_384_0:
                        .quad            .Lcall_proc_staged_β_384_0_s
.Lcall_proc_staged_β_384_0_s:
                        .string          "d/3"
                        .size            n89_call_proc_staged_bx, .-n89_call_proc_staged_bx
                        .type            n90_move_label_bx, @function
n90_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_move_label_α:       mov              r11, 58
                        lea              rax, [rip + n89_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n90_move_label_bx, .-n90_move_label_bx
                        .type            n91_call_prolog_bx, @function
n91_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_call_prolog_α:      mov              r11, 59
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 7280], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 7288], rax
                        lea              rdi, [rbp + 7280]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7264], rax
                        mov              qword ptr [rbp + 7272], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n92_var_ref_α
n91_call_prolog_β:      mov              r11, 59;                             jmp   d$2F3_ω
                        .size            n91_call_prolog_bx, .-n91_call_prolog_bx
                        .type            n92_var_ref_bx, @function
n92_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7216], rax
                        mov              qword ptr [rbp + 7224], rdx;         jmp   n93_lit_integer_α
                        .size            n92_var_ref_bx, .-n92_var_ref_bx
                        .type            n93_lit_integer_bx, @function
n93_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      mov              r11, 61
                        mov              qword ptr [rbp + 7232], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_390_0]
                        mov              qword ptr [rbp + 7240], rax;         jmp   n94_lit_string_α
.Llit_integer_α_390_0:  .quad            516
                        .size            n93_lit_integer_bx, .-n93_lit_integer_bx
                        .type            n94_lit_string_bx, @function
n94_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       mov              r11, 62
                        mov              qword ptr [rbp + 7248], 2            # result
                        mov              dword ptr [rbp + 7252], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_391_0]
                        mov              qword ptr [rbp + 7256], rax;         jmp   n95_call_prolog_α
.Llit_string_α_391_0:   .quad            .Llit_string_α_391_0_s
.Llit_string_α_391_0_s: .string          "-"
                        .size            n94_lit_string_bx, .-n94_lit_string_bx
                        .type            n95_call_prolog_bx, @function
n95_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_call_prolog_α:      mov              r11, 63
                        mov              rax, qword ptr [rbp + 7248]
                        mov              qword ptr [rbp + 7200], rax
                        mov              rax, qword ptr [rbp + 7256]
                        mov              qword ptr [rbp + 7208], rax
                        mov              rax, qword ptr [rbp + 7232]
                        mov              qword ptr [rbp + 7184], rax
                        mov              rax, qword ptr [rbp + 7240]
                        mov              qword ptr [rbp + 7192], rax
                        mov              rax, qword ptr [rbp + 7216]
                        mov              qword ptr [rbp + 7168], rax
                        mov              rax, qword ptr [rbp + 7224]
                        mov              qword ptr [rbp + 7176], rax
                        lea              rdi, [rbp + 7168]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7152], rax
                        mov              qword ptr [rbp + 7160], rdx
                        cmp              al, 104;                             je    n122_var_ref_α
                                                                              jmp   n96_var_ref_α
n95_call_prolog_β:      mov              r11, 63;                             jmp   n122_var_ref_α
                        .size            n95_call_prolog_bx, .-n95_call_prolog_bx
                        .type            n96_var_ref_bx, @function
n96_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7008], rax
                        mov              qword ptr [rbp + 7016], rdx;         jmp   n97_lit_string_α
                        .size            n96_var_ref_bx, .-n96_var_ref_bx
                        .type            n97_lit_string_bx, @function
n97_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              r11, 65
                        mov              qword ptr [rbp + 7136], 2            # result
                        mov              dword ptr [rbp + 7140], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_395_0]
                        mov              qword ptr [rbp + 7144], rax;         jmp   n98_var_ref_α
.Llit_string_α_395_0:   .quad            .Llit_string_α_395_0_s
.Llit_string_α_395_0_s: .string          "-"
                        .size            n97_lit_string_bx, .-n97_lit_string_bx
                        .type            n98_var_ref_bx, @function
n98_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7024], rax
                        mov              qword ptr [rbp + 7032], rdx;         jmp   n99_var_ref_α
                        .size            n98_var_ref_bx, .-n98_var_ref_bx
                        .type            n99_var_ref_bx, @function
n99_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7040], rax
                        mov              qword ptr [rbp + 7048], rdx;         jmp   n100_call_prolog_α
                        .size            n99_var_ref_bx, .-n99_var_ref_bx
                        .type            n100_call_prolog_bx, @function
n100_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_call_prolog_α:     mov              r11, 68
                        mov              rax, qword ptr [rbp + 7040]
                        mov              qword ptr [rbp + 7104], rax
                        mov              rax, qword ptr [rbp + 7048]
                        mov              qword ptr [rbp + 7112], rax
                        mov              rax, qword ptr [rbp + 7024]
                        mov              qword ptr [rbp + 7088], rax
                        mov              rax, qword ptr [rbp + 7032]
                        mov              qword ptr [rbp + 7096], rax
                        mov              rax, qword ptr [rbp + 7136]
                        mov              qword ptr [rbp + 7072], rax
                        mov              rax, qword ptr [rbp + 7144]
                        mov              qword ptr [rbp + 7080], rax
                        lea              rdi, [rbp + 7072]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7056], rax
                        mov              qword ptr [rbp + 7064], rdx
                        cmp              al, 104;                             je    n121_call_prolog_α
                                                                              jmp   n101_call_prolog_α
n100_call_prolog_β:     mov              r11, 68;                             jmp   n121_call_prolog_α
                        .size            n100_call_prolog_bx, .-n100_call_prolog_bx
                        .type            n101_call_prolog_bx, @function
n101_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_call_prolog_α:     mov              r11, 69
                        mov              rax, qword ptr [rbp + 7056]
                        mov              qword ptr [rbp + 6992], rax
                        mov              rax, qword ptr [rbp + 7064]
                        mov              qword ptr [rbp + 7000], rax
                        mov              rax, qword ptr [rbp + 7008]
                        mov              qword ptr [rbp + 6976], rax
                        mov              rax, qword ptr [rbp + 7016]
                        mov              qword ptr [rbp + 6984], rax
                        lea              rdi, [rbp + 6976]
                        lea              r8, [rbp + 6976]
.Lcall_prolog_α_401_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_401_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_401_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_401_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_401_40
.Lcall_prolog_α_401_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_401_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_401_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_401_40
.Lcall_prolog_α_401_56: cmp              al, 72;                              jne   .Lcall_prolog_α_401_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_401_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_401_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_401_40
.Lcall_prolog_α_401_41: lea              r9, [rbp + 6992]
.Lcall_prolog_α_401_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_401_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_401_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_401_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_401_42
.Lcall_prolog_α_401_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_401_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_401_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_401_42
.Lcall_prolog_α_401_58: cmp              al, 72;                              jne   .Lcall_prolog_α_401_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_401_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_401_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_401_42
.Lcall_prolog_α_401_43: cmp              r8, r9;                              je    .Lcall_prolog_α_401_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_401_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_401_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_401_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_401_44
                                                                              jmp   .Lcall_prolog_α_401_45
.Lcall_prolog_α_401_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_401_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_401_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_401_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_401_53
                                                                              jmp   .Lcall_prolog_α_401_46
.Lcall_prolog_α_401_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_401_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_401_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_401_51
.Lcall_prolog_α_401_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_401_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_401_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_401_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_401_47
                                                                              jmp   .Lcall_prolog_α_401_48
.Lcall_prolog_α_401_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_401_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_401_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_401_51
.Lcall_prolog_α_401_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_401_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_401_53
                                                                              jmp   .Lcall_prolog_α_401_52
.Lcall_prolog_α_401_49: cmp              dl, 80;                              je    .Lcall_prolog_α_401_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_401_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_401_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_401_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_401_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_401_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_401_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_401_51
                                                                              jmp   .Lcall_prolog_α_401_52
.Lcall_prolog_α_401_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_401_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_401_53
.Lcall_prolog_α_401_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_401_54
.Lcall_prolog_α_401_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_401_54
.Lcall_prolog_α_401_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_401_54: mov              qword ptr [rbp + 6960], rax
                        mov              qword ptr [rbp + 6968], rdx
                        cmp              al, 104;                             je    n121_call_prolog_α
                                                                              jmp   n102_var_ref_α
n101_call_prolog_β:     mov              r11, 69;                             jmp   n121_call_prolog_α
                        .size            n101_call_prolog_bx, .-n101_call_prolog_bx
                        .type            n102_var_ref_bx, @function
n102_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6928], rax
                        mov              qword ptr [rbp + 6936], rdx;         jmp   n103_var_ref_α
                        .size            n102_var_ref_bx, .-n102_var_ref_bx
                        .type            n103_var_ref_bx, @function
n103_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx;         jmp   n104_call_prolog_α
                        .size            n103_var_ref_bx, .-n103_var_ref_bx
                        .type            n104_call_prolog_bx, @function
n104_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_call_prolog_α:     mov              r11, 72
                        mov              rax, qword ptr [rbp + 6944]
                        mov              qword ptr [rbp + 6912], rax
                        mov              rax, qword ptr [rbp + 6952]
                        mov              qword ptr [rbp + 6920], rax
                        mov              rax, qword ptr [rbp + 6928]
                        mov              qword ptr [rbp + 6896], rax
                        mov              rax, qword ptr [rbp + 6936]
                        mov              qword ptr [rbp + 6904], rax
                        lea              rdi, [rbp + 6896]
                        lea              r8, [rbp + 6896]
.Lcall_prolog_α_406_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_406_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_406_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_406_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_406_40
.Lcall_prolog_α_406_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_406_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_406_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_406_40
.Lcall_prolog_α_406_56: cmp              al, 72;                              jne   .Lcall_prolog_α_406_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_406_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_406_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_406_40
.Lcall_prolog_α_406_41: lea              r9, [rbp + 6912]
.Lcall_prolog_α_406_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_406_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_406_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_406_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_406_42
.Lcall_prolog_α_406_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_406_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_406_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_406_42
.Lcall_prolog_α_406_58: cmp              al, 72;                              jne   .Lcall_prolog_α_406_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_406_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_406_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_406_42
.Lcall_prolog_α_406_43: cmp              r8, r9;                              je    .Lcall_prolog_α_406_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_406_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_406_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_406_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_406_44
                                                                              jmp   .Lcall_prolog_α_406_45
.Lcall_prolog_α_406_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_406_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_406_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_406_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_406_53
                                                                              jmp   .Lcall_prolog_α_406_46
.Lcall_prolog_α_406_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_406_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_406_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_406_51
.Lcall_prolog_α_406_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_406_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_406_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_406_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_406_47
                                                                              jmp   .Lcall_prolog_α_406_48
.Lcall_prolog_α_406_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_406_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_406_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_406_51
.Lcall_prolog_α_406_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_406_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_406_53
                                                                              jmp   .Lcall_prolog_α_406_52
.Lcall_prolog_α_406_49: cmp              dl, 80;                              je    .Lcall_prolog_α_406_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_406_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_406_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_406_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_406_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_406_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_406_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_406_51
                                                                              jmp   .Lcall_prolog_α_406_52
.Lcall_prolog_α_406_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_406_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_406_53
.Lcall_prolog_α_406_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_406_54
.Lcall_prolog_α_406_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_406_54
.Lcall_prolog_α_406_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_406_54: mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx
                        cmp              al, 104;                             je    n121_call_prolog_α
                                                                              jmp   n105_var_ref_α
n104_call_prolog_β:     mov              r11, 72;                             jmp   n121_call_prolog_α
                        .size            n104_call_prolog_bx, .-n104_call_prolog_bx
                        .type            n105_var_ref_bx, @function
n105_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:         mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx;         jmp   n106_lit_string_α
                        .size            n105_var_ref_bx, .-n105_var_ref_bx
                        .type            n106_lit_string_bx, @function
n106_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      mov              r11, 74
                        mov              qword ptr [rbp + 6864], 2            # result
                        mov              dword ptr [rbp + 6868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_409_0]
                        mov              qword ptr [rbp + 6872], rax;         jmp   n107_var_ref_α
.Llit_string_α_409_0:   .quad            .Llit_string_α_409_0_s
.Llit_string_α_409_0_s: .string          "-"
                        .size            n106_lit_string_bx, .-n106_lit_string_bx
                        .type            n107_var_ref_bx, @function
n107_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx;         jmp   n108_var_ref_α
                        .size            n107_var_ref_bx, .-n107_var_ref_bx
                        .type            n108_var_ref_bx, @function
n108_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 6768], rax
                        mov              qword ptr [rbp + 6776], rdx;         jmp   n109_call_prolog_α
                        .size            n108_var_ref_bx, .-n108_var_ref_bx
                        .type            n109_call_prolog_bx, @function
n109_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_prolog_α:     mov              r11, 77
                        mov              rax, qword ptr [rbp + 6768]
                        mov              qword ptr [rbp + 6832], rax
                        mov              rax, qword ptr [rbp + 6776]
                        mov              qword ptr [rbp + 6840], rax
                        mov              rax, qword ptr [rbp + 6752]
                        mov              qword ptr [rbp + 6816], rax
                        mov              rax, qword ptr [rbp + 6760]
                        mov              qword ptr [rbp + 6824], rax
                        mov              rax, qword ptr [rbp + 6864]
                        mov              qword ptr [rbp + 6800], rax
                        mov              rax, qword ptr [rbp + 6872]
                        mov              qword ptr [rbp + 6808], rax
                        lea              rdi, [rbp + 6800]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                        cmp              al, 104;                             je    n121_call_prolog_α
                                                                              jmp   n110_call_prolog_α
n109_call_prolog_β:     mov              r11, 77;                             jmp   n121_call_prolog_α
                        .size            n109_call_prolog_bx, .-n109_call_prolog_bx
                        .type            n110_call_prolog_bx, @function
n110_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_call_prolog_α:     mov              r11, 78
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 6720], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 6728], rax
                        mov              rax, qword ptr [rbp + 6736]
                        mov              qword ptr [rbp + 6704], rax
                        mov              rax, qword ptr [rbp + 6744]
                        mov              qword ptr [rbp + 6712], rax
                        lea              rdi, [rbp + 6704]
                        lea              r8, [rbp + 6704]
.Lcall_prolog_α_415_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_415_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_415_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_415_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_415_40
.Lcall_prolog_α_415_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_415_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_415_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_415_40
.Lcall_prolog_α_415_56: cmp              al, 72;                              jne   .Lcall_prolog_α_415_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_415_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_415_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_415_40
.Lcall_prolog_α_415_41: lea              r9, [rbp + 6720]
.Lcall_prolog_α_415_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_415_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_415_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_415_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_415_42
.Lcall_prolog_α_415_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_415_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_415_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_415_42
.Lcall_prolog_α_415_58: cmp              al, 72;                              jne   .Lcall_prolog_α_415_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_415_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_415_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_415_42
.Lcall_prolog_α_415_43: cmp              r8, r9;                              je    .Lcall_prolog_α_415_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_415_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_415_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_415_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_415_44
                                                                              jmp   .Lcall_prolog_α_415_45
.Lcall_prolog_α_415_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_415_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_415_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_415_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_415_53
                                                                              jmp   .Lcall_prolog_α_415_46
.Lcall_prolog_α_415_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_415_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_415_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_415_51
.Lcall_prolog_α_415_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_415_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_415_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_415_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_415_47
                                                                              jmp   .Lcall_prolog_α_415_48
.Lcall_prolog_α_415_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_415_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_415_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_415_51
.Lcall_prolog_α_415_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_415_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_415_53
                                                                              jmp   .Lcall_prolog_α_415_52
.Lcall_prolog_α_415_49: cmp              dl, 80;                              je    .Lcall_prolog_α_415_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_415_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_415_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_415_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_415_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_415_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_415_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_415_51
                                                                              jmp   .Lcall_prolog_α_415_52
.Lcall_prolog_α_415_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_415_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_415_53
.Lcall_prolog_α_415_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_415_54
.Lcall_prolog_α_415_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_415_54
.Lcall_prolog_α_415_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_415_54: mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                        cmp              al, 104;                             je    n121_call_prolog_α
                                                                              jmp   n111_cut_α
n110_call_prolog_β:     mov              r11, 78;                             jmp   n121_call_prolog_α
                        .size            n110_call_prolog_bx, .-n110_call_prolog_bx
                        .type            n111_cut_bx, @function
n111_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_cut_α:             mov              r11, 79;                             jmp   n112_var_ref_α
                        .size            n111_cut_bx, .-n111_cut_bx
                        .type            n112_var_ref_bx, @function
n112_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 6640], rax
                        mov              qword ptr [rbp + 6648], rdx;         jmp   n113_var_ref_α
                        .size            n112_var_ref_bx, .-n112_var_ref_bx
                        .type            n113_var_ref_bx, @function
n113_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6656], rax
                        mov              qword ptr [rbp + 6664], rdx;         jmp   n114_var_ref_α
                        .size            n113_var_ref_bx, .-n113_var_ref_bx
                        .type            n114_var_ref_bx, @function
n114_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 6672], rax
                        mov              qword ptr [rbp + 6680], rdx;         jmp   n115_call_proc_staged_α
                        .size            n114_var_ref_bx, .-n114_var_ref_bx
                        .type            n115_call_proc_staged_bx, @function
n115_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_call_proc_staged_α:
                        mov              r11, 83
                        lea              rsi, [rbp + 6640]
                        lea              rdx, [rbp + 6656]
                        lea              rcx, [rbp + 6672]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_424_2
.Lcall_proc_staged_α_424_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_424_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 6560]
                        mov              rdx, qword ptr [rbp + 6568]
.Lcall_proc_staged_α_424_29:
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx
                        cmp              al, 104;                             je    n338_call_prolog_α
                                                                              jmp   n116_var_ref_α
n115_call_proc_staged_β:
                        mov              r11, 83;                             jmp   n338_call_prolog_α
.Lcall_proc_staged_β_424_0:
                        .quad            .Lcall_proc_staged_β_424_0_s
.Lcall_proc_staged_β_424_0_s:
                        .string          "d/3"
                        .size            n115_call_proc_staged_bx, .-n115_call_proc_staged_bx
                        .type            n116_var_ref_bx, @function
n116_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx;         jmp   n117_var_ref_α
                        .size            n116_var_ref_bx, .-n116_var_ref_bx
                        .type            n117_var_ref_bx, @function
n117_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx;         jmp   n118_var_ref_α
                        .size            n117_var_ref_bx, .-n117_var_ref_bx
                        .type            n118_var_ref_bx, @function
n118_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx;         jmp   n119_call_proc_staged_α
                        .size            n118_var_ref_bx, .-n118_var_ref_bx
                        .type            n119_call_proc_staged_bx, @function
n119_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_call_proc_staged_α:
                        mov              r11, 87
                        lea              rsi, [rbp + 6512]
                        lea              rdx, [rbp + 6528]
                        lea              rcx, [rbp + 6544]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_432_2
.Lcall_proc_staged_α_432_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_432_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 6432]
                        mov              rdx, qword ptr [rbp + 6440]
.Lcall_proc_staged_α_432_29:
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                        cmp              al, 104;                             je    n115_call_proc_staged_β
                                                                              jmp   n120_move_label_α
n119_call_proc_staged_β:
                        mov              r11, 87;                             jmp   n115_call_proc_staged_β
.Lcall_proc_staged_β_432_0:
                        .quad            .Lcall_proc_staged_β_432_0_s
.Lcall_proc_staged_β_432_0_s:
                        .string          "d/3"
                        .size            n119_call_proc_staged_bx, .-n119_call_proc_staged_bx
                        .type            n120_move_label_bx, @function
n120_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_move_label_α:      mov              r11, 88
                        lea              rax, [rip + n119_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n120_move_label_bx, .-n120_move_label_bx
                        .type            n121_call_prolog_bx, @function
n121_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_call_prolog_α:     mov              r11, 89
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 6416], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 6424], rax
                        lea              rdi, [rbp + 6416]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n122_var_ref_α
n121_call_prolog_β:     mov              r11, 89;                             jmp   d$2F3_ω
                        .size            n121_call_prolog_bx, .-n121_call_prolog_bx
                        .type            n122_var_ref_bx, @function
n122_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx;         jmp   n123_lit_integer_α
                        .size            n122_var_ref_bx, .-n122_var_ref_bx
                        .type            n123_lit_integer_bx, @function
n123_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:     mov              r11, 91
                        mov              qword ptr [rbp + 6368], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_438_0]
                        mov              qword ptr [rbp + 6376], rax;         jmp   n124_lit_string_α
.Llit_integer_α_438_0:  .quad            516
                        .size            n123_lit_integer_bx, .-n123_lit_integer_bx
                        .type            n124_lit_string_bx, @function
n124_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      mov              r11, 92
                        mov              qword ptr [rbp + 6384], 2            # result
                        mov              dword ptr [rbp + 6388], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_439_0]
                        mov              qword ptr [rbp + 6392], rax;         jmp   n125_call_prolog_α
.Llit_string_α_439_0:   .quad            .Llit_string_α_439_0_s
.Llit_string_α_439_0_s: .string          "*"
                        .size            n124_lit_string_bx, .-n124_lit_string_bx
                        .type            n125_call_prolog_bx, @function
n125_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_call_prolog_α:     mov              r11, 93
                        mov              rax, qword ptr [rbp + 6384]
                        mov              qword ptr [rbp + 6336], rax
                        mov              rax, qword ptr [rbp + 6392]
                        mov              qword ptr [rbp + 6344], rax
                        mov              rax, qword ptr [rbp + 6368]
                        mov              qword ptr [rbp + 6320], rax
                        mov              rax, qword ptr [rbp + 6376]
                        mov              qword ptr [rbp + 6328], rax
                        mov              rax, qword ptr [rbp + 6352]
                        mov              qword ptr [rbp + 6304], rax
                        mov              rax, qword ptr [rbp + 6360]
                        mov              qword ptr [rbp + 6312], rax
                        lea              rdi, [rbp + 6304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6288], rax
                        mov              qword ptr [rbp + 6296], rdx
                        cmp              al, 104;                             je    n158_var_ref_α
                                                                              jmp   n126_var_ref_α
n125_call_prolog_β:     mov              r11, 93;                             jmp   n158_var_ref_α
                        .size            n125_call_prolog_bx, .-n125_call_prolog_bx
                        .type            n126_var_ref_bx, @function
n126_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx;         jmp   n127_lit_string_α
                        .size            n126_var_ref_bx, .-n126_var_ref_bx
                        .type            n127_lit_string_bx, @function
n127_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              r11, 95
                        mov              qword ptr [rbp + 6272], 2            # result
                        mov              dword ptr [rbp + 6276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_443_0]
                        mov              qword ptr [rbp + 6280], rax;         jmp   n128_var_ref_α
.Llit_string_α_443_0:   .quad            .Llit_string_α_443_0_s
.Llit_string_α_443_0_s: .string          "*"
                        .size            n127_lit_string_bx, .-n127_lit_string_bx
                        .type            n128_var_ref_bx, @function
n128_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 96
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx;         jmp   n129_var_ref_α
                        .size            n128_var_ref_bx, .-n128_var_ref_bx
                        .type            n129_var_ref_bx, @function
n129_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 6176], rax
                        mov              qword ptr [rbp + 6184], rdx;         jmp   n130_call_prolog_α
                        .size            n129_var_ref_bx, .-n129_var_ref_bx
                        .type            n130_call_prolog_bx, @function
n130_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_call_prolog_α:     mov              r11, 98
                        mov              rax, qword ptr [rbp + 6176]
                        mov              qword ptr [rbp + 6240], rax
                        mov              rax, qword ptr [rbp + 6184]
                        mov              qword ptr [rbp + 6248], rax
                        mov              rax, qword ptr [rbp + 6160]
                        mov              qword ptr [rbp + 6224], rax
                        mov              rax, qword ptr [rbp + 6168]
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6192], rax
                        mov              qword ptr [rbp + 6200], rdx
                        cmp              al, 104;                             je    n157_call_prolog_α
                                                                              jmp   n131_call_prolog_α
n130_call_prolog_β:     mov              r11, 98;                             jmp   n157_call_prolog_α
                        .size            n130_call_prolog_bx, .-n130_call_prolog_bx
                        .type            n131_call_prolog_bx, @function
n131_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_call_prolog_α:     mov              r11, 99
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 6128], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 6136], rax
                        mov              rax, qword ptr [rbp + 6144]
                        mov              qword ptr [rbp + 6112], rax
                        mov              rax, qword ptr [rbp + 6152]
                        mov              qword ptr [rbp + 6120], rax
                        lea              rdi, [rbp + 6112]
                        lea              r8, [rbp + 6112]
.Lcall_prolog_α_449_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_449_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_449_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_449_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_449_40
.Lcall_prolog_α_449_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_449_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_449_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_449_40
.Lcall_prolog_α_449_56: cmp              al, 72;                              jne   .Lcall_prolog_α_449_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_449_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_449_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_449_40
.Lcall_prolog_α_449_41: lea              r9, [rbp + 6128]
.Lcall_prolog_α_449_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_449_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_449_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_449_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_449_42
.Lcall_prolog_α_449_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_449_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_449_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_449_42
.Lcall_prolog_α_449_58: cmp              al, 72;                              jne   .Lcall_prolog_α_449_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_449_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_449_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_449_42
.Lcall_prolog_α_449_43: cmp              r8, r9;                              je    .Lcall_prolog_α_449_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_449_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_449_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_449_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_449_44
                                                                              jmp   .Lcall_prolog_α_449_45
.Lcall_prolog_α_449_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_449_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_449_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_449_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_449_53
                                                                              jmp   .Lcall_prolog_α_449_46
.Lcall_prolog_α_449_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_449_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_449_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_449_51
.Lcall_prolog_α_449_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_449_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_449_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_449_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_449_47
                                                                              jmp   .Lcall_prolog_α_449_48
.Lcall_prolog_α_449_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_449_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_449_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_449_51
.Lcall_prolog_α_449_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_449_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_449_53
                                                                              jmp   .Lcall_prolog_α_449_52
.Lcall_prolog_α_449_49: cmp              dl, 80;                              je    .Lcall_prolog_α_449_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_449_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_449_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_449_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_449_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_449_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_449_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_449_51
                                                                              jmp   .Lcall_prolog_α_449_52
.Lcall_prolog_α_449_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_449_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_449_53
.Lcall_prolog_α_449_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_449_54
.Lcall_prolog_α_449_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_449_54
.Lcall_prolog_α_449_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_449_54: mov              qword ptr [rbp + 6096], rax
                        mov              qword ptr [rbp + 6104], rdx
                        cmp              al, 104;                             je    n157_call_prolog_α
                                                                              jmp   n132_var_ref_α
n131_call_prolog_β:     mov              r11, 99;                             jmp   n157_call_prolog_α
                        .size            n131_call_prolog_bx, .-n131_call_prolog_bx
                        .type            n132_var_ref_bx, @function
n132_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         mov              r11, 100
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx;         jmp   n133_var_ref_α
                        .size            n132_var_ref_bx, .-n132_var_ref_bx
                        .type            n133_var_ref_bx, @function
n133_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6080], rax
                        mov              qword ptr [rbp + 6088], rdx;         jmp   n134_call_prolog_α
                        .size            n133_var_ref_bx, .-n133_var_ref_bx
                        .type            n134_call_prolog_bx, @function
n134_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_call_prolog_α:     mov              r11, 102
                        mov              rax, qword ptr [rbp + 6080]
                        mov              qword ptr [rbp + 6048], rax
                        mov              rax, qword ptr [rbp + 6088]
                        mov              qword ptr [rbp + 6056], rax
                        mov              rax, qword ptr [rbp + 6064]
                        mov              qword ptr [rbp + 6032], rax
                        mov              rax, qword ptr [rbp + 6072]
                        mov              qword ptr [rbp + 6040], rax
                        lea              rdi, [rbp + 6032]
                        lea              r8, [rbp + 6032]
.Lcall_prolog_α_454_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_454_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_454_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_454_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_454_40
.Lcall_prolog_α_454_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_454_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_454_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_454_40
.Lcall_prolog_α_454_56: cmp              al, 72;                              jne   .Lcall_prolog_α_454_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_454_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_454_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_454_40
.Lcall_prolog_α_454_41: lea              r9, [rbp + 6048]
.Lcall_prolog_α_454_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_454_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_454_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_454_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_454_42
.Lcall_prolog_α_454_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_454_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_454_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_454_42
.Lcall_prolog_α_454_58: cmp              al, 72;                              jne   .Lcall_prolog_α_454_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_454_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_454_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_454_42
.Lcall_prolog_α_454_43: cmp              r8, r9;                              je    .Lcall_prolog_α_454_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_454_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_454_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_454_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_454_44
                                                                              jmp   .Lcall_prolog_α_454_45
.Lcall_prolog_α_454_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_454_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_454_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_454_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_454_53
                                                                              jmp   .Lcall_prolog_α_454_46
.Lcall_prolog_α_454_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_454_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_454_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_454_51
.Lcall_prolog_α_454_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_454_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_454_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_454_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_454_47
                                                                              jmp   .Lcall_prolog_α_454_48
.Lcall_prolog_α_454_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_454_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_454_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_454_51
.Lcall_prolog_α_454_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_454_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_454_53
                                                                              jmp   .Lcall_prolog_α_454_52
.Lcall_prolog_α_454_49: cmp              dl, 80;                              je    .Lcall_prolog_α_454_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_454_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_454_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_454_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_454_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_454_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_454_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_454_51
                                                                              jmp   .Lcall_prolog_α_454_52
.Lcall_prolog_α_454_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_454_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_454_53
.Lcall_prolog_α_454_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_454_54
.Lcall_prolog_α_454_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_454_54
.Lcall_prolog_α_454_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_454_54: mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx
                        cmp              al, 104;                             je    n157_call_prolog_α
                                                                              jmp   n135_var_ref_α
n134_call_prolog_β:     mov              r11, 102;                            jmp   n157_call_prolog_α
                        .size            n134_call_prolog_bx, .-n134_call_prolog_bx
                        .type            n135_var_ref_bx, @function
n135_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx;         jmp   n136_lit_string_α
                        .size            n135_var_ref_bx, .-n135_var_ref_bx
                        .type            n136_lit_string_bx, @function
n136_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rbp + 6000], 2            # result
                        mov              dword ptr [rbp + 6004], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_457_0]
                        mov              qword ptr [rbp + 6008], rax;         jmp   n137_lit_string_α
.Llit_string_α_457_0:   .quad            .Llit_string_α_457_0_s
.Llit_string_α_457_0_s: .string          "+"
                        .size            n136_lit_string_bx, .-n136_lit_string_bx
                        .type            n137_lit_string_bx, @function
n137_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rbp + 5776], 2            # result
                        mov              dword ptr [rbp + 5780], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_458_0]
                        mov              qword ptr [rbp + 5784], rax;         jmp   n138_var_ref_α
.Llit_string_α_458_0:   .quad            .Llit_string_α_458_0_s
.Llit_string_α_458_0_s: .string          "*"
                        .size            n137_lit_string_bx, .-n137_lit_string_bx
                        .type            n138_var_ref_bx, @function
n138_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx;         jmp   n139_var_ref_α
                        .size            n138_var_ref_bx, .-n138_var_ref_bx
                        .type            n139_var_ref_bx, @function
n139_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx;         jmp   n140_call_prolog_α
                        .size            n139_var_ref_bx, .-n139_var_ref_bx
                        .type            n140_call_prolog_bx, @function
n140_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_call_prolog_α:     mov              r11, 108
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 5744], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 5752], rax
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5736], rax
                        mov              rax, qword ptr [rbp + 5776]
                        mov              qword ptr [rbp + 5712], rax
                        mov              rax, qword ptr [rbp + 5784]
                        mov              qword ptr [rbp + 5720], rax
                        lea              rdi, [rbp + 5712]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5696], rax
                        mov              qword ptr [rbp + 5704], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n141_lit_string_α
n140_call_prolog_β:     mov              r11, 108;                            jmp   d$2F3_ω
                        .size            n140_call_prolog_bx, .-n140_call_prolog_bx
                        .type            n141_lit_string_bx, @function
n141_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      mov              r11, 109
                        mov              qword ptr [rbp + 5904], 2            # result
                        mov              dword ptr [rbp + 5908], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_464_0]
                        mov              qword ptr [rbp + 5912], rax;         jmp   n142_var_ref_α
.Llit_string_α_464_0:   .quad            .Llit_string_α_464_0_s
.Llit_string_α_464_0_s: .string          "*"
                        .size            n141_lit_string_bx, .-n141_lit_string_bx
                        .type            n142_var_ref_bx, @function
n142_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx;         jmp   n143_var_ref_α
                        .size            n142_var_ref_bx, .-n142_var_ref_bx
                        .type            n143_var_ref_bx, @function
n143_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 5808], rax
                        mov              qword ptr [rbp + 5816], rdx;         jmp   n144_call_prolog_α
                        .size            n143_var_ref_bx, .-n143_var_ref_bx
                        .type            n144_call_prolog_bx, @function
n144_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_call_prolog_α:     mov              r11, 112
                        mov              rax, qword ptr [rbp + 5808]
                        mov              qword ptr [rbp + 5872], rax
                        mov              rax, qword ptr [rbp + 5816]
                        mov              qword ptr [rbp + 5880], rax
                        mov              rax, qword ptr [rbp + 5792]
                        mov              qword ptr [rbp + 5856], rax
                        mov              rax, qword ptr [rbp + 5800]
                        mov              qword ptr [rbp + 5864], rax
                        mov              rax, qword ptr [rbp + 5904]
                        mov              qword ptr [rbp + 5840], rax
                        mov              rax, qword ptr [rbp + 5912]
                        mov              qword ptr [rbp + 5848], rax
                        lea              rdi, [rbp + 5840]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5824], rax
                        mov              qword ptr [rbp + 5832], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n145_call_prolog_α
n144_call_prolog_β:     mov              r11, 112;                            jmp   d$2F3_ω
                        .size            n144_call_prolog_bx, .-n144_call_prolog_bx
                        .type            n145_call_prolog_bx, @function
n145_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_call_prolog_α:     mov              r11, 113
                        mov              rax, qword ptr [rbp + 5824]
                        mov              qword ptr [rbp + 5968], rax
                        mov              rax, qword ptr [rbp + 5832]
                        mov              qword ptr [rbp + 5976], rax
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 5952], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 5960], rax
                        mov              rax, qword ptr [rbp + 6000]
                        mov              qword ptr [rbp + 5936], rax
                        mov              rax, qword ptr [rbp + 6008]
                        mov              qword ptr [rbp + 5944], rax
                        lea              rdi, [rbp + 5936]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                        cmp              al, 104;                             je    n157_call_prolog_α
                                                                              jmp   n146_call_prolog_α
n145_call_prolog_β:     mov              r11, 113;                            jmp   n157_call_prolog_α
                        .size            n145_call_prolog_bx, .-n145_call_prolog_bx
                        .type            n146_call_prolog_bx, @function
n146_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_call_prolog_α:     mov              r11, 114
                        mov              rax, qword ptr [rbp + 5920]
                        mov              qword ptr [rbp + 5632], rax
                        mov              rax, qword ptr [rbp + 5928]
                        mov              qword ptr [rbp + 5640], rax
                        mov              rax, qword ptr [rbp + 5648]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 5656]
                        mov              qword ptr [rbp + 5624], rax
                        lea              rdi, [rbp + 5616]
                        lea              r8, [rbp + 5616]
.Lcall_prolog_α_471_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_471_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_471_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_471_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_471_40
.Lcall_prolog_α_471_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_471_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_471_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_471_40
.Lcall_prolog_α_471_56: cmp              al, 72;                              jne   .Lcall_prolog_α_471_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_471_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_471_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_471_40
.Lcall_prolog_α_471_41: lea              r9, [rbp + 5632]
.Lcall_prolog_α_471_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_471_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_471_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_471_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_471_42
.Lcall_prolog_α_471_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_471_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_471_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_471_42
.Lcall_prolog_α_471_58: cmp              al, 72;                              jne   .Lcall_prolog_α_471_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_471_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_471_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_471_42
.Lcall_prolog_α_471_43: cmp              r8, r9;                              je    .Lcall_prolog_α_471_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_471_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_471_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_471_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_471_44
                                                                              jmp   .Lcall_prolog_α_471_45
.Lcall_prolog_α_471_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_471_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_471_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_471_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_471_53
                                                                              jmp   .Lcall_prolog_α_471_46
.Lcall_prolog_α_471_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_471_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_471_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_471_51
.Lcall_prolog_α_471_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_471_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_471_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_471_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_471_47
                                                                              jmp   .Lcall_prolog_α_471_48
.Lcall_prolog_α_471_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_471_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_471_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_471_51
.Lcall_prolog_α_471_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_471_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_471_53
                                                                              jmp   .Lcall_prolog_α_471_52
.Lcall_prolog_α_471_49: cmp              dl, 80;                              je    .Lcall_prolog_α_471_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_471_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_471_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_471_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_471_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_471_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_471_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_471_51
                                                                              jmp   .Lcall_prolog_α_471_52
.Lcall_prolog_α_471_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_471_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_471_53
.Lcall_prolog_α_471_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_471_54
.Lcall_prolog_α_471_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_471_54
.Lcall_prolog_α_471_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_471_54: mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                        cmp              al, 104;                             je    n157_call_prolog_α
                                                                              jmp   n147_cut_α
n146_call_prolog_β:     mov              r11, 114;                            jmp   n157_call_prolog_α
                        .size            n146_call_prolog_bx, .-n146_call_prolog_bx
                        .type            n147_cut_bx, @function
n147_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_cut_α:             mov              r11, 115;                            jmp   n148_var_ref_α
                        .size            n147_cut_bx, .-n147_cut_bx
                        .type            n148_var_ref_bx, @function
n148_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx;         jmp   n149_var_ref_α
                        .size            n148_var_ref_bx, .-n148_var_ref_bx
                        .type            n149_var_ref_bx, @function
n149_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx;         jmp   n150_var_ref_α
                        .size            n149_var_ref_bx, .-n149_var_ref_bx
                        .type            n150_var_ref_bx, @function
n150_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx;         jmp   n151_call_proc_staged_α
                        .size            n150_var_ref_bx, .-n150_var_ref_bx
                        .type            n151_call_proc_staged_bx, @function
n151_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_call_proc_staged_α:
                        mov              r11, 119
                        lea              rsi, [rbp + 5552]
                        lea              rdx, [rbp + 5568]
                        lea              rcx, [rbp + 5584]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_480_2
.Lcall_proc_staged_α_480_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_480_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 5472]
                        mov              rdx, qword ptr [rbp + 5480]
.Lcall_proc_staged_α_480_29:
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              al, 104;                             je    n338_call_prolog_α
                                                                              jmp   n152_var_ref_α
n151_call_proc_staged_β:
                        mov              r11, 119;                            jmp   n338_call_prolog_α
.Lcall_proc_staged_β_480_0:
                        .quad            .Lcall_proc_staged_β_480_0_s
.Lcall_proc_staged_β_480_0_s:
                        .string          "d/3"
                        .size            n151_call_proc_staged_bx, .-n151_call_proc_staged_bx
                        .type            n152_var_ref_bx, @function
n152_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx;         jmp   n153_var_ref_α
                        .size            n152_var_ref_bx, .-n152_var_ref_bx
                        .type            n153_var_ref_bx, @function
n153_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 5440], rax
                        mov              qword ptr [rbp + 5448], rdx;         jmp   n154_var_ref_α
                        .size            n153_var_ref_bx, .-n153_var_ref_bx
                        .type            n154_var_ref_bx, @function
n154_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx;         jmp   n155_call_proc_staged_α
                        .size            n154_var_ref_bx, .-n154_var_ref_bx
                        .type            n155_call_proc_staged_bx, @function
n155_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_call_proc_staged_α:
                        mov              r11, 123
                        lea              rsi, [rbp + 5424]
                        lea              rdx, [rbp + 5440]
                        lea              rcx, [rbp + 5456]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_488_2
.Lcall_proc_staged_α_488_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_488_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 5344]
                        mov              rdx, qword ptr [rbp + 5352]
.Lcall_proc_staged_α_488_29:
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                        cmp              al, 104;                             je    n151_call_proc_staged_β
                                                                              jmp   n156_move_label_α
n155_call_proc_staged_β:
                        mov              r11, 123;                            jmp   n151_call_proc_staged_β
.Lcall_proc_staged_β_488_0:
                        .quad            .Lcall_proc_staged_β_488_0_s
.Lcall_proc_staged_β_488_0_s:
                        .string          "d/3"
                        .size            n155_call_proc_staged_bx, .-n155_call_proc_staged_bx
                        .type            n156_move_label_bx, @function
n156_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_move_label_α:      mov              r11, 124
                        lea              rax, [rip + n155_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n156_move_label_bx, .-n156_move_label_bx
                        .type            n157_call_prolog_bx, @function
n157_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_call_prolog_α:     mov              r11, 125
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 5336], rax
                        lea              rdi, [rbp + 5328]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5312], rax
                        mov              qword ptr [rbp + 5320], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n158_var_ref_α
n157_call_prolog_β:     mov              r11, 125;                            jmp   d$2F3_ω
                        .size            n157_call_prolog_bx, .-n157_call_prolog_bx
                        .type            n158_var_ref_bx, @function
n158_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:         mov              r11, 126
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx;         jmp   n159_lit_integer_α
                        .size            n158_var_ref_bx, .-n158_var_ref_bx
                        .type            n159_lit_integer_bx, @function
n159_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:     mov              r11, 127
                        mov              qword ptr [rbp + 5280], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_494_0]
                        mov              qword ptr [rbp + 5288], rax;         jmp   n160_lit_string_α
.Llit_integer_α_494_0:  .quad            516
                        .size            n159_lit_integer_bx, .-n159_lit_integer_bx
                        .type            n160_lit_string_bx, @function
n160_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rbp + 5296], 2            # result
                        mov              dword ptr [rbp + 5300], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_495_0]
                        mov              qword ptr [rbp + 5304], rax;         jmp   n161_call_prolog_α
.Llit_string_α_495_0:   .quad            .Llit_string_α_495_0_s
.Llit_string_α_495_0_s: .string          "/"
                        .size            n160_lit_string_bx, .-n160_lit_string_bx
                        .type            n161_call_prolog_bx, @function
n161_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_call_prolog_α:     mov              r11, 129
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 5248], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 5256], rax
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 5232], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 5240], rax
                        mov              rax, qword ptr [rbp + 5264]
                        mov              qword ptr [rbp + 5216], rax
                        mov              rax, qword ptr [rbp + 5272]
                        mov              qword ptr [rbp + 5224], rax
                        lea              rdi, [rbp + 5216]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx
                        cmp              al, 104;                             je    n200_var_ref_α
                                                                              jmp   n162_var_ref_α
n161_call_prolog_β:     mov              r11, 129;                            jmp   n200_var_ref_α
                        .size            n161_call_prolog_bx, .-n161_call_prolog_bx
                        .type            n162_var_ref_bx, @function
n162_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:         mov              r11, 130
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx;         jmp   n163_lit_string_α
                        .size            n162_var_ref_bx, .-n162_var_ref_bx
                        .type            n163_lit_string_bx, @function
n163_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:      mov              r11, 131
                        mov              qword ptr [rbp + 5184], 2            # result
                        mov              dword ptr [rbp + 5188], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_499_0]
                        mov              qword ptr [rbp + 5192], rax;         jmp   n164_var_ref_α
.Llit_string_α_499_0:   .quad            .Llit_string_α_499_0_s
.Llit_string_α_499_0_s: .string          "/"
                        .size            n163_lit_string_bx, .-n163_lit_string_bx
                        .type            n164_var_ref_bx, @function
n164_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx;         jmp   n165_var_ref_α
                        .size            n164_var_ref_bx, .-n164_var_ref_bx
                        .type            n165_var_ref_bx, @function
n165_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx;         jmp   n166_call_prolog_α
                        .size            n165_var_ref_bx, .-n165_var_ref_bx
                        .type            n166_call_prolog_bx, @function
n166_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_call_prolog_α:     mov              r11, 134
                        mov              rax, qword ptr [rbp + 5088]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5096]
                        mov              qword ptr [rbp + 5160], rax
                        mov              rax, qword ptr [rbp + 5072]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 5080]
                        mov              qword ptr [rbp + 5144], rax
                        mov              rax, qword ptr [rbp + 5184]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 5192]
                        mov              qword ptr [rbp + 5128], rax
                        lea              rdi, [rbp + 5120]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                        cmp              al, 104;                             je    n199_call_prolog_α
                                                                              jmp   n167_call_prolog_α
n166_call_prolog_β:     mov              r11, 134;                            jmp   n199_call_prolog_α
                        .size            n166_call_prolog_bx, .-n166_call_prolog_bx
                        .type            n167_call_prolog_bx, @function
n167_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_call_prolog_α:     mov              r11, 135
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5040], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5048], rax
                        mov              rax, qword ptr [rbp + 5056]
                        mov              qword ptr [rbp + 5024], rax
                        mov              rax, qword ptr [rbp + 5064]
                        mov              qword ptr [rbp + 5032], rax
                        lea              rdi, [rbp + 5024]
                        lea              r8, [rbp + 5024]
.Lcall_prolog_α_505_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_505_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_505_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_505_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_505_40
.Lcall_prolog_α_505_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_505_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_505_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_505_40
.Lcall_prolog_α_505_56: cmp              al, 72;                              jne   .Lcall_prolog_α_505_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_505_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_505_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_505_40
.Lcall_prolog_α_505_41: lea              r9, [rbp + 5040]
.Lcall_prolog_α_505_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_505_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_505_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_505_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_505_42
.Lcall_prolog_α_505_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_505_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_505_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_505_42
.Lcall_prolog_α_505_58: cmp              al, 72;                              jne   .Lcall_prolog_α_505_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_505_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_505_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_505_42
.Lcall_prolog_α_505_43: cmp              r8, r9;                              je    .Lcall_prolog_α_505_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_505_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_505_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_505_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_505_44
                                                                              jmp   .Lcall_prolog_α_505_45
.Lcall_prolog_α_505_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_505_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_505_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_505_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_505_53
                                                                              jmp   .Lcall_prolog_α_505_46
.Lcall_prolog_α_505_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_505_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_505_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_505_51
.Lcall_prolog_α_505_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_505_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_505_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_505_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_505_47
                                                                              jmp   .Lcall_prolog_α_505_48
.Lcall_prolog_α_505_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_505_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_505_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_505_51
.Lcall_prolog_α_505_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_505_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_505_53
                                                                              jmp   .Lcall_prolog_α_505_52
.Lcall_prolog_α_505_49: cmp              dl, 80;                              je    .Lcall_prolog_α_505_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_505_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_505_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_505_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_505_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_505_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_505_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_505_51
                                                                              jmp   .Lcall_prolog_α_505_52
.Lcall_prolog_α_505_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_505_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_505_53
.Lcall_prolog_α_505_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_505_54
.Lcall_prolog_α_505_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_505_54
.Lcall_prolog_α_505_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_505_54: mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                        cmp              al, 104;                             je    n199_call_prolog_α
                                                                              jmp   n168_var_ref_α
n167_call_prolog_β:     mov              r11, 135;                            jmp   n199_call_prolog_α
                        .size            n167_call_prolog_bx, .-n167_call_prolog_bx
                        .type            n168_var_ref_bx, @function
n168_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx;         jmp   n169_var_ref_α
                        .size            n168_var_ref_bx, .-n168_var_ref_bx
                        .type            n169_var_ref_bx, @function
n169_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx;         jmp   n170_call_prolog_α
                        .size            n169_var_ref_bx, .-n169_var_ref_bx
                        .type            n170_call_prolog_bx, @function
n170_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_call_prolog_α:     mov              r11, 138
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 4968], rax
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 4952], rax
                        lea              rdi, [rbp + 4944]
                        lea              r8, [rbp + 4944]
.Lcall_prolog_α_510_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_510_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_510_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_510_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_510_40
.Lcall_prolog_α_510_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_510_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_510_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_510_40
.Lcall_prolog_α_510_56: cmp              al, 72;                              jne   .Lcall_prolog_α_510_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_510_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_510_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_510_40
.Lcall_prolog_α_510_41: lea              r9, [rbp + 4960]
.Lcall_prolog_α_510_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_510_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_510_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_510_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_510_42
.Lcall_prolog_α_510_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_510_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_510_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_510_42
.Lcall_prolog_α_510_58: cmp              al, 72;                              jne   .Lcall_prolog_α_510_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_510_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_510_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_510_42
.Lcall_prolog_α_510_43: cmp              r8, r9;                              je    .Lcall_prolog_α_510_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_510_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_510_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_510_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_510_44
                                                                              jmp   .Lcall_prolog_α_510_45
.Lcall_prolog_α_510_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_510_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_510_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_510_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_510_53
                                                                              jmp   .Lcall_prolog_α_510_46
.Lcall_prolog_α_510_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_510_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_510_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_510_51
.Lcall_prolog_α_510_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_510_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_510_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_510_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_510_47
                                                                              jmp   .Lcall_prolog_α_510_48
.Lcall_prolog_α_510_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_510_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_510_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_510_51
.Lcall_prolog_α_510_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_510_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_510_53
                                                                              jmp   .Lcall_prolog_α_510_52
.Lcall_prolog_α_510_49: cmp              dl, 80;                              je    .Lcall_prolog_α_510_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_510_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_510_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_510_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_510_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_510_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_510_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_510_51
                                                                              jmp   .Lcall_prolog_α_510_52
.Lcall_prolog_α_510_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_510_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_510_53
.Lcall_prolog_α_510_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_510_54
.Lcall_prolog_α_510_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_510_54
.Lcall_prolog_α_510_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_510_54: mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                        cmp              al, 104;                             je    n199_call_prolog_α
                                                                              jmp   n171_var_ref_α
n170_call_prolog_β:     mov              r11, 138;                            jmp   n199_call_prolog_α
                        .size            n170_call_prolog_bx, .-n170_call_prolog_bx
                        .type            n171_var_ref_bx, @function
n171_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx;         jmp   n172_lit_string_α
                        .size            n171_var_ref_bx, .-n171_var_ref_bx
                        .type            n172_lit_string_bx, @function
n172_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      mov              r11, 140
                        mov              qword ptr [rbp + 4912], 2            # result
                        mov              dword ptr [rbp + 4916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_513_0]
                        mov              qword ptr [rbp + 4920], rax;         jmp   n173_lit_string_α
.Llit_string_α_513_0:   .quad            .Llit_string_α_513_0_s
.Llit_string_α_513_0_s: .string          "/"
                        .size            n172_lit_string_bx, .-n172_lit_string_bx
                        .type            n173_lit_string_bx, @function
n173_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:      mov              r11, 141
                        mov              qword ptr [rbp + 4688], 2            # result
                        mov              dword ptr [rbp + 4692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_514_0]
                        mov              qword ptr [rbp + 4696], rax;         jmp   n174_lit_string_α
.Llit_string_α_514_0:   .quad            .Llit_string_α_514_0_s
.Llit_string_α_514_0_s: .string          "-"
                        .size            n173_lit_string_bx, .-n173_lit_string_bx
                        .type            n174_lit_string_bx, @function
n174_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              r11, 142
                        mov              qword ptr [rbp + 4464], 2            # result
                        mov              dword ptr [rbp + 4468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_515_0]
                        mov              qword ptr [rbp + 4472], rax;         jmp   n175_var_ref_α
.Llit_string_α_515_0:   .quad            .Llit_string_α_515_0_s
.Llit_string_α_515_0_s: .string          "*"
                        .size            n174_lit_string_bx, .-n174_lit_string_bx
                        .type            n175_var_ref_bx, @function
n175_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx;         jmp   n176_var_ref_α
                        .size            n175_var_ref_bx, .-n175_var_ref_bx
                        .type            n176_var_ref_bx, @function
n176_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx;         jmp   n177_call_prolog_α
                        .size            n176_var_ref_bx, .-n176_var_ref_bx
                        .type            n177_call_prolog_bx, @function
n177_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_call_prolog_α:     mov              r11, 145
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 4440], rax
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 4360]
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n178_lit_string_α
n177_call_prolog_β:     mov              r11, 145;                            jmp   d$2F3_ω
                        .size            n177_call_prolog_bx, .-n177_call_prolog_bx
                        .type            n178_lit_string_bx, @function
n178_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      mov              r11, 146
                        mov              qword ptr [rbp + 4592], 2            # result
                        mov              dword ptr [rbp + 4596], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_521_0]
                        mov              qword ptr [rbp + 4600], rax;         jmp   n179_var_ref_α
.Llit_string_α_521_0:   .quad            .Llit_string_α_521_0_s
.Llit_string_α_521_0_s: .string          "*"
                        .size            n178_lit_string_bx, .-n178_lit_string_bx
                        .type            n179_var_ref_bx, @function
n179_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:         mov              r11, 147
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx;         jmp   n180_var_ref_α
                        .size            n179_var_ref_bx, .-n179_var_ref_bx
                        .type            n180_var_ref_bx, @function
n180_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx;         jmp   n181_call_prolog_α
                        .size            n180_var_ref_bx, .-n180_var_ref_bx
                        .type            n181_call_prolog_bx, @function
n181_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_call_prolog_α:     mov              r11, 149
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 4560], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 4568], rax
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 4552], rax
                        mov              rax, qword ptr [rbp + 4592]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4600]
                        mov              qword ptr [rbp + 4536], rax
                        lea              rdi, [rbp + 4528]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n182_call_prolog_α
n181_call_prolog_β:     mov              r11, 149;                            jmp   d$2F3_ω
                        .size            n181_call_prolog_bx, .-n181_call_prolog_bx
                        .type            n182_call_prolog_bx, @function
n182_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_call_prolog_α:     mov              r11, 150
                        mov              rax, qword ptr [rbp + 4512]
                        mov              qword ptr [rbp + 4656], rax
                        mov              rax, qword ptr [rbp + 4520]
                        mov              qword ptr [rbp + 4664], rax
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4640], rax
                        mov              rax, qword ptr [rbp + 4392]
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4608], rax
                        mov              qword ptr [rbp + 4616], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n183_lit_string_α
n182_call_prolog_β:     mov              r11, 150;                            jmp   d$2F3_ω
                        .size            n182_call_prolog_bx, .-n182_call_prolog_bx
                        .type            n183_lit_string_bx, @function
n183_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:      mov              r11, 151
                        mov              qword ptr [rbp + 4816], 2            # result
                        mov              dword ptr [rbp + 4820], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_528_0]
                        mov              qword ptr [rbp + 4824], rax;         jmp   n184_var_ref_α
.Llit_string_α_528_0:   .quad            .Llit_string_α_528_0_s
.Llit_string_α_528_0_s: .string          "^"
                        .size            n183_lit_string_bx, .-n183_lit_string_bx
                        .type            n184_var_ref_bx, @function
n184_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx;         jmp   n185_lit_integer_α
                        .size            n184_var_ref_bx, .-n184_var_ref_bx
                        .type            n185_lit_integer_bx, @function
n185_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_integer_α:     mov              r11, 153
                        mov              qword ptr [rbp + 4720], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_531_0]
                        mov              qword ptr [rbp + 4728], rax;         jmp   n186_call_prolog_α
.Llit_integer_α_531_0:  .quad            2
                        .size            n185_lit_integer_bx, .-n185_lit_integer_bx
                        .type            n186_call_prolog_bx, @function
n186_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_call_prolog_α:     mov              r11, 154
                        mov              rax, qword ptr [rbp + 4720]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4728]
                        mov              qword ptr [rbp + 4792], rax
                        mov              rax, qword ptr [rbp + 4704]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 4712]
                        mov              qword ptr [rbp + 4776], rax
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 4752], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 4760], rax
                        lea              rdi, [rbp + 4752]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4736], rax
                        mov              qword ptr [rbp + 4744], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n187_call_prolog_α
n186_call_prolog_β:     mov              r11, 154;                            jmp   d$2F3_ω
                        .size            n186_call_prolog_bx, .-n186_call_prolog_bx
                        .type            n187_call_prolog_bx, @function
n187_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_call_prolog_α:     mov              r11, 155
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4880], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4888], rax
                        mov              rax, qword ptr [rbp + 4608]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 4616]
                        mov              qword ptr [rbp + 4872], rax
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 4848], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 4856], rax
                        lea              rdi, [rbp + 4848]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4832], rax
                        mov              qword ptr [rbp + 4840], rdx
                        cmp              al, 104;                             je    n199_call_prolog_α
                                                                              jmp   n188_call_prolog_α
n187_call_prolog_β:     mov              r11, 155;                            jmp   n199_call_prolog_α
                        .size            n187_call_prolog_bx, .-n187_call_prolog_bx
                        .type            n188_call_prolog_bx, @function
n188_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_call_prolog_α:     mov              r11, 156
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 4328], rax
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4312], rax
                        lea              rdi, [rbp + 4304]
                        lea              r8, [rbp + 4304]
.Lcall_prolog_α_534_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_534_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_534_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_534_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_534_40
.Lcall_prolog_α_534_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_534_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_534_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_534_40
.Lcall_prolog_α_534_56: cmp              al, 72;                              jne   .Lcall_prolog_α_534_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_534_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_534_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_534_40
.Lcall_prolog_α_534_41: lea              r9, [rbp + 4320]
.Lcall_prolog_α_534_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_534_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_534_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_534_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_534_42
.Lcall_prolog_α_534_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_534_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_534_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_534_42
.Lcall_prolog_α_534_58: cmp              al, 72;                              jne   .Lcall_prolog_α_534_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_534_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_534_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_534_42
.Lcall_prolog_α_534_43: cmp              r8, r9;                              je    .Lcall_prolog_α_534_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_534_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_534_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_534_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_534_44
                                                                              jmp   .Lcall_prolog_α_534_45
.Lcall_prolog_α_534_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_534_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_534_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_534_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_534_53
                                                                              jmp   .Lcall_prolog_α_534_46
.Lcall_prolog_α_534_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_534_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_534_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_534_51
.Lcall_prolog_α_534_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_534_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_534_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_534_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_534_47
                                                                              jmp   .Lcall_prolog_α_534_48
.Lcall_prolog_α_534_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_534_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_534_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_534_51
.Lcall_prolog_α_534_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_534_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_534_53
                                                                              jmp   .Lcall_prolog_α_534_52
.Lcall_prolog_α_534_49: cmp              dl, 80;                              je    .Lcall_prolog_α_534_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_534_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_534_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_534_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_534_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_534_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_534_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_534_51
                                                                              jmp   .Lcall_prolog_α_534_52
.Lcall_prolog_α_534_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_534_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_534_53
.Lcall_prolog_α_534_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_534_54
.Lcall_prolog_α_534_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_534_54
.Lcall_prolog_α_534_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_534_54: mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              al, 104;                             je    n199_call_prolog_α
                                                                              jmp   n189_cut_α
n188_call_prolog_β:     mov              r11, 156;                            jmp   n199_call_prolog_α
                        .size            n188_call_prolog_bx, .-n188_call_prolog_bx
                        .type            n189_cut_bx, @function
n189_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_cut_α:             mov              r11, 157;                            jmp   n190_var_ref_α
                        .size            n189_cut_bx, .-n189_cut_bx
                        .type            n190_var_ref_bx, @function
n190_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              r11, 158
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx;         jmp   n191_var_ref_α
                        .size            n190_var_ref_bx, .-n190_var_ref_bx
                        .type            n191_var_ref_bx, @function
n191_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx;         jmp   n192_var_ref_α
                        .size            n191_var_ref_bx, .-n191_var_ref_bx
                        .type            n192_var_ref_bx, @function
n192_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              r11, 160
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx;         jmp   n193_call_proc_staged_α
                        .size            n192_var_ref_bx, .-n192_var_ref_bx
                        .type            n193_call_proc_staged_bx, @function
n193_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_call_proc_staged_α:
                        mov              r11, 161
                        lea              rsi, [rbp + 4240]
                        lea              rdx, [rbp + 4256]
                        lea              rcx, [rbp + 4272]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_543_2
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
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 4160]
                        mov              rdx, qword ptr [rbp + 4168]
.Lcall_proc_staged_α_543_29:
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              al, 104;                             je    n338_call_prolog_α
                                                                              jmp   n194_var_ref_α
n193_call_proc_staged_β:
                        mov              r11, 161;                            jmp   n338_call_prolog_α
.Lcall_proc_staged_β_543_0:
                        .quad            .Lcall_proc_staged_β_543_0_s
.Lcall_proc_staged_β_543_0_s:
                        .string          "d/3"
                        .size            n193_call_proc_staged_bx, .-n193_call_proc_staged_bx
                        .type            n194_var_ref_bx, @function
n194_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx;         jmp   n195_var_ref_α
                        .size            n194_var_ref_bx, .-n194_var_ref_bx
                        .type            n195_var_ref_bx, @function
n195_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx;         jmp   n196_var_ref_α
                        .size            n195_var_ref_bx, .-n195_var_ref_bx
                        .type            n196_var_ref_bx, @function
n196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              r11, 164
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx;         jmp   n197_call_proc_staged_α
                        .size            n196_var_ref_bx, .-n196_var_ref_bx
                        .type            n197_call_proc_staged_bx, @function
n197_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_call_proc_staged_α:
                        mov              r11, 165
                        lea              rsi, [rbp + 4112]
                        lea              rdx, [rbp + 4128]
                        lea              rcx, [rbp + 4144]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_551_2
.Lcall_proc_staged_α_551_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_551_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 4032]
                        mov              rdx, qword ptr [rbp + 4040]
.Lcall_proc_staged_α_551_29:
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        cmp              al, 104;                             je    n193_call_proc_staged_β
                                                                              jmp   n198_move_label_α
n197_call_proc_staged_β:
                        mov              r11, 165;                            jmp   n193_call_proc_staged_β
.Lcall_proc_staged_β_551_0:
                        .quad            .Lcall_proc_staged_β_551_0_s
.Lcall_proc_staged_β_551_0_s:
                        .string          "d/3"
                        .size            n197_call_proc_staged_bx, .-n197_call_proc_staged_bx
                        .type            n198_move_label_bx, @function
n198_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_move_label_α:      mov              r11, 166
                        lea              rax, [rip + n197_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n198_move_label_bx, .-n198_move_label_bx
                        .type            n199_call_prolog_bx, @function
n199_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_call_prolog_α:     mov              r11, 167
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 4024], rax
                        lea              rdi, [rbp + 4016]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n200_var_ref_α
n199_call_prolog_β:     mov              r11, 167;                            jmp   d$2F3_ω
                        .size            n199_call_prolog_bx, .-n199_call_prolog_bx
                        .type            n200_var_ref_bx, @function
n200_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:         mov              r11, 168
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx;         jmp   n201_lit_integer_α
                        .size            n200_var_ref_bx, .-n200_var_ref_bx
                        .type            n201_lit_integer_bx, @function
n201_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:     mov              r11, 169
                        mov              qword ptr [rbp + 3968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_557_0]
                        mov              qword ptr [rbp + 3976], rax;         jmp   n202_lit_string_α
.Llit_integer_α_557_0:  .quad            516
                        .size            n201_lit_integer_bx, .-n201_lit_integer_bx
                        .type            n202_lit_string_bx, @function
n202_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rbp + 3984], 2            # result
                        mov              dword ptr [rbp + 3988], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_558_0]
                        mov              qword ptr [rbp + 3992], rax;         jmp   n203_call_prolog_α
.Llit_string_α_558_0:   .quad            .Llit_string_α_558_0_s
.Llit_string_α_558_0_s: .string          "^"
                        .size            n202_lit_string_bx, .-n202_lit_string_bx
                        .type            n203_call_prolog_bx, @function
n203_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_call_prolog_α:     mov              r11, 171
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 3944], rax
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3928], rax
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 3912], rax
                        lea              rdi, [rbp + 3904]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                        cmp              al, 104;                             je    n239_var_ref_α
                                                                              jmp   n204_var_ref_α
n203_call_prolog_β:     mov              r11, 171;                            jmp   n239_var_ref_α
                        .size            n203_call_prolog_bx, .-n203_call_prolog_bx
                        .type            n204_var_ref_bx, @function
n204_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx;         jmp   n205_lit_string_α
                        .size            n204_var_ref_bx, .-n204_var_ref_bx
                        .type            n205_lit_string_bx, @function
n205_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:      mov              r11, 173
                        mov              qword ptr [rbp + 3872], 2            # result
                        mov              dword ptr [rbp + 3876], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_562_0]
                        mov              qword ptr [rbp + 3880], rax;         jmp   n206_var_ref_α
.Llit_string_α_562_0:   .quad            .Llit_string_α_562_0_s
.Llit_string_α_562_0_s: .string          "^"
                        .size            n205_lit_string_bx, .-n205_lit_string_bx
                        .type            n206_var_ref_bx, @function
n206_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx;         jmp   n207_var_ref_α
                        .size            n206_var_ref_bx, .-n206_var_ref_bx
                        .type            n207_var_ref_bx, @function
n207_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:         mov              r11, 175
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx;         jmp   n208_call_prolog_α
                        .size            n207_var_ref_bx, .-n207_var_ref_bx
                        .type            n208_call_prolog_bx, @function
n208_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_call_prolog_α:     mov              r11, 176
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3848], rax
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3832], rax
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3816], rax
                        lea              rdi, [rbp + 3808]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              al, 104;                             je    n238_call_prolog_α
                                                                              jmp   n209_call_prolog_α
n208_call_prolog_β:     mov              r11, 176;                            jmp   n238_call_prolog_α
                        .size            n208_call_prolog_bx, .-n208_call_prolog_bx
                        .type            n209_call_prolog_bx, @function
n209_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_call_prolog_α:     mov              r11, 177
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3736], rax
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3720], rax
                        lea              rdi, [rbp + 3712]
                        lea              r8, [rbp + 3712]
.Lcall_prolog_α_568_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_568_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_568_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_568_40
.Lcall_prolog_α_568_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_568_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_568_40
.Lcall_prolog_α_568_56: cmp              al, 72;                              jne   .Lcall_prolog_α_568_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_568_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_568_40
.Lcall_prolog_α_568_41: lea              r9, [rbp + 3728]
.Lcall_prolog_α_568_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_568_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_568_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_568_42
.Lcall_prolog_α_568_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_568_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_568_42
.Lcall_prolog_α_568_58: cmp              al, 72;                              jne   .Lcall_prolog_α_568_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_568_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_568_42
.Lcall_prolog_α_568_43: cmp              r8, r9;                              je    .Lcall_prolog_α_568_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_568_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_568_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_568_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_568_44
                                                                              jmp   .Lcall_prolog_α_568_45
.Lcall_prolog_α_568_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_568_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_568_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_568_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_568_53
                                                                              jmp   .Lcall_prolog_α_568_46
.Lcall_prolog_α_568_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_568_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_568_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_568_51
.Lcall_prolog_α_568_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_568_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_568_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_568_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_568_47
                                                                              jmp   .Lcall_prolog_α_568_48
.Lcall_prolog_α_568_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_568_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_568_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_568_51
.Lcall_prolog_α_568_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_568_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_568_53
                                                                              jmp   .Lcall_prolog_α_568_52
.Lcall_prolog_α_568_49: cmp              dl, 80;                              je    .Lcall_prolog_α_568_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_568_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_568_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_568_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_568_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_568_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_568_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_568_51
                                                                              jmp   .Lcall_prolog_α_568_52
.Lcall_prolog_α_568_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_568_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_568_53
.Lcall_prolog_α_568_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_568_54
.Lcall_prolog_α_568_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_568_54
.Lcall_prolog_α_568_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_568_54: mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              al, 104;                             je    n238_call_prolog_α
                                                                              jmp   n210_var_ref_α
n209_call_prolog_β:     mov              r11, 177;                            jmp   n238_call_prolog_α
                        .size            n209_call_prolog_bx, .-n209_call_prolog_bx
                        .type            n210_var_ref_bx, @function
n210_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx;         jmp   n211_var_ref_α
                        .size            n210_var_ref_bx, .-n210_var_ref_bx
                        .type            n211_var_ref_bx, @function
n211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx;         jmp   n212_call_prolog_α
                        .size            n211_var_ref_bx, .-n211_var_ref_bx
                        .type            n212_call_prolog_bx, @function
n212_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_call_prolog_α:     mov              r11, 180
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3656], rax
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3640], rax
                        lea              rdi, [rbp + 3632]
                        lea              r8, [rbp + 3632]
.Lcall_prolog_α_573_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_573_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_573_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_573_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_573_40
.Lcall_prolog_α_573_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_573_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_573_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_573_40
.Lcall_prolog_α_573_56: cmp              al, 72;                              jne   .Lcall_prolog_α_573_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_573_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_573_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_573_40
.Lcall_prolog_α_573_41: lea              r9, [rbp + 3648]
.Lcall_prolog_α_573_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_573_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_573_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_573_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_573_42
.Lcall_prolog_α_573_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_573_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_573_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_573_42
.Lcall_prolog_α_573_58: cmp              al, 72;                              jne   .Lcall_prolog_α_573_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_573_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_573_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_573_42
.Lcall_prolog_α_573_43: cmp              r8, r9;                              je    .Lcall_prolog_α_573_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_573_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_573_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_573_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_573_44
                                                                              jmp   .Lcall_prolog_α_573_45
.Lcall_prolog_α_573_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_573_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_573_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_573_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_573_53
                                                                              jmp   .Lcall_prolog_α_573_46
.Lcall_prolog_α_573_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_573_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_573_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_573_51
.Lcall_prolog_α_573_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_573_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_573_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_573_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_573_47
                                                                              jmp   .Lcall_prolog_α_573_48
.Lcall_prolog_α_573_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_573_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_573_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_573_51
.Lcall_prolog_α_573_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_573_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_573_53
                                                                              jmp   .Lcall_prolog_α_573_52
.Lcall_prolog_α_573_49: cmp              dl, 80;                              je    .Lcall_prolog_α_573_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_573_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_573_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_573_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_573_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_573_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_573_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_573_51
                                                                              jmp   .Lcall_prolog_α_573_52
.Lcall_prolog_α_573_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_573_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_573_53
.Lcall_prolog_α_573_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_573_54
.Lcall_prolog_α_573_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_573_54
.Lcall_prolog_α_573_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_573_54: mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              al, 104;                             je    n238_call_prolog_α
                                                                              jmp   n213_var_ref_α
n212_call_prolog_β:     mov              r11, 180;                            jmp   n238_call_prolog_α
                        .size            n212_call_prolog_bx, .-n212_call_prolog_bx
                        .type            n213_var_ref_bx, @function
n213_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:         mov              r11, 181
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx;         jmp   n214_lit_string_α
                        .size            n213_var_ref_bx, .-n213_var_ref_bx
                        .type            n214_lit_string_bx, @function
n214_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:      mov              r11, 182
                        mov              qword ptr [rbp + 3600], 2            # result
                        mov              dword ptr [rbp + 3604], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_576_0]
                        mov              qword ptr [rbp + 3608], rax;         jmp   n215_lit_string_α
.Llit_string_α_576_0:   .quad            .Llit_string_α_576_0_s
.Llit_string_α_576_0_s: .string          "*"
                        .size            n214_lit_string_bx, .-n214_lit_string_bx
                        .type            n215_lit_string_bx, @function
n215_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      mov              r11, 183
                        mov              qword ptr [rbp + 3376], 2            # result
                        mov              dword ptr [rbp + 3380], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_577_0]
                        mov              qword ptr [rbp + 3384], rax;         jmp   n216_var_ref_α
.Llit_string_α_577_0:   .quad            .Llit_string_α_577_0_s
.Llit_string_α_577_0_s: .string          "*"
                        .size            n215_lit_string_bx, .-n215_lit_string_bx
                        .type            n216_var_ref_bx, @function
n216_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:         mov              r11, 184
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx;         jmp   n217_var_ref_α
                        .size            n216_var_ref_bx, .-n216_var_ref_bx
                        .type            n217_var_ref_bx, @function
n217_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx;         jmp   n218_call_prolog_α
                        .size            n217_var_ref_bx, .-n217_var_ref_bx
                        .type            n218_call_prolog_bx, @function
n218_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_call_prolog_α:     mov              r11, 186
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3352], rax
                        mov              rax, qword ptr [rbp + 3264]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 3336], rax
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3320], rax
                        lea              rdi, [rbp + 3312]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n219_lit_string_α
n218_call_prolog_β:     mov              r11, 186;                            jmp   d$2F3_ω
                        .size            n218_call_prolog_bx, .-n218_call_prolog_bx
                        .type            n219_lit_string_bx, @function
n219_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      mov              r11, 187
                        mov              qword ptr [rbp + 3504], 2            # result
                        mov              dword ptr [rbp + 3508], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_583_0]
                        mov              qword ptr [rbp + 3512], rax;         jmp   n220_var_ref_α
.Llit_string_α_583_0:   .quad            .Llit_string_α_583_0_s
.Llit_string_α_583_0_s: .string          "^"
                        .size            n219_lit_string_bx, .-n219_lit_string_bx
                        .type            n220_var_ref_bx, @function
n220_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx;         jmp   n221_var_ref_α
                        .size            n220_var_ref_bx, .-n220_var_ref_bx
                        .type            n221_var_ref_bx, @function
n221_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx;         jmp   n222_call_prolog_α
                        .size            n221_var_ref_bx, .-n221_var_ref_bx
                        .type            n222_call_prolog_bx, @function
n222_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_call_prolog_α:     mov              r11, 190
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3480], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3464], rax
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3448], rax
                        lea              rdi, [rbp + 3440]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n223_call_prolog_α
n222_call_prolog_β:     mov              r11, 190;                            jmp   d$2F3_ω
                        .size            n222_call_prolog_bx, .-n222_call_prolog_bx
                        .type            n223_call_prolog_bx, @function
n223_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_call_prolog_α:     mov              r11, 191
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3576], rax
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3560], rax
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3544], rax
                        lea              rdi, [rbp + 3536]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        cmp              al, 104;                             je    n238_call_prolog_α
                                                                              jmp   n224_call_prolog_α
n223_call_prolog_β:     mov              r11, 191;                            jmp   n238_call_prolog_α
                        .size            n223_call_prolog_bx, .-n223_call_prolog_bx
                        .type            n224_call_prolog_bx, @function
n224_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_call_prolog_α:     mov              r11, 192
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3224], rax
                        lea              rdi, [rbp + 3216]
                        lea              r8, [rbp + 3216]
.Lcall_prolog_α_590_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_590_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_590_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_590_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_590_40
.Lcall_prolog_α_590_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_590_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_590_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_590_40
.Lcall_prolog_α_590_56: cmp              al, 72;                              jne   .Lcall_prolog_α_590_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_590_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_590_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_590_40
.Lcall_prolog_α_590_41: lea              r9, [rbp + 3232]
.Lcall_prolog_α_590_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_590_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_590_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_590_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_590_42
.Lcall_prolog_α_590_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_590_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_590_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_590_42
.Lcall_prolog_α_590_58: cmp              al, 72;                              jne   .Lcall_prolog_α_590_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_590_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_590_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_590_42
.Lcall_prolog_α_590_43: cmp              r8, r9;                              je    .Lcall_prolog_α_590_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_590_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_590_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_590_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_590_44
                                                                              jmp   .Lcall_prolog_α_590_45
.Lcall_prolog_α_590_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_590_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_590_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_590_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_590_53
                                                                              jmp   .Lcall_prolog_α_590_46
.Lcall_prolog_α_590_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_590_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_590_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_590_51
.Lcall_prolog_α_590_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_590_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_590_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_590_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_590_47
                                                                              jmp   .Lcall_prolog_α_590_48
.Lcall_prolog_α_590_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_590_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_590_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_590_51
.Lcall_prolog_α_590_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_590_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_590_53
                                                                              jmp   .Lcall_prolog_α_590_52
.Lcall_prolog_α_590_49: cmp              dl, 80;                              je    .Lcall_prolog_α_590_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_590_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_590_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_590_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_590_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_590_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_590_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_590_51
                                                                              jmp   .Lcall_prolog_α_590_52
.Lcall_prolog_α_590_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_590_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_590_53
.Lcall_prolog_α_590_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_590_54
.Lcall_prolog_α_590_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_590_54
.Lcall_prolog_α_590_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_590_54: mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              al, 104;                             je    n238_call_prolog_α
                                                                              jmp   n225_cut_α
n224_call_prolog_β:     mov              r11, 192;                            jmp   n238_call_prolog_α
                        .size            n224_call_prolog_bx, .-n224_call_prolog_bx
                        .type            n225_cut_bx, @function
n225_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_cut_α:             mov              r11, 193;                            jmp   n226_var_ref_α
                        .size            n225_cut_bx, .-n225_cut_bx
                        .type            n226_var_ref_bx, @function
n226_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n227_call_prolog_α
                        .size            n226_var_ref_bx, .-n226_var_ref_bx
                        .type            n227_call_prolog_bx, @function
n227_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_call_prolog_α:     mov              r11, 195
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3176], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn595: .string          "$tt_integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn595]
                        lea              rsi, [rbp + 3168]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 720896
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              al, 104;                             je    n338_call_prolog_α
                                                                              jmp   n228_var_ref_α
n227_call_prolog_β:     mov              r11, 195;                            jmp   n338_call_prolog_α
                        .size            n227_call_prolog_bx, .-n227_call_prolog_bx
                        .type            n228_var_ref_bx, @function
n228_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx;         jmp   n229_var_α
                        .size            n228_var_ref_bx, .-n228_var_ref_bx
                        .type            n229_var_bx, @function
n229_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:             mov              r11, 197
                        mov              rax, qword ptr [rbp + 8128]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 8136]
                        mov              qword ptr [rbp + 3128], rax;         jmp   n230_lit_integer_α
                        .size            n229_var_bx, .-n229_var_bx
                        .type            n230_lit_integer_bx, @function
n230_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:     mov              r11, 198
                        mov              qword ptr [rbp + 3136], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_600_0]
                        mov              qword ptr [rbp + 3144], rax;         jmp   n231_call_prolog_α
.Llit_integer_α_600_0:  .quad            1
                        .size            n230_lit_integer_bx, .-n230_lit_integer_bx
                        .type            n231_call_prolog_bx, @function
n231_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_call_prolog_α:     mov              r11, 199
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3096], rax
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3080], rax
                        lea              rdi, [rbp + 3072]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              al, 104;                             je    n338_call_prolog_α
                                                                              jmp   n232_call_prolog_α
n231_call_prolog_β:     mov              r11, 199;                            jmp   n338_call_prolog_α
                        .size            n231_call_prolog_bx, .-n231_call_prolog_bx
                        .type            n232_call_prolog_bx, @function
n232_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_call_prolog_α:     mov              r11, 200
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3032], rax
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3016], rax
                        lea              rdi, [rbp + 3008]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              al, 104;                             je    n338_call_prolog_α
                                                                              jmp   n233_var_ref_α
n232_call_prolog_β:     mov              r11, 200;                            jmp   n338_call_prolog_α
                        .size            n232_call_prolog_bx, .-n232_call_prolog_bx
                        .type            n233_var_ref_bx, @function
n233_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n234_var_ref_α
                        .size            n233_var_ref_bx, .-n233_var_ref_bx
                        .type            n234_var_ref_bx, @function
n234_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx;         jmp   n235_var_ref_α
                        .size            n234_var_ref_bx, .-n234_var_ref_bx
                        .type            n235_var_ref_bx, @function
n235_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx;         jmp   n236_call_proc_staged_α
                        .size            n235_var_ref_bx, .-n235_var_ref_bx
                        .type            n236_call_proc_staged_bx, @function
n236_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_call_proc_staged_α:
                        mov              r11, 204
                        lea              rsi, [rbp + 2944]
                        lea              rdx, [rbp + 2960]
                        lea              rcx, [rbp + 2976]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_610_2
.Lcall_proc_staged_α_610_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_610_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2864]
                        mov              rdx, qword ptr [rbp + 2872]
.Lcall_proc_staged_α_610_29:
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              al, 104;                             je    n338_call_prolog_α
                                                                              jmp   n237_move_label_α
n236_call_proc_staged_β:
                        mov              r11, 204;                            jmp   n338_call_prolog_α
.Lcall_proc_staged_β_610_0:
                        .quad            .Lcall_proc_staged_β_610_0_s
.Lcall_proc_staged_β_610_0_s:
                        .string          "d/3"
                        .size            n236_call_proc_staged_bx, .-n236_call_proc_staged_bx
                        .type            n237_move_label_bx, @function
n237_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_move_label_α:      mov              r11, 205
                        lea              rax, [rip + n236_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n237_move_label_bx, .-n237_move_label_bx
                        .type            n238_call_prolog_bx, @function
n238_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_call_prolog_α:     mov              r11, 206
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n239_var_ref_α
n238_call_prolog_β:     mov              r11, 206;                            jmp   d$2F3_ω
                        .size            n238_call_prolog_bx, .-n238_call_prolog_bx
                        .type            n239_var_ref_bx, @function
n239_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:         mov              r11, 207
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n240_lit_integer_α
                        .size            n239_var_ref_bx, .-n239_var_ref_bx
                        .type            n240_lit_integer_bx, @function
n240_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_integer_α:     mov              r11, 208
                        mov              qword ptr [rbp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_616_0]
                        mov              qword ptr [rbp + 2808], rax;         jmp   n241_lit_string_α
.Llit_integer_α_616_0:  .quad            260
                        .size            n240_lit_integer_bx, .-n240_lit_integer_bx
                        .type            n241_lit_string_bx, @function
n241_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:      mov              r11, 209
                        mov              qword ptr [rbp + 2816], 2            # result
                        mov              dword ptr [rbp + 2820], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_617_0]
                        mov              qword ptr [rbp + 2824], rax;         jmp   n242_call_prolog_α
.Llit_string_α_617_0:   .quad            .Llit_string_α_617_0_s
.Llit_string_α_617_0_s: .string          "-"
                        .size            n241_lit_string_bx, .-n241_lit_string_bx
                        .type            n242_call_prolog_bx, @function
n242_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_call_prolog_α:     mov              r11, 210
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2776], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2760], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rdi, [rbp + 2736]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              al, 104;                             je    n263_var_ref_α
                                                                              jmp   n243_var_ref_α
n242_call_prolog_β:     mov              r11, 210;                            jmp   n263_var_ref_α
                        .size            n242_call_prolog_bx, .-n242_call_prolog_bx
                        .type            n243_var_ref_bx, @function
n243_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx;         jmp   n244_lit_string_α
                        .size            n243_var_ref_bx, .-n243_var_ref_bx
                        .type            n244_lit_string_bx, @function
n244_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:      mov              r11, 212
                        mov              qword ptr [rbp + 2704], 2            # result
                        mov              dword ptr [rbp + 2708], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_621_0]
                        mov              qword ptr [rbp + 2712], rax;         jmp   n245_var_ref_α
.Llit_string_α_621_0:   .quad            .Llit_string_α_621_0_s
.Llit_string_α_621_0_s: .string          "-"
                        .size            n244_lit_string_bx, .-n244_lit_string_bx
                        .type            n245_var_ref_bx, @function
n245_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:         mov              r11, 213
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx;         jmp   n246_call_prolog_α
                        .size            n245_var_ref_bx, .-n245_var_ref_bx
                        .type            n246_call_prolog_bx, @function
n246_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_call_prolog_α:     mov              r11, 214
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2680], rax
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2664], rax
                        lea              rdi, [rbp + 2656]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              al, 104;                             je    n262_call_prolog_α
                                                                              jmp   n247_call_prolog_α
n246_call_prolog_β:     mov              r11, 214;                            jmp   n262_call_prolog_α
                        .size            n246_call_prolog_bx, .-n246_call_prolog_bx
                        .type            n247_call_prolog_bx, @function
n247_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_call_prolog_α:     mov              r11, 215
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2584], rax
                        lea              rdi, [rbp + 2576]
                        lea              r8, [rbp + 2576]
.Lcall_prolog_α_625_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_625_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_625_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_625_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_625_40
.Lcall_prolog_α_625_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_625_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_625_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_625_40
.Lcall_prolog_α_625_56: cmp              al, 72;                              jne   .Lcall_prolog_α_625_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_625_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_625_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_625_40
.Lcall_prolog_α_625_41: lea              r9, [rbp + 2592]
.Lcall_prolog_α_625_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_625_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_625_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_625_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_625_42
.Lcall_prolog_α_625_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_625_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_625_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_625_42
.Lcall_prolog_α_625_58: cmp              al, 72;                              jne   .Lcall_prolog_α_625_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_625_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_625_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_625_42
.Lcall_prolog_α_625_43: cmp              r8, r9;                              je    .Lcall_prolog_α_625_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_625_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_625_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_625_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_625_44
                                                                              jmp   .Lcall_prolog_α_625_45
.Lcall_prolog_α_625_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_625_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_625_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_625_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_625_53
                                                                              jmp   .Lcall_prolog_α_625_46
.Lcall_prolog_α_625_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_625_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_625_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_625_51
.Lcall_prolog_α_625_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_625_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_625_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_625_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_625_47
                                                                              jmp   .Lcall_prolog_α_625_48
.Lcall_prolog_α_625_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_625_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_625_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_625_51
.Lcall_prolog_α_625_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_625_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_625_53
                                                                              jmp   .Lcall_prolog_α_625_52
.Lcall_prolog_α_625_49: cmp              dl, 80;                              je    .Lcall_prolog_α_625_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_625_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_625_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_625_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_625_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_625_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_625_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_625_51
                                                                              jmp   .Lcall_prolog_α_625_52
.Lcall_prolog_α_625_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_625_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_625_53
.Lcall_prolog_α_625_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_625_54
.Lcall_prolog_α_625_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_625_54
.Lcall_prolog_α_625_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_625_54: mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              al, 104;                             je    n262_call_prolog_α
                                                                              jmp   n248_var_ref_α
n247_call_prolog_β:     mov              r11, 215;                            jmp   n262_call_prolog_α
                        .size            n247_call_prolog_bx, .-n247_call_prolog_bx
                        .type            n248_var_ref_bx, @function
n248_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx;         jmp   n249_var_ref_α
                        .size            n248_var_ref_bx, .-n248_var_ref_bx
                        .type            n249_var_ref_bx, @function
n249_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:         mov              r11, 217
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n250_call_prolog_α
                        .size            n249_var_ref_bx, .-n249_var_ref_bx
                        .type            n250_call_prolog_bx, @function
n250_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_call_prolog_α:     mov              r11, 218
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2520], rax
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2504], rax
                        lea              rdi, [rbp + 2496]
                        lea              r8, [rbp + 2496]
.Lcall_prolog_α_630_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_630_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_630_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_630_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_630_40
.Lcall_prolog_α_630_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_630_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_630_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_630_40
.Lcall_prolog_α_630_56: cmp              al, 72;                              jne   .Lcall_prolog_α_630_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_630_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_630_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_630_40
.Lcall_prolog_α_630_41: lea              r9, [rbp + 2512]
.Lcall_prolog_α_630_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_630_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_630_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_630_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_630_42
.Lcall_prolog_α_630_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_630_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_630_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_630_42
.Lcall_prolog_α_630_58: cmp              al, 72;                              jne   .Lcall_prolog_α_630_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_630_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_630_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_630_42
.Lcall_prolog_α_630_43: cmp              r8, r9;                              je    .Lcall_prolog_α_630_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_630_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_630_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_630_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_630_44
                                                                              jmp   .Lcall_prolog_α_630_45
.Lcall_prolog_α_630_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_630_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_630_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_630_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_630_53
                                                                              jmp   .Lcall_prolog_α_630_46
.Lcall_prolog_α_630_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_630_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_630_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_630_51
.Lcall_prolog_α_630_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_630_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_630_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_630_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_630_47
                                                                              jmp   .Lcall_prolog_α_630_48
.Lcall_prolog_α_630_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_630_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_630_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_630_51
.Lcall_prolog_α_630_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_630_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_630_53
                                                                              jmp   .Lcall_prolog_α_630_52
.Lcall_prolog_α_630_49: cmp              dl, 80;                              je    .Lcall_prolog_α_630_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_630_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_630_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_630_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_630_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_630_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_630_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_630_51
                                                                              jmp   .Lcall_prolog_α_630_52
.Lcall_prolog_α_630_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_630_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_630_53
.Lcall_prolog_α_630_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_630_54
.Lcall_prolog_α_630_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_630_54
.Lcall_prolog_α_630_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_630_54: mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    n262_call_prolog_α
                                                                              jmp   n251_var_ref_α
n250_call_prolog_β:     mov              r11, 218;                            jmp   n262_call_prolog_α
                        .size            n250_call_prolog_bx, .-n250_call_prolog_bx
                        .type            n251_var_ref_bx, @function
n251_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx;         jmp   n252_lit_string_α
                        .size            n251_var_ref_bx, .-n251_var_ref_bx
                        .type            n252_lit_string_bx, @function
n252_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_string_α:      mov              r11, 220
                        mov              qword ptr [rbp + 2464], 2            # result
                        mov              dword ptr [rbp + 2468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_633_0]
                        mov              qword ptr [rbp + 2472], rax;         jmp   n253_var_ref_α
.Llit_string_α_633_0:   .quad            .Llit_string_α_633_0_s
.Llit_string_α_633_0_s: .string          "-"
                        .size            n252_lit_string_bx, .-n252_lit_string_bx
                        .type            n253_var_ref_bx, @function
n253_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n254_call_prolog_α
                        .size            n253_var_ref_bx, .-n253_var_ref_bx
                        .type            n254_call_prolog_bx, @function
n254_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_call_prolog_α:     mov              r11, 222
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                        lea              rdi, [rbp + 2416]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              al, 104;                             je    n262_call_prolog_α
                                                                              jmp   n255_call_prolog_α
n254_call_prolog_β:     mov              r11, 222;                            jmp   n262_call_prolog_α
                        .size            n254_call_prolog_bx, .-n254_call_prolog_bx
                        .type            n255_call_prolog_bx, @function
n255_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_call_prolog_α:     mov              r11, 223
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2344], rax
                        lea              rdi, [rbp + 2336]
                        lea              r8, [rbp + 2336]
.Lcall_prolog_α_637_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_637_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_637_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_637_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_637_40
.Lcall_prolog_α_637_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_637_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_637_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_637_40
.Lcall_prolog_α_637_56: cmp              al, 72;                              jne   .Lcall_prolog_α_637_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_637_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_637_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_637_40
.Lcall_prolog_α_637_41: lea              r9, [rbp + 2352]
.Lcall_prolog_α_637_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_637_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_637_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_637_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_637_42
.Lcall_prolog_α_637_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_637_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_637_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_637_42
.Lcall_prolog_α_637_58: cmp              al, 72;                              jne   .Lcall_prolog_α_637_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_637_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_637_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_637_42
.Lcall_prolog_α_637_43: cmp              r8, r9;                              je    .Lcall_prolog_α_637_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_637_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_637_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_637_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_637_44
                                                                              jmp   .Lcall_prolog_α_637_45
.Lcall_prolog_α_637_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_637_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_637_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_637_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_637_53
                                                                              jmp   .Lcall_prolog_α_637_46
.Lcall_prolog_α_637_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_637_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_637_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_637_51
.Lcall_prolog_α_637_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_637_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_637_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_637_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_637_47
                                                                              jmp   .Lcall_prolog_α_637_48
.Lcall_prolog_α_637_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_637_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_637_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_637_51
.Lcall_prolog_α_637_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_637_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_637_53
                                                                              jmp   .Lcall_prolog_α_637_52
.Lcall_prolog_α_637_49: cmp              dl, 80;                              je    .Lcall_prolog_α_637_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_637_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_637_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_637_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_637_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_637_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_637_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_637_51
                                                                              jmp   .Lcall_prolog_α_637_52
.Lcall_prolog_α_637_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_637_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_637_53
.Lcall_prolog_α_637_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_637_54
.Lcall_prolog_α_637_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_637_54
.Lcall_prolog_α_637_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_637_54: mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              al, 104;                             je    n262_call_prolog_α
                                                                              jmp   n256_cut_α
n255_call_prolog_β:     mov              r11, 223;                            jmp   n262_call_prolog_α
                        .size            n255_call_prolog_bx, .-n255_call_prolog_bx
                        .type            n256_cut_bx, @function
n256_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_cut_α:             mov              r11, 224;                            jmp   n257_var_ref_α
                        .size            n256_cut_bx, .-n256_cut_bx
                        .type            n257_var_ref_bx, @function
n257_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n258_var_ref_α
                        .size            n257_var_ref_bx, .-n257_var_ref_bx
                        .type            n258_var_ref_bx, @function
n258_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx;         jmp   n259_var_ref_α
                        .size            n258_var_ref_bx, .-n258_var_ref_bx
                        .type            n259_var_ref_bx, @function
n259_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n260_call_proc_staged_α
                        .size            n259_var_ref_bx, .-n259_var_ref_bx
                        .type            n260_call_proc_staged_bx, @function
n260_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_call_proc_staged_α:
                        mov              r11, 228
                        lea              rsi, [rbp + 2272]
                        lea              rdx, [rbp + 2288]
                        lea              rcx, [rbp + 2304]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_646_2
.Lcall_proc_staged_α_646_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_646_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
.Lcall_proc_staged_α_646_29:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              al, 104;                             je    n338_call_prolog_α
                                                                              jmp   n261_move_label_α
n260_call_proc_staged_β:
                        mov              r11, 228;                            jmp   n338_call_prolog_α
.Lcall_proc_staged_β_646_0:
                        .quad            .Lcall_proc_staged_β_646_0_s
.Lcall_proc_staged_β_646_0_s:
                        .string          "d/3"
                        .size            n260_call_proc_staged_bx, .-n260_call_proc_staged_bx
                        .type            n261_move_label_bx, @function
n261_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_move_label_α:      mov              r11, 229
                        lea              rax, [rip + n260_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n261_move_label_bx, .-n261_move_label_bx
                        .type            n262_call_prolog_bx, @function
n262_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_call_prolog_α:     mov              r11, 230
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 2184], rax
                        lea              rdi, [rbp + 2176]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n263_var_ref_α
n262_call_prolog_β:     mov              r11, 230;                            jmp   d$2F3_ω
                        .size            n262_call_prolog_bx, .-n262_call_prolog_bx
                        .type            n263_var_ref_bx, @function
n263_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx;         jmp   n264_lit_integer_α
                        .size            n263_var_ref_bx, .-n263_var_ref_bx
                        .type            n264_lit_integer_bx, @function
n264_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_integer_α:     mov              r11, 232
                        mov              qword ptr [rbp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_652_0]
                        mov              qword ptr [rbp + 2136], rax;         jmp   n265_lit_string_α
.Llit_integer_α_652_0:  .quad            260
                        .size            n264_lit_integer_bx, .-n264_lit_integer_bx
                        .type            n265_lit_string_bx, @function
n265_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:      mov              r11, 233
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_653_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n266_call_prolog_α
.Llit_string_α_653_0:   .quad            .Llit_string_α_653_0_s
.Llit_string_α_653_0_s: .string          "exp"
                        .size            n265_lit_string_bx, .-n265_lit_string_bx
                        .type            n266_call_prolog_bx, @function
n266_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_call_prolog_α:     mov              r11, 234
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2072], rax
                        lea              rdi, [rbp + 2064]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              al, 104;                             je    n290_var_ref_α
                                                                              jmp   n267_var_ref_α
n266_call_prolog_β:     mov              r11, 234;                            jmp   n290_var_ref_α
                        .size            n266_call_prolog_bx, .-n266_call_prolog_bx
                        .type            n267_var_ref_bx, @function
n267_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n268_lit_string_α
                        .size            n267_var_ref_bx, .-n267_var_ref_bx
                        .type            n268_lit_string_bx, @function
n268_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:      mov              r11, 236
                        mov              qword ptr [rbp + 2032], 2            # result
                        mov              dword ptr [rbp + 2036], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_657_0]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n269_var_ref_α
.Llit_string_α_657_0:   .quad            .Llit_string_α_657_0_s
.Llit_string_α_657_0_s: .string          "exp"
                        .size            n268_lit_string_bx, .-n268_lit_string_bx
                        .type            n269_var_ref_bx, @function
n269_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:         mov              r11, 237
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n270_call_prolog_α
                        .size            n269_var_ref_bx, .-n269_var_ref_bx
                        .type            n270_call_prolog_bx, @function
n270_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_call_prolog_α:     mov              r11, 238
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 1960]
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              al, 104;                             je    n289_call_prolog_α
                                                                              jmp   n271_call_prolog_α
n270_call_prolog_β:     mov              r11, 238;                            jmp   n289_call_prolog_α
                        .size            n270_call_prolog_bx, .-n270_call_prolog_bx
                        .type            n271_call_prolog_bx, @function
n271_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_call_prolog_α:     mov              r11, 239
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                        lea              rdi, [rbp + 1904]
                        lea              r8, [rbp + 1904]
.Lcall_prolog_α_661_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_661_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_661_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_661_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_661_40
.Lcall_prolog_α_661_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_661_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_661_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_661_40
.Lcall_prolog_α_661_56: cmp              al, 72;                              jne   .Lcall_prolog_α_661_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_661_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_661_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_661_40
.Lcall_prolog_α_661_41: lea              r9, [rbp + 1920]
.Lcall_prolog_α_661_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_661_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_661_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_661_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_661_42
.Lcall_prolog_α_661_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_661_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_661_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_661_42
.Lcall_prolog_α_661_58: cmp              al, 72;                              jne   .Lcall_prolog_α_661_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_661_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_661_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_661_42
.Lcall_prolog_α_661_43: cmp              r8, r9;                              je    .Lcall_prolog_α_661_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_661_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_661_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_661_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_661_44
                                                                              jmp   .Lcall_prolog_α_661_45
.Lcall_prolog_α_661_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_661_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_661_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_661_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_661_53
                                                                              jmp   .Lcall_prolog_α_661_46
.Lcall_prolog_α_661_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_661_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_661_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_661_51
.Lcall_prolog_α_661_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_661_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_661_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_661_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_661_47
                                                                              jmp   .Lcall_prolog_α_661_48
.Lcall_prolog_α_661_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_661_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_661_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_661_51
.Lcall_prolog_α_661_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_661_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_661_53
                                                                              jmp   .Lcall_prolog_α_661_52
.Lcall_prolog_α_661_49: cmp              dl, 80;                              je    .Lcall_prolog_α_661_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_661_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_661_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_661_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_661_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_661_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_661_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_661_51
                                                                              jmp   .Lcall_prolog_α_661_52
.Lcall_prolog_α_661_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_661_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_661_53
.Lcall_prolog_α_661_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_661_54
.Lcall_prolog_α_661_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_661_54
.Lcall_prolog_α_661_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_661_54: mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    n289_call_prolog_α
                                                                              jmp   n272_var_ref_α
n271_call_prolog_β:     mov              r11, 239;                            jmp   n289_call_prolog_α
                        .size            n271_call_prolog_bx, .-n271_call_prolog_bx
                        .type            n272_var_ref_bx, @function
n272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:         mov              r11, 240
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n273_var_ref_α
                        .size            n272_var_ref_bx, .-n272_var_ref_bx
                        .type            n273_var_ref_bx, @function
n273_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:         mov              r11, 241
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx;         jmp   n274_call_prolog_α
                        .size            n273_var_ref_bx, .-n273_var_ref_bx
                        .type            n274_call_prolog_bx, @function
n274_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_call_prolog_α:     mov              r11, 242
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1832], rax
                        lea              rdi, [rbp + 1824]
                        lea              r8, [rbp + 1824]
.Lcall_prolog_α_666_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_666_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_666_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_666_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_666_40
.Lcall_prolog_α_666_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_666_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_666_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_666_40
.Lcall_prolog_α_666_56: cmp              al, 72;                              jne   .Lcall_prolog_α_666_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_666_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_666_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_666_40
.Lcall_prolog_α_666_41: lea              r9, [rbp + 1840]
.Lcall_prolog_α_666_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_666_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_666_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_666_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_666_42
.Lcall_prolog_α_666_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_666_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_666_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_666_42
.Lcall_prolog_α_666_58: cmp              al, 72;                              jne   .Lcall_prolog_α_666_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_666_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_666_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_666_42
.Lcall_prolog_α_666_43: cmp              r8, r9;                              je    .Lcall_prolog_α_666_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_666_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_666_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_666_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_666_44
                                                                              jmp   .Lcall_prolog_α_666_45
.Lcall_prolog_α_666_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_666_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_666_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_666_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_666_53
                                                                              jmp   .Lcall_prolog_α_666_46
.Lcall_prolog_α_666_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_666_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_666_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_666_51
.Lcall_prolog_α_666_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_666_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_666_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_666_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_666_47
                                                                              jmp   .Lcall_prolog_α_666_48
.Lcall_prolog_α_666_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_666_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_666_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_666_51
.Lcall_prolog_α_666_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_666_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_666_53
                                                                              jmp   .Lcall_prolog_α_666_52
.Lcall_prolog_α_666_49: cmp              dl, 80;                              je    .Lcall_prolog_α_666_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_666_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_666_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_666_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_666_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_666_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_666_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_666_51
                                                                              jmp   .Lcall_prolog_α_666_52
.Lcall_prolog_α_666_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_666_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_666_53
.Lcall_prolog_α_666_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_666_54
.Lcall_prolog_α_666_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_666_54
.Lcall_prolog_α_666_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_666_54: mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    n289_call_prolog_α
                                                                              jmp   n275_var_ref_α
n274_call_prolog_β:     mov              r11, 242;                            jmp   n289_call_prolog_α
                        .size            n274_call_prolog_bx, .-n274_call_prolog_bx
                        .type            n275_var_ref_bx, @function
n275_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_var_ref_α:         mov              r11, 243
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx;         jmp   n276_lit_string_α
                        .size            n275_var_ref_bx, .-n275_var_ref_bx
                        .type            n276_lit_string_bx, @function
n276_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:      mov              r11, 244
                        mov              qword ptr [rbp + 1792], 2            # result
                        mov              dword ptr [rbp + 1796], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_669_0]
                        mov              qword ptr [rbp + 1800], rax;         jmp   n277_lit_string_α
.Llit_string_α_669_0:   .quad            .Llit_string_α_669_0_s
.Llit_string_α_669_0_s: .string          "*"
                        .size            n276_lit_string_bx, .-n276_lit_string_bx
                        .type            n277_lit_string_bx, @function
n277_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:      mov              r11, 245
                        mov              qword ptr [rbp + 1680], 2            # result
                        mov              dword ptr [rbp + 1684], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_670_0]
                        mov              qword ptr [rbp + 1688], rax;         jmp   n278_var_ref_α
.Llit_string_α_670_0:   .quad            .Llit_string_α_670_0_s
.Llit_string_α_670_0_s: .string          "exp"
                        .size            n277_lit_string_bx, .-n277_lit_string_bx
                        .type            n278_var_ref_bx, @function
n278_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n279_call_prolog_α
                        .size            n278_var_ref_bx, .-n278_var_ref_bx
                        .type            n279_call_prolog_bx, @function
n279_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_call_prolog_α:     mov              r11, 247
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        lea              rdi, [rbp + 1632]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n280_var_ref_α
n279_call_prolog_β:     mov              r11, 247;                            jmp   d$2F3_ω
                        .size            n279_call_prolog_bx, .-n279_call_prolog_bx
                        .type            n280_var_ref_bx, @function
n280_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:         mov              r11, 248
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n281_call_prolog_α
                        .size            n280_var_ref_bx, .-n280_var_ref_bx
                        .type            n281_call_prolog_bx, @function
n281_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_call_prolog_α:     mov              r11, 249
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1624]
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              al, 104;                             je    n289_call_prolog_α
                                                                              jmp   n282_call_prolog_α
n281_call_prolog_β:     mov              r11, 249;                            jmp   n289_call_prolog_α
                        .size            n281_call_prolog_bx, .-n281_call_prolog_bx
                        .type            n282_call_prolog_bx, @function
n282_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_call_prolog_α:     mov              r11, 250
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1552]
                        lea              r8, [rbp + 1552]
.Lcall_prolog_α_677_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_677_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_677_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_677_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_677_40
.Lcall_prolog_α_677_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_677_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_677_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_677_40
.Lcall_prolog_α_677_56: cmp              al, 72;                              jne   .Lcall_prolog_α_677_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_677_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_677_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_677_40
.Lcall_prolog_α_677_41: lea              r9, [rbp + 1568]
.Lcall_prolog_α_677_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_677_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_677_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_677_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_677_42
.Lcall_prolog_α_677_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_677_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_677_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_677_42
.Lcall_prolog_α_677_58: cmp              al, 72;                              jne   .Lcall_prolog_α_677_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_677_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_677_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_677_42
.Lcall_prolog_α_677_43: cmp              r8, r9;                              je    .Lcall_prolog_α_677_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_677_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_677_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_677_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_677_44
                                                                              jmp   .Lcall_prolog_α_677_45
.Lcall_prolog_α_677_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_677_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_677_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_677_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_677_53
                                                                              jmp   .Lcall_prolog_α_677_46
.Lcall_prolog_α_677_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_677_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_677_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_677_51
.Lcall_prolog_α_677_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_677_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_677_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_677_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_677_47
                                                                              jmp   .Lcall_prolog_α_677_48
.Lcall_prolog_α_677_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_677_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_677_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_677_51
.Lcall_prolog_α_677_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_677_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_677_53
                                                                              jmp   .Lcall_prolog_α_677_52
.Lcall_prolog_α_677_49: cmp              dl, 80;                              je    .Lcall_prolog_α_677_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_677_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_677_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_677_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_677_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_677_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_677_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_677_51
                                                                              jmp   .Lcall_prolog_α_677_52
.Lcall_prolog_α_677_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_677_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_677_53
.Lcall_prolog_α_677_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_677_54
.Lcall_prolog_α_677_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_677_54
.Lcall_prolog_α_677_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_677_54: mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    n289_call_prolog_α
                                                                              jmp   n283_cut_α
n282_call_prolog_β:     mov              r11, 250;                            jmp   n289_call_prolog_α
                        .size            n282_call_prolog_bx, .-n282_call_prolog_bx
                        .type            n283_cut_bx, @function
n283_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_cut_α:             mov              r11, 251;                            jmp   n284_var_ref_α
                        .size            n283_cut_bx, .-n283_cut_bx
                        .type            n284_var_ref_bx, @function
n284_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_var_ref_α:         mov              r11, 252
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n285_var_ref_α
                        .size            n284_var_ref_bx, .-n284_var_ref_bx
                        .type            n285_var_ref_bx, @function
n285_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_var_ref_α:         mov              r11, 253
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx;         jmp   n286_var_ref_α
                        .size            n285_var_ref_bx, .-n285_var_ref_bx
                        .type            n286_var_ref_bx, @function
n286_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:         mov              r11, 254
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n287_call_proc_staged_α
                        .size            n286_var_ref_bx, .-n286_var_ref_bx
                        .type            n287_call_proc_staged_bx, @function
n287_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_call_proc_staged_α:
                        mov              r11, 255
                        lea              rsi, [rbp + 1488]
                        lea              rdx, [rbp + 1504]
                        lea              rcx, [rbp + 1520]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_686_2
.Lcall_proc_staged_α_686_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_686_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
.Lcall_proc_staged_α_686_29:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              al, 104;                             je    n338_call_prolog_α
                                                                              jmp   n288_move_label_α
n287_call_proc_staged_β:
                        mov              r11, 255;                            jmp   n338_call_prolog_α
.Lcall_proc_staged_β_686_0:
                        .quad            .Lcall_proc_staged_β_686_0_s
.Lcall_proc_staged_β_686_0_s:
                        .string          "d/3"
                        .size            n287_call_proc_staged_bx, .-n287_call_proc_staged_bx
                        .type            n288_move_label_bx, @function
n288_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_move_label_α:      mov              r11, 256
                        lea              rax, [rip + n287_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n288_move_label_bx, .-n288_move_label_bx
                        .type            n289_call_prolog_bx, @function
n289_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_call_prolog_α:     mov              r11, 257
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n290_var_ref_α
n289_call_prolog_β:     mov              r11, 257;                            jmp   d$2F3_ω
                        .size            n289_call_prolog_bx, .-n289_call_prolog_bx
                        .type            n290_var_ref_bx, @function
n290_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:         mov              r11, 258
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n291_lit_integer_α
                        .size            n290_var_ref_bx, .-n290_var_ref_bx
                        .type            n291_lit_integer_bx, @function
n291_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_integer_α:     mov              r11, 259
                        mov              qword ptr [rbp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_692_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n292_lit_string_α
.Llit_integer_α_692_0:  .quad            260
                        .size            n291_lit_integer_bx, .-n291_lit_integer_bx
                        .type            n292_lit_string_bx, @function
n292_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:      mov              r11, 260
                        mov              qword ptr [rbp + 1360], 2            # result
                        mov              dword ptr [rbp + 1364], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_693_0]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n293_call_prolog_α
.Llit_string_α_693_0:   .quad            .Llit_string_α_693_0_s
.Llit_string_α_693_0_s: .string          "log"
                        .size            n292_lit_string_bx, .-n292_lit_string_bx
                        .type            n293_call_prolog_bx, @function
n293_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_call_prolog_α:     mov              r11, 261
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1280]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              al, 104;                             je    n315_var_ref_α
                                                                              jmp   n294_var_ref_α
n293_call_prolog_β:     mov              r11, 261;                            jmp   n315_var_ref_α
                        .size            n293_call_prolog_bx, .-n293_call_prolog_bx
                        .type            n294_var_ref_bx, @function
n294_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:         mov              r11, 262
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n295_lit_string_α
                        .size            n294_var_ref_bx, .-n294_var_ref_bx
                        .type            n295_lit_string_bx, @function
n295_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:      mov              r11, 263
                        mov              qword ptr [rbp + 1248], 2            # result
                        mov              dword ptr [rbp + 1252], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_697_0]
                        mov              qword ptr [rbp + 1256], rax;         jmp   n296_var_ref_α
.Llit_string_α_697_0:   .quad            .Llit_string_α_697_0_s
.Llit_string_α_697_0_s: .string          "log"
                        .size            n295_lit_string_bx, .-n295_lit_string_bx
                        .type            n296_var_ref_bx, @function
n296_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:         mov              r11, 264
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n297_call_prolog_α
                        .size            n296_var_ref_bx, .-n296_var_ref_bx
                        .type            n297_call_prolog_bx, @function
n297_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_call_prolog_α:     mov              r11, 265
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1200]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              al, 104;                             je    n314_call_prolog_α
                                                                              jmp   n298_call_prolog_α
n297_call_prolog_β:     mov              r11, 265;                            jmp   n314_call_prolog_α
                        .size            n297_call_prolog_bx, .-n297_call_prolog_bx
                        .type            n298_call_prolog_bx, @function
n298_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_call_prolog_α:     mov              r11, 266
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        lea              r8, [rbp + 1120]
.Lcall_prolog_α_701_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_701_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_701_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_701_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_701_40
.Lcall_prolog_α_701_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_701_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_701_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_701_40
.Lcall_prolog_α_701_56: cmp              al, 72;                              jne   .Lcall_prolog_α_701_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_701_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_701_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_701_40
.Lcall_prolog_α_701_41: lea              r9, [rbp + 1136]
.Lcall_prolog_α_701_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_701_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_701_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_701_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_701_42
.Lcall_prolog_α_701_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_701_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_701_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_701_42
.Lcall_prolog_α_701_58: cmp              al, 72;                              jne   .Lcall_prolog_α_701_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_701_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_701_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_701_42
.Lcall_prolog_α_701_43: cmp              r8, r9;                              je    .Lcall_prolog_α_701_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_701_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_701_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_701_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_701_44
                                                                              jmp   .Lcall_prolog_α_701_45
.Lcall_prolog_α_701_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_701_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_701_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_701_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_701_53
                                                                              jmp   .Lcall_prolog_α_701_46
.Lcall_prolog_α_701_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_701_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_701_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_701_51
.Lcall_prolog_α_701_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_701_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_701_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_701_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_701_47
                                                                              jmp   .Lcall_prolog_α_701_48
.Lcall_prolog_α_701_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_701_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_701_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_701_51
.Lcall_prolog_α_701_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_701_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_701_53
                                                                              jmp   .Lcall_prolog_α_701_52
.Lcall_prolog_α_701_49: cmp              dl, 80;                              je    .Lcall_prolog_α_701_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_701_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_701_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_701_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_701_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_701_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_701_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_701_51
                                                                              jmp   .Lcall_prolog_α_701_52
.Lcall_prolog_α_701_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_701_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_701_53
.Lcall_prolog_α_701_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_701_54
.Lcall_prolog_α_701_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_701_54
.Lcall_prolog_α_701_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_701_54: mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    n314_call_prolog_α
                                                                              jmp   n299_var_ref_α
n298_call_prolog_β:     mov              r11, 266;                            jmp   n314_call_prolog_α
                        .size            n298_call_prolog_bx, .-n298_call_prolog_bx
                        .type            n299_var_ref_bx, @function
n299_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:         mov              r11, 267
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n300_var_ref_α
                        .size            n299_var_ref_bx, .-n299_var_ref_bx
                        .type            n300_var_ref_bx, @function
n300_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:         mov              r11, 268
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n301_call_prolog_α
                        .size            n300_var_ref_bx, .-n300_var_ref_bx
                        .type            n301_call_prolog_bx, @function
n301_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_call_prolog_α:     mov              r11, 269
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        lea              r8, [rbp + 1040]
.Lcall_prolog_α_706_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_706_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_706_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_706_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_706_40
.Lcall_prolog_α_706_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_706_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_706_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_706_40
.Lcall_prolog_α_706_56: cmp              al, 72;                              jne   .Lcall_prolog_α_706_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_706_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_706_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_706_40
.Lcall_prolog_α_706_41: lea              r9, [rbp + 1056]
.Lcall_prolog_α_706_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_706_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_706_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_706_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_706_42
.Lcall_prolog_α_706_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_706_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_706_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_706_42
.Lcall_prolog_α_706_58: cmp              al, 72;                              jne   .Lcall_prolog_α_706_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_706_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_706_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_706_42
.Lcall_prolog_α_706_43: cmp              r8, r9;                              je    .Lcall_prolog_α_706_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_706_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_706_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_706_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_706_44
                                                                              jmp   .Lcall_prolog_α_706_45
.Lcall_prolog_α_706_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_706_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_706_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_706_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_706_53
                                                                              jmp   .Lcall_prolog_α_706_46
.Lcall_prolog_α_706_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_706_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_706_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_706_51
.Lcall_prolog_α_706_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_706_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_706_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_706_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_706_47
                                                                              jmp   .Lcall_prolog_α_706_48
.Lcall_prolog_α_706_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_706_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_706_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_706_51
.Lcall_prolog_α_706_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_706_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_706_53
                                                                              jmp   .Lcall_prolog_α_706_52
.Lcall_prolog_α_706_49: cmp              dl, 80;                              je    .Lcall_prolog_α_706_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_706_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_706_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_706_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_706_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_706_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_706_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_706_51
                                                                              jmp   .Lcall_prolog_α_706_52
.Lcall_prolog_α_706_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_706_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_706_53
.Lcall_prolog_α_706_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_706_54
.Lcall_prolog_α_706_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_706_54
.Lcall_prolog_α_706_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_706_54: mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    n314_call_prolog_α
                                                                              jmp   n302_var_ref_α
n301_call_prolog_β:     mov              r11, 269;                            jmp   n314_call_prolog_α
                        .size            n301_call_prolog_bx, .-n301_call_prolog_bx
                        .type            n302_var_ref_bx, @function
n302_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n303_lit_string_α
                        .size            n302_var_ref_bx, .-n302_var_ref_bx
                        .type            n303_lit_string_bx, @function
n303_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:      mov              r11, 271
                        mov              qword ptr [rbp + 1008], 2            # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_709_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n304_var_ref_α
.Llit_string_α_709_0:   .quad            .Llit_string_α_709_0_s
.Llit_string_α_709_0_s: .string          "/"
                        .size            n303_lit_string_bx, .-n303_lit_string_bx
                        .type            n304_var_ref_bx, @function
n304_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:         mov              r11, 272
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n305_var_ref_α
                        .size            n304_var_ref_bx, .-n304_var_ref_bx
                        .type            n305_var_ref_bx, @function
n305_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n306_call_prolog_α
                        .size            n305_var_ref_bx, .-n305_var_ref_bx
                        .type            n306_call_prolog_bx, @function
n306_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_call_prolog_α:     mov              r11, 274
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 904]
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    n314_call_prolog_α
                                                                              jmp   n307_call_prolog_α
n306_call_prolog_β:     mov              r11, 274;                            jmp   n314_call_prolog_α
                        .size            n306_call_prolog_bx, .-n306_call_prolog_bx
                        .type            n307_call_prolog_bx, @function
n307_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_call_prolog_α:     mov              r11, 275
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        lea              r8, [rbp + 848]
.Lcall_prolog_α_715_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_715_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_715_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_715_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_715_40
.Lcall_prolog_α_715_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_715_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_715_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_715_40
.Lcall_prolog_α_715_56: cmp              al, 72;                              jne   .Lcall_prolog_α_715_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_715_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_715_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_715_40
.Lcall_prolog_α_715_41: lea              r9, [rbp + 864]
.Lcall_prolog_α_715_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_715_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_715_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_715_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_715_42
.Lcall_prolog_α_715_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_715_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_715_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_715_42
.Lcall_prolog_α_715_58: cmp              al, 72;                              jne   .Lcall_prolog_α_715_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_715_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_715_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_715_42
.Lcall_prolog_α_715_43: cmp              r8, r9;                              je    .Lcall_prolog_α_715_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_715_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_715_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_715_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_715_44
                                                                              jmp   .Lcall_prolog_α_715_45
.Lcall_prolog_α_715_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_715_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_715_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_715_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_715_53
                                                                              jmp   .Lcall_prolog_α_715_46
.Lcall_prolog_α_715_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_715_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_715_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_715_51
.Lcall_prolog_α_715_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_715_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_715_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_715_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_715_47
                                                                              jmp   .Lcall_prolog_α_715_48
.Lcall_prolog_α_715_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_715_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_715_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_715_51
.Lcall_prolog_α_715_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_715_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_715_53
                                                                              jmp   .Lcall_prolog_α_715_52
.Lcall_prolog_α_715_49: cmp              dl, 80;                              je    .Lcall_prolog_α_715_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_715_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_715_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_715_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_715_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_715_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_715_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_715_51
                                                                              jmp   .Lcall_prolog_α_715_52
.Lcall_prolog_α_715_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_715_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_715_53
.Lcall_prolog_α_715_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_715_54
.Lcall_prolog_α_715_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_715_54
.Lcall_prolog_α_715_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_715_54: mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    n314_call_prolog_α
                                                                              jmp   n308_cut_α
n307_call_prolog_β:     mov              r11, 275;                            jmp   n314_call_prolog_α
                        .size            n307_call_prolog_bx, .-n307_call_prolog_bx
                        .type            n308_cut_bx, @function
n308_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_cut_α:             mov              r11, 276;                            jmp   n309_var_ref_α
                        .size            n308_cut_bx, .-n308_cut_bx
                        .type            n309_var_ref_bx, @function
n309_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:         mov              r11, 277
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n310_var_ref_α
                        .size            n309_var_ref_bx, .-n309_var_ref_bx
                        .type            n310_var_ref_bx, @function
n310_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n311_var_ref_α
                        .size            n310_var_ref_bx, .-n310_var_ref_bx
                        .type            n311_var_ref_bx, @function
n311_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:         mov              r11, 279
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n312_call_proc_staged_α
                        .size            n311_var_ref_bx, .-n311_var_ref_bx
                        .type            n312_call_proc_staged_bx, @function
n312_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_call_proc_staged_α:
                        mov              r11, 280
                        lea              rsi, [rbp + 784]
                        lea              rdx, [rbp + 800]
                        lea              rcx, [rbp + 816]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_724_2
.Lcall_proc_staged_α_724_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_724_29
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
.Lcall_proc_staged_α_724_29:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    n338_call_prolog_α
                                                                              jmp   n313_move_label_α
n312_call_proc_staged_β:
                        mov              r11, 280;                            jmp   n338_call_prolog_α
.Lcall_proc_staged_β_724_0:
                        .quad            .Lcall_proc_staged_β_724_0_s
.Lcall_proc_staged_β_724_0_s:
                        .string          "d/3"
                        .size            n312_call_proc_staged_bx, .-n312_call_proc_staged_bx
                        .type            n313_move_label_bx, @function
n313_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_move_label_α:      mov              r11, 281
                        lea              rax, [rip + n312_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n313_move_label_bx, .-n313_move_label_bx
                        .type            n314_call_prolog_bx, @function
n314_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_call_prolog_α:     mov              r11, 282
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n315_var_ref_α
n314_call_prolog_β:     mov              r11, 282;                            jmp   d$2F3_ω
                        .size            n314_call_prolog_bx, .-n314_call_prolog_bx
                        .type            n315_var_ref_bx, @function
n315_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_var_ref_α:         mov              r11, 283
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n316_var_ref_α
                        .size            n315_var_ref_bx, .-n315_var_ref_bx
                        .type            n316_var_ref_bx, @function
n316_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:         mov              r11, 284
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8160]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n317_call_prolog_α
                        .size            n316_var_ref_bx, .-n316_var_ref_bx
                        .type            n317_call_prolog_bx, @function
n317_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_call_prolog_α:     mov              r11, 285
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        lea              r8, [rbp + 608]
.Lcall_prolog_α_732_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_732_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_732_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_732_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_732_40
.Lcall_prolog_α_732_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_732_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_732_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_732_40
.Lcall_prolog_α_732_56: cmp              al, 72;                              jne   .Lcall_prolog_α_732_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_732_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_732_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_732_40
.Lcall_prolog_α_732_41: lea              r9, [rbp + 624]
.Lcall_prolog_α_732_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_732_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_732_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_732_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_732_42
.Lcall_prolog_α_732_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_732_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_732_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_732_42
.Lcall_prolog_α_732_58: cmp              al, 72;                              jne   .Lcall_prolog_α_732_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_732_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_732_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_732_42
.Lcall_prolog_α_732_43: cmp              r8, r9;                              je    .Lcall_prolog_α_732_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_732_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_732_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_732_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_732_44
                                                                              jmp   .Lcall_prolog_α_732_45
.Lcall_prolog_α_732_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_732_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_732_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_732_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_732_53
                                                                              jmp   .Lcall_prolog_α_732_46
.Lcall_prolog_α_732_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_732_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_732_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_732_51
.Lcall_prolog_α_732_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_732_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_732_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_732_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_732_47
                                                                              jmp   .Lcall_prolog_α_732_48
.Lcall_prolog_α_732_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_732_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_732_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_732_51
.Lcall_prolog_α_732_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_732_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_732_53
                                                                              jmp   .Lcall_prolog_α_732_52
.Lcall_prolog_α_732_49: cmp              dl, 80;                              je    .Lcall_prolog_α_732_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_732_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_732_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_732_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_732_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_732_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_732_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_732_51
                                                                              jmp   .Lcall_prolog_α_732_52
.Lcall_prolog_α_732_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_732_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_732_53
.Lcall_prolog_α_732_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_732_54
.Lcall_prolog_α_732_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_732_54
.Lcall_prolog_α_732_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_732_54: mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n326_call_prolog_α
                                                                              jmp   n318_var_ref_α
n317_call_prolog_β:     mov              r11, 285;                            jmp   n326_call_prolog_α
                        .size            n317_call_prolog_bx, .-n317_call_prolog_bx
                        .type            n318_var_ref_bx, @function
n318_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:         mov              r11, 286
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n319_var_ref_α
                        .size            n318_var_ref_bx, .-n318_var_ref_bx
                        .type            n319_var_ref_bx, @function
n319_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:         mov              r11, 287
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8160]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n320_call_prolog_α
                        .size            n319_var_ref_bx, .-n319_var_ref_bx
                        .type            n320_call_prolog_bx, @function
n320_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_call_prolog_α:     mov              r11, 288
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        lea              r8, [rbp + 528]
.Lcall_prolog_α_737_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_737_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_737_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_737_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_737_40
.Lcall_prolog_α_737_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_737_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_737_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_737_40
.Lcall_prolog_α_737_56: cmp              al, 72;                              jne   .Lcall_prolog_α_737_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_737_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_737_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_737_40
.Lcall_prolog_α_737_41: lea              r9, [rbp + 544]
.Lcall_prolog_α_737_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_737_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_737_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_737_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_737_42
.Lcall_prolog_α_737_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_737_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_737_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_737_42
.Lcall_prolog_α_737_58: cmp              al, 72;                              jne   .Lcall_prolog_α_737_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_737_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_737_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_737_42
.Lcall_prolog_α_737_43: cmp              r8, r9;                              je    .Lcall_prolog_α_737_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_737_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_737_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_737_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_737_44
                                                                              jmp   .Lcall_prolog_α_737_45
.Lcall_prolog_α_737_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_737_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_737_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_737_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_737_53
                                                                              jmp   .Lcall_prolog_α_737_46
.Lcall_prolog_α_737_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_737_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_737_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_737_51
.Lcall_prolog_α_737_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_737_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_737_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_737_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_737_47
                                                                              jmp   .Lcall_prolog_α_737_48
.Lcall_prolog_α_737_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_737_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_737_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_737_51
.Lcall_prolog_α_737_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_737_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_737_53
                                                                              jmp   .Lcall_prolog_α_737_52
.Lcall_prolog_α_737_49: cmp              dl, 80;                              je    .Lcall_prolog_α_737_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_737_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_737_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_737_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_737_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_737_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_737_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_737_51
                                                                              jmp   .Lcall_prolog_α_737_52
.Lcall_prolog_α_737_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_737_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_737_53
.Lcall_prolog_α_737_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_737_54
.Lcall_prolog_α_737_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_737_54
.Lcall_prolog_α_737_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_737_54: mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n326_call_prolog_α
                                                                              jmp   n321_var_ref_α
n320_call_prolog_β:     mov              r11, 288;                            jmp   n326_call_prolog_α
                        .size            n320_call_prolog_bx, .-n320_call_prolog_bx
                        .type            n321_var_ref_bx, @function
n321_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:         mov              r11, 289
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n322_lit_integer_α
                        .size            n321_var_ref_bx, .-n321_var_ref_bx
                        .type            n322_lit_integer_bx, @function
n322_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_integer_α:     mov              r11, 290
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_740_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n323_call_prolog_α
.Llit_integer_α_740_0:  .quad            1
                        .size            n322_lit_integer_bx, .-n322_lit_integer_bx
                        .type            n323_call_prolog_bx, @function
n323_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_call_prolog_α:     mov              r11, 291
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n326_call_prolog_α
                                                                              jmp   n324_cut_α
n323_call_prolog_β:     mov              r11, 291;                            jmp   n326_call_prolog_α
                        .size            n323_call_prolog_bx, .-n323_call_prolog_bx
                        .type            n324_cut_bx, @function
n324_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_cut_α:             mov              r11, 292;                            jmp   n325_move_label_α
                        .size            n324_cut_bx, .-n324_cut_bx
                        .type            n325_move_label_bx, @function
n325_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_move_label_α:      mov              r11, 293
                        lea              rax, [rip + n326_call_prolog_α]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n325_move_label_bx, .-n325_move_label_bx
                        .type            n326_call_prolog_bx, @function
n326_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_call_prolog_α:     mov              r11, 294
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n327_var_ref_α
n326_call_prolog_β:     mov              r11, 294;                            jmp   d$2F3_ω
                        .size            n326_call_prolog_bx, .-n326_call_prolog_bx
                        .type            n327_var_ref_bx, @function
n327_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:         mov              r11, 295
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n328_var_ref_α
                        .size            n327_var_ref_bx, .-n327_var_ref_bx
                        .type            n328_var_ref_bx, @function
n328_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:         mov              r11, 296
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n329_call_prolog_α
                        .size            n328_var_ref_bx, .-n328_var_ref_bx
                        .type            n329_call_prolog_bx, @function
n329_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_call_prolog_α:     mov              r11, 297
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        lea              r8, [rbp + 336]
.Lcall_prolog_α_750_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_750_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_750_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_750_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_750_40
.Lcall_prolog_α_750_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_750_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_750_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_750_40
.Lcall_prolog_α_750_56: cmp              al, 72;                              jne   .Lcall_prolog_α_750_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_750_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_750_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_750_40
.Lcall_prolog_α_750_41: lea              r9, [rbp + 352]
.Lcall_prolog_α_750_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_750_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_750_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_750_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_750_42
.Lcall_prolog_α_750_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_750_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_750_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_750_42
.Lcall_prolog_α_750_58: cmp              al, 72;                              jne   .Lcall_prolog_α_750_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_750_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_750_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_750_42
.Lcall_prolog_α_750_43: cmp              r8, r9;                              je    .Lcall_prolog_α_750_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_750_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_750_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_750_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_750_44
                                                                              jmp   .Lcall_prolog_α_750_45
.Lcall_prolog_α_750_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_750_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_750_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_750_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_750_53
                                                                              jmp   .Lcall_prolog_α_750_46
.Lcall_prolog_α_750_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_750_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_750_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_750_51
.Lcall_prolog_α_750_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_750_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_750_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_750_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_750_47
                                                                              jmp   .Lcall_prolog_α_750_48
.Lcall_prolog_α_750_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_750_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_750_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_750_51
.Lcall_prolog_α_750_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_750_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_750_53
                                                                              jmp   .Lcall_prolog_α_750_52
.Lcall_prolog_α_750_49: cmp              dl, 80;                              je    .Lcall_prolog_α_750_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_750_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_750_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_750_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_750_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_750_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_750_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_750_51
                                                                              jmp   .Lcall_prolog_α_750_52
.Lcall_prolog_α_750_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_750_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_750_53
.Lcall_prolog_α_750_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_750_54
.Lcall_prolog_α_750_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_750_54
.Lcall_prolog_α_750_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_750_54: mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n338_call_prolog_α
                                                                              jmp   n330_var_ref_α
n329_call_prolog_β:     mov              r11, 297;                            jmp   n338_call_prolog_α
                        .size            n329_call_prolog_bx, .-n329_call_prolog_bx
                        .type            n330_var_ref_bx, @function
n330_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:         mov              r11, 298
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n331_var_ref_α
                        .size            n330_var_ref_bx, .-n330_var_ref_bx
                        .type            n331_var_ref_bx, @function
n331_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:         mov              r11, 299
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n332_call_prolog_α
                        .size            n331_var_ref_bx, .-n331_var_ref_bx
                        .type            n332_call_prolog_bx, @function
n332_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_call_prolog_α:     mov              r11, 300
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        lea              r8, [rbp + 256]
.Lcall_prolog_α_755_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_755_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_755_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_755_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_755_40
.Lcall_prolog_α_755_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_755_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_755_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_755_40
.Lcall_prolog_α_755_56: cmp              al, 72;                              jne   .Lcall_prolog_α_755_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_755_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_755_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_755_40
.Lcall_prolog_α_755_41: lea              r9, [rbp + 272]
.Lcall_prolog_α_755_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_755_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_755_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_755_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_755_42
.Lcall_prolog_α_755_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_755_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_755_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_755_42
.Lcall_prolog_α_755_58: cmp              al, 72;                              jne   .Lcall_prolog_α_755_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_755_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_755_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_755_42
.Lcall_prolog_α_755_43: cmp              r8, r9;                              je    .Lcall_prolog_α_755_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_755_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_755_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_755_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_755_44
                                                                              jmp   .Lcall_prolog_α_755_45
.Lcall_prolog_α_755_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_755_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_755_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_755_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_755_53
                                                                              jmp   .Lcall_prolog_α_755_46
.Lcall_prolog_α_755_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_755_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_755_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_755_51
.Lcall_prolog_α_755_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_755_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_755_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_755_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_755_47
                                                                              jmp   .Lcall_prolog_α_755_48
.Lcall_prolog_α_755_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_755_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_755_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_755_51
.Lcall_prolog_α_755_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_755_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_755_53
                                                                              jmp   .Lcall_prolog_α_755_52
.Lcall_prolog_α_755_49: cmp              dl, 80;                              je    .Lcall_prolog_α_755_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_755_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_755_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_755_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_755_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_755_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_755_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_755_51
                                                                              jmp   .Lcall_prolog_α_755_52
.Lcall_prolog_α_755_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_755_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_755_53
.Lcall_prolog_α_755_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_755_54
.Lcall_prolog_α_755_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_755_54
.Lcall_prolog_α_755_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_755_54: mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n338_call_prolog_α
                                                                              jmp   n333_var_ref_α
n332_call_prolog_β:     mov              r11, 300;                            jmp   n338_call_prolog_α
                        .size            n332_call_prolog_bx, .-n332_call_prolog_bx
                        .type            n333_var_ref_bx, @function
n333_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:         mov              r11, 301
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n334_lit_integer_α
                        .size            n333_var_ref_bx, .-n333_var_ref_bx
                        .type            n334_lit_integer_bx, @function
n334_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_integer_α:     mov              r11, 302
                        mov              qword ptr [rbp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_758_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n335_call_prolog_α
.Llit_integer_α_758_0:  .quad            0
                        .size            n334_lit_integer_bx, .-n334_lit_integer_bx
                        .type            n335_call_prolog_bx, @function
n335_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_call_prolog_α:     mov              r11, 303
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n338_call_prolog_α
                                                                              jmp   n336_move_label_α
n335_call_prolog_β:     mov              r11, 303;                            jmp   n338_call_prolog_α
                        .size            n335_call_prolog_bx, .-n335_call_prolog_bx
                        .type            n336_move_label_bx, @function
n336_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_move_label_α:      mov              r11, 304
                        lea              rax, [rip + n338_call_prolog_α]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n336_move_label_bx, .-n336_move_label_bx
                        .type            n337_disjunction_bx, @function
n337_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_disjunction_α:     mov              r11, 305
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    d$2F3_ω
                                                                              jmp   rax
n337_disjunction_β:     mov              r11, 305;                            jmp   d$2F3_ω
                        .size            n337_disjunction_bx, .-n337_disjunction_bx
                        .type            n338_call_prolog_bx, @function
n338_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_call_prolog_α:     mov              r11, 306
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ω
n338_call_prolog_β:     mov              r11, 306;                            jmp   d$2F3_ω
                        .size            n338_call_prolog_bx, .-n338_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_β:
                                                                              jmp   n337_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 8248]
                        lea              rsp, [rbp + 8272]
                        mov              rbp, qword ptr [rbp + 8264];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ω:
                        mov              rcx, qword ptr [rsp + 8256]
                        lea              rsp, [rbp + 8272]
                        mov              rbp, qword ptr [rbp + 8264];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        lea              rcx, [rip + .Ld$2F3_α_765_2]
                        lea              rdx, [rip + .Ld$2F3_α_765_3];        jmp   FN__d$2F3
.Ld$2F3_α_765_2:        pop              r12
                        pop              r12;                                 jmp   r12
.Ld$2F3_α_765_3:        pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__top$2F0:
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rcx
                        mov              qword ptr [rsp + 160], rdx
                        mov              qword ptr [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 112
                        mov              edx, 144
                        call             rt_jmp_frame_lexprep2@PLT
top$2F0_α_body:
                        lea              rax, [rip + n768_suspend_β]
                        mov              qword ptr [rbp + 112], rax
                        .type            n766_call_prolog_bx, @function
n766_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n766_call_prolog_α:     mov              r11, 307
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_770_102
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24];           jmp   .Lcall_prolog_α_770_101
.Lcall_prolog_α_770_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_770_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_770_101
.Lcall_prolog_α_770_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_770_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              al, 104;                             je    top$2F0_ω
                                                                              jmp   n767_call_proc_staged_α
n766_call_prolog_β:     mov              r11, 307;                            jmp   top$2F0_ω
                        .size            n766_call_prolog_bx, .-n766_call_prolog_bx
                        .type            n767_call_proc_staged_bx, @function
n767_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n767_call_proc_staged_α:
                        mov              r11, 308
                        call             log10$2F0_dcα;                       jmp   .Lcall_proc_staged_α_772_2
.Lcall_proc_staged_α_772_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_772_29
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
.Lcall_proc_staged_α_772_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n769_call_prolog_α
                                                                              jmp   n768_suspend_α
n767_call_proc_staged_β:
                        mov              r11, 308;                            jmp   n769_call_prolog_α
.Lcall_proc_staged_β_772_0:
                        .quad            .Lcall_proc_staged_β_772_0_s
.Lcall_proc_staged_β_772_0_s:
                        .string          "log10/0"
                        .size            n767_call_proc_staged_bx, .-n767_call_proc_staged_bx
                        .type            n768_suspend_bx, @function
n768_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n768_suspend_α:         mov              r11, 309
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_774_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 112];          jmp   rax
.Lsuspend_α_774_61:     mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        lea              rdx, [rip + n768_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n768_suspend_β]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax;            jmp   top$2F0_γ
n768_suspend_β:         mov              r11, 309;                            jmp   n767_call_proc_staged_β
                        .size            n768_suspend_bx, .-n768_suspend_bx
                        .type            n769_call_prolog_bx, @function
n769_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n769_call_prolog_α:     mov              r11, 310
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    top$2F0_ω
                                                                              jmp   top$2F0_ω
n769_call_prolog_β:     mov              r11, 310;                            jmp   top$2F0_ω
                        .size            n769_call_prolog_bx, .-n769_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_β:
                                                                              jmp   n768_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Ltop$2F0_α_775_50
                        mov              qword ptr [rsp + 112], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 112];          jmp   rax
.Ltop$2F0_α_775_50:     mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 152]
                        lea              rsp, [rbp + 176]
                        mov              rbp, qword ptr [rbp + 168];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_ω:
                        mov              rcx, qword ptr [rsp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, qword ptr [rbp + 168];          jmp   rcx
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rt_gcheap_warmup@PLT
                        call             rt_plw_floor_bypass_on@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                              jmp   main_α
.Lmain_zf_γ:            xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:            mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1408
                        mov              qword ptr [rsp + 1384], rcx
                        mov              qword ptr [rsp + 1392], rdx
                        mov              qword ptr [rsp + 1400], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1376
                        rep              stosb
main_α_body:
                        .type            n776_var_ref_bx, @function
n776_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n776_var_ref_α:         mov              r11, 311
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n777_call_prolog_α
                        .size            n776_var_ref_bx, .-n776_var_ref_bx
                        .type            n777_call_prolog_bx, @function
n777_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n777_call_prolog_α:     mov              r11, 312
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn822: .string          "$wall_us"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn822]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    n816_lit_string_α
                                                                              jmp   n778_var_ref_α
n777_call_prolog_β:     mov              r11, 312;                            jmp   n816_lit_string_α
                        .size            n777_call_prolog_bx, .-n777_call_prolog_bx
                        .type            n778_var_ref_bx, @function
n778_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n778_var_ref_α:         mov              r11, 313
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n779_call_prolog_α
                        .size            n778_var_ref_bx, .-n778_var_ref_bx
                        .type            n779_call_prolog_bx, @function
n779_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n779_call_prolog_α:     mov              r11, 314
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn826: .string          "$wall_ms"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn826]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              al, 104;                             je    n816_lit_string_α
                                                                              jmp   n780_call_proc_staged_α
n779_call_prolog_β:     mov              r11, 314;                            jmp   n816_lit_string_α
                        .size            n779_call_prolog_bx, .-n779_call_prolog_bx
                        .type            n780_call_proc_staged_bx, @function
n780_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n780_call_proc_staged_α:
                        mov              r11, 315
                        mov              qword ptr [rbp + 1120], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_828_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_828_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_828_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_828_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_828_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_828_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 1128], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 1120]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_828_5
                        mov              qword ptr [rbp + 1120], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_828_2
.Lcall_proc_staged_α_828_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_828_2
.Lcall_proc_staged_α_828_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 1120]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_828_6
                        mov              qword ptr [rbp + 1120], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_828_2
.Lcall_proc_staged_α_828_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_828_2
.Lcall_proc_staged_α_828_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_828_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n784_call_prolog_α
.Lcall_proc_staged_α_828_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_828_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
.Lcall_proc_staged_α_828_29:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    n784_call_prolog_α
                                                                              jmp   n781_var_ref_α
n780_call_proc_staged_β:
                        mov              r11, 315
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 1120], 0
                        lea              rdi, [rbp + 1136]
                        lea              rsi, [rbp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n784_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              ecx, 16
                        mov              r8d, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n784_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_828_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_828_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_828_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_828_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_828_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    n784_call_prolog_α
                                                                              jmp   n781_var_ref_α
.Lcall_proc_staged_α_828_0:
                        .quad            .Lcall_proc_staged_α_828_0_s
.Lcall_proc_staged_α_828_0_s:
                        .string          "top/0"
                        .size            n780_call_proc_staged_bx, .-n780_call_proc_staged_bx
                        .type            n781_var_ref_bx, @function
n781_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n781_var_ref_α:         mov              r11, 316
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n782_lit_string_α
                        .size            n781_var_ref_bx, .-n781_var_ref_bx
                        .type            n782_lit_string_bx, @function
n782_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n782_lit_string_α:      mov              r11, 317
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_831_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n783_call_prolog_α
.Llit_string_α_831_0:   .quad            .Llit_string_α_831_0_s
.Llit_string_α_831_0_s: .string          "ok"
                        .size            n782_lit_string_bx, .-n782_lit_string_bx
                        .type            n783_call_prolog_bx, @function
n783_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n783_call_prolog_α:     mov              r11, 318
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_832_2]
                                                                              jmp   .Lcall_prolog_α_832_3
.Lcall_prolog_α_832_2:  .quad            .Lcall_prolog_α_832_2_s
.Lcall_prolog_α_832_2_s:
                        .string          "ok"
.Lcall_prolog_α_832_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    n816_lit_string_α
                                                                              jmp   n788_var_ref_α
n783_call_prolog_β:     mov              r11, 318;                            jmp   n816_lit_string_α
                        .size            n783_call_prolog_bx, .-n783_call_prolog_bx
                        .type            n784_call_prolog_bx, @function
n784_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n784_call_prolog_α:     mov              r11, 319
                        .section         .rodata
.Lcall_prolog_α_rkfn834: .string          "$no_throw_or_fail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn834]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 1114112
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    n816_lit_string_α
                                                                              jmp   n785_var_ref_α
n784_call_prolog_β:     mov              r11, 319;                            jmp   n816_lit_string_α
                        .size            n784_call_prolog_bx, .-n784_call_prolog_bx
                        .type            n785_var_ref_bx, @function
n785_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n785_var_ref_α:         mov              r11, 320
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n786_lit_string_α
                        .size            n785_var_ref_bx, .-n785_var_ref_bx
                        .type            n786_lit_string_bx, @function
n786_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n786_lit_string_α:      mov              r11, 321
                        mov              qword ptr [rbp + 1072], 2            # result
                        mov              dword ptr [rbp + 1076], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_837_0]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n787_call_prolog_α
.Llit_string_α_837_0:   .quad            .Llit_string_α_837_0_s
.Llit_string_α_837_0_s: .string          "failed"
                        .size            n786_lit_string_bx, .-n786_lit_string_bx
                        .type            n787_call_prolog_bx, @function
n787_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n787_call_prolog_α:     mov              r11, 322
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_838_2]
                                                                              jmp   .Lcall_prolog_α_838_3
.Lcall_prolog_α_838_2:  .quad            .Lcall_prolog_α_838_2_s
.Lcall_prolog_α_838_2_s:
                        .string          "failed"
.Lcall_prolog_α_838_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    n816_lit_string_α
                                                                              jmp   n788_var_ref_α
n787_call_prolog_β:     mov              r11, 322;                            jmp   n816_lit_string_α
                        .size            n787_call_prolog_bx, .-n787_call_prolog_bx
                        .type            n788_var_ref_bx, @function
n788_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n788_var_ref_α:         mov              r11, 323
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n789_call_prolog_α
                        .size            n788_var_ref_bx, .-n788_var_ref_bx
                        .type            n789_call_prolog_bx, @function
n789_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n789_call_prolog_α:     mov              r11, 324
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn842: .string          "$wall_us"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn842]
                        lea              rsi, [rbp + 896]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    n816_lit_string_α
                                                                              jmp   n790_var_ref_α
n789_call_prolog_β:     mov              r11, 324;                            jmp   n816_lit_string_α
                        .size            n789_call_prolog_bx, .-n789_call_prolog_bx
                        .type            n790_var_ref_bx, @function
n790_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n790_var_ref_α:         mov              r11, 325
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n791_call_prolog_α
                        .size            n790_var_ref_bx, .-n790_var_ref_bx
                        .type            n791_call_prolog_bx, @function
n791_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n791_call_prolog_α:     mov              r11, 326
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn846: .string          "$wall_ms"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn846]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    n816_lit_string_α
                                                                              jmp   n792_var_α
n791_call_prolog_β:     mov              r11, 326;                            jmp   n816_lit_string_α
                        .size            n791_call_prolog_bx, .-n791_call_prolog_bx
                        .type            n792_var_bx, @function
n792_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n792_var_α:             mov              r11, 327
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 824], rax;          jmp   n793_call_prolog_α
                        .size            n792_var_bx, .-n792_var_bx
                        .type            n793_call_prolog_bx, @function
n793_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n793_call_prolog_α:     mov              r11, 328
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn850: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn850]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    n816_lit_string_α
                                                                              jmp   n794_lit_string_α
n793_call_prolog_β:     mov              r11, 328;                            jmp   n816_lit_string_α
                        .size            n793_call_prolog_bx, .-n793_call_prolog_bx
                        .type            n794_lit_string_bx, @function
n794_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n794_lit_string_α:      mov              r11, 329
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_851_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n795_call_prolog_α
.Llit_string_α_851_0:   .quad            .Llit_string_α_851_0_s
.Llit_string_α_851_0_s: .string          ""
                        .size            n794_lit_string_bx, .-n794_lit_string_bx
                        .type            n795_call_prolog_bx, @function
n795_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n795_call_prolog_α:     mov              r11, 330
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn853: .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn853]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    n816_lit_string_α
                                                                              jmp   n796_var_ref_α
n795_call_prolog_β:     mov              r11, 330;                            jmp   n816_lit_string_α
                        .size            n795_call_prolog_bx, .-n795_call_prolog_bx
                        .type            n796_var_ref_bx, @function
n796_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n796_var_ref_α:         mov              r11, 331
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n797_var_α
                        .size            n796_var_ref_bx, .-n796_var_ref_bx
                        .type            n797_var_bx, @function
n797_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n797_var_α:             mov              r11, 332
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 712], rax;          jmp   n798_var_α
                        .size            n797_var_bx, .-n797_var_bx
                        .type            n798_var_bx, @function
n798_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n798_var_α:             mov              r11, 333
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 728], rax;          jmp   n799_call_prolog_α
                        .size            n798_var_bx, .-n798_var_bx
                        .type            n799_call_prolog_bx, @function
n799_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n799_call_prolog_α:     mov              r11, 334
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
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    n816_lit_string_α
                                                                              jmp   n800_call_prolog_α
n799_call_prolog_β:     mov              r11, 334;                            jmp   n816_lit_string_α
                        .size            n799_call_prolog_bx, .-n799_call_prolog_bx
                        .type            n800_call_prolog_bx, @function
n800_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n800_call_prolog_α:     mov              r11, 335
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    n816_lit_string_α
                                                                              jmp   n801_var_ref_α
n800_call_prolog_β:     mov              r11, 335;                            jmp   n816_lit_string_α
                        .size            n800_call_prolog_bx, .-n800_call_prolog_bx
                        .type            n801_var_ref_bx, @function
n801_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n801_var_ref_α:         mov              r11, 336
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n802_var_α
                        .size            n801_var_ref_bx, .-n801_var_ref_bx
                        .type            n802_var_bx, @function
n802_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n802_var_α:             mov              r11, 337
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 552], rax;          jmp   n803_var_α
                        .size            n802_var_bx, .-n802_var_bx
                        .type            n803_var_bx, @function
n803_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n803_var_α:             mov              r11, 338
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 568], rax;          jmp   n804_call_prolog_α
                        .size            n803_var_bx, .-n803_var_bx
                        .type            n804_call_prolog_bx, @function
n804_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n804_call_prolog_α:     mov              r11, 339
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
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n816_lit_string_α
                                                                              jmp   n805_call_prolog_α
n804_call_prolog_β:     mov              r11, 339;                            jmp   n816_lit_string_α
                        .size            n804_call_prolog_bx, .-n804_call_prolog_bx
                        .type            n805_call_prolog_bx, @function
n805_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n805_call_prolog_α:     mov              r11, 340
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    n816_lit_string_α
                                                                              jmp   n806_lit_string_α
n805_call_prolog_β:     mov              r11, 340;                            jmp   n816_lit_string_α
                        .size            n805_call_prolog_bx, .-n805_call_prolog_bx
                        .type            n806_lit_string_bx, @function
n806_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n806_lit_string_α:      mov              r11, 341
                        mov              qword ptr [rbp + 144], 2             # result
                        mov              dword ptr [rbp + 148], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_870_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n807_lit_string_α
.Llit_string_α_870_0:   .quad            .Llit_string_α_870_0_s
.Llit_string_α_870_0_s: .string          "user_error"
                        .size            n806_lit_string_bx, .-n806_lit_string_bx
                        .type            n807_lit_string_bx, @function
n807_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n807_lit_string_α:      mov              r11, 342
                        mov              qword ptr [rbp + 160], 2             # result
                        mov              dword ptr [rbp + 164], 42
                        mov              rax, qword ptr [rip + .Llit_string_α_871_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n808_lit_string_α
.Llit_string_α_871_0:   .quad            .Llit_string_α_871_0_s
.Llit_string_α_871_0_s: .string          "BENCH kernel=log10 work_us=~w work_ms=~w~n"
                        .size            n807_lit_string_bx, .-n807_lit_string_bx
                        .type            n808_lit_string_bx, @function
n808_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n808_lit_string_α:      mov              r11, 343
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_872_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n809_var_ref_α
.Llit_string_α_872_0:   .quad            .Llit_string_α_872_0_s
.Llit_string_α_872_0_s: .string          "."
                        .size            n808_lit_string_bx, .-n808_lit_string_bx
                        .type            n809_var_ref_bx, @function
n809_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n809_var_ref_α:         mov              r11, 344
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n810_lit_string_α
                        .size            n809_var_ref_bx, .-n809_var_ref_bx
                        .type            n810_lit_string_bx, @function
n810_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n810_lit_string_α:      mov              r11, 345
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_875_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n811_var_ref_α
.Llit_string_α_875_0:   .quad            .Llit_string_α_875_0_s
.Llit_string_α_875_0_s: .string          "."
                        .size            n810_lit_string_bx, .-n810_lit_string_bx
                        .type            n811_var_ref_bx, @function
n811_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n811_var_ref_α:         mov              r11, 346
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n812_lit_string_α
                        .size            n811_var_ref_bx, .-n811_var_ref_bx
                        .type            n812_lit_string_bx, @function
n812_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n812_lit_string_α:      mov              r11, 347
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_878_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n813_call_prolog_α
.Llit_string_α_878_0:   .quad            .Llit_string_α_878_0_s
.Llit_string_α_878_0_s: .string          "[]"
                        .size            n812_lit_string_bx, .-n812_lit_string_bx
                        .type            n813_call_prolog_bx, @function
n813_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n813_call_prolog_α:     mov              r11, 348
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n814_call_prolog_α
n813_call_prolog_β:     mov              r11, 348;                            jmp   main_ω
                        .size            n813_call_prolog_bx, .-n813_call_prolog_bx
                        .type            n814_call_prolog_bx, @function
n814_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n814_call_prolog_α:     mov              r11, 349
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n816_lit_string_α
                                                                              jmp   n815_call_prolog_α
n814_call_prolog_β:     mov              r11, 349;                            jmp   n816_lit_string_α
                        .size            n814_call_prolog_bx, .-n814_call_prolog_bx
                        .type            n815_call_prolog_bx, @function
n815_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n815_call_prolog_α:     mov              r11, 350
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn882: .string          "$format3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn882]
                        lea              rsi, [rbp + 96]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n816_lit_string_α
                                                                              jmp   main_γ
n815_call_prolog_β:     mov              r11, 350;                            jmp   n816_lit_string_α
                        .size            n815_call_prolog_bx, .-n815_call_prolog_bx
                        .type            n816_lit_string_bx, @function
n816_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n816_lit_string_α:      mov              r11, 351
                        mov              qword ptr [rbp + 48], 2              # result
                        mov              dword ptr [rbp + 52], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_883_0]
                        mov              qword ptr [rbp + 56], rax;           jmp   n817_lit_string_α
.Llit_string_α_883_0:   .quad            .Llit_string_α_883_0_s
.Llit_string_α_883_0_s: .string          "user_error"
                        .size            n816_lit_string_bx, .-n816_lit_string_bx
                        .type            n817_lit_string_bx, @function
n817_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n817_lit_string_α:      mov              r11, 352
                        mov              qword ptr [rbp + 64], 2              # result
                        mov              dword ptr [rbp + 68], 44
                        mov              rax, qword ptr [rip + .Llit_string_α_884_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n818_call_prolog_α
.Llit_string_α_884_0:   .quad            .Llit_string_α_884_0_s
.Llit_string_α_884_0_s: .string          "Warning: initialization goal failed: main/0\n"
                        .size            n817_lit_string_bx, .-n817_lit_string_bx
                        .type            n818_call_prolog_bx, @function
n818_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n818_call_prolog_α:     mov              r11, 353
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn886: .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn886]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458752
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n818_call_prolog_β:     mov              r11, 353;                            jmp   main_ω
                        .size            n818_call_prolog_bx, .-n818_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1384]
                        lea              rsp, [rbp + 1408]
                        mov              rbp, qword ptr [rbp + 1400];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1392]
                        lea              rsp, [rbp + 1408]
                        mov              rbp, qword ptr [rbp + 1400];         jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "log10/0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__log10$2F0
                        .quad            log10$2F0_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1040
                        .long            16
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
                        .quad            d$2F3_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            8224
                        .long            16
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
                        .long            128
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
