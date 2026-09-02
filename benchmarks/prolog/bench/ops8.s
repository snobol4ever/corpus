                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__ops8$2F0:
                        sub              rsp, 1072
                        mov              qword ptr [rsp + 1048], rcx
                        mov              qword ptr [rsp + 1056], rdx
                        mov              qword ptr [rsp + 1064], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1040
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
ops8$2F0_α_body:
                        .type            n0_call_prolog_bx, @function
n0_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_29_102
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40];           jmp   .Lcall_prolog_α_29_101
.Lcall_prolog_α_29_102: lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_29_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_29_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_29_101
.Lcall_prolog_α_29_100: lea              rdi, [rbp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_29_101: mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n1_lit_string_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   ops8$2F0_ω
                        .size            n0_call_prolog_bx, .-n0_call_prolog_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rbp + 960], 2             # result
                        mov              dword ptr [rbp + 964], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_30_0]
                        mov              qword ptr [rbp + 968], rax;          jmp   n2_lit_string_α
.Llit_string_α_30_0:    .quad            .Llit_string_α_30_0_s
.Llit_string_α_30_0_s:  .string          "*"
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_31_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n3_lit_string_α
.Llit_string_α_31_0:    .quad            .Llit_string_α_31_0_s
.Llit_string_α_31_0_s:  .string          "+"
                        .size            n2_lit_string_bx, .-n2_lit_string_bx
                        .type            n3_lit_string_bx, @function
n3_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_32_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n4_lit_integer_α
.Llit_string_α_32_0:    .quad            .Llit_string_α_32_0_s
.Llit_string_α_32_0_s:  .string          "x"
                        .size            n3_lit_string_bx, .-n3_lit_string_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 5
                        mov              qword ptr [rbp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_33_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n5_call_prolog_α
.Llit_integer_α_33_0:   .quad            1
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_call_prolog_bx, @function
n5_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_prolog_α:       mov              r11, 6
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 184]
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
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n6_lit_string_α
n5_call_prolog_β:       mov              r11, 6;                              jmp   ops8$2F0_ω
                        .size            n5_call_prolog_bx, .-n5_call_prolog_bx
                        .type            n6_lit_string_bx, @function
n6_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rbp + 864], 2             # result
                        mov              dword ptr [rbp + 868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_35_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n7_lit_string_α
.Llit_string_α_35_0:    .quad            .Llit_string_α_35_0_s
.Llit_string_α_35_0_s:  .string          "*"
                        .size            n6_lit_string_bx, .-n6_lit_string_bx
                        .type            n7_lit_string_bx, @function
n7_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rbp + 528], 2             # result
                        mov              dword ptr [rbp + 532], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_36_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n8_lit_string_α
.Llit_string_α_36_0:    .quad            .Llit_string_α_36_0_s
.Llit_string_α_36_0_s:  .string          "+"
                        .size            n7_lit_string_bx, .-n7_lit_string_bx
                        .type            n8_lit_string_bx, @function
n8_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_37_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n9_lit_string_α
.Llit_string_α_37_0:    .quad            .Llit_string_α_37_0_s
.Llit_string_α_37_0_s:  .string          "^"
                        .size            n8_lit_string_bx, .-n8_lit_string_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_38_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n10_lit_integer_α
.Llit_string_α_38_0:    .quad            .Llit_string_α_38_0_s
.Llit_string_α_38_0_s:  .string          "x"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rbp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_39_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n11_call_prolog_α
.Llit_integer_α_39_0:   .quad            2
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_call_prolog_bx, @function
n11_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_prolog_α:      mov              r11, 12
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 312]
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n12_lit_integer_α
n11_call_prolog_β:      mov              r11, 12;                             jmp   ops8$2F0_ω
                        .size            n11_call_prolog_bx, .-n11_call_prolog_bx
                        .type            n12_lit_integer_bx, @function
n12_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rbp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_41_0]
                        mov              qword ptr [rbp + 440], rax;          jmp   n13_call_prolog_α
.Llit_integer_α_41_0:   .quad            2
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_call_prolog_bx, @function
n13_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_call_prolog_α:      mov              r11, 14
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 344]
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n14_lit_string_α
n13_call_prolog_β:      mov              r11, 14;                             jmp   ops8$2F0_ω
                        .size            n13_call_prolog_bx, .-n13_call_prolog_bx
                        .type            n14_lit_string_bx, @function
n14_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_43_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n15_lit_string_α
.Llit_string_α_43_0:    .quad            .Llit_string_α_43_0_s
.Llit_string_α_43_0_s:  .string          "+"
                        .size            n14_lit_string_bx, .-n14_lit_string_bx
                        .type            n15_lit_string_bx, @function
n15_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rbp + 656], 2             # result
                        mov              dword ptr [rbp + 660], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_44_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n16_lit_string_α
.Llit_string_α_44_0:    .quad            .Llit_string_α_44_0_s
.Llit_string_α_44_0_s:  .string          "^"
                        .size            n15_lit_string_bx, .-n15_lit_string_bx
                        .type            n16_lit_string_bx, @function
n16_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rbp + 544], 2             # result
                        mov              dword ptr [rbp + 548], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_45_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n17_lit_integer_α
.Llit_string_α_45_0:    .quad            .Llit_string_α_45_0_s
.Llit_string_α_45_0_s:  .string          "x"
                        .size            n16_lit_string_bx, .-n16_lit_string_bx
                        .type            n17_lit_integer_bx, @function
n17_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      mov              r11, 18
                        mov              qword ptr [rbp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_46_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n18_call_prolog_α
.Llit_integer_α_46_0:   .quad            3
                        .size            n17_lit_integer_bx, .-n17_lit_integer_bx
                        .type            n18_call_prolog_bx, @function
n18_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_call_prolog_α:      mov              r11, 19
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 552]
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n19_lit_integer_α
n18_call_prolog_β:      mov              r11, 19;                             jmp   ops8$2F0_ω
                        .size            n18_call_prolog_bx, .-n18_call_prolog_bx
                        .type            n19_lit_integer_bx, @function
n19_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              r11, 20
                        mov              qword ptr [rbp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_48_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n20_call_prolog_α
.Llit_integer_α_48_0:   .quad            3
                        .size            n19_lit_integer_bx, .-n19_lit_integer_bx
                        .type            n20_call_prolog_bx, @function
n20_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_prolog_α:      mov              r11, 21
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 584]
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n21_call_prolog_α
n20_call_prolog_β:      mov              r11, 21;                             jmp   ops8$2F0_ω
                        .size            n20_call_prolog_bx, .-n20_call_prolog_bx
                        .type            n21_call_prolog_bx, @function
n21_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_prolog_α:      mov              r11, 22
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 456]
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n22_call_prolog_α
n21_call_prolog_β:      mov              r11, 22;                             jmp   ops8$2F0_ω
                        .size            n21_call_prolog_bx, .-n21_call_prolog_bx
                        .type            n22_call_prolog_bx, @function
n22_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_call_prolog_α:      mov              r11, 23
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 216]
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    n28_call_prolog_α
                                                                              jmp   n23_lit_string_α
n22_call_prolog_β:      mov              r11, 23;                             jmp   n28_call_prolog_α
                        .size            n22_call_prolog_bx, .-n22_call_prolog_bx
                        .type            n23_lit_string_bx, @function
n23_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rbp + 976], 2             # result
                        mov              dword ptr [rbp + 980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_52_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n24_var_ref_α
.Llit_string_α_52_0:    .quad            .Llit_string_α_52_0_s
.Llit_string_α_52_0_s:  .string          "x"
                        .size            n23_lit_string_bx, .-n23_lit_string_bx
                        .type            n24_var_ref_bx, @function
n24_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n25_call_proc_staged_α
                        .size            n24_var_ref_bx, .-n24_var_ref_bx
                        .type            n25_call_proc_staged_bx, @function
n25_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_call_proc_staged_α: mov              r11, 26
                        lea              rsi, [rbp + 880]
                        lea              rdx, [rbp + 976]
                        lea              rcx, [rbp + 992]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_56_2
.Lcall_proc_staged_α_56_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_56_29
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
.Lcall_proc_staged_α_56_29:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    n28_call_prolog_α
                                                                              jmp   n26_move_label_α
n25_call_proc_staged_β: mov              r11, 26;                             jmp   n28_call_prolog_α
.Lcall_proc_staged_β_56_0:
                        .quad            .Lcall_proc_staged_β_56_0_s
.Lcall_proc_staged_β_56_0_s:
                        .string          "d/3"
                        .size            n25_call_proc_staged_bx, .-n25_call_proc_staged_bx
                        .type            n26_move_label_bx, @function
n26_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_move_label_α:       mov              r11, 27
                        lea              rax, [rip + n25_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax;           jmp   ops8$2F0_γ
                        .size            n26_move_label_bx, .-n26_move_label_bx
                        .type            n27_disjunction_bx, @function
n27_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_disjunction_α:      mov              r11, 28
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    ops8$2F0_ω
                                                                              jmp   rax
n27_disjunction_β:      mov              r11, 28;                             jmp   ops8$2F0_ω
                        .size            n27_disjunction_bx, .-n27_disjunction_bx
                        .type            n28_call_prolog_bx, @function
n28_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_prolog_α:      mov              r11, 29
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
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   ops8$2F0_ω
n28_call_prolog_β:      mov              r11, 29;                             jmp   ops8$2F0_ω
                        .size            n28_call_prolog_bx, .-n28_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_β:
                                                                              jmp   n27_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1048]
                        mov              rbp, qword ptr [rbp + 1064]
                        add              rsp, 1072;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_ω:
                        mov              rcx, qword ptr [rsp + 1056]
                        mov              rbp, qword ptr [rbp + 1064]
                        add              rsp, 1072;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lops8$2F0_α_62_2]
                        lea              rdx, [rip + .Lops8$2F0_α_62_3];      jmp   FN__ops8$2F0
.Lops8$2F0_α_62_2:      pop              r12
                        pop              r12;                                 jmp   r12
.Lops8$2F0_α_62_3:      pop              r12
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
                        .type            n63_call_prolog_bx, @function
n63_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_call_prolog_α:      mov              r11, 30
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_341_102
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104];          jmp   .Lcall_prolog_α_341_101
.Lcall_prolog_α_341_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_341_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_341_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_341_101
.Lcall_prolog_α_341_100:
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
.Lcall_prolog_α_341_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n64_var_ref_α
n63_call_prolog_β:      mov              r11, 30;                             jmp   d$2F3_ω
                        .size            n63_call_prolog_bx, .-n63_call_prolog_bx
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 8080], rax
                        mov              qword ptr [rbp + 8088], rdx;         jmp   n65_lit_integer_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_lit_integer_bx, @function
n65_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      mov              r11, 32
                        mov              qword ptr [rbp + 8096], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_344_0]
                        mov              qword ptr [rbp + 8104], rax;         jmp   n66_lit_string_α
.Llit_integer_α_344_0:  .quad            516
                        .size            n65_lit_integer_bx, .-n65_lit_integer_bx
                        .type            n66_lit_string_bx, @function
n66_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rbp + 8112], 2            # result
                        mov              dword ptr [rbp + 8116], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_345_0]
                        mov              qword ptr [rbp + 8120], rax;         jmp   n67_call_prolog_α
.Llit_string_α_345_0:   .quad            .Llit_string_α_345_0_s
.Llit_string_α_345_0_s: .string          "+"
                        .size            n66_lit_string_bx, .-n66_lit_string_bx
                        .type            n67_call_prolog_bx, @function
n67_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_call_prolog_α:      mov              r11, 34
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
                        cmp              al, 104;                             je    n94_var_ref_α
                                                                              jmp   n68_var_ref_α
n67_call_prolog_β:      mov              r11, 34;                             jmp   n94_var_ref_α
                        .size            n67_call_prolog_bx, .-n67_call_prolog_bx
                        .type            n68_var_ref_bx, @function
n68_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7872], rax
                        mov              qword ptr [rbp + 7880], rdx;         jmp   n69_lit_string_α
                        .size            n68_var_ref_bx, .-n68_var_ref_bx
                        .type            n69_lit_string_bx, @function
n69_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rbp + 8000], 2            # result
                        mov              dword ptr [rbp + 8004], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_349_0]
                        mov              qword ptr [rbp + 8008], rax;         jmp   n70_var_ref_α
.Llit_string_α_349_0:   .quad            .Llit_string_α_349_0_s
.Llit_string_α_349_0_s: .string          "+"
                        .size            n69_lit_string_bx, .-n69_lit_string_bx
                        .type            n70_var_ref_bx, @function
n70_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7888], rax
                        mov              qword ptr [rbp + 7896], rdx;         jmp   n71_var_ref_α
                        .size            n70_var_ref_bx, .-n70_var_ref_bx
                        .type            n71_var_ref_bx, @function
n71_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7904], rax
                        mov              qword ptr [rbp + 7912], rdx;         jmp   n72_call_prolog_α
                        .size            n71_var_ref_bx, .-n71_var_ref_bx
                        .type            n72_call_prolog_bx, @function
n72_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_call_prolog_α:      mov              r11, 39
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
                        cmp              al, 104;                             je    n93_call_prolog_α
                                                                              jmp   n73_call_prolog_α
n72_call_prolog_β:      mov              r11, 39;                             jmp   n93_call_prolog_α
                        .size            n72_call_prolog_bx, .-n72_call_prolog_bx
                        .type            n73_call_prolog_bx, @function
n73_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_call_prolog_α:      mov              r11, 40
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
.Lcall_prolog_α_355_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_355_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_355_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_355_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_355_40
.Lcall_prolog_α_355_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_355_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_355_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_355_40
.Lcall_prolog_α_355_56: cmp              al, 72;                              jne   .Lcall_prolog_α_355_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_355_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_355_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_355_40
.Lcall_prolog_α_355_41: lea              r9, [rbp + 7856]
.Lcall_prolog_α_355_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_355_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_355_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_355_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_355_42
.Lcall_prolog_α_355_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_355_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_355_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_355_42
.Lcall_prolog_α_355_58: cmp              al, 72;                              jne   .Lcall_prolog_α_355_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_355_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_355_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_355_42
.Lcall_prolog_α_355_43: cmp              r8, r9;                              je    .Lcall_prolog_α_355_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_355_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_355_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_355_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_355_44
                                                                              jmp   .Lcall_prolog_α_355_45
.Lcall_prolog_α_355_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_355_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_355_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_355_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_355_53
                                                                              jmp   .Lcall_prolog_α_355_46
.Lcall_prolog_α_355_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_355_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_355_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_355_51
.Lcall_prolog_α_355_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_355_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_355_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_355_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_355_47
                                                                              jmp   .Lcall_prolog_α_355_48
.Lcall_prolog_α_355_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_355_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_355_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_355_51
.Lcall_prolog_α_355_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_355_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_355_53
                                                                              jmp   .Lcall_prolog_α_355_52
.Lcall_prolog_α_355_49: cmp              dl, 80;                              je    .Lcall_prolog_α_355_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_355_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_355_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_355_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_355_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_355_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_355_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_355_51
                                                                              jmp   .Lcall_prolog_α_355_52
.Lcall_prolog_α_355_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_355_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_355_53
.Lcall_prolog_α_355_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_355_54
.Lcall_prolog_α_355_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_355_54
.Lcall_prolog_α_355_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_355_54: mov              qword ptr [rbp + 7824], rax
                        mov              qword ptr [rbp + 7832], rdx
                        cmp              al, 104;                             je    n93_call_prolog_α
                                                                              jmp   n74_var_ref_α
n73_call_prolog_β:      mov              r11, 40;                             jmp   n93_call_prolog_α
                        .size            n73_call_prolog_bx, .-n73_call_prolog_bx
                        .type            n74_var_ref_bx, @function
n74_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7792], rax
                        mov              qword ptr [rbp + 7800], rdx;         jmp   n75_var_ref_α
                        .size            n74_var_ref_bx, .-n74_var_ref_bx
                        .type            n75_var_ref_bx, @function
n75_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7808], rax
                        mov              qword ptr [rbp + 7816], rdx;         jmp   n76_call_prolog_α
                        .size            n75_var_ref_bx, .-n75_var_ref_bx
                        .type            n76_call_prolog_bx, @function
n76_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_call_prolog_α:      mov              r11, 43
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
.Lcall_prolog_α_360_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_360_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_360_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_360_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_360_40
.Lcall_prolog_α_360_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_360_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_360_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_360_40
.Lcall_prolog_α_360_56: cmp              al, 72;                              jne   .Lcall_prolog_α_360_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_360_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_360_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_360_40
.Lcall_prolog_α_360_41: lea              r9, [rbp + 7776]
.Lcall_prolog_α_360_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_360_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_360_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_360_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_360_42
.Lcall_prolog_α_360_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_360_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_360_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_360_42
.Lcall_prolog_α_360_58: cmp              al, 72;                              jne   .Lcall_prolog_α_360_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_360_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_360_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_360_42
.Lcall_prolog_α_360_43: cmp              r8, r9;                              je    .Lcall_prolog_α_360_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_360_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_360_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_360_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_360_44
                                                                              jmp   .Lcall_prolog_α_360_45
.Lcall_prolog_α_360_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_360_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_360_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_360_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_360_53
                                                                              jmp   .Lcall_prolog_α_360_46
.Lcall_prolog_α_360_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_360_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_360_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_360_51
.Lcall_prolog_α_360_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_360_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_360_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_360_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_360_47
                                                                              jmp   .Lcall_prolog_α_360_48
.Lcall_prolog_α_360_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_360_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_360_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_360_51
.Lcall_prolog_α_360_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_360_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_360_53
                                                                              jmp   .Lcall_prolog_α_360_52
.Lcall_prolog_α_360_49: cmp              dl, 80;                              je    .Lcall_prolog_α_360_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_360_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_360_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_360_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_360_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_360_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_360_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_360_51
                                                                              jmp   .Lcall_prolog_α_360_52
.Lcall_prolog_α_360_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_360_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_360_53
.Lcall_prolog_α_360_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_360_54
.Lcall_prolog_α_360_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_360_54
.Lcall_prolog_α_360_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_360_54: mov              qword ptr [rbp + 7744], rax
                        mov              qword ptr [rbp + 7752], rdx
                        cmp              al, 104;                             je    n93_call_prolog_α
                                                                              jmp   n77_var_ref_α
n76_call_prolog_β:      mov              r11, 43;                             jmp   n93_call_prolog_α
                        .size            n76_call_prolog_bx, .-n76_call_prolog_bx
                        .type            n77_var_ref_bx, @function
n77_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7600], rax
                        mov              qword ptr [rbp + 7608], rdx;         jmp   n78_lit_string_α
                        .size            n77_var_ref_bx, .-n77_var_ref_bx
                        .type            n78_lit_string_bx, @function
n78_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       mov              r11, 45
                        mov              qword ptr [rbp + 7728], 2            # result
                        mov              dword ptr [rbp + 7732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_363_0]
                        mov              qword ptr [rbp + 7736], rax;         jmp   n79_var_ref_α
.Llit_string_α_363_0:   .quad            .Llit_string_α_363_0_s
.Llit_string_α_363_0_s: .string          "+"
                        .size            n78_lit_string_bx, .-n78_lit_string_bx
                        .type            n79_var_ref_bx, @function
n79_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 7616], rax
                        mov              qword ptr [rbp + 7624], rdx;         jmp   n80_var_ref_α
                        .size            n79_var_ref_bx, .-n79_var_ref_bx
                        .type            n80_var_ref_bx, @function
n80_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx;         jmp   n81_call_prolog_α
                        .size            n80_var_ref_bx, .-n80_var_ref_bx
                        .type            n81_call_prolog_bx, @function
n81_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_call_prolog_α:      mov              r11, 48
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
                        cmp              al, 104;                             je    n93_call_prolog_α
                                                                              jmp   n82_call_prolog_α
n81_call_prolog_β:      mov              r11, 48;                             jmp   n93_call_prolog_α
                        .size            n81_call_prolog_bx, .-n81_call_prolog_bx
                        .type            n82_call_prolog_bx, @function
n82_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_call_prolog_α:      mov              r11, 49
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
.Lcall_prolog_α_369_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_369_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_369_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_369_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_369_40
.Lcall_prolog_α_369_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_369_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_369_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_369_40
.Lcall_prolog_α_369_56: cmp              al, 72;                              jne   .Lcall_prolog_α_369_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_369_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_369_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_369_40
.Lcall_prolog_α_369_41: lea              r9, [rbp + 7584]
.Lcall_prolog_α_369_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_369_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_369_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_369_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_369_42
.Lcall_prolog_α_369_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_369_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_369_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_369_42
.Lcall_prolog_α_369_58: cmp              al, 72;                              jne   .Lcall_prolog_α_369_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_369_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_369_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_369_42
.Lcall_prolog_α_369_43: cmp              r8, r9;                              je    .Lcall_prolog_α_369_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_369_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_369_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_369_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_369_44
                                                                              jmp   .Lcall_prolog_α_369_45
.Lcall_prolog_α_369_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_369_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_369_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_369_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_369_53
                                                                              jmp   .Lcall_prolog_α_369_46
.Lcall_prolog_α_369_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_369_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_369_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_369_51
.Lcall_prolog_α_369_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_369_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_369_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_369_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_369_47
                                                                              jmp   .Lcall_prolog_α_369_48
.Lcall_prolog_α_369_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_369_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_369_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_369_51
.Lcall_prolog_α_369_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_369_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_369_53
                                                                              jmp   .Lcall_prolog_α_369_52
.Lcall_prolog_α_369_49: cmp              dl, 80;                              je    .Lcall_prolog_α_369_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_369_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_369_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_369_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_369_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_369_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_369_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_369_51
                                                                              jmp   .Lcall_prolog_α_369_52
.Lcall_prolog_α_369_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_369_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_369_53
.Lcall_prolog_α_369_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_369_54
.Lcall_prolog_α_369_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_369_54
.Lcall_prolog_α_369_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_369_54: mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                        cmp              al, 104;                             je    n93_call_prolog_α
                                                                              jmp   n83_cut_α
n82_call_prolog_β:      mov              r11, 49;                             jmp   n93_call_prolog_α
                        .size            n82_call_prolog_bx, .-n82_call_prolog_bx
                        .type            n83_cut_bx, @function
n83_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_cut_α:              mov              r11, 50;                             jmp   n84_var_ref_α
                        .size            n83_cut_bx, .-n83_cut_bx
                        .type            n84_var_ref_bx, @function
n84_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7504], rax
                        mov              qword ptr [rbp + 7512], rdx;         jmp   n85_var_ref_α
                        .size            n84_var_ref_bx, .-n84_var_ref_bx
                        .type            n85_var_ref_bx, @function
n85_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx;         jmp   n86_var_ref_α
                        .size            n85_var_ref_bx, .-n85_var_ref_bx
                        .type            n86_var_ref_bx, @function
n86_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx;         jmp   n87_call_proc_staged_α
                        .size            n86_var_ref_bx, .-n86_var_ref_bx
                        .type            n87_call_proc_staged_bx, @function
n87_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_call_proc_staged_α: mov              r11, 54
                        lea              rsi, [rbp + 7504]
                        lea              rdx, [rbp + 7520]
                        lea              rcx, [rbp + 7536]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_378_2
.Lcall_proc_staged_α_378_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_378_29
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
.Lcall_proc_staged_α_378_29:
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                        cmp              al, 104;                             je    n340_call_prolog_α
                                                                              jmp   n88_var_ref_α
n87_call_proc_staged_β: mov              r11, 54;                             jmp   n340_call_prolog_α
.Lcall_proc_staged_β_378_0:
                        .quad            .Lcall_proc_staged_β_378_0_s
.Lcall_proc_staged_β_378_0_s:
                        .string          "d/3"
                        .size            n87_call_proc_staged_bx, .-n87_call_proc_staged_bx
                        .type            n88_var_ref_bx, @function
n88_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7376], rax
                        mov              qword ptr [rbp + 7384], rdx;         jmp   n89_var_ref_α
                        .size            n88_var_ref_bx, .-n88_var_ref_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx;         jmp   n90_var_ref_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_var_ref_bx, @function
n90_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 7408], rax
                        mov              qword ptr [rbp + 7416], rdx;         jmp   n91_call_proc_staged_α
                        .size            n90_var_ref_bx, .-n90_var_ref_bx
                        .type            n91_call_proc_staged_bx, @function
n91_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_call_proc_staged_α: mov              r11, 58
                        lea              rsi, [rbp + 7376]
                        lea              rdx, [rbp + 7392]
                        lea              rcx, [rbp + 7408]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_386_2
.Lcall_proc_staged_α_386_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_386_29
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
.Lcall_proc_staged_α_386_29:
                        mov              qword ptr [rbp + 7296], rax
                        mov              qword ptr [rbp + 7304], rdx
                        cmp              al, 104;                             je    n87_call_proc_staged_β
                                                                              jmp   n92_move_label_α
n91_call_proc_staged_β: mov              r11, 58;                             jmp   n87_call_proc_staged_β
.Lcall_proc_staged_β_386_0:
                        .quad            .Lcall_proc_staged_β_386_0_s
.Lcall_proc_staged_β_386_0_s:
                        .string          "d/3"
                        .size            n91_call_proc_staged_bx, .-n91_call_proc_staged_bx
                        .type            n92_move_label_bx, @function
n92_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_move_label_α:       mov              r11, 59
                        lea              rax, [rip + n91_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n92_move_label_bx, .-n92_move_label_bx
                        .type            n93_call_prolog_bx, @function
n93_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_prolog_α:      mov              r11, 60
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
                                                                              jmp   n94_var_ref_α
n93_call_prolog_β:      mov              r11, 60;                             jmp   d$2F3_ω
                        .size            n93_call_prolog_bx, .-n93_call_prolog_bx
                        .type            n94_var_ref_bx, @function
n94_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7216], rax
                        mov              qword ptr [rbp + 7224], rdx;         jmp   n95_lit_integer_α
                        .size            n94_var_ref_bx, .-n94_var_ref_bx
                        .type            n95_lit_integer_bx, @function
n95_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      mov              r11, 62
                        mov              qword ptr [rbp + 7232], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_392_0]
                        mov              qword ptr [rbp + 7240], rax;         jmp   n96_lit_string_α
.Llit_integer_α_392_0:  .quad            516
                        .size            n95_lit_integer_bx, .-n95_lit_integer_bx
                        .type            n96_lit_string_bx, @function
n96_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       mov              r11, 63
                        mov              qword ptr [rbp + 7248], 2            # result
                        mov              dword ptr [rbp + 7252], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_393_0]
                        mov              qword ptr [rbp + 7256], rax;         jmp   n97_call_prolog_α
.Llit_string_α_393_0:   .quad            .Llit_string_α_393_0_s
.Llit_string_α_393_0_s: .string          "-"
                        .size            n96_lit_string_bx, .-n96_lit_string_bx
                        .type            n97_call_prolog_bx, @function
n97_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_call_prolog_α:      mov              r11, 64
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
                        cmp              al, 104;                             je    n124_var_ref_α
                                                                              jmp   n98_var_ref_α
n97_call_prolog_β:      mov              r11, 64;                             jmp   n124_var_ref_α
                        .size            n97_call_prolog_bx, .-n97_call_prolog_bx
                        .type            n98_var_ref_bx, @function
n98_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7008], rax
                        mov              qword ptr [rbp + 7016], rdx;         jmp   n99_lit_string_α
                        .size            n98_var_ref_bx, .-n98_var_ref_bx
                        .type            n99_lit_string_bx, @function
n99_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              r11, 66
                        mov              qword ptr [rbp + 7136], 2            # result
                        mov              dword ptr [rbp + 7140], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_397_0]
                        mov              qword ptr [rbp + 7144], rax;         jmp   n100_var_ref_α
.Llit_string_α_397_0:   .quad            .Llit_string_α_397_0_s
.Llit_string_α_397_0_s: .string          "-"
                        .size            n99_lit_string_bx, .-n99_lit_string_bx
                        .type            n100_var_ref_bx, @function
n100_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7024], rax
                        mov              qword ptr [rbp + 7032], rdx;         jmp   n101_var_ref_α
                        .size            n100_var_ref_bx, .-n100_var_ref_bx
                        .type            n101_var_ref_bx, @function
n101_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7040], rax
                        mov              qword ptr [rbp + 7048], rdx;         jmp   n102_call_prolog_α
                        .size            n101_var_ref_bx, .-n101_var_ref_bx
                        .type            n102_call_prolog_bx, @function
n102_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_call_prolog_α:     mov              r11, 69
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
                        cmp              al, 104;                             je    n123_call_prolog_α
                                                                              jmp   n103_call_prolog_α
n102_call_prolog_β:     mov              r11, 69;                             jmp   n123_call_prolog_α
                        .size            n102_call_prolog_bx, .-n102_call_prolog_bx
                        .type            n103_call_prolog_bx, @function
n103_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_call_prolog_α:     mov              r11, 70
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
.Lcall_prolog_α_403_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_403_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_403_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_403_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_403_40
.Lcall_prolog_α_403_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_403_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_403_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_403_40
.Lcall_prolog_α_403_56: cmp              al, 72;                              jne   .Lcall_prolog_α_403_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_403_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_403_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_403_40
.Lcall_prolog_α_403_41: lea              r9, [rbp + 6992]
.Lcall_prolog_α_403_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_403_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_403_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_403_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_403_42
.Lcall_prolog_α_403_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_403_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_403_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_403_42
.Lcall_prolog_α_403_58: cmp              al, 72;                              jne   .Lcall_prolog_α_403_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_403_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_403_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_403_42
.Lcall_prolog_α_403_43: cmp              r8, r9;                              je    .Lcall_prolog_α_403_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_403_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_403_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_403_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_403_44
                                                                              jmp   .Lcall_prolog_α_403_45
.Lcall_prolog_α_403_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_403_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_403_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_403_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_403_53
                                                                              jmp   .Lcall_prolog_α_403_46
.Lcall_prolog_α_403_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_403_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_403_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_403_51
.Lcall_prolog_α_403_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_403_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_403_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_403_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_403_47
                                                                              jmp   .Lcall_prolog_α_403_48
.Lcall_prolog_α_403_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_403_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_403_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_403_51
.Lcall_prolog_α_403_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_403_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_403_53
                                                                              jmp   .Lcall_prolog_α_403_52
.Lcall_prolog_α_403_49: cmp              dl, 80;                              je    .Lcall_prolog_α_403_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_403_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_403_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_403_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_403_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_403_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_403_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_403_51
                                                                              jmp   .Lcall_prolog_α_403_52
.Lcall_prolog_α_403_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_403_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_403_53
.Lcall_prolog_α_403_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_403_54
.Lcall_prolog_α_403_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_403_54
.Lcall_prolog_α_403_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_403_54: mov              qword ptr [rbp + 6960], rax
                        mov              qword ptr [rbp + 6968], rdx
                        cmp              al, 104;                             je    n123_call_prolog_α
                                                                              jmp   n104_var_ref_α
n103_call_prolog_β:     mov              r11, 70;                             jmp   n123_call_prolog_α
                        .size            n103_call_prolog_bx, .-n103_call_prolog_bx
                        .type            n104_var_ref_bx, @function
n104_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6928], rax
                        mov              qword ptr [rbp + 6936], rdx;         jmp   n105_var_ref_α
                        .size            n104_var_ref_bx, .-n104_var_ref_bx
                        .type            n105_var_ref_bx, @function
n105_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:         mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx;         jmp   n106_call_prolog_α
                        .size            n105_var_ref_bx, .-n105_var_ref_bx
                        .type            n106_call_prolog_bx, @function
n106_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_call_prolog_α:     mov              r11, 73
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
.Lcall_prolog_α_408_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_408_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_408_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_408_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_408_40
.Lcall_prolog_α_408_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_408_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_408_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_408_40
.Lcall_prolog_α_408_56: cmp              al, 72;                              jne   .Lcall_prolog_α_408_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_408_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_408_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_408_40
.Lcall_prolog_α_408_41: lea              r9, [rbp + 6912]
.Lcall_prolog_α_408_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_408_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_408_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_408_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_408_42
.Lcall_prolog_α_408_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_408_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_408_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_408_42
.Lcall_prolog_α_408_58: cmp              al, 72;                              jne   .Lcall_prolog_α_408_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_408_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_408_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_408_42
.Lcall_prolog_α_408_43: cmp              r8, r9;                              je    .Lcall_prolog_α_408_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_408_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_408_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_408_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_408_44
                                                                              jmp   .Lcall_prolog_α_408_45
.Lcall_prolog_α_408_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_408_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_408_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_408_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_408_53
                                                                              jmp   .Lcall_prolog_α_408_46
.Lcall_prolog_α_408_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_408_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_408_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_408_51
.Lcall_prolog_α_408_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_408_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_408_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_408_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_408_47
                                                                              jmp   .Lcall_prolog_α_408_48
.Lcall_prolog_α_408_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_408_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_408_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_408_51
.Lcall_prolog_α_408_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_408_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_408_53
                                                                              jmp   .Lcall_prolog_α_408_52
.Lcall_prolog_α_408_49: cmp              dl, 80;                              je    .Lcall_prolog_α_408_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_408_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_408_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_408_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_408_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_408_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_408_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_408_51
                                                                              jmp   .Lcall_prolog_α_408_52
.Lcall_prolog_α_408_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_408_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_408_53
.Lcall_prolog_α_408_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_408_54
.Lcall_prolog_α_408_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_408_54
.Lcall_prolog_α_408_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_408_54: mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx
                        cmp              al, 104;                             je    n123_call_prolog_α
                                                                              jmp   n107_var_ref_α
n106_call_prolog_β:     mov              r11, 73;                             jmp   n123_call_prolog_α
                        .size            n106_call_prolog_bx, .-n106_call_prolog_bx
                        .type            n107_var_ref_bx, @function
n107_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx;         jmp   n108_lit_string_α
                        .size            n107_var_ref_bx, .-n107_var_ref_bx
                        .type            n108_lit_string_bx, @function
n108_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      mov              r11, 75
                        mov              qword ptr [rbp + 6864], 2            # result
                        mov              dword ptr [rbp + 6868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_411_0]
                        mov              qword ptr [rbp + 6872], rax;         jmp   n109_var_ref_α
.Llit_string_α_411_0:   .quad            .Llit_string_α_411_0_s
.Llit_string_α_411_0_s: .string          "-"
                        .size            n108_lit_string_bx, .-n108_lit_string_bx
                        .type            n109_var_ref_bx, @function
n109_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx;         jmp   n110_var_ref_α
                        .size            n109_var_ref_bx, .-n109_var_ref_bx
                        .type            n110_var_ref_bx, @function
n110_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 6768], rax
                        mov              qword ptr [rbp + 6776], rdx;         jmp   n111_call_prolog_α
                        .size            n110_var_ref_bx, .-n110_var_ref_bx
                        .type            n111_call_prolog_bx, @function
n111_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_call_prolog_α:     mov              r11, 78
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
                        cmp              al, 104;                             je    n123_call_prolog_α
                                                                              jmp   n112_call_prolog_α
n111_call_prolog_β:     mov              r11, 78;                             jmp   n123_call_prolog_α
                        .size            n111_call_prolog_bx, .-n111_call_prolog_bx
                        .type            n112_call_prolog_bx, @function
n112_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_call_prolog_α:     mov              r11, 79
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
.Lcall_prolog_α_417_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_417_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_417_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_417_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_417_40
.Lcall_prolog_α_417_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_417_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_417_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_417_40
.Lcall_prolog_α_417_56: cmp              al, 72;                              jne   .Lcall_prolog_α_417_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_417_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_417_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_417_40
.Lcall_prolog_α_417_41: lea              r9, [rbp + 6720]
.Lcall_prolog_α_417_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_417_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_417_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_417_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_417_42
.Lcall_prolog_α_417_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_417_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_417_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_417_42
.Lcall_prolog_α_417_58: cmp              al, 72;                              jne   .Lcall_prolog_α_417_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_417_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_417_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_417_42
.Lcall_prolog_α_417_43: cmp              r8, r9;                              je    .Lcall_prolog_α_417_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_417_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_417_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_417_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_417_44
                                                                              jmp   .Lcall_prolog_α_417_45
.Lcall_prolog_α_417_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_417_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_417_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_417_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_417_53
                                                                              jmp   .Lcall_prolog_α_417_46
.Lcall_prolog_α_417_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_417_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_417_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_417_51
.Lcall_prolog_α_417_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_417_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_417_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_417_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_417_47
                                                                              jmp   .Lcall_prolog_α_417_48
.Lcall_prolog_α_417_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_417_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_417_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_417_51
.Lcall_prolog_α_417_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_417_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_417_53
                                                                              jmp   .Lcall_prolog_α_417_52
.Lcall_prolog_α_417_49: cmp              dl, 80;                              je    .Lcall_prolog_α_417_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_417_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_417_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_417_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_417_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_417_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_417_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_417_51
                                                                              jmp   .Lcall_prolog_α_417_52
.Lcall_prolog_α_417_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_417_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_417_53
.Lcall_prolog_α_417_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_417_54
.Lcall_prolog_α_417_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_417_54
.Lcall_prolog_α_417_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_417_54: mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                        cmp              al, 104;                             je    n123_call_prolog_α
                                                                              jmp   n113_cut_α
n112_call_prolog_β:     mov              r11, 79;                             jmp   n123_call_prolog_α
                        .size            n112_call_prolog_bx, .-n112_call_prolog_bx
                        .type            n113_cut_bx, @function
n113_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_cut_α:             mov              r11, 80;                             jmp   n114_var_ref_α
                        .size            n113_cut_bx, .-n113_cut_bx
                        .type            n114_var_ref_bx, @function
n114_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 6640], rax
                        mov              qword ptr [rbp + 6648], rdx;         jmp   n115_var_ref_α
                        .size            n114_var_ref_bx, .-n114_var_ref_bx
                        .type            n115_var_ref_bx, @function
n115_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6656], rax
                        mov              qword ptr [rbp + 6664], rdx;         jmp   n116_var_ref_α
                        .size            n115_var_ref_bx, .-n115_var_ref_bx
                        .type            n116_var_ref_bx, @function
n116_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 6672], rax
                        mov              qword ptr [rbp + 6680], rdx;         jmp   n117_call_proc_staged_α
                        .size            n116_var_ref_bx, .-n116_var_ref_bx
                        .type            n117_call_proc_staged_bx, @function
n117_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_call_proc_staged_α:
                        mov              r11, 84
                        lea              rsi, [rbp + 6640]
                        lea              rdx, [rbp + 6656]
                        lea              rcx, [rbp + 6672]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_426_2
.Lcall_proc_staged_α_426_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_426_29
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
.Lcall_proc_staged_α_426_29:
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx
                        cmp              al, 104;                             je    n340_call_prolog_α
                                                                              jmp   n118_var_ref_α
n117_call_proc_staged_β:
                        mov              r11, 84;                             jmp   n340_call_prolog_α
.Lcall_proc_staged_β_426_0:
                        .quad            .Lcall_proc_staged_β_426_0_s
.Lcall_proc_staged_β_426_0_s:
                        .string          "d/3"
                        .size            n117_call_proc_staged_bx, .-n117_call_proc_staged_bx
                        .type            n118_var_ref_bx, @function
n118_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx;         jmp   n119_var_ref_α
                        .size            n118_var_ref_bx, .-n118_var_ref_bx
                        .type            n119_var_ref_bx, @function
n119_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx;         jmp   n120_var_ref_α
                        .size            n119_var_ref_bx, .-n119_var_ref_bx
                        .type            n120_var_ref_bx, @function
n120_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx;         jmp   n121_call_proc_staged_α
                        .size            n120_var_ref_bx, .-n120_var_ref_bx
                        .type            n121_call_proc_staged_bx, @function
n121_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_call_proc_staged_α:
                        mov              r11, 88
                        lea              rsi, [rbp + 6512]
                        lea              rdx, [rbp + 6528]
                        lea              rcx, [rbp + 6544]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_434_2
.Lcall_proc_staged_α_434_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_434_29
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
.Lcall_proc_staged_α_434_29:
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                        cmp              al, 104;                             je    n117_call_proc_staged_β
                                                                              jmp   n122_move_label_α
n121_call_proc_staged_β:
                        mov              r11, 88;                             jmp   n117_call_proc_staged_β
.Lcall_proc_staged_β_434_0:
                        .quad            .Lcall_proc_staged_β_434_0_s
.Lcall_proc_staged_β_434_0_s:
                        .string          "d/3"
                        .size            n121_call_proc_staged_bx, .-n121_call_proc_staged_bx
                        .type            n122_move_label_bx, @function
n122_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_move_label_α:      mov              r11, 89
                        lea              rax, [rip + n121_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n122_move_label_bx, .-n122_move_label_bx
                        .type            n123_call_prolog_bx, @function
n123_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_call_prolog_α:     mov              r11, 90
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
                                                                              jmp   n124_var_ref_α
n123_call_prolog_β:     mov              r11, 90;                             jmp   d$2F3_ω
                        .size            n123_call_prolog_bx, .-n123_call_prolog_bx
                        .type            n124_var_ref_bx, @function
n124_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx;         jmp   n125_lit_integer_α
                        .size            n124_var_ref_bx, .-n124_var_ref_bx
                        .type            n125_lit_integer_bx, @function
n125_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:     mov              r11, 92
                        mov              qword ptr [rbp + 6368], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_440_0]
                        mov              qword ptr [rbp + 6376], rax;         jmp   n126_lit_string_α
.Llit_integer_α_440_0:  .quad            516
                        .size            n125_lit_integer_bx, .-n125_lit_integer_bx
                        .type            n126_lit_string_bx, @function
n126_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      mov              r11, 93
                        mov              qword ptr [rbp + 6384], 2            # result
                        mov              dword ptr [rbp + 6388], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_441_0]
                        mov              qword ptr [rbp + 6392], rax;         jmp   n127_call_prolog_α
.Llit_string_α_441_0:   .quad            .Llit_string_α_441_0_s
.Llit_string_α_441_0_s: .string          "*"
                        .size            n126_lit_string_bx, .-n126_lit_string_bx
                        .type            n127_call_prolog_bx, @function
n127_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_call_prolog_α:     mov              r11, 94
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
                        cmp              al, 104;                             je    n160_var_ref_α
                                                                              jmp   n128_var_ref_α
n127_call_prolog_β:     mov              r11, 94;                             jmp   n160_var_ref_α
                        .size            n127_call_prolog_bx, .-n127_call_prolog_bx
                        .type            n128_var_ref_bx, @function
n128_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx;         jmp   n129_lit_string_α
                        .size            n128_var_ref_bx, .-n128_var_ref_bx
                        .type            n129_lit_string_bx, @function
n129_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:      mov              r11, 96
                        mov              qword ptr [rbp + 6272], 2            # result
                        mov              dword ptr [rbp + 6276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_445_0]
                        mov              qword ptr [rbp + 6280], rax;         jmp   n130_var_ref_α
.Llit_string_α_445_0:   .quad            .Llit_string_α_445_0_s
.Llit_string_α_445_0_s: .string          "*"
                        .size            n129_lit_string_bx, .-n129_lit_string_bx
                        .type            n130_var_ref_bx, @function
n130_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx;         jmp   n131_var_ref_α
                        .size            n130_var_ref_bx, .-n130_var_ref_bx
                        .type            n131_var_ref_bx, @function
n131_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 6176], rax
                        mov              qword ptr [rbp + 6184], rdx;         jmp   n132_call_prolog_α
                        .size            n131_var_ref_bx, .-n131_var_ref_bx
                        .type            n132_call_prolog_bx, @function
n132_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_call_prolog_α:     mov              r11, 99
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
                        cmp              al, 104;                             je    n159_call_prolog_α
                                                                              jmp   n133_call_prolog_α
n132_call_prolog_β:     mov              r11, 99;                             jmp   n159_call_prolog_α
                        .size            n132_call_prolog_bx, .-n132_call_prolog_bx
                        .type            n133_call_prolog_bx, @function
n133_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_call_prolog_α:     mov              r11, 100
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
.Lcall_prolog_α_451_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_451_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_451_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_451_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_451_40
.Lcall_prolog_α_451_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_451_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_451_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_451_40
.Lcall_prolog_α_451_56: cmp              al, 72;                              jne   .Lcall_prolog_α_451_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_451_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_451_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_451_40
.Lcall_prolog_α_451_41: lea              r9, [rbp + 6128]
.Lcall_prolog_α_451_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_451_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_451_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_451_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_451_42
.Lcall_prolog_α_451_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_451_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_451_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_451_42
.Lcall_prolog_α_451_58: cmp              al, 72;                              jne   .Lcall_prolog_α_451_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_451_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_451_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_451_42
.Lcall_prolog_α_451_43: cmp              r8, r9;                              je    .Lcall_prolog_α_451_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_451_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_451_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_451_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_451_44
                                                                              jmp   .Lcall_prolog_α_451_45
.Lcall_prolog_α_451_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_451_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_451_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_451_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_451_53
                                                                              jmp   .Lcall_prolog_α_451_46
.Lcall_prolog_α_451_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_451_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_451_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_451_51
.Lcall_prolog_α_451_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_451_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_451_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_451_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_451_47
                                                                              jmp   .Lcall_prolog_α_451_48
.Lcall_prolog_α_451_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_451_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_451_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_451_51
.Lcall_prolog_α_451_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_451_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_451_53
                                                                              jmp   .Lcall_prolog_α_451_52
.Lcall_prolog_α_451_49: cmp              dl, 80;                              je    .Lcall_prolog_α_451_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_451_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_451_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_451_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_451_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_451_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_451_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_451_51
                                                                              jmp   .Lcall_prolog_α_451_52
.Lcall_prolog_α_451_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_451_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_451_53
.Lcall_prolog_α_451_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_451_54
.Lcall_prolog_α_451_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_451_54
.Lcall_prolog_α_451_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_451_54: mov              qword ptr [rbp + 6096], rax
                        mov              qword ptr [rbp + 6104], rdx
                        cmp              al, 104;                             je    n159_call_prolog_α
                                                                              jmp   n134_var_ref_α
n133_call_prolog_β:     mov              r11, 100;                            jmp   n159_call_prolog_α
                        .size            n133_call_prolog_bx, .-n133_call_prolog_bx
                        .type            n134_var_ref_bx, @function
n134_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx;         jmp   n135_var_ref_α
                        .size            n134_var_ref_bx, .-n134_var_ref_bx
                        .type            n135_var_ref_bx, @function
n135_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6080], rax
                        mov              qword ptr [rbp + 6088], rdx;         jmp   n136_call_prolog_α
                        .size            n135_var_ref_bx, .-n135_var_ref_bx
                        .type            n136_call_prolog_bx, @function
n136_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_call_prolog_α:     mov              r11, 103
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
.Lcall_prolog_α_456_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_456_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_456_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_456_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_456_40
.Lcall_prolog_α_456_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_456_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_456_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_456_40
.Lcall_prolog_α_456_56: cmp              al, 72;                              jne   .Lcall_prolog_α_456_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_456_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_456_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_456_40
.Lcall_prolog_α_456_41: lea              r9, [rbp + 6048]
.Lcall_prolog_α_456_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_456_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_456_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_456_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_456_42
.Lcall_prolog_α_456_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_456_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_456_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_456_42
.Lcall_prolog_α_456_58: cmp              al, 72;                              jne   .Lcall_prolog_α_456_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_456_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_456_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_456_42
.Lcall_prolog_α_456_43: cmp              r8, r9;                              je    .Lcall_prolog_α_456_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_456_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_456_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_456_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_456_44
                                                                              jmp   .Lcall_prolog_α_456_45
.Lcall_prolog_α_456_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_456_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_456_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_456_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_456_53
                                                                              jmp   .Lcall_prolog_α_456_46
.Lcall_prolog_α_456_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_456_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_456_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_456_51
.Lcall_prolog_α_456_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_456_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_456_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_456_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_456_47
                                                                              jmp   .Lcall_prolog_α_456_48
.Lcall_prolog_α_456_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_456_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_456_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_456_51
.Lcall_prolog_α_456_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_456_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_456_53
                                                                              jmp   .Lcall_prolog_α_456_52
.Lcall_prolog_α_456_49: cmp              dl, 80;                              je    .Lcall_prolog_α_456_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_456_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_456_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_456_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_456_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_456_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_456_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_456_51
                                                                              jmp   .Lcall_prolog_α_456_52
.Lcall_prolog_α_456_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_456_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_456_53
.Lcall_prolog_α_456_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_456_54
.Lcall_prolog_α_456_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_456_54
.Lcall_prolog_α_456_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_456_54: mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx
                        cmp              al, 104;                             je    n159_call_prolog_α
                                                                              jmp   n137_var_ref_α
n136_call_prolog_β:     mov              r11, 103;                            jmp   n159_call_prolog_α
                        .size            n136_call_prolog_bx, .-n136_call_prolog_bx
                        .type            n137_var_ref_bx, @function
n137_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx;         jmp   n138_lit_string_α
                        .size            n137_var_ref_bx, .-n137_var_ref_bx
                        .type            n138_lit_string_bx, @function
n138_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rbp + 6000], 2            # result
                        mov              dword ptr [rbp + 6004], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_459_0]
                        mov              qword ptr [rbp + 6008], rax;         jmp   n139_lit_string_α
.Llit_string_α_459_0:   .quad            .Llit_string_α_459_0_s
.Llit_string_α_459_0_s: .string          "+"
                        .size            n138_lit_string_bx, .-n138_lit_string_bx
                        .type            n139_lit_string_bx, @function
n139_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:      mov              r11, 106
                        mov              qword ptr [rbp + 5776], 2            # result
                        mov              dword ptr [rbp + 5780], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_460_0]
                        mov              qword ptr [rbp + 5784], rax;         jmp   n140_var_ref_α
.Llit_string_α_460_0:   .quad            .Llit_string_α_460_0_s
.Llit_string_α_460_0_s: .string          "*"
                        .size            n139_lit_string_bx, .-n139_lit_string_bx
                        .type            n140_var_ref_bx, @function
n140_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx;         jmp   n141_var_ref_α
                        .size            n140_var_ref_bx, .-n140_var_ref_bx
                        .type            n141_var_ref_bx, @function
n141_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx;         jmp   n142_call_prolog_α
                        .size            n141_var_ref_bx, .-n141_var_ref_bx
                        .type            n142_call_prolog_bx, @function
n142_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_call_prolog_α:     mov              r11, 109
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
                                                                              jmp   n143_lit_string_α
n142_call_prolog_β:     mov              r11, 109;                            jmp   d$2F3_ω
                        .size            n142_call_prolog_bx, .-n142_call_prolog_bx
                        .type            n143_lit_string_bx, @function
n143_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:      mov              r11, 110
                        mov              qword ptr [rbp + 5904], 2            # result
                        mov              dword ptr [rbp + 5908], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_466_0]
                        mov              qword ptr [rbp + 5912], rax;         jmp   n144_var_ref_α
.Llit_string_α_466_0:   .quad            .Llit_string_α_466_0_s
.Llit_string_α_466_0_s: .string          "*"
                        .size            n143_lit_string_bx, .-n143_lit_string_bx
                        .type            n144_var_ref_bx, @function
n144_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx;         jmp   n145_var_ref_α
                        .size            n144_var_ref_bx, .-n144_var_ref_bx
                        .type            n145_var_ref_bx, @function
n145_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 5808], rax
                        mov              qword ptr [rbp + 5816], rdx;         jmp   n146_call_prolog_α
                        .size            n145_var_ref_bx, .-n145_var_ref_bx
                        .type            n146_call_prolog_bx, @function
n146_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_call_prolog_α:     mov              r11, 113
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
                                                                              jmp   n147_call_prolog_α
n146_call_prolog_β:     mov              r11, 113;                            jmp   d$2F3_ω
                        .size            n146_call_prolog_bx, .-n146_call_prolog_bx
                        .type            n147_call_prolog_bx, @function
n147_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_call_prolog_α:     mov              r11, 114
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
                        cmp              al, 104;                             je    n159_call_prolog_α
                                                                              jmp   n148_call_prolog_α
n147_call_prolog_β:     mov              r11, 114;                            jmp   n159_call_prolog_α
                        .size            n147_call_prolog_bx, .-n147_call_prolog_bx
                        .type            n148_call_prolog_bx, @function
n148_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_call_prolog_α:     mov              r11, 115
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
.Lcall_prolog_α_473_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_473_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_473_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_473_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_473_40
.Lcall_prolog_α_473_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_473_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_473_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_473_40
.Lcall_prolog_α_473_56: cmp              al, 72;                              jne   .Lcall_prolog_α_473_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_473_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_473_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_473_40
.Lcall_prolog_α_473_41: lea              r9, [rbp + 5632]
.Lcall_prolog_α_473_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_473_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_473_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_473_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_473_42
.Lcall_prolog_α_473_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_473_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_473_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_473_42
.Lcall_prolog_α_473_58: cmp              al, 72;                              jne   .Lcall_prolog_α_473_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_473_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_473_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_473_42
.Lcall_prolog_α_473_43: cmp              r8, r9;                              je    .Lcall_prolog_α_473_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_473_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_473_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_473_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_473_44
                                                                              jmp   .Lcall_prolog_α_473_45
.Lcall_prolog_α_473_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_473_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_473_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_473_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_473_53
                                                                              jmp   .Lcall_prolog_α_473_46
.Lcall_prolog_α_473_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_473_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_473_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_473_51
.Lcall_prolog_α_473_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_473_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_473_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_473_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_473_47
                                                                              jmp   .Lcall_prolog_α_473_48
.Lcall_prolog_α_473_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_473_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_473_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_473_51
.Lcall_prolog_α_473_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_473_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_473_53
                                                                              jmp   .Lcall_prolog_α_473_52
.Lcall_prolog_α_473_49: cmp              dl, 80;                              je    .Lcall_prolog_α_473_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_473_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_473_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_473_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_473_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_473_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_473_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_473_51
                                                                              jmp   .Lcall_prolog_α_473_52
.Lcall_prolog_α_473_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_473_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_473_53
.Lcall_prolog_α_473_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_473_54
.Lcall_prolog_α_473_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_473_54
.Lcall_prolog_α_473_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_473_54: mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                        cmp              al, 104;                             je    n159_call_prolog_α
                                                                              jmp   n149_cut_α
n148_call_prolog_β:     mov              r11, 115;                            jmp   n159_call_prolog_α
                        .size            n148_call_prolog_bx, .-n148_call_prolog_bx
                        .type            n149_cut_bx, @function
n149_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_cut_α:             mov              r11, 116;                            jmp   n150_var_ref_α
                        .size            n149_cut_bx, .-n149_cut_bx
                        .type            n150_var_ref_bx, @function
n150_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx;         jmp   n151_var_ref_α
                        .size            n150_var_ref_bx, .-n150_var_ref_bx
                        .type            n151_var_ref_bx, @function
n151_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx;         jmp   n152_var_ref_α
                        .size            n151_var_ref_bx, .-n151_var_ref_bx
                        .type            n152_var_ref_bx, @function
n152_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx;         jmp   n153_call_proc_staged_α
                        .size            n152_var_ref_bx, .-n152_var_ref_bx
                        .type            n153_call_proc_staged_bx, @function
n153_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_call_proc_staged_α:
                        mov              r11, 120
                        lea              rsi, [rbp + 5552]
                        lea              rdx, [rbp + 5568]
                        lea              rcx, [rbp + 5584]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_482_2
.Lcall_proc_staged_α_482_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_482_29
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
.Lcall_proc_staged_α_482_29:
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              al, 104;                             je    n340_call_prolog_α
                                                                              jmp   n154_var_ref_α
n153_call_proc_staged_β:
                        mov              r11, 120;                            jmp   n340_call_prolog_α
.Lcall_proc_staged_β_482_0:
                        .quad            .Lcall_proc_staged_β_482_0_s
.Lcall_proc_staged_β_482_0_s:
                        .string          "d/3"
                        .size            n153_call_proc_staged_bx, .-n153_call_proc_staged_bx
                        .type            n154_var_ref_bx, @function
n154_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx;         jmp   n155_var_ref_α
                        .size            n154_var_ref_bx, .-n154_var_ref_bx
                        .type            n155_var_ref_bx, @function
n155_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 5440], rax
                        mov              qword ptr [rbp + 5448], rdx;         jmp   n156_var_ref_α
                        .size            n155_var_ref_bx, .-n155_var_ref_bx
                        .type            n156_var_ref_bx, @function
n156_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx;         jmp   n157_call_proc_staged_α
                        .size            n156_var_ref_bx, .-n156_var_ref_bx
                        .type            n157_call_proc_staged_bx, @function
n157_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_call_proc_staged_α:
                        mov              r11, 124
                        lea              rsi, [rbp + 5424]
                        lea              rdx, [rbp + 5440]
                        lea              rcx, [rbp + 5456]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_490_2
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
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 5344]
                        mov              rdx, qword ptr [rbp + 5352]
.Lcall_proc_staged_α_490_29:
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                        cmp              al, 104;                             je    n153_call_proc_staged_β
                                                                              jmp   n158_move_label_α
n157_call_proc_staged_β:
                        mov              r11, 124;                            jmp   n153_call_proc_staged_β
.Lcall_proc_staged_β_490_0:
                        .quad            .Lcall_proc_staged_β_490_0_s
.Lcall_proc_staged_β_490_0_s:
                        .string          "d/3"
                        .size            n157_call_proc_staged_bx, .-n157_call_proc_staged_bx
                        .type            n158_move_label_bx, @function
n158_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_move_label_α:      mov              r11, 125
                        lea              rax, [rip + n157_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n158_move_label_bx, .-n158_move_label_bx
                        .type            n159_call_prolog_bx, @function
n159_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_call_prolog_α:     mov              r11, 126
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
                                                                              jmp   n160_var_ref_α
n159_call_prolog_β:     mov              r11, 126;                            jmp   d$2F3_ω
                        .size            n159_call_prolog_bx, .-n159_call_prolog_bx
                        .type            n160_var_ref_bx, @function
n160_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx;         jmp   n161_lit_integer_α
                        .size            n160_var_ref_bx, .-n160_var_ref_bx
                        .type            n161_lit_integer_bx, @function
n161_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:     mov              r11, 128
                        mov              qword ptr [rbp + 5280], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_496_0]
                        mov              qword ptr [rbp + 5288], rax;         jmp   n162_lit_string_α
.Llit_integer_α_496_0:  .quad            516
                        .size            n161_lit_integer_bx, .-n161_lit_integer_bx
                        .type            n162_lit_string_bx, @function
n162_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      mov              r11, 129
                        mov              qword ptr [rbp + 5296], 2            # result
                        mov              dword ptr [rbp + 5300], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_497_0]
                        mov              qword ptr [rbp + 5304], rax;         jmp   n163_call_prolog_α
.Llit_string_α_497_0:   .quad            .Llit_string_α_497_0_s
.Llit_string_α_497_0_s: .string          "/"
                        .size            n162_lit_string_bx, .-n162_lit_string_bx
                        .type            n163_call_prolog_bx, @function
n163_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_call_prolog_α:     mov              r11, 130
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
                        cmp              al, 104;                             je    n202_var_ref_α
                                                                              jmp   n164_var_ref_α
n163_call_prolog_β:     mov              r11, 130;                            jmp   n202_var_ref_α
                        .size            n163_call_prolog_bx, .-n163_call_prolog_bx
                        .type            n164_var_ref_bx, @function
n164_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx;         jmp   n165_lit_string_α
                        .size            n164_var_ref_bx, .-n164_var_ref_bx
                        .type            n165_lit_string_bx, @function
n165_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rbp + 5184], 2            # result
                        mov              dword ptr [rbp + 5188], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_501_0]
                        mov              qword ptr [rbp + 5192], rax;         jmp   n166_var_ref_α
.Llit_string_α_501_0:   .quad            .Llit_string_α_501_0_s
.Llit_string_α_501_0_s: .string          "/"
                        .size            n165_lit_string_bx, .-n165_lit_string_bx
                        .type            n166_var_ref_bx, @function
n166_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx;         jmp   n167_var_ref_α
                        .size            n166_var_ref_bx, .-n166_var_ref_bx
                        .type            n167_var_ref_bx, @function
n167_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx;         jmp   n168_call_prolog_α
                        .size            n167_var_ref_bx, .-n167_var_ref_bx
                        .type            n168_call_prolog_bx, @function
n168_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_call_prolog_α:     mov              r11, 135
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
                        cmp              al, 104;                             je    n201_call_prolog_α
                                                                              jmp   n169_call_prolog_α
n168_call_prolog_β:     mov              r11, 135;                            jmp   n201_call_prolog_α
                        .size            n168_call_prolog_bx, .-n168_call_prolog_bx
                        .type            n169_call_prolog_bx, @function
n169_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_call_prolog_α:     mov              r11, 136
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
.Lcall_prolog_α_507_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_507_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_507_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_507_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_507_40
.Lcall_prolog_α_507_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_507_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_507_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_507_40
.Lcall_prolog_α_507_56: cmp              al, 72;                              jne   .Lcall_prolog_α_507_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_507_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_507_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_507_40
.Lcall_prolog_α_507_41: lea              r9, [rbp + 5040]
.Lcall_prolog_α_507_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_507_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_507_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_507_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_507_42
.Lcall_prolog_α_507_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_507_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_507_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_507_42
.Lcall_prolog_α_507_58: cmp              al, 72;                              jne   .Lcall_prolog_α_507_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_507_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_507_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_507_42
.Lcall_prolog_α_507_43: cmp              r8, r9;                              je    .Lcall_prolog_α_507_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_507_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_507_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_507_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_507_44
                                                                              jmp   .Lcall_prolog_α_507_45
.Lcall_prolog_α_507_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_507_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_507_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_507_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_507_53
                                                                              jmp   .Lcall_prolog_α_507_46
.Lcall_prolog_α_507_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_507_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_507_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_507_51
.Lcall_prolog_α_507_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_507_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_507_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_507_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_507_47
                                                                              jmp   .Lcall_prolog_α_507_48
.Lcall_prolog_α_507_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_507_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_507_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_507_51
.Lcall_prolog_α_507_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_507_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_507_53
                                                                              jmp   .Lcall_prolog_α_507_52
.Lcall_prolog_α_507_49: cmp              dl, 80;                              je    .Lcall_prolog_α_507_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_507_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_507_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_507_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_507_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_507_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_507_51
                                                                              jmp   .Lcall_prolog_α_507_52
.Lcall_prolog_α_507_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_507_53
.Lcall_prolog_α_507_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_507_54
.Lcall_prolog_α_507_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_507_54
.Lcall_prolog_α_507_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_507_54: mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                        cmp              al, 104;                             je    n201_call_prolog_α
                                                                              jmp   n170_var_ref_α
n169_call_prolog_β:     mov              r11, 136;                            jmp   n201_call_prolog_α
                        .size            n169_call_prolog_bx, .-n169_call_prolog_bx
                        .type            n170_var_ref_bx, @function
n170_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx;         jmp   n171_var_ref_α
                        .size            n170_var_ref_bx, .-n170_var_ref_bx
                        .type            n171_var_ref_bx, @function
n171_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx;         jmp   n172_call_prolog_α
                        .size            n171_var_ref_bx, .-n171_var_ref_bx
                        .type            n172_call_prolog_bx, @function
n172_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_call_prolog_α:     mov              r11, 139
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
.Lcall_prolog_α_512_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_512_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_512_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_512_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_512_40
.Lcall_prolog_α_512_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_512_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_512_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_512_40
.Lcall_prolog_α_512_56: cmp              al, 72;                              jne   .Lcall_prolog_α_512_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_512_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_512_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_512_40
.Lcall_prolog_α_512_41: lea              r9, [rbp + 4960]
.Lcall_prolog_α_512_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_512_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_512_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_512_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_512_42
.Lcall_prolog_α_512_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_512_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_512_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_512_42
.Lcall_prolog_α_512_58: cmp              al, 72;                              jne   .Lcall_prolog_α_512_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_512_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_512_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_512_42
.Lcall_prolog_α_512_43: cmp              r8, r9;                              je    .Lcall_prolog_α_512_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_512_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_512_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_512_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_512_44
                                                                              jmp   .Lcall_prolog_α_512_45
.Lcall_prolog_α_512_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_512_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_512_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_512_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_512_53
                                                                              jmp   .Lcall_prolog_α_512_46
.Lcall_prolog_α_512_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_512_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_512_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_512_51
.Lcall_prolog_α_512_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_512_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_512_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_512_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_512_47
                                                                              jmp   .Lcall_prolog_α_512_48
.Lcall_prolog_α_512_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_512_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_512_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_512_51
.Lcall_prolog_α_512_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_512_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_512_53
                                                                              jmp   .Lcall_prolog_α_512_52
.Lcall_prolog_α_512_49: cmp              dl, 80;                              je    .Lcall_prolog_α_512_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_512_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_512_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_512_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_512_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_512_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_512_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_512_51
                                                                              jmp   .Lcall_prolog_α_512_52
.Lcall_prolog_α_512_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_512_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_512_53
.Lcall_prolog_α_512_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_512_54
.Lcall_prolog_α_512_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_512_54
.Lcall_prolog_α_512_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_512_54: mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                        cmp              al, 104;                             je    n201_call_prolog_α
                                                                              jmp   n173_var_ref_α
n172_call_prolog_β:     mov              r11, 139;                            jmp   n201_call_prolog_α
                        .size            n172_call_prolog_bx, .-n172_call_prolog_bx
                        .type            n173_var_ref_bx, @function
n173_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx;         jmp   n174_lit_string_α
                        .size            n173_var_ref_bx, .-n173_var_ref_bx
                        .type            n174_lit_string_bx, @function
n174_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              r11, 141
                        mov              qword ptr [rbp + 4912], 2            # result
                        mov              dword ptr [rbp + 4916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_515_0]
                        mov              qword ptr [rbp + 4920], rax;         jmp   n175_lit_string_α
.Llit_string_α_515_0:   .quad            .Llit_string_α_515_0_s
.Llit_string_α_515_0_s: .string          "/"
                        .size            n174_lit_string_bx, .-n174_lit_string_bx
                        .type            n175_lit_string_bx, @function
n175_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:      mov              r11, 142
                        mov              qword ptr [rbp + 4688], 2            # result
                        mov              dword ptr [rbp + 4692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_516_0]
                        mov              qword ptr [rbp + 4696], rax;         jmp   n176_lit_string_α
.Llit_string_α_516_0:   .quad            .Llit_string_α_516_0_s
.Llit_string_α_516_0_s: .string          "-"
                        .size            n175_lit_string_bx, .-n175_lit_string_bx
                        .type            n176_lit_string_bx, @function
n176_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:      mov              r11, 143
                        mov              qword ptr [rbp + 4464], 2            # result
                        mov              dword ptr [rbp + 4468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_517_0]
                        mov              qword ptr [rbp + 4472], rax;         jmp   n177_var_ref_α
.Llit_string_α_517_0:   .quad            .Llit_string_α_517_0_s
.Llit_string_α_517_0_s: .string          "*"
                        .size            n176_lit_string_bx, .-n176_lit_string_bx
                        .type            n177_var_ref_bx, @function
n177_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx;         jmp   n178_var_ref_α
                        .size            n177_var_ref_bx, .-n177_var_ref_bx
                        .type            n178_var_ref_bx, @function
n178_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx;         jmp   n179_call_prolog_α
                        .size            n178_var_ref_bx, .-n178_var_ref_bx
                        .type            n179_call_prolog_bx, @function
n179_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_call_prolog_α:     mov              r11, 146
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
                                                                              jmp   n180_lit_string_α
n179_call_prolog_β:     mov              r11, 146;                            jmp   d$2F3_ω
                        .size            n179_call_prolog_bx, .-n179_call_prolog_bx
                        .type            n180_lit_string_bx, @function
n180_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rbp + 4592], 2            # result
                        mov              dword ptr [rbp + 4596], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_523_0]
                        mov              qword ptr [rbp + 4600], rax;         jmp   n181_var_ref_α
.Llit_string_α_523_0:   .quad            .Llit_string_α_523_0_s
.Llit_string_α_523_0_s: .string          "*"
                        .size            n180_lit_string_bx, .-n180_lit_string_bx
                        .type            n181_var_ref_bx, @function
n181_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx;         jmp   n182_var_ref_α
                        .size            n181_var_ref_bx, .-n181_var_ref_bx
                        .type            n182_var_ref_bx, @function
n182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx;         jmp   n183_call_prolog_α
                        .size            n182_var_ref_bx, .-n182_var_ref_bx
                        .type            n183_call_prolog_bx, @function
n183_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_call_prolog_α:     mov              r11, 150
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
                                                                              jmp   n184_call_prolog_α
n183_call_prolog_β:     mov              r11, 150;                            jmp   d$2F3_ω
                        .size            n183_call_prolog_bx, .-n183_call_prolog_bx
                        .type            n184_call_prolog_bx, @function
n184_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_call_prolog_α:     mov              r11, 151
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
                                                                              jmp   n185_lit_string_α
n184_call_prolog_β:     mov              r11, 151;                            jmp   d$2F3_ω
                        .size            n184_call_prolog_bx, .-n184_call_prolog_bx
                        .type            n185_lit_string_bx, @function
n185_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:      mov              r11, 152
                        mov              qword ptr [rbp + 4816], 2            # result
                        mov              dword ptr [rbp + 4820], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_530_0]
                        mov              qword ptr [rbp + 4824], rax;         jmp   n186_var_ref_α
.Llit_string_α_530_0:   .quad            .Llit_string_α_530_0_s
.Llit_string_α_530_0_s: .string          "^"
                        .size            n185_lit_string_bx, .-n185_lit_string_bx
                        .type            n186_var_ref_bx, @function
n186_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx;         jmp   n187_lit_integer_α
                        .size            n186_var_ref_bx, .-n186_var_ref_bx
                        .type            n187_lit_integer_bx, @function
n187_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:     mov              r11, 154
                        mov              qword ptr [rbp + 4720], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_533_0]
                        mov              qword ptr [rbp + 4728], rax;         jmp   n188_call_prolog_α
.Llit_integer_α_533_0:  .quad            2
                        .size            n187_lit_integer_bx, .-n187_lit_integer_bx
                        .type            n188_call_prolog_bx, @function
n188_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_call_prolog_α:     mov              r11, 155
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
                                                                              jmp   n189_call_prolog_α
n188_call_prolog_β:     mov              r11, 155;                            jmp   d$2F3_ω
                        .size            n188_call_prolog_bx, .-n188_call_prolog_bx
                        .type            n189_call_prolog_bx, @function
n189_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_call_prolog_α:     mov              r11, 156
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
                        cmp              al, 104;                             je    n201_call_prolog_α
                                                                              jmp   n190_call_prolog_α
n189_call_prolog_β:     mov              r11, 156;                            jmp   n201_call_prolog_α
                        .size            n189_call_prolog_bx, .-n189_call_prolog_bx
                        .type            n190_call_prolog_bx, @function
n190_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_call_prolog_α:     mov              r11, 157
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
.Lcall_prolog_α_536_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_536_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_536_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_536_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_536_40
.Lcall_prolog_α_536_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_536_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_536_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_536_40
.Lcall_prolog_α_536_56: cmp              al, 72;                              jne   .Lcall_prolog_α_536_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_536_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_536_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_536_40
.Lcall_prolog_α_536_41: lea              r9, [rbp + 4320]
.Lcall_prolog_α_536_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_536_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_536_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_536_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_536_42
.Lcall_prolog_α_536_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_536_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_536_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_536_42
.Lcall_prolog_α_536_58: cmp              al, 72;                              jne   .Lcall_prolog_α_536_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_536_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_536_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_536_42
.Lcall_prolog_α_536_43: cmp              r8, r9;                              je    .Lcall_prolog_α_536_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_536_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_536_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_536_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_536_44
                                                                              jmp   .Lcall_prolog_α_536_45
.Lcall_prolog_α_536_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_536_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_536_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_536_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_536_53
                                                                              jmp   .Lcall_prolog_α_536_46
.Lcall_prolog_α_536_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_536_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_536_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_536_51
.Lcall_prolog_α_536_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_536_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_536_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_536_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_536_47
                                                                              jmp   .Lcall_prolog_α_536_48
.Lcall_prolog_α_536_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_536_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_536_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_536_51
.Lcall_prolog_α_536_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_536_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_536_53
                                                                              jmp   .Lcall_prolog_α_536_52
.Lcall_prolog_α_536_49: cmp              dl, 80;                              je    .Lcall_prolog_α_536_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_536_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_536_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_536_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_536_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_536_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_536_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_536_51
                                                                              jmp   .Lcall_prolog_α_536_52
.Lcall_prolog_α_536_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_536_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_536_53
.Lcall_prolog_α_536_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_536_54
.Lcall_prolog_α_536_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_536_54
.Lcall_prolog_α_536_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_536_54: mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              al, 104;                             je    n201_call_prolog_α
                                                                              jmp   n191_cut_α
n190_call_prolog_β:     mov              r11, 157;                            jmp   n201_call_prolog_α
                        .size            n190_call_prolog_bx, .-n190_call_prolog_bx
                        .type            n191_cut_bx, @function
n191_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_cut_α:             mov              r11, 158;                            jmp   n192_var_ref_α
                        .size            n191_cut_bx, .-n191_cut_bx
                        .type            n192_var_ref_bx, @function
n192_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx;         jmp   n193_var_ref_α
                        .size            n192_var_ref_bx, .-n192_var_ref_bx
                        .type            n193_var_ref_bx, @function
n193_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:         mov              r11, 160
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx;         jmp   n194_var_ref_α
                        .size            n193_var_ref_bx, .-n193_var_ref_bx
                        .type            n194_var_ref_bx, @function
n194_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:         mov              r11, 161
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx;         jmp   n195_call_proc_staged_α
                        .size            n194_var_ref_bx, .-n194_var_ref_bx
                        .type            n195_call_proc_staged_bx, @function
n195_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_call_proc_staged_α:
                        mov              r11, 162
                        lea              rsi, [rbp + 4240]
                        lea              rdx, [rbp + 4256]
                        lea              rcx, [rbp + 4272]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_545_2
.Lcall_proc_staged_α_545_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_545_29
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
.Lcall_proc_staged_α_545_29:
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              al, 104;                             je    n340_call_prolog_α
                                                                              jmp   n196_var_ref_α
n195_call_proc_staged_β:
                        mov              r11, 162;                            jmp   n340_call_prolog_α
.Lcall_proc_staged_β_545_0:
                        .quad            .Lcall_proc_staged_β_545_0_s
.Lcall_proc_staged_β_545_0_s:
                        .string          "d/3"
                        .size            n195_call_proc_staged_bx, .-n195_call_proc_staged_bx
                        .type            n196_var_ref_bx, @function
n196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx;         jmp   n197_var_ref_α
                        .size            n196_var_ref_bx, .-n196_var_ref_bx
                        .type            n197_var_ref_bx, @function
n197_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:         mov              r11, 164
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx;         jmp   n198_var_ref_α
                        .size            n197_var_ref_bx, .-n197_var_ref_bx
                        .type            n198_var_ref_bx, @function
n198_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx;         jmp   n199_call_proc_staged_α
                        .size            n198_var_ref_bx, .-n198_var_ref_bx
                        .type            n199_call_proc_staged_bx, @function
n199_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_call_proc_staged_α:
                        mov              r11, 166
                        lea              rsi, [rbp + 4112]
                        lea              rdx, [rbp + 4128]
                        lea              rcx, [rbp + 4144]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_553_2
.Lcall_proc_staged_α_553_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_553_29
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
.Lcall_proc_staged_α_553_29:
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        cmp              al, 104;                             je    n195_call_proc_staged_β
                                                                              jmp   n200_move_label_α
n199_call_proc_staged_β:
                        mov              r11, 166;                            jmp   n195_call_proc_staged_β
.Lcall_proc_staged_β_553_0:
                        .quad            .Lcall_proc_staged_β_553_0_s
.Lcall_proc_staged_β_553_0_s:
                        .string          "d/3"
                        .size            n199_call_proc_staged_bx, .-n199_call_proc_staged_bx
                        .type            n200_move_label_bx, @function
n200_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_move_label_α:      mov              r11, 167
                        lea              rax, [rip + n199_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n200_move_label_bx, .-n200_move_label_bx
                        .type            n201_call_prolog_bx, @function
n201_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_call_prolog_α:     mov              r11, 168
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
                                                                              jmp   n202_var_ref_α
n201_call_prolog_β:     mov              r11, 168;                            jmp   d$2F3_ω
                        .size            n201_call_prolog_bx, .-n201_call_prolog_bx
                        .type            n202_var_ref_bx, @function
n202_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:         mov              r11, 169
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx;         jmp   n203_lit_integer_α
                        .size            n202_var_ref_bx, .-n202_var_ref_bx
                        .type            n203_lit_integer_bx, @function
n203_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:     mov              r11, 170
                        mov              qword ptr [rbp + 3968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_559_0]
                        mov              qword ptr [rbp + 3976], rax;         jmp   n204_lit_string_α
.Llit_integer_α_559_0:  .quad            516
                        .size            n203_lit_integer_bx, .-n203_lit_integer_bx
                        .type            n204_lit_string_bx, @function
n204_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:      mov              r11, 171
                        mov              qword ptr [rbp + 3984], 2            # result
                        mov              dword ptr [rbp + 3988], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_560_0]
                        mov              qword ptr [rbp + 3992], rax;         jmp   n205_call_prolog_α
.Llit_string_α_560_0:   .quad            .Llit_string_α_560_0_s
.Llit_string_α_560_0_s: .string          "^"
                        .size            n204_lit_string_bx, .-n204_lit_string_bx
                        .type            n205_call_prolog_bx, @function
n205_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_call_prolog_α:     mov              r11, 172
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
                        cmp              al, 104;                             je    n241_var_ref_α
                                                                              jmp   n206_var_ref_α
n205_call_prolog_β:     mov              r11, 172;                            jmp   n241_var_ref_α
                        .size            n205_call_prolog_bx, .-n205_call_prolog_bx
                        .type            n206_var_ref_bx, @function
n206_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx;         jmp   n207_lit_string_α
                        .size            n206_var_ref_bx, .-n206_var_ref_bx
                        .type            n207_lit_string_bx, @function
n207_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      mov              r11, 174
                        mov              qword ptr [rbp + 3872], 2            # result
                        mov              dword ptr [rbp + 3876], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_564_0]
                        mov              qword ptr [rbp + 3880], rax;         jmp   n208_var_ref_α
.Llit_string_α_564_0:   .quad            .Llit_string_α_564_0_s
.Llit_string_α_564_0_s: .string          "^"
                        .size            n207_lit_string_bx, .-n207_lit_string_bx
                        .type            n208_var_ref_bx, @function
n208_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              r11, 175
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx;         jmp   n209_var_ref_α
                        .size            n208_var_ref_bx, .-n208_var_ref_bx
                        .type            n209_var_ref_bx, @function
n209_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 176
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx;         jmp   n210_call_prolog_α
                        .size            n209_var_ref_bx, .-n209_var_ref_bx
                        .type            n210_call_prolog_bx, @function
n210_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_call_prolog_α:     mov              r11, 177
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
                        cmp              al, 104;                             je    n240_call_prolog_α
                                                                              jmp   n211_call_prolog_α
n210_call_prolog_β:     mov              r11, 177;                            jmp   n240_call_prolog_α
                        .size            n210_call_prolog_bx, .-n210_call_prolog_bx
                        .type            n211_call_prolog_bx, @function
n211_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_call_prolog_α:     mov              r11, 178
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
.Lcall_prolog_α_570_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_570_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_570_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_570_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_570_40
.Lcall_prolog_α_570_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_570_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_570_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_570_40
.Lcall_prolog_α_570_56: cmp              al, 72;                              jne   .Lcall_prolog_α_570_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_570_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_570_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_570_40
.Lcall_prolog_α_570_41: lea              r9, [rbp + 3728]
.Lcall_prolog_α_570_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_570_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_570_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_570_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_570_42
.Lcall_prolog_α_570_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_570_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_570_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_570_42
.Lcall_prolog_α_570_58: cmp              al, 72;                              jne   .Lcall_prolog_α_570_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_570_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_570_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_570_42
.Lcall_prolog_α_570_43: cmp              r8, r9;                              je    .Lcall_prolog_α_570_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_570_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_570_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_570_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_570_44
                                                                              jmp   .Lcall_prolog_α_570_45
.Lcall_prolog_α_570_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_570_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_570_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_570_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_570_53
                                                                              jmp   .Lcall_prolog_α_570_46
.Lcall_prolog_α_570_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_570_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_570_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_570_51
.Lcall_prolog_α_570_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_570_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_570_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_570_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_570_47
                                                                              jmp   .Lcall_prolog_α_570_48
.Lcall_prolog_α_570_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_570_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_570_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_570_51
.Lcall_prolog_α_570_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_570_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_570_53
                                                                              jmp   .Lcall_prolog_α_570_52
.Lcall_prolog_α_570_49: cmp              dl, 80;                              je    .Lcall_prolog_α_570_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_570_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_570_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_570_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_570_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_570_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_570_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_570_51
                                                                              jmp   .Lcall_prolog_α_570_52
.Lcall_prolog_α_570_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_570_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_570_53
.Lcall_prolog_α_570_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_570_54
.Lcall_prolog_α_570_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_570_54
.Lcall_prolog_α_570_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_570_54: mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              al, 104;                             je    n240_call_prolog_α
                                                                              jmp   n212_var_ref_α
n211_call_prolog_β:     mov              r11, 178;                            jmp   n240_call_prolog_α
                        .size            n211_call_prolog_bx, .-n211_call_prolog_bx
                        .type            n212_var_ref_bx, @function
n212_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx;         jmp   n213_var_ref_α
                        .size            n212_var_ref_bx, .-n212_var_ref_bx
                        .type            n213_var_ref_bx, @function
n213_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:         mov              r11, 180
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx;         jmp   n214_call_prolog_α
                        .size            n213_var_ref_bx, .-n213_var_ref_bx
                        .type            n214_call_prolog_bx, @function
n214_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_call_prolog_α:     mov              r11, 181
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
.Lcall_prolog_α_575_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_575_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_575_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_575_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_575_40
.Lcall_prolog_α_575_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_575_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_575_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_575_40
.Lcall_prolog_α_575_56: cmp              al, 72;                              jne   .Lcall_prolog_α_575_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_575_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_575_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_575_40
.Lcall_prolog_α_575_41: lea              r9, [rbp + 3648]
.Lcall_prolog_α_575_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_575_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_575_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_575_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_575_42
.Lcall_prolog_α_575_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_575_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_575_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_575_42
.Lcall_prolog_α_575_58: cmp              al, 72;                              jne   .Lcall_prolog_α_575_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_575_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_575_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_575_42
.Lcall_prolog_α_575_43: cmp              r8, r9;                              je    .Lcall_prolog_α_575_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_575_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_575_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_575_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_575_44
                                                                              jmp   .Lcall_prolog_α_575_45
.Lcall_prolog_α_575_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_575_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_575_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_575_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_575_53
                                                                              jmp   .Lcall_prolog_α_575_46
.Lcall_prolog_α_575_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_575_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_575_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_575_51
.Lcall_prolog_α_575_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_575_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_575_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_575_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_575_47
                                                                              jmp   .Lcall_prolog_α_575_48
.Lcall_prolog_α_575_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_575_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_575_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_575_51
.Lcall_prolog_α_575_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_575_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_575_53
                                                                              jmp   .Lcall_prolog_α_575_52
.Lcall_prolog_α_575_49: cmp              dl, 80;                              je    .Lcall_prolog_α_575_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_575_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_575_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_575_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_575_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_575_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_575_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_575_51
                                                                              jmp   .Lcall_prolog_α_575_52
.Lcall_prolog_α_575_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_575_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_575_53
.Lcall_prolog_α_575_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_575_54
.Lcall_prolog_α_575_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_575_54
.Lcall_prolog_α_575_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_575_54: mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              al, 104;                             je    n240_call_prolog_α
                                                                              jmp   n215_var_ref_α
n214_call_prolog_β:     mov              r11, 181;                            jmp   n240_call_prolog_α
                        .size            n214_call_prolog_bx, .-n214_call_prolog_bx
                        .type            n215_var_ref_bx, @function
n215_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:         mov              r11, 182
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx;         jmp   n216_lit_string_α
                        .size            n215_var_ref_bx, .-n215_var_ref_bx
                        .type            n216_lit_string_bx, @function
n216_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:      mov              r11, 183
                        mov              qword ptr [rbp + 3600], 2            # result
                        mov              dword ptr [rbp + 3604], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_578_0]
                        mov              qword ptr [rbp + 3608], rax;         jmp   n217_lit_string_α
.Llit_string_α_578_0:   .quad            .Llit_string_α_578_0_s
.Llit_string_α_578_0_s: .string          "*"
                        .size            n216_lit_string_bx, .-n216_lit_string_bx
                        .type            n217_lit_string_bx, @function
n217_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:      mov              r11, 184
                        mov              qword ptr [rbp + 3376], 2            # result
                        mov              dword ptr [rbp + 3380], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_579_0]
                        mov              qword ptr [rbp + 3384], rax;         jmp   n218_var_ref_α
.Llit_string_α_579_0:   .quad            .Llit_string_α_579_0_s
.Llit_string_α_579_0_s: .string          "*"
                        .size            n217_lit_string_bx, .-n217_lit_string_bx
                        .type            n218_var_ref_bx, @function
n218_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx;         jmp   n219_var_ref_α
                        .size            n218_var_ref_bx, .-n218_var_ref_bx
                        .type            n219_var_ref_bx, @function
n219_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx;         jmp   n220_call_prolog_α
                        .size            n219_var_ref_bx, .-n219_var_ref_bx
                        .type            n220_call_prolog_bx, @function
n220_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_call_prolog_α:     mov              r11, 187
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
                                                                              jmp   n221_lit_string_α
n220_call_prolog_β:     mov              r11, 187;                            jmp   d$2F3_ω
                        .size            n220_call_prolog_bx, .-n220_call_prolog_bx
                        .type            n221_lit_string_bx, @function
n221_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:      mov              r11, 188
                        mov              qword ptr [rbp + 3504], 2            # result
                        mov              dword ptr [rbp + 3508], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_585_0]
                        mov              qword ptr [rbp + 3512], rax;         jmp   n222_var_ref_α
.Llit_string_α_585_0:   .quad            .Llit_string_α_585_0_s
.Llit_string_α_585_0_s: .string          "^"
                        .size            n221_lit_string_bx, .-n221_lit_string_bx
                        .type            n222_var_ref_bx, @function
n222_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx;         jmp   n223_var_ref_α
                        .size            n222_var_ref_bx, .-n222_var_ref_bx
                        .type            n223_var_ref_bx, @function
n223_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:         mov              r11, 190
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx;         jmp   n224_call_prolog_α
                        .size            n223_var_ref_bx, .-n223_var_ref_bx
                        .type            n224_call_prolog_bx, @function
n224_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_call_prolog_α:     mov              r11, 191
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
                                                                              jmp   n225_call_prolog_α
n224_call_prolog_β:     mov              r11, 191;                            jmp   d$2F3_ω
                        .size            n224_call_prolog_bx, .-n224_call_prolog_bx
                        .type            n225_call_prolog_bx, @function
n225_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_call_prolog_α:     mov              r11, 192
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
                        cmp              al, 104;                             je    n240_call_prolog_α
                                                                              jmp   n226_call_prolog_α
n225_call_prolog_β:     mov              r11, 192;                            jmp   n240_call_prolog_α
                        .size            n225_call_prolog_bx, .-n225_call_prolog_bx
                        .type            n226_call_prolog_bx, @function
n226_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_call_prolog_α:     mov              r11, 193
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
.Lcall_prolog_α_592_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_592_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_592_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_592_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_592_40
.Lcall_prolog_α_592_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_592_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_592_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_592_40
.Lcall_prolog_α_592_56: cmp              al, 72;                              jne   .Lcall_prolog_α_592_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_592_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_592_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_592_40
.Lcall_prolog_α_592_41: lea              r9, [rbp + 3232]
.Lcall_prolog_α_592_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_592_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_592_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_592_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_592_42
.Lcall_prolog_α_592_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_592_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_592_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_592_42
.Lcall_prolog_α_592_58: cmp              al, 72;                              jne   .Lcall_prolog_α_592_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_592_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_592_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_592_42
.Lcall_prolog_α_592_43: cmp              r8, r9;                              je    .Lcall_prolog_α_592_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_592_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_592_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_592_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_592_44
                                                                              jmp   .Lcall_prolog_α_592_45
.Lcall_prolog_α_592_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_592_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_592_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_592_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_592_53
                                                                              jmp   .Lcall_prolog_α_592_46
.Lcall_prolog_α_592_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_592_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_592_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_592_51
.Lcall_prolog_α_592_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_592_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_592_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_592_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_592_47
                                                                              jmp   .Lcall_prolog_α_592_48
.Lcall_prolog_α_592_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_592_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_592_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_592_51
.Lcall_prolog_α_592_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_592_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_592_53
                                                                              jmp   .Lcall_prolog_α_592_52
.Lcall_prolog_α_592_49: cmp              dl, 80;                              je    .Lcall_prolog_α_592_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_592_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_592_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_592_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_592_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_592_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_592_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_592_51
                                                                              jmp   .Lcall_prolog_α_592_52
.Lcall_prolog_α_592_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_592_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_592_53
.Lcall_prolog_α_592_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_592_54
.Lcall_prolog_α_592_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_592_54
.Lcall_prolog_α_592_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_592_54: mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              al, 104;                             je    n240_call_prolog_α
                                                                              jmp   n227_cut_α
n226_call_prolog_β:     mov              r11, 193;                            jmp   n240_call_prolog_α
                        .size            n226_call_prolog_bx, .-n226_call_prolog_bx
                        .type            n227_cut_bx, @function
n227_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_cut_α:             mov              r11, 194;                            jmp   n228_var_ref_α
                        .size            n227_cut_bx, .-n227_cut_bx
                        .type            n228_var_ref_bx, @function
n228_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:         mov              r11, 195
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n229_call_prolog_α
                        .size            n228_var_ref_bx, .-n228_var_ref_bx
                        .type            n229_call_prolog_bx, @function
n229_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_call_prolog_α:     mov              r11, 196
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3176], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn597: .string          "$tt_integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn597]
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
                        cmp              al, 104;                             je    n340_call_prolog_α
                                                                              jmp   n230_var_ref_α
n229_call_prolog_β:     mov              r11, 196;                            jmp   n340_call_prolog_α
                        .size            n229_call_prolog_bx, .-n229_call_prolog_bx
                        .type            n230_var_ref_bx, @function
n230_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx;         jmp   n231_var_α
                        .size            n230_var_ref_bx, .-n230_var_ref_bx
                        .type            n231_var_bx, @function
n231_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             mov              r11, 198
                        mov              rax, qword ptr [rbp + 8128]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 8136]
                        mov              qword ptr [rbp + 3128], rax;         jmp   n232_lit_integer_α
                        .size            n231_var_bx, .-n231_var_bx
                        .type            n232_lit_integer_bx, @function
n232_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_integer_α:     mov              r11, 199
                        mov              qword ptr [rbp + 3136], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_602_0]
                        mov              qword ptr [rbp + 3144], rax;         jmp   n233_call_prolog_α
.Llit_integer_α_602_0:  .quad            1
                        .size            n232_lit_integer_bx, .-n232_lit_integer_bx
                        .type            n233_call_prolog_bx, @function
n233_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_call_prolog_α:     mov              r11, 200
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
                        cmp              al, 104;                             je    n340_call_prolog_α
                                                                              jmp   n234_call_prolog_α
n233_call_prolog_β:     mov              r11, 200;                            jmp   n340_call_prolog_α
                        .size            n233_call_prolog_bx, .-n233_call_prolog_bx
                        .type            n234_call_prolog_bx, @function
n234_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_call_prolog_α:     mov              r11, 201
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
                        cmp              al, 104;                             je    n340_call_prolog_α
                                                                              jmp   n235_var_ref_α
n234_call_prolog_β:     mov              r11, 201;                            jmp   n340_call_prolog_α
                        .size            n234_call_prolog_bx, .-n234_call_prolog_bx
                        .type            n235_var_ref_bx, @function
n235_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n236_var_ref_α
                        .size            n235_var_ref_bx, .-n235_var_ref_bx
                        .type            n236_var_ref_bx, @function
n236_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx;         jmp   n237_var_ref_α
                        .size            n236_var_ref_bx, .-n236_var_ref_bx
                        .type            n237_var_ref_bx, @function
n237_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:         mov              r11, 204
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx;         jmp   n238_call_proc_staged_α
                        .size            n237_var_ref_bx, .-n237_var_ref_bx
                        .type            n238_call_proc_staged_bx, @function
n238_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_call_proc_staged_α:
                        mov              r11, 205
                        lea              rsi, [rbp + 2944]
                        lea              rdx, [rbp + 2960]
                        lea              rcx, [rbp + 2976]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_612_2
.Lcall_proc_staged_α_612_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_612_29
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
.Lcall_proc_staged_α_612_29:
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              al, 104;                             je    n340_call_prolog_α
                                                                              jmp   n239_move_label_α
n238_call_proc_staged_β:
                        mov              r11, 205;                            jmp   n340_call_prolog_α
.Lcall_proc_staged_β_612_0:
                        .quad            .Lcall_proc_staged_β_612_0_s
.Lcall_proc_staged_β_612_0_s:
                        .string          "d/3"
                        .size            n238_call_proc_staged_bx, .-n238_call_proc_staged_bx
                        .type            n239_move_label_bx, @function
n239_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_move_label_α:      mov              r11, 206
                        lea              rax, [rip + n238_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n239_move_label_bx, .-n239_move_label_bx
                        .type            n240_call_prolog_bx, @function
n240_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_call_prolog_α:     mov              r11, 207
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
                                                                              jmp   n241_var_ref_α
n240_call_prolog_β:     mov              r11, 207;                            jmp   d$2F3_ω
                        .size            n240_call_prolog_bx, .-n240_call_prolog_bx
                        .type            n241_var_ref_bx, @function
n241_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:         mov              r11, 208
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n242_lit_integer_α
                        .size            n241_var_ref_bx, .-n241_var_ref_bx
                        .type            n242_lit_integer_bx, @function
n242_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:     mov              r11, 209
                        mov              qword ptr [rbp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_618_0]
                        mov              qword ptr [rbp + 2808], rax;         jmp   n243_lit_string_α
.Llit_integer_α_618_0:  .quad            260
                        .size            n242_lit_integer_bx, .-n242_lit_integer_bx
                        .type            n243_lit_string_bx, @function
n243_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:      mov              r11, 210
                        mov              qword ptr [rbp + 2816], 2            # result
                        mov              dword ptr [rbp + 2820], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_619_0]
                        mov              qword ptr [rbp + 2824], rax;         jmp   n244_call_prolog_α
.Llit_string_α_619_0:   .quad            .Llit_string_α_619_0_s
.Llit_string_α_619_0_s: .string          "-"
                        .size            n243_lit_string_bx, .-n243_lit_string_bx
                        .type            n244_call_prolog_bx, @function
n244_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_call_prolog_α:     mov              r11, 211
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
                        cmp              al, 104;                             je    n265_var_ref_α
                                                                              jmp   n245_var_ref_α
n244_call_prolog_β:     mov              r11, 211;                            jmp   n265_var_ref_α
                        .size            n244_call_prolog_bx, .-n244_call_prolog_bx
                        .type            n245_var_ref_bx, @function
n245_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx;         jmp   n246_lit_string_α
                        .size            n245_var_ref_bx, .-n245_var_ref_bx
                        .type            n246_lit_string_bx, @function
n246_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:      mov              r11, 213
                        mov              qword ptr [rbp + 2704], 2            # result
                        mov              dword ptr [rbp + 2708], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_623_0]
                        mov              qword ptr [rbp + 2712], rax;         jmp   n247_var_ref_α
.Llit_string_α_623_0:   .quad            .Llit_string_α_623_0_s
.Llit_string_α_623_0_s: .string          "-"
                        .size            n246_lit_string_bx, .-n246_lit_string_bx
                        .type            n247_var_ref_bx, @function
n247_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:         mov              r11, 214
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx;         jmp   n248_call_prolog_α
                        .size            n247_var_ref_bx, .-n247_var_ref_bx
                        .type            n248_call_prolog_bx, @function
n248_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_call_prolog_α:     mov              r11, 215
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
                        cmp              al, 104;                             je    n264_call_prolog_α
                                                                              jmp   n249_call_prolog_α
n248_call_prolog_β:     mov              r11, 215;                            jmp   n264_call_prolog_α
                        .size            n248_call_prolog_bx, .-n248_call_prolog_bx
                        .type            n249_call_prolog_bx, @function
n249_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_call_prolog_α:     mov              r11, 216
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
.Lcall_prolog_α_627_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_627_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_627_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_627_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_627_40
.Lcall_prolog_α_627_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_627_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_627_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_627_40
.Lcall_prolog_α_627_56: cmp              al, 72;                              jne   .Lcall_prolog_α_627_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_627_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_627_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_627_40
.Lcall_prolog_α_627_41: lea              r9, [rbp + 2592]
.Lcall_prolog_α_627_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_627_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_627_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_627_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_627_42
.Lcall_prolog_α_627_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_627_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_627_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_627_42
.Lcall_prolog_α_627_58: cmp              al, 72;                              jne   .Lcall_prolog_α_627_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_627_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_627_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_627_42
.Lcall_prolog_α_627_43: cmp              r8, r9;                              je    .Lcall_prolog_α_627_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_627_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_627_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_627_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_627_44
                                                                              jmp   .Lcall_prolog_α_627_45
.Lcall_prolog_α_627_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_627_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_627_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_627_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_627_53
                                                                              jmp   .Lcall_prolog_α_627_46
.Lcall_prolog_α_627_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_627_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_627_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_627_51
.Lcall_prolog_α_627_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_627_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_627_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_627_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_627_47
                                                                              jmp   .Lcall_prolog_α_627_48
.Lcall_prolog_α_627_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_627_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_627_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_627_51
.Lcall_prolog_α_627_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_627_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_627_53
                                                                              jmp   .Lcall_prolog_α_627_52
.Lcall_prolog_α_627_49: cmp              dl, 80;                              je    .Lcall_prolog_α_627_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_627_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_627_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_627_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_627_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_627_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_627_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_627_51
                                                                              jmp   .Lcall_prolog_α_627_52
.Lcall_prolog_α_627_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_627_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_627_53
.Lcall_prolog_α_627_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_627_54
.Lcall_prolog_α_627_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_627_54
.Lcall_prolog_α_627_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_627_54: mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              al, 104;                             je    n264_call_prolog_α
                                                                              jmp   n250_var_ref_α
n249_call_prolog_β:     mov              r11, 216;                            jmp   n264_call_prolog_α
                        .size            n249_call_prolog_bx, .-n249_call_prolog_bx
                        .type            n250_var_ref_bx, @function
n250_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:         mov              r11, 217
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx;         jmp   n251_var_ref_α
                        .size            n250_var_ref_bx, .-n250_var_ref_bx
                        .type            n251_var_ref_bx, @function
n251_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n252_call_prolog_α
                        .size            n251_var_ref_bx, .-n251_var_ref_bx
                        .type            n252_call_prolog_bx, @function
n252_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_call_prolog_α:     mov              r11, 219
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
.Lcall_prolog_α_632_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_632_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_632_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_632_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_632_40
.Lcall_prolog_α_632_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_632_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_632_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_632_40
.Lcall_prolog_α_632_56: cmp              al, 72;                              jne   .Lcall_prolog_α_632_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_632_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_632_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_632_40
.Lcall_prolog_α_632_41: lea              r9, [rbp + 2512]
.Lcall_prolog_α_632_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_632_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_632_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_632_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_632_42
.Lcall_prolog_α_632_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_632_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_632_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_632_42
.Lcall_prolog_α_632_58: cmp              al, 72;                              jne   .Lcall_prolog_α_632_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_632_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_632_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_632_42
.Lcall_prolog_α_632_43: cmp              r8, r9;                              je    .Lcall_prolog_α_632_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_632_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_632_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_632_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_632_44
                                                                              jmp   .Lcall_prolog_α_632_45
.Lcall_prolog_α_632_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_632_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_632_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_632_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_632_53
                                                                              jmp   .Lcall_prolog_α_632_46
.Lcall_prolog_α_632_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_632_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_632_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_632_51
.Lcall_prolog_α_632_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_632_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_632_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_632_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_632_47
                                                                              jmp   .Lcall_prolog_α_632_48
.Lcall_prolog_α_632_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_632_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_632_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_632_51
.Lcall_prolog_α_632_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_632_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_632_53
                                                                              jmp   .Lcall_prolog_α_632_52
.Lcall_prolog_α_632_49: cmp              dl, 80;                              je    .Lcall_prolog_α_632_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_632_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_632_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_632_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_632_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_632_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_632_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_632_51
                                                                              jmp   .Lcall_prolog_α_632_52
.Lcall_prolog_α_632_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_632_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_632_53
.Lcall_prolog_α_632_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_632_54
.Lcall_prolog_α_632_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_632_54
.Lcall_prolog_α_632_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_632_54: mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    n264_call_prolog_α
                                                                              jmp   n253_var_ref_α
n252_call_prolog_β:     mov              r11, 219;                            jmp   n264_call_prolog_α
                        .size            n252_call_prolog_bx, .-n252_call_prolog_bx
                        .type            n253_var_ref_bx, @function
n253_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx;         jmp   n254_lit_string_α
                        .size            n253_var_ref_bx, .-n253_var_ref_bx
                        .type            n254_lit_string_bx, @function
n254_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_string_α:      mov              r11, 221
                        mov              qword ptr [rbp + 2464], 2            # result
                        mov              dword ptr [rbp + 2468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_635_0]
                        mov              qword ptr [rbp + 2472], rax;         jmp   n255_var_ref_α
.Llit_string_α_635_0:   .quad            .Llit_string_α_635_0_s
.Llit_string_α_635_0_s: .string          "-"
                        .size            n254_lit_string_bx, .-n254_lit_string_bx
                        .type            n255_var_ref_bx, @function
n255_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n256_call_prolog_α
                        .size            n255_var_ref_bx, .-n255_var_ref_bx
                        .type            n256_call_prolog_bx, @function
n256_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_call_prolog_α:     mov              r11, 223
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
                        cmp              al, 104;                             je    n264_call_prolog_α
                                                                              jmp   n257_call_prolog_α
n256_call_prolog_β:     mov              r11, 223;                            jmp   n264_call_prolog_α
                        .size            n256_call_prolog_bx, .-n256_call_prolog_bx
                        .type            n257_call_prolog_bx, @function
n257_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_call_prolog_α:     mov              r11, 224
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
.Lcall_prolog_α_639_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_639_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_639_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_639_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_639_40
.Lcall_prolog_α_639_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_639_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_639_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_639_40
.Lcall_prolog_α_639_56: cmp              al, 72;                              jne   .Lcall_prolog_α_639_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_639_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_639_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_639_40
.Lcall_prolog_α_639_41: lea              r9, [rbp + 2352]
.Lcall_prolog_α_639_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_639_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_639_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_639_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_639_42
.Lcall_prolog_α_639_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_639_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_639_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_639_42
.Lcall_prolog_α_639_58: cmp              al, 72;                              jne   .Lcall_prolog_α_639_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_639_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_639_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_639_42
.Lcall_prolog_α_639_43: cmp              r8, r9;                              je    .Lcall_prolog_α_639_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_639_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_639_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_639_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_639_44
                                                                              jmp   .Lcall_prolog_α_639_45
.Lcall_prolog_α_639_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_639_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_639_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_639_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_639_53
                                                                              jmp   .Lcall_prolog_α_639_46
.Lcall_prolog_α_639_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_639_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_639_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_639_51
.Lcall_prolog_α_639_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_639_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_639_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_639_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_639_47
                                                                              jmp   .Lcall_prolog_α_639_48
.Lcall_prolog_α_639_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_639_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_639_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_639_51
.Lcall_prolog_α_639_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_639_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_639_53
                                                                              jmp   .Lcall_prolog_α_639_52
.Lcall_prolog_α_639_49: cmp              dl, 80;                              je    .Lcall_prolog_α_639_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_639_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_639_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_639_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_639_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_639_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_639_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_639_51
                                                                              jmp   .Lcall_prolog_α_639_52
.Lcall_prolog_α_639_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_639_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_639_53
.Lcall_prolog_α_639_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_639_54
.Lcall_prolog_α_639_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_639_54
.Lcall_prolog_α_639_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_639_54: mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              al, 104;                             je    n264_call_prolog_α
                                                                              jmp   n258_cut_α
n257_call_prolog_β:     mov              r11, 224;                            jmp   n264_call_prolog_α
                        .size            n257_call_prolog_bx, .-n257_call_prolog_bx
                        .type            n258_cut_bx, @function
n258_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_cut_α:             mov              r11, 225;                            jmp   n259_var_ref_α
                        .size            n258_cut_bx, .-n258_cut_bx
                        .type            n259_var_ref_bx, @function
n259_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n260_var_ref_α
                        .size            n259_var_ref_bx, .-n259_var_ref_bx
                        .type            n260_var_ref_bx, @function
n260_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx;         jmp   n261_var_ref_α
                        .size            n260_var_ref_bx, .-n260_var_ref_bx
                        .type            n261_var_ref_bx, @function
n261_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n262_call_proc_staged_α
                        .size            n261_var_ref_bx, .-n261_var_ref_bx
                        .type            n262_call_proc_staged_bx, @function
n262_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_call_proc_staged_α:
                        mov              r11, 229
                        lea              rsi, [rbp + 2272]
                        lea              rdx, [rbp + 2288]
                        lea              rcx, [rbp + 2304]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_648_2
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
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
.Lcall_proc_staged_α_648_29:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              al, 104;                             je    n340_call_prolog_α
                                                                              jmp   n263_move_label_α
n262_call_proc_staged_β:
                        mov              r11, 229;                            jmp   n340_call_prolog_α
.Lcall_proc_staged_β_648_0:
                        .quad            .Lcall_proc_staged_β_648_0_s
.Lcall_proc_staged_β_648_0_s:
                        .string          "d/3"
                        .size            n262_call_proc_staged_bx, .-n262_call_proc_staged_bx
                        .type            n263_move_label_bx, @function
n263_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_move_label_α:      mov              r11, 230
                        lea              rax, [rip + n262_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n263_move_label_bx, .-n263_move_label_bx
                        .type            n264_call_prolog_bx, @function
n264_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_call_prolog_α:     mov              r11, 231
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
                                                                              jmp   n265_var_ref_α
n264_call_prolog_β:     mov              r11, 231;                            jmp   d$2F3_ω
                        .size            n264_call_prolog_bx, .-n264_call_prolog_bx
                        .type            n265_var_ref_bx, @function
n265_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_var_ref_α:         mov              r11, 232
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx;         jmp   n266_lit_integer_α
                        .size            n265_var_ref_bx, .-n265_var_ref_bx
                        .type            n266_lit_integer_bx, @function
n266_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_integer_α:     mov              r11, 233
                        mov              qword ptr [rbp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_654_0]
                        mov              qword ptr [rbp + 2136], rax;         jmp   n267_lit_string_α
.Llit_integer_α_654_0:  .quad            260
                        .size            n266_lit_integer_bx, .-n266_lit_integer_bx
                        .type            n267_lit_string_bx, @function
n267_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:      mov              r11, 234
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_655_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n268_call_prolog_α
.Llit_string_α_655_0:   .quad            .Llit_string_α_655_0_s
.Llit_string_α_655_0_s: .string          "exp"
                        .size            n267_lit_string_bx, .-n267_lit_string_bx
                        .type            n268_call_prolog_bx, @function
n268_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_call_prolog_α:     mov              r11, 235
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
                        cmp              al, 104;                             je    n292_var_ref_α
                                                                              jmp   n269_var_ref_α
n268_call_prolog_β:     mov              r11, 235;                            jmp   n292_var_ref_α
                        .size            n268_call_prolog_bx, .-n268_call_prolog_bx
                        .type            n269_var_ref_bx, @function
n269_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:         mov              r11, 236
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n270_lit_string_α
                        .size            n269_var_ref_bx, .-n269_var_ref_bx
                        .type            n270_lit_string_bx, @function
n270_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:      mov              r11, 237
                        mov              qword ptr [rbp + 2032], 2            # result
                        mov              dword ptr [rbp + 2036], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_659_0]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n271_var_ref_α
.Llit_string_α_659_0:   .quad            .Llit_string_α_659_0_s
.Llit_string_α_659_0_s: .string          "exp"
                        .size            n270_lit_string_bx, .-n270_lit_string_bx
                        .type            n271_var_ref_bx, @function
n271_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              r11, 238
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n272_call_prolog_α
                        .size            n271_var_ref_bx, .-n271_var_ref_bx
                        .type            n272_call_prolog_bx, @function
n272_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_call_prolog_α:     mov              r11, 239
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
                        cmp              al, 104;                             je    n291_call_prolog_α
                                                                              jmp   n273_call_prolog_α
n272_call_prolog_β:     mov              r11, 239;                            jmp   n291_call_prolog_α
                        .size            n272_call_prolog_bx, .-n272_call_prolog_bx
                        .type            n273_call_prolog_bx, @function
n273_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_call_prolog_α:     mov              r11, 240
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
.Lcall_prolog_α_663_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_663_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_663_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_663_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_663_40
.Lcall_prolog_α_663_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_663_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_663_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_663_40
.Lcall_prolog_α_663_56: cmp              al, 72;                              jne   .Lcall_prolog_α_663_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_663_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_663_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_663_40
.Lcall_prolog_α_663_41: lea              r9, [rbp + 1920]
.Lcall_prolog_α_663_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_663_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_663_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_663_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_663_42
.Lcall_prolog_α_663_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_663_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_663_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_663_42
.Lcall_prolog_α_663_58: cmp              al, 72;                              jne   .Lcall_prolog_α_663_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_663_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_663_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_663_42
.Lcall_prolog_α_663_43: cmp              r8, r9;                              je    .Lcall_prolog_α_663_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_663_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_663_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_663_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_663_44
                                                                              jmp   .Lcall_prolog_α_663_45
.Lcall_prolog_α_663_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_663_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_663_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_663_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_663_53
                                                                              jmp   .Lcall_prolog_α_663_46
.Lcall_prolog_α_663_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_663_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_663_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_663_51
.Lcall_prolog_α_663_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_663_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_663_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_663_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_663_47
                                                                              jmp   .Lcall_prolog_α_663_48
.Lcall_prolog_α_663_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_663_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_663_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_663_51
.Lcall_prolog_α_663_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_663_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_663_53
                                                                              jmp   .Lcall_prolog_α_663_52
.Lcall_prolog_α_663_49: cmp              dl, 80;                              je    .Lcall_prolog_α_663_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_663_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_663_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_663_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_663_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_663_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_663_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_663_51
                                                                              jmp   .Lcall_prolog_α_663_52
.Lcall_prolog_α_663_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_663_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_663_53
.Lcall_prolog_α_663_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_663_54
.Lcall_prolog_α_663_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_663_54
.Lcall_prolog_α_663_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_663_54: mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    n291_call_prolog_α
                                                                              jmp   n274_var_ref_α
n273_call_prolog_β:     mov              r11, 240;                            jmp   n291_call_prolog_α
                        .size            n273_call_prolog_bx, .-n273_call_prolog_bx
                        .type            n274_var_ref_bx, @function
n274_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:         mov              r11, 241
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n275_var_ref_α
                        .size            n274_var_ref_bx, .-n274_var_ref_bx
                        .type            n275_var_ref_bx, @function
n275_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_var_ref_α:         mov              r11, 242
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx;         jmp   n276_call_prolog_α
                        .size            n275_var_ref_bx, .-n275_var_ref_bx
                        .type            n276_call_prolog_bx, @function
n276_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_call_prolog_α:     mov              r11, 243
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
.Lcall_prolog_α_668_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_668_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_668_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_668_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_668_40
.Lcall_prolog_α_668_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_668_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_668_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_668_40
.Lcall_prolog_α_668_56: cmp              al, 72;                              jne   .Lcall_prolog_α_668_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_668_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_668_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_668_40
.Lcall_prolog_α_668_41: lea              r9, [rbp + 1840]
.Lcall_prolog_α_668_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_668_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_668_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_668_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_668_42
.Lcall_prolog_α_668_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_668_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_668_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_668_42
.Lcall_prolog_α_668_58: cmp              al, 72;                              jne   .Lcall_prolog_α_668_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_668_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_668_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_668_42
.Lcall_prolog_α_668_43: cmp              r8, r9;                              je    .Lcall_prolog_α_668_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_668_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_668_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_668_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_668_44
                                                                              jmp   .Lcall_prolog_α_668_45
.Lcall_prolog_α_668_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_668_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_668_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_668_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_668_53
                                                                              jmp   .Lcall_prolog_α_668_46
.Lcall_prolog_α_668_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_668_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_668_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_668_51
.Lcall_prolog_α_668_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_668_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_668_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_668_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_668_47
                                                                              jmp   .Lcall_prolog_α_668_48
.Lcall_prolog_α_668_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_668_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_668_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_668_51
.Lcall_prolog_α_668_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_668_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_668_53
                                                                              jmp   .Lcall_prolog_α_668_52
.Lcall_prolog_α_668_49: cmp              dl, 80;                              je    .Lcall_prolog_α_668_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_668_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_668_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_668_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_668_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_668_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_668_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_668_51
                                                                              jmp   .Lcall_prolog_α_668_52
.Lcall_prolog_α_668_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_668_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_668_53
.Lcall_prolog_α_668_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_668_54
.Lcall_prolog_α_668_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_668_54
.Lcall_prolog_α_668_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_668_54: mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    n291_call_prolog_α
                                                                              jmp   n277_var_ref_α
n276_call_prolog_β:     mov              r11, 243;                            jmp   n291_call_prolog_α
                        .size            n276_call_prolog_bx, .-n276_call_prolog_bx
                        .type            n277_var_ref_bx, @function
n277_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:         mov              r11, 244
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx;         jmp   n278_lit_string_α
                        .size            n277_var_ref_bx, .-n277_var_ref_bx
                        .type            n278_lit_string_bx, @function
n278_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:      mov              r11, 245
                        mov              qword ptr [rbp + 1792], 2            # result
                        mov              dword ptr [rbp + 1796], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_671_0]
                        mov              qword ptr [rbp + 1800], rax;         jmp   n279_lit_string_α
.Llit_string_α_671_0:   .quad            .Llit_string_α_671_0_s
.Llit_string_α_671_0_s: .string          "*"
                        .size            n278_lit_string_bx, .-n278_lit_string_bx
                        .type            n279_lit_string_bx, @function
n279_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:      mov              r11, 246
                        mov              qword ptr [rbp + 1680], 2            # result
                        mov              dword ptr [rbp + 1684], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_672_0]
                        mov              qword ptr [rbp + 1688], rax;         jmp   n280_var_ref_α
.Llit_string_α_672_0:   .quad            .Llit_string_α_672_0_s
.Llit_string_α_672_0_s: .string          "exp"
                        .size            n279_lit_string_bx, .-n279_lit_string_bx
                        .type            n280_var_ref_bx, @function
n280_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:         mov              r11, 247
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n281_call_prolog_α
                        .size            n280_var_ref_bx, .-n280_var_ref_bx
                        .type            n281_call_prolog_bx, @function
n281_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_call_prolog_α:     mov              r11, 248
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
                                                                              jmp   n282_var_ref_α
n281_call_prolog_β:     mov              r11, 248;                            jmp   d$2F3_ω
                        .size            n281_call_prolog_bx, .-n281_call_prolog_bx
                        .type            n282_var_ref_bx, @function
n282_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_var_ref_α:         mov              r11, 249
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n283_call_prolog_α
                        .size            n282_var_ref_bx, .-n282_var_ref_bx
                        .type            n283_call_prolog_bx, @function
n283_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_call_prolog_α:     mov              r11, 250
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
                        cmp              al, 104;                             je    n291_call_prolog_α
                                                                              jmp   n284_call_prolog_α
n283_call_prolog_β:     mov              r11, 250;                            jmp   n291_call_prolog_α
                        .size            n283_call_prolog_bx, .-n283_call_prolog_bx
                        .type            n284_call_prolog_bx, @function
n284_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_call_prolog_α:     mov              r11, 251
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
.Lcall_prolog_α_679_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_679_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_679_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_679_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_679_40
.Lcall_prolog_α_679_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_679_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_679_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_679_40
.Lcall_prolog_α_679_56: cmp              al, 72;                              jne   .Lcall_prolog_α_679_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_679_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_679_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_679_40
.Lcall_prolog_α_679_41: lea              r9, [rbp + 1568]
.Lcall_prolog_α_679_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_679_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_679_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_679_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_679_42
.Lcall_prolog_α_679_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_679_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_679_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_679_42
.Lcall_prolog_α_679_58: cmp              al, 72;                              jne   .Lcall_prolog_α_679_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_679_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_679_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_679_42
.Lcall_prolog_α_679_43: cmp              r8, r9;                              je    .Lcall_prolog_α_679_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_679_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_679_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_679_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_679_44
                                                                              jmp   .Lcall_prolog_α_679_45
.Lcall_prolog_α_679_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_679_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_679_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_679_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_679_53
                                                                              jmp   .Lcall_prolog_α_679_46
.Lcall_prolog_α_679_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_679_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_679_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_679_51
.Lcall_prolog_α_679_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_679_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_679_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_679_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_679_47
                                                                              jmp   .Lcall_prolog_α_679_48
.Lcall_prolog_α_679_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_679_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_679_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_679_51
.Lcall_prolog_α_679_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_679_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_679_53
                                                                              jmp   .Lcall_prolog_α_679_52
.Lcall_prolog_α_679_49: cmp              dl, 80;                              je    .Lcall_prolog_α_679_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_679_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_679_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_679_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_679_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_679_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_679_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_679_51
                                                                              jmp   .Lcall_prolog_α_679_52
.Lcall_prolog_α_679_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_679_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_679_53
.Lcall_prolog_α_679_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_679_54
.Lcall_prolog_α_679_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_679_54
.Lcall_prolog_α_679_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_679_54: mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    n291_call_prolog_α
                                                                              jmp   n285_cut_α
n284_call_prolog_β:     mov              r11, 251;                            jmp   n291_call_prolog_α
                        .size            n284_call_prolog_bx, .-n284_call_prolog_bx
                        .type            n285_cut_bx, @function
n285_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_cut_α:             mov              r11, 252;                            jmp   n286_var_ref_α
                        .size            n285_cut_bx, .-n285_cut_bx
                        .type            n286_var_ref_bx, @function
n286_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:         mov              r11, 253
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n287_var_ref_α
                        .size            n286_var_ref_bx, .-n286_var_ref_bx
                        .type            n287_var_ref_bx, @function
n287_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:         mov              r11, 254
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx;         jmp   n288_var_ref_α
                        .size            n287_var_ref_bx, .-n287_var_ref_bx
                        .type            n288_var_ref_bx, @function
n288_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n289_call_proc_staged_α
                        .size            n288_var_ref_bx, .-n288_var_ref_bx
                        .type            n289_call_proc_staged_bx, @function
n289_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_call_proc_staged_α:
                        mov              r11, 256
                        lea              rsi, [rbp + 1488]
                        lea              rdx, [rbp + 1504]
                        lea              rcx, [rbp + 1520]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_688_2
.Lcall_proc_staged_α_688_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_688_29
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
.Lcall_proc_staged_α_688_29:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              al, 104;                             je    n340_call_prolog_α
                                                                              jmp   n290_move_label_α
n289_call_proc_staged_β:
                        mov              r11, 256;                            jmp   n340_call_prolog_α
.Lcall_proc_staged_β_688_0:
                        .quad            .Lcall_proc_staged_β_688_0_s
.Lcall_proc_staged_β_688_0_s:
                        .string          "d/3"
                        .size            n289_call_proc_staged_bx, .-n289_call_proc_staged_bx
                        .type            n290_move_label_bx, @function
n290_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_move_label_α:      mov              r11, 257
                        lea              rax, [rip + n289_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n290_move_label_bx, .-n290_move_label_bx
                        .type            n291_call_prolog_bx, @function
n291_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_call_prolog_α:     mov              r11, 258
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
                                                                              jmp   n292_var_ref_α
n291_call_prolog_β:     mov              r11, 258;                            jmp   d$2F3_ω
                        .size            n291_call_prolog_bx, .-n291_call_prolog_bx
                        .type            n292_var_ref_bx, @function
n292_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:         mov              r11, 259
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n293_lit_integer_α
                        .size            n292_var_ref_bx, .-n292_var_ref_bx
                        .type            n293_lit_integer_bx, @function
n293_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_integer_α:     mov              r11, 260
                        mov              qword ptr [rbp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_694_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n294_lit_string_α
.Llit_integer_α_694_0:  .quad            260
                        .size            n293_lit_integer_bx, .-n293_lit_integer_bx
                        .type            n294_lit_string_bx, @function
n294_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:      mov              r11, 261
                        mov              qword ptr [rbp + 1360], 2            # result
                        mov              dword ptr [rbp + 1364], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_695_0]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n295_call_prolog_α
.Llit_string_α_695_0:   .quad            .Llit_string_α_695_0_s
.Llit_string_α_695_0_s: .string          "log"
                        .size            n294_lit_string_bx, .-n294_lit_string_bx
                        .type            n295_call_prolog_bx, @function
n295_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_call_prolog_α:     mov              r11, 262
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
                        cmp              al, 104;                             je    n317_var_ref_α
                                                                              jmp   n296_var_ref_α
n295_call_prolog_β:     mov              r11, 262;                            jmp   n317_var_ref_α
                        .size            n295_call_prolog_bx, .-n295_call_prolog_bx
                        .type            n296_var_ref_bx, @function
n296_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:         mov              r11, 263
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n297_lit_string_α
                        .size            n296_var_ref_bx, .-n296_var_ref_bx
                        .type            n297_lit_string_bx, @function
n297_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_string_α:      mov              r11, 264
                        mov              qword ptr [rbp + 1248], 2            # result
                        mov              dword ptr [rbp + 1252], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_699_0]
                        mov              qword ptr [rbp + 1256], rax;         jmp   n298_var_ref_α
.Llit_string_α_699_0:   .quad            .Llit_string_α_699_0_s
.Llit_string_α_699_0_s: .string          "log"
                        .size            n297_lit_string_bx, .-n297_lit_string_bx
                        .type            n298_var_ref_bx, @function
n298_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:         mov              r11, 265
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n299_call_prolog_α
                        .size            n298_var_ref_bx, .-n298_var_ref_bx
                        .type            n299_call_prolog_bx, @function
n299_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_call_prolog_α:     mov              r11, 266
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
                        cmp              al, 104;                             je    n316_call_prolog_α
                                                                              jmp   n300_call_prolog_α
n299_call_prolog_β:     mov              r11, 266;                            jmp   n316_call_prolog_α
                        .size            n299_call_prolog_bx, .-n299_call_prolog_bx
                        .type            n300_call_prolog_bx, @function
n300_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_call_prolog_α:     mov              r11, 267
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
.Lcall_prolog_α_703_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_703_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_703_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_703_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_703_40
.Lcall_prolog_α_703_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_703_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_703_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_703_40
.Lcall_prolog_α_703_56: cmp              al, 72;                              jne   .Lcall_prolog_α_703_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_703_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_703_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_703_40
.Lcall_prolog_α_703_41: lea              r9, [rbp + 1136]
.Lcall_prolog_α_703_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_703_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_703_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_703_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_703_42
.Lcall_prolog_α_703_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_703_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_703_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_703_42
.Lcall_prolog_α_703_58: cmp              al, 72;                              jne   .Lcall_prolog_α_703_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_703_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_703_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_703_42
.Lcall_prolog_α_703_43: cmp              r8, r9;                              je    .Lcall_prolog_α_703_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_703_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_703_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_703_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_703_44
                                                                              jmp   .Lcall_prolog_α_703_45
.Lcall_prolog_α_703_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_703_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_703_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_703_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_703_53
                                                                              jmp   .Lcall_prolog_α_703_46
.Lcall_prolog_α_703_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_703_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_703_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_703_51
.Lcall_prolog_α_703_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_703_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_703_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_703_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_703_47
                                                                              jmp   .Lcall_prolog_α_703_48
.Lcall_prolog_α_703_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_703_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_703_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_703_51
.Lcall_prolog_α_703_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_703_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_703_53
                                                                              jmp   .Lcall_prolog_α_703_52
.Lcall_prolog_α_703_49: cmp              dl, 80;                              je    .Lcall_prolog_α_703_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_703_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_703_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_703_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_703_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_703_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_703_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_703_51
                                                                              jmp   .Lcall_prolog_α_703_52
.Lcall_prolog_α_703_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_703_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_703_53
.Lcall_prolog_α_703_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_703_54
.Lcall_prolog_α_703_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_703_54
.Lcall_prolog_α_703_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_703_54: mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    n316_call_prolog_α
                                                                              jmp   n301_var_ref_α
n300_call_prolog_β:     mov              r11, 267;                            jmp   n316_call_prolog_α
                        .size            n300_call_prolog_bx, .-n300_call_prolog_bx
                        .type            n301_var_ref_bx, @function
n301_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:         mov              r11, 268
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n302_var_ref_α
                        .size            n301_var_ref_bx, .-n301_var_ref_bx
                        .type            n302_var_ref_bx, @function
n302_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:         mov              r11, 269
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n303_call_prolog_α
                        .size            n302_var_ref_bx, .-n302_var_ref_bx
                        .type            n303_call_prolog_bx, @function
n303_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_call_prolog_α:     mov              r11, 270
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
.Lcall_prolog_α_708_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_708_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_708_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_708_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_708_40
.Lcall_prolog_α_708_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_708_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_708_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_708_40
.Lcall_prolog_α_708_56: cmp              al, 72;                              jne   .Lcall_prolog_α_708_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_708_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_708_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_708_40
.Lcall_prolog_α_708_41: lea              r9, [rbp + 1056]
.Lcall_prolog_α_708_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_708_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_708_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_708_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_708_42
.Lcall_prolog_α_708_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_708_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_708_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_708_42
.Lcall_prolog_α_708_58: cmp              al, 72;                              jne   .Lcall_prolog_α_708_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_708_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_708_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_708_42
.Lcall_prolog_α_708_43: cmp              r8, r9;                              je    .Lcall_prolog_α_708_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_708_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_708_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_708_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_708_44
                                                                              jmp   .Lcall_prolog_α_708_45
.Lcall_prolog_α_708_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_708_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_708_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_708_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_708_53
                                                                              jmp   .Lcall_prolog_α_708_46
.Lcall_prolog_α_708_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_708_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_708_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_708_51
.Lcall_prolog_α_708_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_708_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_708_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_708_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_708_47
                                                                              jmp   .Lcall_prolog_α_708_48
.Lcall_prolog_α_708_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_708_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_708_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_708_51
.Lcall_prolog_α_708_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_708_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_708_53
                                                                              jmp   .Lcall_prolog_α_708_52
.Lcall_prolog_α_708_49: cmp              dl, 80;                              je    .Lcall_prolog_α_708_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_708_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_708_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_708_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_708_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_708_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_708_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_708_51
                                                                              jmp   .Lcall_prolog_α_708_52
.Lcall_prolog_α_708_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_708_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_708_53
.Lcall_prolog_α_708_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_708_54
.Lcall_prolog_α_708_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_708_54
.Lcall_prolog_α_708_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_708_54: mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    n316_call_prolog_α
                                                                              jmp   n304_var_ref_α
n303_call_prolog_β:     mov              r11, 270;                            jmp   n316_call_prolog_α
                        .size            n303_call_prolog_bx, .-n303_call_prolog_bx
                        .type            n304_var_ref_bx, @function
n304_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:         mov              r11, 271
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n305_lit_string_α
                        .size            n304_var_ref_bx, .-n304_var_ref_bx
                        .type            n305_lit_string_bx, @function
n305_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:      mov              r11, 272
                        mov              qword ptr [rbp + 1008], 2            # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_711_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n306_var_ref_α
.Llit_string_α_711_0:   .quad            .Llit_string_α_711_0_s
.Llit_string_α_711_0_s: .string          "/"
                        .size            n305_lit_string_bx, .-n305_lit_string_bx
                        .type            n306_var_ref_bx, @function
n306_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n307_var_ref_α
                        .size            n306_var_ref_bx, .-n306_var_ref_bx
                        .type            n307_var_ref_bx, @function
n307_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:         mov              r11, 274
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n308_call_prolog_α
                        .size            n307_var_ref_bx, .-n307_var_ref_bx
                        .type            n308_call_prolog_bx, @function
n308_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_call_prolog_α:     mov              r11, 275
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
                        cmp              al, 104;                             je    n316_call_prolog_α
                                                                              jmp   n309_call_prolog_α
n308_call_prolog_β:     mov              r11, 275;                            jmp   n316_call_prolog_α
                        .size            n308_call_prolog_bx, .-n308_call_prolog_bx
                        .type            n309_call_prolog_bx, @function
n309_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_call_prolog_α:     mov              r11, 276
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
.Lcall_prolog_α_717_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_717_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_717_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_717_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_717_40
.Lcall_prolog_α_717_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_717_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_717_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_717_40
.Lcall_prolog_α_717_56: cmp              al, 72;                              jne   .Lcall_prolog_α_717_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_717_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_717_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_717_40
.Lcall_prolog_α_717_41: lea              r9, [rbp + 864]
.Lcall_prolog_α_717_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_717_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_717_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_717_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_717_42
.Lcall_prolog_α_717_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_717_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_717_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_717_42
.Lcall_prolog_α_717_58: cmp              al, 72;                              jne   .Lcall_prolog_α_717_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_717_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_717_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_717_42
.Lcall_prolog_α_717_43: cmp              r8, r9;                              je    .Lcall_prolog_α_717_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_717_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_717_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_717_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_717_44
                                                                              jmp   .Lcall_prolog_α_717_45
.Lcall_prolog_α_717_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_717_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_717_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_717_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_717_53
                                                                              jmp   .Lcall_prolog_α_717_46
.Lcall_prolog_α_717_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_717_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_717_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_717_51
.Lcall_prolog_α_717_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_717_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_717_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_717_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_717_47
                                                                              jmp   .Lcall_prolog_α_717_48
.Lcall_prolog_α_717_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_717_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_717_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_717_51
.Lcall_prolog_α_717_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_717_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_717_53
                                                                              jmp   .Lcall_prolog_α_717_52
.Lcall_prolog_α_717_49: cmp              dl, 80;                              je    .Lcall_prolog_α_717_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_717_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_717_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_717_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_717_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_717_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_717_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_717_51
                                                                              jmp   .Lcall_prolog_α_717_52
.Lcall_prolog_α_717_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_717_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_717_53
.Lcall_prolog_α_717_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_717_54
.Lcall_prolog_α_717_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_717_54
.Lcall_prolog_α_717_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_717_54: mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    n316_call_prolog_α
                                                                              jmp   n310_cut_α
n309_call_prolog_β:     mov              r11, 276;                            jmp   n316_call_prolog_α
                        .size            n309_call_prolog_bx, .-n309_call_prolog_bx
                        .type            n310_cut_bx, @function
n310_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_cut_α:             mov              r11, 277;                            jmp   n311_var_ref_α
                        .size            n310_cut_bx, .-n310_cut_bx
                        .type            n311_var_ref_bx, @function
n311_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n312_var_ref_α
                        .size            n311_var_ref_bx, .-n311_var_ref_bx
                        .type            n312_var_ref_bx, @function
n312_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:         mov              r11, 279
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n313_var_ref_α
                        .size            n312_var_ref_bx, .-n312_var_ref_bx
                        .type            n313_var_ref_bx, @function
n313_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:         mov              r11, 280
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n314_call_proc_staged_α
                        .size            n313_var_ref_bx, .-n313_var_ref_bx
                        .type            n314_call_proc_staged_bx, @function
n314_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_call_proc_staged_α:
                        mov              r11, 281
                        lea              rsi, [rbp + 784]
                        lea              rdx, [rbp + 800]
                        lea              rcx, [rbp + 816]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_726_2
.Lcall_proc_staged_α_726_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_726_29
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
.Lcall_proc_staged_α_726_29:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    n340_call_prolog_α
                                                                              jmp   n315_move_label_α
n314_call_proc_staged_β:
                        mov              r11, 281;                            jmp   n340_call_prolog_α
.Lcall_proc_staged_β_726_0:
                        .quad            .Lcall_proc_staged_β_726_0_s
.Lcall_proc_staged_β_726_0_s:
                        .string          "d/3"
                        .size            n314_call_proc_staged_bx, .-n314_call_proc_staged_bx
                        .type            n315_move_label_bx, @function
n315_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_move_label_α:      mov              r11, 282
                        lea              rax, [rip + n314_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n315_move_label_bx, .-n315_move_label_bx
                        .type            n316_call_prolog_bx, @function
n316_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_call_prolog_α:     mov              r11, 283
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
                                                                              jmp   n317_var_ref_α
n316_call_prolog_β:     mov              r11, 283;                            jmp   d$2F3_ω
                        .size            n316_call_prolog_bx, .-n316_call_prolog_bx
                        .type            n317_var_ref_bx, @function
n317_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:         mov              r11, 284
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n318_var_ref_α
                        .size            n317_var_ref_bx, .-n317_var_ref_bx
                        .type            n318_var_ref_bx, @function
n318_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:         mov              r11, 285
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8160]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n319_call_prolog_α
                        .size            n318_var_ref_bx, .-n318_var_ref_bx
                        .type            n319_call_prolog_bx, @function
n319_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_call_prolog_α:     mov              r11, 286
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
.Lcall_prolog_α_734_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_734_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_734_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_734_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_734_40
.Lcall_prolog_α_734_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_734_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_734_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_734_40
.Lcall_prolog_α_734_56: cmp              al, 72;                              jne   .Lcall_prolog_α_734_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_734_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_734_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_734_40
.Lcall_prolog_α_734_41: lea              r9, [rbp + 624]
.Lcall_prolog_α_734_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_734_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_734_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_734_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_734_42
.Lcall_prolog_α_734_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_734_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_734_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_734_42
.Lcall_prolog_α_734_58: cmp              al, 72;                              jne   .Lcall_prolog_α_734_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_734_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_734_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_734_42
.Lcall_prolog_α_734_43: cmp              r8, r9;                              je    .Lcall_prolog_α_734_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_734_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_734_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_734_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_734_44
                                                                              jmp   .Lcall_prolog_α_734_45
.Lcall_prolog_α_734_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_734_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_734_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_734_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_734_53
                                                                              jmp   .Lcall_prolog_α_734_46
.Lcall_prolog_α_734_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_734_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_734_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_734_51
.Lcall_prolog_α_734_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_734_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_734_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_734_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_734_47
                                                                              jmp   .Lcall_prolog_α_734_48
.Lcall_prolog_α_734_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_734_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_734_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_734_51
.Lcall_prolog_α_734_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_734_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_734_53
                                                                              jmp   .Lcall_prolog_α_734_52
.Lcall_prolog_α_734_49: cmp              dl, 80;                              je    .Lcall_prolog_α_734_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_734_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_734_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_734_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_734_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_734_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_734_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_734_51
                                                                              jmp   .Lcall_prolog_α_734_52
.Lcall_prolog_α_734_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_734_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_734_53
.Lcall_prolog_α_734_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_734_54
.Lcall_prolog_α_734_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_734_54
.Lcall_prolog_α_734_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_734_54: mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n328_call_prolog_α
                                                                              jmp   n320_var_ref_α
n319_call_prolog_β:     mov              r11, 286;                            jmp   n328_call_prolog_α
                        .size            n319_call_prolog_bx, .-n319_call_prolog_bx
                        .type            n320_var_ref_bx, @function
n320_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_var_ref_α:         mov              r11, 287
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n321_var_ref_α
                        .size            n320_var_ref_bx, .-n320_var_ref_bx
                        .type            n321_var_ref_bx, @function
n321_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:         mov              r11, 288
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8160]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n322_call_prolog_α
                        .size            n321_var_ref_bx, .-n321_var_ref_bx
                        .type            n322_call_prolog_bx, @function
n322_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_call_prolog_α:     mov              r11, 289
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
.Lcall_prolog_α_739_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_739_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_739_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_739_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_739_40
.Lcall_prolog_α_739_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_739_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_739_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_739_40
.Lcall_prolog_α_739_56: cmp              al, 72;                              jne   .Lcall_prolog_α_739_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_739_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_739_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_739_40
.Lcall_prolog_α_739_41: lea              r9, [rbp + 544]
.Lcall_prolog_α_739_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_739_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_739_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_739_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_739_42
.Lcall_prolog_α_739_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_739_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_739_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_739_42
.Lcall_prolog_α_739_58: cmp              al, 72;                              jne   .Lcall_prolog_α_739_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_739_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_739_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_739_42
.Lcall_prolog_α_739_43: cmp              r8, r9;                              je    .Lcall_prolog_α_739_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_739_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_739_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_739_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_739_44
                                                                              jmp   .Lcall_prolog_α_739_45
.Lcall_prolog_α_739_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_739_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_739_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_739_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_739_53
                                                                              jmp   .Lcall_prolog_α_739_46
.Lcall_prolog_α_739_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_739_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_739_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_739_51
.Lcall_prolog_α_739_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_739_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_739_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_739_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_739_47
                                                                              jmp   .Lcall_prolog_α_739_48
.Lcall_prolog_α_739_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_739_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_739_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_739_51
.Lcall_prolog_α_739_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_739_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_739_53
                                                                              jmp   .Lcall_prolog_α_739_52
.Lcall_prolog_α_739_49: cmp              dl, 80;                              je    .Lcall_prolog_α_739_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_739_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_739_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_739_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_739_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_739_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_739_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_739_51
                                                                              jmp   .Lcall_prolog_α_739_52
.Lcall_prolog_α_739_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_739_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_739_53
.Lcall_prolog_α_739_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_739_54
.Lcall_prolog_α_739_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_739_54
.Lcall_prolog_α_739_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_739_54: mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n328_call_prolog_α
                                                                              jmp   n323_var_ref_α
n322_call_prolog_β:     mov              r11, 289;                            jmp   n328_call_prolog_α
                        .size            n322_call_prolog_bx, .-n322_call_prolog_bx
                        .type            n323_var_ref_bx, @function
n323_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:         mov              r11, 290
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n324_lit_integer_α
                        .size            n323_var_ref_bx, .-n323_var_ref_bx
                        .type            n324_lit_integer_bx, @function
n324_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_integer_α:     mov              r11, 291
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_742_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n325_call_prolog_α
.Llit_integer_α_742_0:  .quad            1
                        .size            n324_lit_integer_bx, .-n324_lit_integer_bx
                        .type            n325_call_prolog_bx, @function
n325_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_call_prolog_α:     mov              r11, 292
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
                        cmp              al, 104;                             je    n328_call_prolog_α
                                                                              jmp   n326_cut_α
n325_call_prolog_β:     mov              r11, 292;                            jmp   n328_call_prolog_α
                        .size            n325_call_prolog_bx, .-n325_call_prolog_bx
                        .type            n326_cut_bx, @function
n326_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_cut_α:             mov              r11, 293;                            jmp   n327_move_label_α
                        .size            n326_cut_bx, .-n326_cut_bx
                        .type            n327_move_label_bx, @function
n327_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_move_label_α:      mov              r11, 294
                        lea              rax, [rip + n328_call_prolog_α]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n327_move_label_bx, .-n327_move_label_bx
                        .type            n328_call_prolog_bx, @function
n328_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_call_prolog_α:     mov              r11, 295
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
                                                                              jmp   n329_var_ref_α
n328_call_prolog_β:     mov              r11, 295;                            jmp   d$2F3_ω
                        .size            n328_call_prolog_bx, .-n328_call_prolog_bx
                        .type            n329_var_ref_bx, @function
n329_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:         mov              r11, 296
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n330_var_ref_α
                        .size            n329_var_ref_bx, .-n329_var_ref_bx
                        .type            n330_var_ref_bx, @function
n330_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:         mov              r11, 297
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n331_call_prolog_α
                        .size            n330_var_ref_bx, .-n330_var_ref_bx
                        .type            n331_call_prolog_bx, @function
n331_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_call_prolog_α:     mov              r11, 298
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
.Lcall_prolog_α_752_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_752_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_752_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_752_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_752_40
.Lcall_prolog_α_752_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_752_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_752_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_752_40
.Lcall_prolog_α_752_56: cmp              al, 72;                              jne   .Lcall_prolog_α_752_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_752_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_752_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_752_40
.Lcall_prolog_α_752_41: lea              r9, [rbp + 352]
.Lcall_prolog_α_752_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_752_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_752_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_752_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_752_42
.Lcall_prolog_α_752_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_752_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_752_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_752_42
.Lcall_prolog_α_752_58: cmp              al, 72;                              jne   .Lcall_prolog_α_752_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_752_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_752_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_752_42
.Lcall_prolog_α_752_43: cmp              r8, r9;                              je    .Lcall_prolog_α_752_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_752_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_752_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_752_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_752_44
                                                                              jmp   .Lcall_prolog_α_752_45
.Lcall_prolog_α_752_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_752_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_752_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_752_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_752_53
                                                                              jmp   .Lcall_prolog_α_752_46
.Lcall_prolog_α_752_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_752_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_752_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_752_51
.Lcall_prolog_α_752_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_752_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_752_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_752_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_752_47
                                                                              jmp   .Lcall_prolog_α_752_48
.Lcall_prolog_α_752_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_752_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_752_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_752_51
.Lcall_prolog_α_752_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_752_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_752_53
                                                                              jmp   .Lcall_prolog_α_752_52
.Lcall_prolog_α_752_49: cmp              dl, 80;                              je    .Lcall_prolog_α_752_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_752_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_752_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_752_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_752_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_752_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_752_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_752_51
                                                                              jmp   .Lcall_prolog_α_752_52
.Lcall_prolog_α_752_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_752_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_752_53
.Lcall_prolog_α_752_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_752_54
.Lcall_prolog_α_752_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_752_54
.Lcall_prolog_α_752_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_752_54: mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n340_call_prolog_α
                                                                              jmp   n332_var_ref_α
n331_call_prolog_β:     mov              r11, 298;                            jmp   n340_call_prolog_α
                        .size            n331_call_prolog_bx, .-n331_call_prolog_bx
                        .type            n332_var_ref_bx, @function
n332_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:         mov              r11, 299
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n333_var_ref_α
                        .size            n332_var_ref_bx, .-n332_var_ref_bx
                        .type            n333_var_ref_bx, @function
n333_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:         mov              r11, 300
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n334_call_prolog_α
                        .size            n333_var_ref_bx, .-n333_var_ref_bx
                        .type            n334_call_prolog_bx, @function
n334_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_call_prolog_α:     mov              r11, 301
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
.Lcall_prolog_α_757_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_757_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_757_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_757_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_757_40
.Lcall_prolog_α_757_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_757_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_757_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_757_40
.Lcall_prolog_α_757_56: cmp              al, 72;                              jne   .Lcall_prolog_α_757_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_757_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_757_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_757_40
.Lcall_prolog_α_757_41: lea              r9, [rbp + 272]
.Lcall_prolog_α_757_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_757_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_757_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_757_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_757_42
.Lcall_prolog_α_757_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_757_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_757_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_757_42
.Lcall_prolog_α_757_58: cmp              al, 72;                              jne   .Lcall_prolog_α_757_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_757_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_757_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_757_42
.Lcall_prolog_α_757_43: cmp              r8, r9;                              je    .Lcall_prolog_α_757_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_757_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_757_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_757_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_757_44
                                                                              jmp   .Lcall_prolog_α_757_45
.Lcall_prolog_α_757_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_757_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_757_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_757_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_757_53
                                                                              jmp   .Lcall_prolog_α_757_46
.Lcall_prolog_α_757_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_757_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_757_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_757_51
.Lcall_prolog_α_757_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_757_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_757_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_757_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_757_47
                                                                              jmp   .Lcall_prolog_α_757_48
.Lcall_prolog_α_757_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_757_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_757_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_757_51
.Lcall_prolog_α_757_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_757_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_757_53
                                                                              jmp   .Lcall_prolog_α_757_52
.Lcall_prolog_α_757_49: cmp              dl, 80;                              je    .Lcall_prolog_α_757_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_757_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_757_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_757_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_757_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_757_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_757_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_757_51
                                                                              jmp   .Lcall_prolog_α_757_52
.Lcall_prolog_α_757_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_757_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_757_53
.Lcall_prolog_α_757_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_757_54
.Lcall_prolog_α_757_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_757_54
.Lcall_prolog_α_757_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_757_54: mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n340_call_prolog_α
                                                                              jmp   n335_var_ref_α
n334_call_prolog_β:     mov              r11, 301;                            jmp   n340_call_prolog_α
                        .size            n334_call_prolog_bx, .-n334_call_prolog_bx
                        .type            n335_var_ref_bx, @function
n335_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:         mov              r11, 302
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n336_lit_integer_α
                        .size            n335_var_ref_bx, .-n335_var_ref_bx
                        .type            n336_lit_integer_bx, @function
n336_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:     mov              r11, 303
                        mov              qword ptr [rbp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_760_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n337_call_prolog_α
.Llit_integer_α_760_0:  .quad            0
                        .size            n336_lit_integer_bx, .-n336_lit_integer_bx
                        .type            n337_call_prolog_bx, @function
n337_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_call_prolog_α:     mov              r11, 304
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
                        cmp              al, 104;                             je    n340_call_prolog_α
                                                                              jmp   n338_move_label_α
n337_call_prolog_β:     mov              r11, 304;                            jmp   n340_call_prolog_α
                        .size            n337_call_prolog_bx, .-n337_call_prolog_bx
                        .type            n338_move_label_bx, @function
n338_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_move_label_α:      mov              r11, 305
                        lea              rax, [rip + n340_call_prolog_α]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n338_move_label_bx, .-n338_move_label_bx
                        .type            n339_disjunction_bx, @function
n339_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_disjunction_α:     mov              r11, 306
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
n339_disjunction_β:     mov              r11, 306;                            jmp   d$2F3_ω
                        .size            n339_disjunction_bx, .-n339_disjunction_bx
                        .type            n340_call_prolog_bx, @function
n340_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_call_prolog_α:     mov              r11, 307
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
n340_call_prolog_β:     mov              r11, 307;                            jmp   d$2F3_ω
                        .size            n340_call_prolog_bx, .-n340_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_β:
                                                                              jmp   n339_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 8248]
                        mov              rbp, qword ptr [rbp + 8264]
                        add              rsp, 8272;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ω:
                        mov              rcx, qword ptr [rsp + 8256]
                        mov              rbp, qword ptr [rbp + 8264]
                        add              rsp, 8272;                           jmp   rcx
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
                        lea              rcx, [rip + .Ld$2F3_α_767_2]
                        lea              rdx, [rip + .Ld$2F3_α_767_3];        jmp   FN__d$2F3
.Ld$2F3_α_767_2:        pop              r12
                        pop              r12;                                 jmp   r12
.Ld$2F3_α_767_3:        pop              r12
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
                        lea              rax, [rip + n770_suspend_β]
                        mov              qword ptr [rbp + 112], rax
                        .type            n768_call_prolog_bx, @function
n768_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n768_call_prolog_α:     mov              r11, 308
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_772_102
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24];           jmp   .Lcall_prolog_α_772_101
.Lcall_prolog_α_772_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_772_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_772_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_772_101
.Lcall_prolog_α_772_100:
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
.Lcall_prolog_α_772_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              al, 104;                             je    top$2F0_ω
                                                                              jmp   n769_call_proc_staged_α
n768_call_prolog_β:     mov              r11, 308;                            jmp   top$2F0_ω
                        .size            n768_call_prolog_bx, .-n768_call_prolog_bx
                        .type            n769_call_proc_staged_bx, @function
n769_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n769_call_proc_staged_α:
                        mov              r11, 309
                        call             ops8$2F0_dcα;                        jmp   .Lcall_proc_staged_α_774_2
.Lcall_proc_staged_α_774_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_774_29
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
.Lcall_proc_staged_α_774_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n771_call_prolog_α
                                                                              jmp   n770_suspend_α
n769_call_proc_staged_β:
                        mov              r11, 309;                            jmp   n771_call_prolog_α
.Lcall_proc_staged_β_774_0:
                        .quad            .Lcall_proc_staged_β_774_0_s
.Lcall_proc_staged_β_774_0_s:
                        .string          "ops8/0"
                        .size            n769_call_proc_staged_bx, .-n769_call_proc_staged_bx
                        .type            n770_suspend_bx, @function
n770_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n770_suspend_α:         mov              r11, 310
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_776_61
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
.Lsuspend_α_776_61:     mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        lea              rdx, [rip + n770_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n770_suspend_β]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax;            jmp   top$2F0_γ
n770_suspend_β:         mov              r11, 310;                            jmp   n769_call_proc_staged_β
                        .size            n770_suspend_bx, .-n770_suspend_bx
                        .type            n771_call_prolog_bx, @function
n771_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n771_call_prolog_α:     mov              r11, 311
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
n771_call_prolog_β:     mov              r11, 311;                            jmp   top$2F0_ω
                        .size            n771_call_prolog_bx, .-n771_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_β:
                                                                              jmp   n770_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Ltop$2F0_α_777_50
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
.Ltop$2F0_α_777_50:     mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 152]
                        mov              rbp, qword ptr [rbp + 168]
                        add              rsp, 176;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_ω:
                        mov              rcx, qword ptr [rsp + 160]
                        mov              rbp, qword ptr [rbp + 168]
                        add              rsp, 176;                            jmp   rcx
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
                        .type            n778_var_ref_bx, @function
n778_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n778_var_ref_α:         mov              r11, 312
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n779_call_prolog_α
                        .size            n778_var_ref_bx, .-n778_var_ref_bx
                        .type            n779_call_prolog_bx, @function
n779_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n779_call_prolog_α:     mov              r11, 313
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn824: .string          "$wall_us"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn824]
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
                        cmp              al, 104;                             je    n818_lit_string_α
                                                                              jmp   n780_var_ref_α
n779_call_prolog_β:     mov              r11, 313;                            jmp   n818_lit_string_α
                        .size            n779_call_prolog_bx, .-n779_call_prolog_bx
                        .type            n780_var_ref_bx, @function
n780_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n780_var_ref_α:         mov              r11, 314
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n781_call_prolog_α
                        .size            n780_var_ref_bx, .-n780_var_ref_bx
                        .type            n781_call_prolog_bx, @function
n781_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n781_call_prolog_α:     mov              r11, 315
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn828: .string          "$wall_ms"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn828]
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
                        cmp              al, 104;                             je    n818_lit_string_α
                                                                              jmp   n782_call_proc_staged_α
n781_call_prolog_β:     mov              r11, 315;                            jmp   n818_lit_string_α
                        .size            n781_call_prolog_bx, .-n781_call_prolog_bx
                        .type            n782_call_proc_staged_bx, @function
n782_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n782_call_proc_staged_α:
                        mov              r11, 316
                        mov              qword ptr [rbp + 1120], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_830_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_830_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_830_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_830_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_830_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_830_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 1128], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 1120]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_830_5
                        mov              qword ptr [rbp + 1120], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_830_2
.Lcall_proc_staged_α_830_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_830_2
.Lcall_proc_staged_α_830_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 1120]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_830_6
                        mov              qword ptr [rbp + 1120], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_830_2
.Lcall_proc_staged_α_830_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_830_2
.Lcall_proc_staged_α_830_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_830_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n786_call_prolog_α
.Lcall_proc_staged_α_830_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_830_29
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
.Lcall_proc_staged_α_830_29:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    n786_call_prolog_α
                                                                              jmp   n783_var_ref_α
n782_call_proc_staged_β:
                        mov              r11, 316
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
                        test             rax, rax;                            je    n786_call_prolog_α
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
                        test             rax, rax;                            je    n786_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_830_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_830_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_830_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_830_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_830_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    n786_call_prolog_α
                                                                              jmp   n783_var_ref_α
.Lcall_proc_staged_α_830_0:
                        .quad            .Lcall_proc_staged_α_830_0_s
.Lcall_proc_staged_α_830_0_s:
                        .string          "top/0"
                        .size            n782_call_proc_staged_bx, .-n782_call_proc_staged_bx
                        .type            n783_var_ref_bx, @function
n783_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n783_var_ref_α:         mov              r11, 317
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n784_lit_string_α
                        .size            n783_var_ref_bx, .-n783_var_ref_bx
                        .type            n784_lit_string_bx, @function
n784_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n784_lit_string_α:      mov              r11, 318
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_833_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n785_call_prolog_α
.Llit_string_α_833_0:   .quad            .Llit_string_α_833_0_s
.Llit_string_α_833_0_s: .string          "ok"
                        .size            n784_lit_string_bx, .-n784_lit_string_bx
                        .type            n785_call_prolog_bx, @function
n785_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n785_call_prolog_α:     mov              r11, 319
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_834_2]
                                                                              jmp   .Lcall_prolog_α_834_3
.Lcall_prolog_α_834_2:  .quad            .Lcall_prolog_α_834_2_s
.Lcall_prolog_α_834_2_s:
                        .string          "ok"
.Lcall_prolog_α_834_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    n818_lit_string_α
                                                                              jmp   n790_var_ref_α
n785_call_prolog_β:     mov              r11, 319;                            jmp   n818_lit_string_α
                        .size            n785_call_prolog_bx, .-n785_call_prolog_bx
                        .type            n786_call_prolog_bx, @function
n786_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n786_call_prolog_α:     mov              r11, 320
                        .section         .rodata
.Lcall_prolog_α_rkfn836: .string          "$no_throw_or_fail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn836]
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
                        cmp              al, 104;                             je    n818_lit_string_α
                                                                              jmp   n787_var_ref_α
n786_call_prolog_β:     mov              r11, 320;                            jmp   n818_lit_string_α
                        .size            n786_call_prolog_bx, .-n786_call_prolog_bx
                        .type            n787_var_ref_bx, @function
n787_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n787_var_ref_α:         mov              r11, 321
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n788_lit_string_α
                        .size            n787_var_ref_bx, .-n787_var_ref_bx
                        .type            n788_lit_string_bx, @function
n788_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n788_lit_string_α:      mov              r11, 322
                        mov              qword ptr [rbp + 1072], 2            # result
                        mov              dword ptr [rbp + 1076], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_839_0]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n789_call_prolog_α
.Llit_string_α_839_0:   .quad            .Llit_string_α_839_0_s
.Llit_string_α_839_0_s: .string          "failed"
                        .size            n788_lit_string_bx, .-n788_lit_string_bx
                        .type            n789_call_prolog_bx, @function
n789_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n789_call_prolog_α:     mov              r11, 323
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_840_2]
                                                                              jmp   .Lcall_prolog_α_840_3
.Lcall_prolog_α_840_2:  .quad            .Lcall_prolog_α_840_2_s
.Lcall_prolog_α_840_2_s:
                        .string          "failed"
.Lcall_prolog_α_840_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    n818_lit_string_α
                                                                              jmp   n790_var_ref_α
n789_call_prolog_β:     mov              r11, 323;                            jmp   n818_lit_string_α
                        .size            n789_call_prolog_bx, .-n789_call_prolog_bx
                        .type            n790_var_ref_bx, @function
n790_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n790_var_ref_α:         mov              r11, 324
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n791_call_prolog_α
                        .size            n790_var_ref_bx, .-n790_var_ref_bx
                        .type            n791_call_prolog_bx, @function
n791_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n791_call_prolog_α:     mov              r11, 325
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn844: .string          "$wall_us"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn844]
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
                        cmp              al, 104;                             je    n818_lit_string_α
                                                                              jmp   n792_var_ref_α
n791_call_prolog_β:     mov              r11, 325;                            jmp   n818_lit_string_α
                        .size            n791_call_prolog_bx, .-n791_call_prolog_bx
                        .type            n792_var_ref_bx, @function
n792_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n792_var_ref_α:         mov              r11, 326
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n793_call_prolog_α
                        .size            n792_var_ref_bx, .-n792_var_ref_bx
                        .type            n793_call_prolog_bx, @function
n793_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n793_call_prolog_α:     mov              r11, 327
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn848: .string          "$wall_ms"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn848]
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
                        cmp              al, 104;                             je    n818_lit_string_α
                                                                              jmp   n794_var_α
n793_call_prolog_β:     mov              r11, 327;                            jmp   n818_lit_string_α
                        .size            n793_call_prolog_bx, .-n793_call_prolog_bx
                        .type            n794_var_bx, @function
n794_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n794_var_α:             mov              r11, 328
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 824], rax;          jmp   n795_call_prolog_α
                        .size            n794_var_bx, .-n794_var_bx
                        .type            n795_call_prolog_bx, @function
n795_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n795_call_prolog_α:     mov              r11, 329
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn852: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn852]
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
                        cmp              al, 104;                             je    n818_lit_string_α
                                                                              jmp   n796_lit_string_α
n795_call_prolog_β:     mov              r11, 329;                            jmp   n818_lit_string_α
                        .size            n795_call_prolog_bx, .-n795_call_prolog_bx
                        .type            n796_lit_string_bx, @function
n796_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n796_lit_string_α:      mov              r11, 330
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_853_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n797_call_prolog_α
.Llit_string_α_853_0:   .quad            .Llit_string_α_853_0_s
.Llit_string_α_853_0_s: .string          ""
                        .size            n796_lit_string_bx, .-n796_lit_string_bx
                        .type            n797_call_prolog_bx, @function
n797_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n797_call_prolog_α:     mov              r11, 331
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn855: .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn855]
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
                        cmp              al, 104;                             je    n818_lit_string_α
                                                                              jmp   n798_var_ref_α
n797_call_prolog_β:     mov              r11, 331;                            jmp   n818_lit_string_α
                        .size            n797_call_prolog_bx, .-n797_call_prolog_bx
                        .type            n798_var_ref_bx, @function
n798_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n798_var_ref_α:         mov              r11, 332
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n799_var_α
                        .size            n798_var_ref_bx, .-n798_var_ref_bx
                        .type            n799_var_bx, @function
n799_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n799_var_α:             mov              r11, 333
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 712], rax;          jmp   n800_var_α
                        .size            n799_var_bx, .-n799_var_bx
                        .type            n800_var_bx, @function
n800_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n800_var_α:             mov              r11, 334
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 728], rax;          jmp   n801_call_prolog_α
                        .size            n800_var_bx, .-n800_var_bx
                        .type            n801_call_prolog_bx, @function
n801_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n801_call_prolog_α:     mov              r11, 335
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
                        cmp              al, 104;                             je    n818_lit_string_α
                                                                              jmp   n802_call_prolog_α
n801_call_prolog_β:     mov              r11, 335;                            jmp   n818_lit_string_α
                        .size            n801_call_prolog_bx, .-n801_call_prolog_bx
                        .type            n802_call_prolog_bx, @function
n802_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n802_call_prolog_α:     mov              r11, 336
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
                        cmp              al, 104;                             je    n818_lit_string_α
                                                                              jmp   n803_var_ref_α
n802_call_prolog_β:     mov              r11, 336;                            jmp   n818_lit_string_α
                        .size            n802_call_prolog_bx, .-n802_call_prolog_bx
                        .type            n803_var_ref_bx, @function
n803_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n803_var_ref_α:         mov              r11, 337
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n804_var_α
                        .size            n803_var_ref_bx, .-n803_var_ref_bx
                        .type            n804_var_bx, @function
n804_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n804_var_α:             mov              r11, 338
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 552], rax;          jmp   n805_var_α
                        .size            n804_var_bx, .-n804_var_bx
                        .type            n805_var_bx, @function
n805_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n805_var_α:             mov              r11, 339
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 568], rax;          jmp   n806_call_prolog_α
                        .size            n805_var_bx, .-n805_var_bx
                        .type            n806_call_prolog_bx, @function
n806_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n806_call_prolog_α:     mov              r11, 340
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
                        cmp              al, 104;                             je    n818_lit_string_α
                                                                              jmp   n807_call_prolog_α
n806_call_prolog_β:     mov              r11, 340;                            jmp   n818_lit_string_α
                        .size            n806_call_prolog_bx, .-n806_call_prolog_bx
                        .type            n807_call_prolog_bx, @function
n807_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n807_call_prolog_α:     mov              r11, 341
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
                        cmp              al, 104;                             je    n818_lit_string_α
                                                                              jmp   n808_lit_string_α
n807_call_prolog_β:     mov              r11, 341;                            jmp   n818_lit_string_α
                        .size            n807_call_prolog_bx, .-n807_call_prolog_bx
                        .type            n808_lit_string_bx, @function
n808_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n808_lit_string_α:      mov              r11, 342
                        mov              qword ptr [rbp + 144], 2             # result
                        mov              dword ptr [rbp + 148], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_872_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n809_lit_string_α
.Llit_string_α_872_0:   .quad            .Llit_string_α_872_0_s
.Llit_string_α_872_0_s: .string          "user_error"
                        .size            n808_lit_string_bx, .-n808_lit_string_bx
                        .type            n809_lit_string_bx, @function
n809_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n809_lit_string_α:      mov              r11, 343
                        mov              qword ptr [rbp + 160], 2             # result
                        mov              dword ptr [rbp + 164], 41
                        mov              rax, qword ptr [rip + .Llit_string_α_873_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n810_lit_string_α
.Llit_string_α_873_0:   .quad            .Llit_string_α_873_0_s
.Llit_string_α_873_0_s: .string          "BENCH kernel=ops8 work_us=~w work_ms=~w~n"
                        .size            n809_lit_string_bx, .-n809_lit_string_bx
                        .type            n810_lit_string_bx, @function
n810_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n810_lit_string_α:      mov              r11, 344
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_874_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n811_var_ref_α
.Llit_string_α_874_0:   .quad            .Llit_string_α_874_0_s
.Llit_string_α_874_0_s: .string          "."
                        .size            n810_lit_string_bx, .-n810_lit_string_bx
                        .type            n811_var_ref_bx, @function
n811_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n811_var_ref_α:         mov              r11, 345
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n812_lit_string_α
                        .size            n811_var_ref_bx, .-n811_var_ref_bx
                        .type            n812_lit_string_bx, @function
n812_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n812_lit_string_α:      mov              r11, 346
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_877_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n813_var_ref_α
.Llit_string_α_877_0:   .quad            .Llit_string_α_877_0_s
.Llit_string_α_877_0_s: .string          "."
                        .size            n812_lit_string_bx, .-n812_lit_string_bx
                        .type            n813_var_ref_bx, @function
n813_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n813_var_ref_α:         mov              r11, 347
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n814_lit_string_α
                        .size            n813_var_ref_bx, .-n813_var_ref_bx
                        .type            n814_lit_string_bx, @function
n814_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n814_lit_string_α:      mov              r11, 348
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_880_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n815_call_prolog_α
.Llit_string_α_880_0:   .quad            .Llit_string_α_880_0_s
.Llit_string_α_880_0_s: .string          "[]"
                        .size            n814_lit_string_bx, .-n814_lit_string_bx
                        .type            n815_call_prolog_bx, @function
n815_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n815_call_prolog_α:     mov              r11, 349
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
                                                                              jmp   n816_call_prolog_α
n815_call_prolog_β:     mov              r11, 349;                            jmp   main_ω
                        .size            n815_call_prolog_bx, .-n815_call_prolog_bx
                        .type            n816_call_prolog_bx, @function
n816_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n816_call_prolog_α:     mov              r11, 350
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
                        cmp              al, 104;                             je    n818_lit_string_α
                                                                              jmp   n817_call_prolog_α
n816_call_prolog_β:     mov              r11, 350;                            jmp   n818_lit_string_α
                        .size            n816_call_prolog_bx, .-n816_call_prolog_bx
                        .type            n817_call_prolog_bx, @function
n817_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n817_call_prolog_α:     mov              r11, 351
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
.Lcall_prolog_α_rkfn884: .string          "$format3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn884]
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
                        cmp              al, 104;                             je    n818_lit_string_α
                                                                              jmp   main_γ
n817_call_prolog_β:     mov              r11, 351;                            jmp   n818_lit_string_α
                        .size            n817_call_prolog_bx, .-n817_call_prolog_bx
                        .type            n818_lit_string_bx, @function
n818_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n818_lit_string_α:      mov              r11, 352
                        mov              qword ptr [rbp + 48], 2              # result
                        mov              dword ptr [rbp + 52], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_885_0]
                        mov              qword ptr [rbp + 56], rax;           jmp   n819_lit_string_α
.Llit_string_α_885_0:   .quad            .Llit_string_α_885_0_s
.Llit_string_α_885_0_s: .string          "user_error"
                        .size            n818_lit_string_bx, .-n818_lit_string_bx
                        .type            n819_lit_string_bx, @function
n819_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n819_lit_string_α:      mov              r11, 353
                        mov              qword ptr [rbp + 64], 2              # result
                        mov              dword ptr [rbp + 68], 44
                        mov              rax, qword ptr [rip + .Llit_string_α_886_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n820_call_prolog_α
.Llit_string_α_886_0:   .quad            .Llit_string_α_886_0_s
.Llit_string_α_886_0_s: .string          "Warning: initialization goal failed: main/0\n"
                        .size            n819_lit_string_bx, .-n819_lit_string_bx
                        .type            n820_call_prolog_bx, @function
n820_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n820_call_prolog_α:     mov              r11, 354
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn888: .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn888]
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
n820_call_prolog_β:     mov              r11, 354;                            jmp   main_ω
                        .size            n820_call_prolog_bx, .-n820_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1384]
                        mov              rbp, qword ptr [rbp + 1400]
                        add              rsp, 1408;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1392]
                        mov              rbp, qword ptr [rbp + 1400]
                        add              rsp, 1408;                           jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "ops8/0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__ops8$2F0
                        .quad            ops8$2F0_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1024
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
