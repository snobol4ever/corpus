                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__divide10$2F0:
                        sub              rsp, 1296
                        mov              qword ptr [rsp + 1272], rcx
                        mov              qword ptr [rsp + 1280], rdx
                        mov              qword ptr [rsp + 1288], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1264
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
divide10$2F0_α_body:
                        .type            n0_call_prolog_bx, @function
n0_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_35_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lcall_prolog_α_35_101
.Lcall_prolog_α_35_102: lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_35_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_35_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_35_101
.Lcall_prolog_α_35_100: lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_35_101: mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n1_lit_string_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   divide10$2F0_ω
                        .size            n0_call_prolog_bx, .-n0_call_prolog_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_36_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n2_lit_string_α
.Llit_string_α_36_0:    .quad            .Llit_string_α_36_0_s
.Llit_string_α_36_0_s:  .string          "/"
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_37_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n3_lit_string_α
.Llit_string_α_37_0:    .quad            .Llit_string_α_37_0_s
.Llit_string_α_37_0_s:  .string          "/"
                        .size            n2_lit_string_bx, .-n2_lit_string_bx
                        .type            n3_lit_string_bx, @function
n3_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_38_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n4_lit_string_α
.Llit_string_α_38_0:    .quad            .Llit_string_α_38_0_s
.Llit_string_α_38_0_s:  .string          "/"
                        .size            n3_lit_string_bx, .-n3_lit_string_bx
                        .type            n4_lit_string_bx, @function
n4_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_39_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n5_lit_string_α
.Llit_string_α_39_0:    .quad            .Llit_string_α_39_0_s
.Llit_string_α_39_0_s:  .string          "/"
                        .size            n4_lit_string_bx, .-n4_lit_string_bx
                        .type            n5_lit_string_bx, @function
n5_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_40_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n6_lit_string_α
.Llit_string_α_40_0:    .quad            .Llit_string_α_40_0_s
.Llit_string_α_40_0_s:  .string          "/"
                        .size            n5_lit_string_bx, .-n5_lit_string_bx
                        .type            n6_lit_string_bx, @function
n6_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_41_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n7_lit_string_α
.Llit_string_α_41_0:    .quad            .Llit_string_α_41_0_s
.Llit_string_α_41_0_s:  .string          "/"
                        .size            n6_lit_string_bx, .-n6_lit_string_bx
                        .type            n7_lit_string_bx, @function
n7_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_42_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n8_lit_string_α
.Llit_string_α_42_0:    .quad            .Llit_string_α_42_0_s
.Llit_string_α_42_0_s:  .string          "/"
                        .size            n7_lit_string_bx, .-n7_lit_string_bx
                        .type            n8_lit_string_bx, @function
n8_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_43_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n9_lit_string_α
.Llit_string_α_43_0:    .quad            .Llit_string_α_43_0_s
.Llit_string_α_43_0_s:  .string          "/"
                        .size            n8_lit_string_bx, .-n8_lit_string_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_44_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n10_lit_string_α
.Llit_string_α_44_0:    .quad            .Llit_string_α_44_0_s
.Llit_string_α_44_0_s:  .string          "/"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_lit_string_bx, @function
n10_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_45_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n11_lit_string_α
.Llit_string_α_45_0:    .quad            .Llit_string_α_45_0_s
.Llit_string_α_45_0_s:  .string          "x"
                        .size            n10_lit_string_bx, .-n10_lit_string_bx
                        .type            n11_lit_string_bx, @function
n11_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_46_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n12_call_prolog_α
.Llit_string_α_46_0:    .quad            .Llit_string_α_46_0_s
.Llit_string_α_46_0_s:  .string          "x"
                        .size            n11_lit_string_bx, .-n11_lit_string_bx
                        .type            n12_call_prolog_bx, @function
n12_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_prolog_α:      mov              r11, 13
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n13_lit_string_α
n12_call_prolog_β:      mov              r11, 13;                             jmp   divide10$2F0_ω
                        .size            n12_call_prolog_bx, .-n12_call_prolog_bx
                        .type            n13_lit_string_bx, @function
n13_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_48_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n14_call_prolog_α
.Llit_string_α_48_0:    .quad            .Llit_string_α_48_0_s
.Llit_string_α_48_0_s:  .string          "x"
                        .size            n13_lit_string_bx, .-n13_lit_string_bx
                        .type            n14_call_prolog_bx, @function
n14_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_prolog_α:      mov              r11, 15
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n15_lit_string_α
n14_call_prolog_β:      mov              r11, 15;                             jmp   divide10$2F0_ω
                        .size            n14_call_prolog_bx, .-n14_call_prolog_bx
                        .type            n15_lit_string_bx, @function
n15_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_50_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n16_call_prolog_α
.Llit_string_α_50_0:    .quad            .Llit_string_α_50_0_s
.Llit_string_α_50_0_s:  .string          "x"
                        .size            n15_lit_string_bx, .-n15_lit_string_bx
                        .type            n16_call_prolog_bx, @function
n16_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_call_prolog_α:      mov              r11, 17
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n17_lit_string_α
n16_call_prolog_β:      mov              r11, 17;                             jmp   divide10$2F0_ω
                        .size            n16_call_prolog_bx, .-n16_call_prolog_bx
                        .type            n17_lit_string_bx, @function
n17_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_52_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n18_call_prolog_α
.Llit_string_α_52_0:    .quad            .Llit_string_α_52_0_s
.Llit_string_α_52_0_s:  .string          "x"
                        .size            n17_lit_string_bx, .-n17_lit_string_bx
                        .type            n18_call_prolog_bx, @function
n18_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_call_prolog_α:      mov              r11, 19
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n19_lit_string_α
n18_call_prolog_β:      mov              r11, 19;                             jmp   divide10$2F0_ω
                        .size            n18_call_prolog_bx, .-n18_call_prolog_bx
                        .type            n19_lit_string_bx, @function
n19_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_54_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n20_call_prolog_α
.Llit_string_α_54_0:    .quad            .Llit_string_α_54_0_s
.Llit_string_α_54_0_s:  .string          "x"
                        .size            n19_lit_string_bx, .-n19_lit_string_bx
                        .type            n20_call_prolog_bx, @function
n20_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_prolog_α:      mov              r11, 21
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 680], rax
                        lea              rdi, [rsp + 672]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n21_lit_string_α
n20_call_prolog_β:      mov              r11, 21;                             jmp   divide10$2F0_ω
                        .size            n20_call_prolog_bx, .-n20_call_prolog_bx
                        .type            n21_lit_string_bx, @function
n21_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       mov              r11, 22
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_56_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n22_call_prolog_α
.Llit_string_α_56_0:    .quad            .Llit_string_α_56_0_s
.Llit_string_α_56_0_s:  .string          "x"
                        .size            n21_lit_string_bx, .-n21_lit_string_bx
                        .type            n22_call_prolog_bx, @function
n22_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_call_prolog_α:      mov              r11, 23
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 792], rax
                        lea              rdi, [rsp + 784]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n23_lit_string_α
n22_call_prolog_β:      mov              r11, 23;                             jmp   divide10$2F0_ω
                        .size            n22_call_prolog_bx, .-n22_call_prolog_bx
                        .type            n23_lit_string_bx, @function
n23_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_58_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n24_call_prolog_α
.Llit_string_α_58_0:    .quad            .Llit_string_α_58_0_s
.Llit_string_α_58_0_s:  .string          "x"
                        .size            n23_lit_string_bx, .-n23_lit_string_bx
                        .type            n24_call_prolog_bx, @function
n24_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_call_prolog_α:      mov              r11, 25
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 904], rax
                        lea              rdi, [rsp + 896]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n25_lit_string_α
n24_call_prolog_β:      mov              r11, 25;                             jmp   divide10$2F0_ω
                        .size            n24_call_prolog_bx, .-n24_call_prolog_bx
                        .type            n25_lit_string_bx, @function
n25_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_60_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n26_call_prolog_α
.Llit_string_α_60_0:    .quad            .Llit_string_α_60_0_s
.Llit_string_α_60_0_s:  .string          "x"
                        .size            n25_lit_string_bx, .-n25_lit_string_bx
                        .type            n26_call_prolog_bx, @function
n26_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_call_prolog_α:      mov              r11, 27
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1016], rax
                        lea              rdi, [rsp + 1008]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n27_lit_string_α
n26_call_prolog_β:      mov              r11, 27;                             jmp   divide10$2F0_ω
                        .size            n26_call_prolog_bx, .-n26_call_prolog_bx
                        .type            n27_lit_string_bx, @function
n27_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_62_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n28_call_prolog_α
.Llit_string_α_62_0:    .quad            .Llit_string_α_62_0_s
.Llit_string_α_62_0_s:  .string          "x"
                        .size            n27_lit_string_bx, .-n27_lit_string_bx
                        .type            n28_call_prolog_bx, @function
n28_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_prolog_α:      mov              r11, 29
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1128], rax
                        lea              rdi, [rsp + 1120]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n34_call_prolog_α
                                                                              jmp   n29_lit_string_α
n28_call_prolog_β:      mov              r11, 29;                             jmp   n34_call_prolog_α
                        .size            n28_call_prolog_bx, .-n28_call_prolog_bx
                        .type            n29_lit_string_bx, @function
n29_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              r11, 30
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_64_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n30_var_ref_α
.Llit_string_α_64_0:    .quad            .Llit_string_α_64_0_s
.Llit_string_α_64_0_s:  .string          "x"
                        .size            n29_lit_string_bx, .-n29_lit_string_bx
                        .type            n30_var_ref_bx, @function
n30_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n31_call_proc_staged_α
                        .size            n30_var_ref_bx, .-n30_var_ref_bx
                        .type            n31_call_proc_staged_bx, @function
n31_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_call_proc_staged_α: mov              r11, 32
                        lea              rsi, [rsp + 1104]
                        lea              rdx, [rsp + 1200]
                        lea              rcx, [rsp + 1216]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_68_2
.Lcall_proc_staged_α_68_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_68_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lcall_proc_staged_α_68_29:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n34_call_prolog_α
                                                                              jmp   n32_move_label_α
n31_call_proc_staged_β: mov              r11, 32;                             jmp   n34_call_prolog_α
.Lcall_proc_staged_β_68_0:
                        .quad            .Lcall_proc_staged_β_68_0_s
.Lcall_proc_staged_β_68_0_s:
                        .string          "d/3"
                        .size            n31_call_proc_staged_bx, .-n31_call_proc_staged_bx
                        .type            n32_move_label_bx, @function
n32_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_move_label_α:       mov              r11, 33
                        lea              rax, [rip + n31_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   divide10$2F0_γ
                        .size            n32_move_label_bx, .-n32_move_label_bx
                        .type            n33_disjunction_bx, @function
n33_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_disjunction_α:      mov              r11, 34
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    divide10$2F0_ω
                                                                              jmp   rax
n33_disjunction_β:      mov              r11, 34;                             jmp   divide10$2F0_ω
                        .size            n33_disjunction_bx, .-n33_disjunction_bx
                        .type            n34_call_prolog_bx, @function
n34_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_call_prolog_α:      mov              r11, 35
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   divide10$2F0_ω
n34_call_prolog_β:      mov              r11, 35;                             jmp   divide10$2F0_ω
                        .size            n34_call_prolog_bx, .-n34_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
divide10$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
divide10$2F0_β:
                                                                              jmp   n33_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
divide10$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1272]
                        add              rsp, 1296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
divide10$2F0_ω:
                        mov              rcx, qword ptr [rsp + 1280]
                        add              rsp, 1296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
divide10$2F0_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Ldivide10$2F0_α_74_2]
                        lea              rdx, [rip + .Ldivide10$2F0_α_74_3];  jmp   FN__divide10$2F0
.Ldivide10$2F0_α_74_2:  pop              r12
                        pop              r12;                                 jmp   r12
.Ldivide10$2F0_α_74_3:  pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__log10$2F0:
                        sub              rsp, 1088
                        mov              qword ptr [rsp + 1064], rcx
                        mov              qword ptr [rsp + 1072], rdx
                        mov              qword ptr [rsp + 1080], rsp
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
                        .type            n75_call_prolog_bx, @function
n75_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_call_prolog_α:      mov              r11, 36
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_103_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lcall_prolog_α_103_101
.Lcall_prolog_α_103_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_103_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_103_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_103_101
.Lcall_prolog_α_103_100:
                        lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_103_101:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n76_lit_string_α
n75_call_prolog_β:      mov              r11, 36;                             jmp   log10$2F0_ω
                        .size            n75_call_prolog_bx, .-n75_call_prolog_bx
                        .type            n76_lit_string_bx, @function
n76_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_104_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n77_lit_string_α
.Llit_string_α_104_0:   .quad            .Llit_string_α_104_0_s
.Llit_string_α_104_0_s: .string          "log"
                        .size            n76_lit_string_bx, .-n76_lit_string_bx
                        .type            n77_lit_string_bx, @function
n77_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_105_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n78_lit_string_α
.Llit_string_α_105_0:   .quad            .Llit_string_α_105_0_s
.Llit_string_α_105_0_s: .string          "log"
                        .size            n77_lit_string_bx, .-n77_lit_string_bx
                        .type            n78_lit_string_bx, @function
n78_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       mov              r11, 39
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_106_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n79_lit_string_α
.Llit_string_α_106_0:   .quad            .Llit_string_α_106_0_s
.Llit_string_α_106_0_s: .string          "log"
                        .size            n78_lit_string_bx, .-n78_lit_string_bx
                        .type            n79_lit_string_bx, @function
n79_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_107_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n80_lit_string_α
.Llit_string_α_107_0:   .quad            .Llit_string_α_107_0_s
.Llit_string_α_107_0_s: .string          "log"
                        .size            n79_lit_string_bx, .-n79_lit_string_bx
                        .type            n80_lit_string_bx, @function
n80_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_108_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n81_lit_string_α
.Llit_string_α_108_0:   .quad            .Llit_string_α_108_0_s
.Llit_string_α_108_0_s: .string          "log"
                        .size            n80_lit_string_bx, .-n80_lit_string_bx
                        .type            n81_lit_string_bx, @function
n81_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              r11, 42
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_109_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n82_lit_string_α
.Llit_string_α_109_0:   .quad            .Llit_string_α_109_0_s
.Llit_string_α_109_0_s: .string          "log"
                        .size            n81_lit_string_bx, .-n81_lit_string_bx
                        .type            n82_lit_string_bx, @function
n82_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              r11, 43
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_110_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n83_lit_string_α
.Llit_string_α_110_0:   .quad            .Llit_string_α_110_0_s
.Llit_string_α_110_0_s: .string          "log"
                        .size            n82_lit_string_bx, .-n82_lit_string_bx
                        .type            n83_lit_string_bx, @function
n83_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_111_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n84_lit_string_α
.Llit_string_α_111_0:   .quad            .Llit_string_α_111_0_s
.Llit_string_α_111_0_s: .string          "log"
                        .size            n83_lit_string_bx, .-n83_lit_string_bx
                        .type            n84_lit_string_bx, @function
n84_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       mov              r11, 45
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_112_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n85_lit_string_α
.Llit_string_α_112_0:   .quad            .Llit_string_α_112_0_s
.Llit_string_α_112_0_s: .string          "log"
                        .size            n84_lit_string_bx, .-n84_lit_string_bx
                        .type            n85_lit_string_bx, @function
n85_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              r11, 46
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_113_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n86_lit_string_α
.Llit_string_α_113_0:   .quad            .Llit_string_α_113_0_s
.Llit_string_α_113_0_s: .string          "log"
                        .size            n85_lit_string_bx, .-n85_lit_string_bx
                        .type            n86_lit_string_bx, @function
n86_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              r11, 47
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_114_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n87_call_prolog_α
.Llit_string_α_114_0:   .quad            .Llit_string_α_114_0_s
.Llit_string_α_114_0_s: .string          "x"
                        .size            n86_lit_string_bx, .-n86_lit_string_bx
                        .type            n87_call_prolog_bx, @function
n87_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_call_prolog_α:      mov              r11, 48
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n88_call_prolog_α
n87_call_prolog_β:      mov              r11, 48;                             jmp   log10$2F0_ω
                        .size            n87_call_prolog_bx, .-n87_call_prolog_bx
                        .type            n88_call_prolog_bx, @function
n88_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_call_prolog_α:      mov              r11, 49
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n89_call_prolog_α
n88_call_prolog_β:      mov              r11, 49;                             jmp   log10$2F0_ω
                        .size            n88_call_prolog_bx, .-n88_call_prolog_bx
                        .type            n89_call_prolog_bx, @function
n89_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_call_prolog_α:      mov              r11, 50
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        lea              rdi, [rsp + 368]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n90_call_prolog_α
n89_call_prolog_β:      mov              r11, 50;                             jmp   log10$2F0_ω
                        .size            n89_call_prolog_bx, .-n89_call_prolog_bx
                        .type            n90_call_prolog_bx, @function
n90_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_call_prolog_α:      mov              r11, 51
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n91_call_prolog_α
n90_call_prolog_β:      mov              r11, 51;                             jmp   log10$2F0_ω
                        .size            n90_call_prolog_bx, .-n90_call_prolog_bx
                        .type            n91_call_prolog_bx, @function
n91_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_call_prolog_α:      mov              r11, 52
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n92_call_prolog_α
n91_call_prolog_β:      mov              r11, 52;                             jmp   log10$2F0_ω
                        .size            n91_call_prolog_bx, .-n91_call_prolog_bx
                        .type            n92_call_prolog_bx, @function
n92_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_call_prolog_α:      mov              r11, 53
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n93_call_prolog_α
n92_call_prolog_β:      mov              r11, 53;                             jmp   log10$2F0_ω
                        .size            n92_call_prolog_bx, .-n92_call_prolog_bx
                        .type            n93_call_prolog_bx, @function
n93_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_prolog_α:      mov              r11, 54
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n94_call_prolog_α
n93_call_prolog_β:      mov              r11, 54;                             jmp   log10$2F0_ω
                        .size            n93_call_prolog_bx, .-n93_call_prolog_bx
                        .type            n94_call_prolog_bx, @function
n94_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_call_prolog_α:      mov              r11, 55
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n95_call_prolog_α
n94_call_prolog_β:      mov              r11, 55;                             jmp   log10$2F0_ω
                        .size            n94_call_prolog_bx, .-n94_call_prolog_bx
                        .type            n95_call_prolog_bx, @function
n95_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_call_prolog_α:      mov              r11, 56
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   n96_call_prolog_α
n95_call_prolog_β:      mov              r11, 56;                             jmp   log10$2F0_ω
                        .size            n95_call_prolog_bx, .-n95_call_prolog_bx
                        .type            n96_call_prolog_bx, @function
n96_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_call_prolog_α:      mov              r11, 57
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n102_call_prolog_α
                                                                              jmp   n97_lit_string_α
n96_call_prolog_β:      mov              r11, 57;                             jmp   n102_call_prolog_α
                        .size            n96_call_prolog_bx, .-n96_call_prolog_bx
                        .type            n97_lit_string_bx, @function
n97_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              r11, 58
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_125_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n98_var_ref_α
.Llit_string_α_125_0:   .quad            .Llit_string_α_125_0_s
.Llit_string_α_125_0_s: .string          "x"
                        .size            n97_lit_string_bx, .-n97_lit_string_bx
                        .type            n98_var_ref_bx, @function
n98_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1024]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n99_call_proc_staged_α
                        .size            n98_var_ref_bx, .-n98_var_ref_bx
                        .type            n99_call_proc_staged_bx, @function
n99_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_call_proc_staged_α: mov              r11, 60
                        lea              rsi, [rsp + 912]
                        lea              rdx, [rsp + 992]
                        lea              rcx, [rsp + 1008]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_129_2
.Lcall_proc_staged_α_129_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_129_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lcall_proc_staged_α_129_29:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n102_call_prolog_α
                                                                              jmp   n100_move_label_α
n99_call_proc_staged_β: mov              r11, 60;                             jmp   n102_call_prolog_α
.Lcall_proc_staged_β_129_0:
                        .quad            .Lcall_proc_staged_β_129_0_s
.Lcall_proc_staged_β_129_0_s:
                        .string          "d/3"
                        .size            n99_call_proc_staged_bx, .-n99_call_proc_staged_bx
                        .type            n100_move_label_bx, @function
n100_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_move_label_α:      mov              r11, 61
                        lea              rax, [rip + n99_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   log10$2F0_γ
                        .size            n100_move_label_bx, .-n100_move_label_bx
                        .type            n101_disjunction_bx, @function
n101_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_disjunction_α:     mov              r11, 62
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
n101_disjunction_β:     mov              r11, 62;                             jmp   log10$2F0_ω
                        .size            n101_disjunction_bx, .-n101_disjunction_bx
                        .type            n102_call_prolog_bx, @function
n102_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_call_prolog_α:     mov              r11, 63
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                                                                              jmp   log10$2F0_ω
n102_call_prolog_β:     mov              r11, 63;                             jmp   log10$2F0_ω
                        .size            n102_call_prolog_bx, .-n102_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_β:
                                                                              jmp   n101_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1064]
                        add              rsp, 1088;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_ω:
                        mov              rcx, qword ptr [rsp + 1072]
                        add              rsp, 1088;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Llog10$2F0_α_135_2]
                        lea              rdx, [rip + .Llog10$2F0_α_135_3];    jmp   FN__log10$2F0
.Llog10$2F0_α_135_2:    pop              r12
                        pop              r12;                                 jmp   r12
.Llog10$2F0_α_135_3:    pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__ops8$2F0:
                        sub              rsp, 1072
                        mov              qword ptr [rsp + 1048], rcx
                        mov              qword ptr [rsp + 1056], rdx
                        mov              qword ptr [rsp + 1064], rsp
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
                        .type            n136_call_prolog_bx, @function
n136_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_call_prolog_α:     mov              r11, 64
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_165_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lcall_prolog_α_165_101
.Lcall_prolog_α_165_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_165_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_165_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_165_101
.Lcall_prolog_α_165_100:
                        lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_165_101:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n137_lit_string_α
n136_call_prolog_β:     mov              r11, 64;                             jmp   ops8$2F0_ω
                        .size            n136_call_prolog_bx, .-n136_call_prolog_bx
                        .type            n137_lit_string_bx, @function
n137_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      mov              r11, 65
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_166_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n138_lit_string_α
.Llit_string_α_166_0:   .quad            .Llit_string_α_166_0_s
.Llit_string_α_166_0_s: .string          "*"
                        .size            n137_lit_string_bx, .-n137_lit_string_bx
                        .type            n138_lit_string_bx, @function
n138_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      mov              r11, 66
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_167_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n139_lit_string_α
.Llit_string_α_167_0:   .quad            .Llit_string_α_167_0_s
.Llit_string_α_167_0_s: .string          "+"
                        .size            n138_lit_string_bx, .-n138_lit_string_bx
                        .type            n139_lit_string_bx, @function
n139_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:      mov              r11, 67
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_168_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n140_lit_integer_α
.Llit_string_α_168_0:   .quad            .Llit_string_α_168_0_s
.Llit_string_α_168_0_s: .string          "x"
                        .size            n139_lit_string_bx, .-n139_lit_string_bx
                        .type            n140_lit_integer_bx, @function
n140_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:     mov              r11, 68
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_169_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n141_call_prolog_α
.Llit_integer_α_169_0:  .quad            1
                        .size            n140_lit_integer_bx, .-n140_lit_integer_bx
                        .type            n141_call_prolog_bx, @function
n141_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_call_prolog_α:     mov              r11, 69
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n142_lit_string_α
n141_call_prolog_β:     mov              r11, 69;                             jmp   ops8$2F0_ω
                        .size            n141_call_prolog_bx, .-n141_call_prolog_bx
                        .type            n142_lit_string_bx, @function
n142_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:      mov              r11, 70
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_171_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n143_lit_string_α
.Llit_string_α_171_0:   .quad            .Llit_string_α_171_0_s
.Llit_string_α_171_0_s: .string          "*"
                        .size            n142_lit_string_bx, .-n142_lit_string_bx
                        .type            n143_lit_string_bx, @function
n143_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:      mov              r11, 71
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_172_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n144_lit_string_α
.Llit_string_α_172_0:   .quad            .Llit_string_α_172_0_s
.Llit_string_α_172_0_s: .string          "+"
                        .size            n143_lit_string_bx, .-n143_lit_string_bx
                        .type            n144_lit_string_bx, @function
n144_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:      mov              r11, 72
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_173_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n145_lit_string_α
.Llit_string_α_173_0:   .quad            .Llit_string_α_173_0_s
.Llit_string_α_173_0_s: .string          "^"
                        .size            n144_lit_string_bx, .-n144_lit_string_bx
                        .type            n145_lit_string_bx, @function
n145_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:      mov              r11, 73
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_174_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n146_lit_integer_α
.Llit_string_α_174_0:   .quad            .Llit_string_α_174_0_s
.Llit_string_α_174_0_s: .string          "x"
                        .size            n145_lit_string_bx, .-n145_lit_string_bx
                        .type            n146_lit_integer_bx, @function
n146_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:     mov              r11, 74
                        mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_175_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n147_call_prolog_α
.Llit_integer_α_175_0:  .quad            2
                        .size            n146_lit_integer_bx, .-n146_lit_integer_bx
                        .type            n147_call_prolog_bx, @function
n147_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_call_prolog_α:     mov              r11, 75
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n148_lit_integer_α
n147_call_prolog_β:     mov              r11, 75;                             jmp   ops8$2F0_ω
                        .size            n147_call_prolog_bx, .-n147_call_prolog_bx
                        .type            n148_lit_integer_bx, @function
n148_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     mov              r11, 76
                        mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_177_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n149_call_prolog_α
.Llit_integer_α_177_0:  .quad            2
                        .size            n148_lit_integer_bx, .-n148_lit_integer_bx
                        .type            n149_call_prolog_bx, @function
n149_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_call_prolog_α:     mov              r11, 77
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n150_lit_string_α
n149_call_prolog_β:     mov              r11, 77;                             jmp   ops8$2F0_ω
                        .size            n149_call_prolog_bx, .-n149_call_prolog_bx
                        .type            n150_lit_string_bx, @function
n150_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:      mov              r11, 78
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_179_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n151_lit_string_α
.Llit_string_α_179_0:   .quad            .Llit_string_α_179_0_s
.Llit_string_α_179_0_s: .string          "+"
                        .size            n150_lit_string_bx, .-n150_lit_string_bx
                        .type            n151_lit_string_bx, @function
n151_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:      mov              r11, 79
                        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_180_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n152_lit_string_α
.Llit_string_α_180_0:   .quad            .Llit_string_α_180_0_s
.Llit_string_α_180_0_s: .string          "^"
                        .size            n151_lit_string_bx, .-n151_lit_string_bx
                        .type            n152_lit_string_bx, @function
n152_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      mov              r11, 80
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_181_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n153_lit_integer_α
.Llit_string_α_181_0:   .quad            .Llit_string_α_181_0_s
.Llit_string_α_181_0_s: .string          "x"
                        .size            n152_lit_string_bx, .-n152_lit_string_bx
                        .type            n153_lit_integer_bx, @function
n153_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              r11, 81
                        mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_182_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n154_call_prolog_α
.Llit_integer_α_182_0:  .quad            3
                        .size            n153_lit_integer_bx, .-n153_lit_integer_bx
                        .type            n154_call_prolog_bx, @function
n154_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_call_prolog_α:     mov              r11, 82
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n155_lit_integer_α
n154_call_prolog_β:     mov              r11, 82;                             jmp   ops8$2F0_ω
                        .size            n154_call_prolog_bx, .-n154_call_prolog_bx
                        .type            n155_lit_integer_bx, @function
n155_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:     mov              r11, 83
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_184_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n156_call_prolog_α
.Llit_integer_α_184_0:  .quad            3
                        .size            n155_lit_integer_bx, .-n155_lit_integer_bx
                        .type            n156_call_prolog_bx, @function
n156_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_call_prolog_α:     mov              r11, 84
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n157_call_prolog_α
n156_call_prolog_β:     mov              r11, 84;                             jmp   ops8$2F0_ω
                        .size            n156_call_prolog_bx, .-n156_call_prolog_bx
                        .type            n157_call_prolog_bx, @function
n157_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_call_prolog_α:     mov              r11, 85
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 808], rax
                        lea              rdi, [rsp + 800]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n158_call_prolog_α
n157_call_prolog_β:     mov              r11, 85;                             jmp   ops8$2F0_ω
                        .size            n157_call_prolog_bx, .-n157_call_prolog_bx
                        .type            n158_call_prolog_bx, @function
n158_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_call_prolog_α:     mov              r11, 86
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 904], rax
                        lea              rdi, [rsp + 896]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n164_call_prolog_α
                                                                              jmp   n159_lit_string_α
n158_call_prolog_β:     mov              r11, 86;                             jmp   n164_call_prolog_α
                        .size            n158_call_prolog_bx, .-n158_call_prolog_bx
                        .type            n159_lit_string_bx, @function
n159_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:      mov              r11, 87
                        mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_188_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n160_var_ref_α
.Llit_string_α_188_0:   .quad            .Llit_string_α_188_0_s
.Llit_string_α_188_0_s: .string          "x"
                        .size            n159_lit_string_bx, .-n159_lit_string_bx
                        .type            n160_var_ref_bx, @function
n160_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:         mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1008]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n161_call_proc_staged_α
                        .size            n160_var_ref_bx, .-n160_var_ref_bx
                        .type            n161_call_proc_staged_bx, @function
n161_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_call_proc_staged_α:
                        mov              r11, 89
                        lea              rsi, [rsp + 880]
                        lea              rdx, [rsp + 976]
                        lea              rcx, [rsp + 992]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_192_2
.Lcall_proc_staged_α_192_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_192_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lcall_proc_staged_α_192_29:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n164_call_prolog_α
                                                                              jmp   n162_move_label_α
n161_call_proc_staged_β:
                        mov              r11, 89;                             jmp   n164_call_prolog_α
.Lcall_proc_staged_β_192_0:
                        .quad            .Lcall_proc_staged_β_192_0_s
.Lcall_proc_staged_β_192_0_s:
                        .string          "d/3"
                        .size            n161_call_proc_staged_bx, .-n161_call_proc_staged_bx
                        .type            n162_move_label_bx, @function
n162_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_move_label_α:      mov              r11, 90
                        lea              rax, [rip + n161_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   ops8$2F0_γ
                        .size            n162_move_label_bx, .-n162_move_label_bx
                        .type            n163_disjunction_bx, @function
n163_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_disjunction_α:     mov              r11, 91
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
n163_disjunction_β:     mov              r11, 91;                             jmp   ops8$2F0_ω
                        .size            n163_disjunction_bx, .-n163_disjunction_bx
                        .type            n164_call_prolog_bx, @function
n164_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_call_prolog_α:     mov              r11, 92
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   ops8$2F0_ω
n164_call_prolog_β:     mov              r11, 92;                             jmp   ops8$2F0_ω
                        .size            n164_call_prolog_bx, .-n164_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_β:
                                                                              jmp   n163_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1048]
                        add              rsp, 1072;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_ω:
                        mov              rcx, qword ptr [rsp + 1056]
                        add              rsp, 1072;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lops8$2F0_α_198_2]
                        lea              rdx, [rip + .Lops8$2F0_α_198_3];     jmp   FN__ops8$2F0
.Lops8$2F0_α_198_2:     pop              r12
                        pop              r12;                                 jmp   r12
.Lops8$2F0_α_198_3:     pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__d$2F3:
                        sub              rsp, 8272
                        mov              qword ptr [rsp + 8248], rcx
                        mov              qword ptr [rsp + 8256], rdx
                        mov              qword ptr [rsp + 8264], rsp
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
                        .type            n199_call_prolog_bx, @function
n199_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_call_prolog_α:     mov              r11, 93
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_477_102
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lcall_prolog_α_477_101
.Lcall_prolog_α_477_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_477_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_477_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_477_101
.Lcall_prolog_α_477_100:
                        lea              rdi, [rsp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_477_101:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n200_var_ref_α
n199_call_prolog_β:     mov              r11, 93;                             jmp   d$2F3_ω
                        .size            n199_call_prolog_bx, .-n199_call_prolog_bx
                        .type            n200_var_ref_bx, @function
n200_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 8080], rax
                        mov              qword ptr [rsp + 8088], rdx;         jmp   n201_lit_integer_α
                        .size            n200_var_ref_bx, .-n200_var_ref_bx
                        .type            n201_lit_integer_bx, @function
n201_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:     mov              r11, 95
                        mov              qword ptr [rsp + 8096], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_480_0]
                        mov              qword ptr [rsp + 8104], rax;         jmp   n202_lit_string_α
.Llit_integer_α_480_0:  .quad            516
                        .size            n201_lit_integer_bx, .-n201_lit_integer_bx
                        .type            n202_lit_string_bx, @function
n202_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:      mov              r11, 96
                        mov              qword ptr [rsp + 8112], 2            # result
                        mov              dword ptr [rsp + 8116], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_481_0]
                        mov              qword ptr [rsp + 8120], rax;         jmp   n203_call_prolog_α
.Llit_string_α_481_0:   .quad            .Llit_string_α_481_0_s
.Llit_string_α_481_0_s: .string          "+"
                        .size            n202_lit_string_bx, .-n202_lit_string_bx
                        .type            n203_call_prolog_bx, @function
n203_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_call_prolog_α:     mov              r11, 97
                        mov              rax, qword ptr [rsp + 8112]
                        mov              qword ptr [rsp + 8064], rax
                        mov              rax, qword ptr [rsp + 8120]
                        mov              qword ptr [rsp + 8072], rax
                        mov              rax, qword ptr [rsp + 8096]
                        mov              qword ptr [rsp + 8048], rax
                        mov              rax, qword ptr [rsp + 8104]
                        mov              qword ptr [rsp + 8056], rax
                        mov              rax, qword ptr [rsp + 8080]
                        mov              qword ptr [rsp + 8032], rax
                        mov              rax, qword ptr [rsp + 8088]
                        mov              qword ptr [rsp + 8040], rax
                        lea              rdi, [rsp + 8032]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8016], rax
                        mov              qword ptr [rsp + 8024], rdx
                        cmp              al, 104;                             je    n230_var_ref_α
                                                                              jmp   n204_var_ref_α
n203_call_prolog_β:     mov              r11, 97;                             jmp   n230_var_ref_α
                        .size            n203_call_prolog_bx, .-n203_call_prolog_bx
                        .type            n204_var_ref_bx, @function
n204_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7872], rax
                        mov              qword ptr [rsp + 7880], rdx;         jmp   n205_lit_string_α
                        .size            n204_var_ref_bx, .-n204_var_ref_bx
                        .type            n205_lit_string_bx, @function
n205_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:      mov              r11, 99
                        mov              qword ptr [rsp + 8000], 2            # result
                        mov              dword ptr [rsp + 8004], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_485_0]
                        mov              qword ptr [rsp + 8008], rax;         jmp   n206_var_ref_α
.Llit_string_α_485_0:   .quad            .Llit_string_α_485_0_s
.Llit_string_α_485_0_s: .string          "+"
                        .size            n205_lit_string_bx, .-n205_lit_string_bx
                        .type            n206_var_ref_bx, @function
n206_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 100
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7888], rax
                        mov              qword ptr [rsp + 7896], rdx;         jmp   n207_var_ref_α
                        .size            n206_var_ref_bx, .-n206_var_ref_bx
                        .type            n207_var_ref_bx, @function
n207_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7904], rax
                        mov              qword ptr [rsp + 7912], rdx;         jmp   n208_call_prolog_α
                        .size            n207_var_ref_bx, .-n207_var_ref_bx
                        .type            n208_call_prolog_bx, @function
n208_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_call_prolog_α:     mov              r11, 102
                        mov              rax, qword ptr [rsp + 7904]
                        mov              qword ptr [rsp + 7968], rax
                        mov              rax, qword ptr [rsp + 7912]
                        mov              qword ptr [rsp + 7976], rax
                        mov              rax, qword ptr [rsp + 7888]
                        mov              qword ptr [rsp + 7952], rax
                        mov              rax, qword ptr [rsp + 7896]
                        mov              qword ptr [rsp + 7960], rax
                        mov              rax, qword ptr [rsp + 8000]
                        mov              qword ptr [rsp + 7936], rax
                        mov              rax, qword ptr [rsp + 8008]
                        mov              qword ptr [rsp + 7944], rax
                        lea              rdi, [rsp + 7936]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7920], rax
                        mov              qword ptr [rsp + 7928], rdx
                        cmp              al, 104;                             je    n229_call_prolog_α
                                                                              jmp   n209_call_prolog_α
n208_call_prolog_β:     mov              r11, 102;                            jmp   n229_call_prolog_α
                        .size            n208_call_prolog_bx, .-n208_call_prolog_bx
                        .type            n209_call_prolog_bx, @function
n209_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_call_prolog_α:     mov              r11, 103
                        mov              rax, qword ptr [rsp + 7920]
                        mov              qword ptr [rsp + 7856], rax
                        mov              rax, qword ptr [rsp + 7928]
                        mov              qword ptr [rsp + 7864], rax
                        mov              rax, qword ptr [rsp + 7872]
                        mov              qword ptr [rsp + 7840], rax
                        mov              rax, qword ptr [rsp + 7880]
                        mov              qword ptr [rsp + 7848], rax
                        lea              rdi, [rsp + 7840]
                        lea              r8, [rsp + 7840]
.Lcall_prolog_α_491_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_491_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_491_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_491_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_491_40
.Lcall_prolog_α_491_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_491_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_491_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_491_40
.Lcall_prolog_α_491_56: cmp              al, 72;                              jne   .Lcall_prolog_α_491_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_491_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_491_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_491_40
.Lcall_prolog_α_491_41: lea              r9, [rsp + 7856]
.Lcall_prolog_α_491_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_491_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_491_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_491_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_491_42
.Lcall_prolog_α_491_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_491_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_491_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_491_42
.Lcall_prolog_α_491_58: cmp              al, 72;                              jne   .Lcall_prolog_α_491_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_491_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_491_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_491_42
.Lcall_prolog_α_491_43: cmp              r8, r9;                              je    .Lcall_prolog_α_491_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_491_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_491_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_491_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_491_44
                                                                              jmp   .Lcall_prolog_α_491_45
.Lcall_prolog_α_491_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_491_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_491_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_491_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_491_53
                                                                              jmp   .Lcall_prolog_α_491_46
.Lcall_prolog_α_491_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_491_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_491_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_491_51
.Lcall_prolog_α_491_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_491_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_491_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_491_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_491_47
                                                                              jmp   .Lcall_prolog_α_491_48
.Lcall_prolog_α_491_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_491_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_491_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_491_51
.Lcall_prolog_α_491_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_491_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_491_53
                                                                              jmp   .Lcall_prolog_α_491_52
.Lcall_prolog_α_491_49: cmp              dl, 80;                              je    .Lcall_prolog_α_491_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_491_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_491_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_491_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_491_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_491_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_491_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_491_51
                                                                              jmp   .Lcall_prolog_α_491_52
.Lcall_prolog_α_491_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_491_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_491_53
.Lcall_prolog_α_491_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_491_54
.Lcall_prolog_α_491_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_491_54
.Lcall_prolog_α_491_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_491_54: mov              qword ptr [rsp + 7824], rax
                        mov              qword ptr [rsp + 7832], rdx
                        cmp              al, 104;                             je    n229_call_prolog_α
                                                                              jmp   n210_var_ref_α
n209_call_prolog_β:     mov              r11, 103;                            jmp   n229_call_prolog_α
                        .size            n209_call_prolog_bx, .-n209_call_prolog_bx
                        .type            n210_var_ref_bx, @function
n210_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 7792], rax
                        mov              qword ptr [rsp + 7800], rdx;         jmp   n211_var_ref_α
                        .size            n210_var_ref_bx, .-n210_var_ref_bx
                        .type            n211_var_ref_bx, @function
n211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 105
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7808], rax
                        mov              qword ptr [rsp + 7816], rdx;         jmp   n212_call_prolog_α
                        .size            n211_var_ref_bx, .-n211_var_ref_bx
                        .type            n212_call_prolog_bx, @function
n212_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_call_prolog_α:     mov              r11, 106
                        mov              rax, qword ptr [rsp + 7808]
                        mov              qword ptr [rsp + 7776], rax
                        mov              rax, qword ptr [rsp + 7816]
                        mov              qword ptr [rsp + 7784], rax
                        mov              rax, qword ptr [rsp + 7792]
                        mov              qword ptr [rsp + 7760], rax
                        mov              rax, qword ptr [rsp + 7800]
                        mov              qword ptr [rsp + 7768], rax
                        lea              rdi, [rsp + 7760]
                        lea              r8, [rsp + 7760]
.Lcall_prolog_α_496_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_496_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_496_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_496_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_496_40
.Lcall_prolog_α_496_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_496_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_496_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_496_40
.Lcall_prolog_α_496_56: cmp              al, 72;                              jne   .Lcall_prolog_α_496_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_496_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_496_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_496_40
.Lcall_prolog_α_496_41: lea              r9, [rsp + 7776]
.Lcall_prolog_α_496_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_496_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_496_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_496_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_496_42
.Lcall_prolog_α_496_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_496_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_496_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_496_42
.Lcall_prolog_α_496_58: cmp              al, 72;                              jne   .Lcall_prolog_α_496_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_496_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_496_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_496_42
.Lcall_prolog_α_496_43: cmp              r8, r9;                              je    .Lcall_prolog_α_496_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_496_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_496_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_496_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_496_44
                                                                              jmp   .Lcall_prolog_α_496_45
.Lcall_prolog_α_496_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_496_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_496_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_496_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_496_53
                                                                              jmp   .Lcall_prolog_α_496_46
.Lcall_prolog_α_496_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_496_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_496_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_496_51
.Lcall_prolog_α_496_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_496_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_496_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_496_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_496_47
                                                                              jmp   .Lcall_prolog_α_496_48
.Lcall_prolog_α_496_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_496_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_496_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_496_51
.Lcall_prolog_α_496_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_496_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_496_53
                                                                              jmp   .Lcall_prolog_α_496_52
.Lcall_prolog_α_496_49: cmp              dl, 80;                              je    .Lcall_prolog_α_496_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_496_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_496_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_496_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_496_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_496_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_496_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_496_51
                                                                              jmp   .Lcall_prolog_α_496_52
.Lcall_prolog_α_496_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_496_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_496_53
.Lcall_prolog_α_496_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_496_54
.Lcall_prolog_α_496_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_496_54
.Lcall_prolog_α_496_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_496_54: mov              qword ptr [rsp + 7744], rax
                        mov              qword ptr [rsp + 7752], rdx
                        cmp              al, 104;                             je    n229_call_prolog_α
                                                                              jmp   n213_var_ref_α
n212_call_prolog_β:     mov              r11, 106;                            jmp   n229_call_prolog_α
                        .size            n212_call_prolog_bx, .-n212_call_prolog_bx
                        .type            n213_var_ref_bx, @function
n213_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 7600], rax
                        mov              qword ptr [rsp + 7608], rdx;         jmp   n214_lit_string_α
                        .size            n213_var_ref_bx, .-n213_var_ref_bx
                        .type            n214_lit_string_bx, @function
n214_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:      mov              r11, 108
                        mov              qword ptr [rsp + 7728], 2            # result
                        mov              dword ptr [rsp + 7732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_499_0]
                        mov              qword ptr [rsp + 7736], rax;         jmp   n215_var_ref_α
.Llit_string_α_499_0:   .quad            .Llit_string_α_499_0_s
.Llit_string_α_499_0_s: .string          "+"
                        .size            n214_lit_string_bx, .-n214_lit_string_bx
                        .type            n215_var_ref_bx, @function
n215_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 7616], rax
                        mov              qword ptr [rsp + 7624], rdx;         jmp   n216_var_ref_α
                        .size            n215_var_ref_bx, .-n215_var_ref_bx
                        .type            n216_var_ref_bx, @function
n216_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 7632], rax
                        mov              qword ptr [rsp + 7640], rdx;         jmp   n217_call_prolog_α
                        .size            n216_var_ref_bx, .-n216_var_ref_bx
                        .type            n217_call_prolog_bx, @function
n217_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_call_prolog_α:     mov              r11, 111
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 7696], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 7704], rax
                        mov              rax, qword ptr [rsp + 7616]
                        mov              qword ptr [rsp + 7680], rax
                        mov              rax, qword ptr [rsp + 7624]
                        mov              qword ptr [rsp + 7688], rax
                        mov              rax, qword ptr [rsp + 7728]
                        mov              qword ptr [rsp + 7664], rax
                        mov              rax, qword ptr [rsp + 7736]
                        mov              qword ptr [rsp + 7672], rax
                        lea              rdi, [rsp + 7664]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7648], rax
                        mov              qword ptr [rsp + 7656], rdx
                        cmp              al, 104;                             je    n229_call_prolog_α
                                                                              jmp   n218_call_prolog_α
n217_call_prolog_β:     mov              r11, 111;                            jmp   n229_call_prolog_α
                        .size            n217_call_prolog_bx, .-n217_call_prolog_bx
                        .type            n218_call_prolog_bx, @function
n218_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_call_prolog_α:     mov              r11, 112
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 7584], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 7592], rax
                        mov              rax, qword ptr [rsp + 7600]
                        mov              qword ptr [rsp + 7568], rax
                        mov              rax, qword ptr [rsp + 7608]
                        mov              qword ptr [rsp + 7576], rax
                        lea              rdi, [rsp + 7568]
                        lea              r8, [rsp + 7568]
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
.Lcall_prolog_α_505_41: lea              r9, [rsp + 7584]
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
.Lcall_prolog_α_505_54: mov              qword ptr [rsp + 7552], rax
                        mov              qword ptr [rsp + 7560], rdx
                        cmp              al, 104;                             je    n229_call_prolog_α
                                                                              jmp   n219_cut_α
n218_call_prolog_β:     mov              r11, 112;                            jmp   n229_call_prolog_α
                        .size            n218_call_prolog_bx, .-n218_call_prolog_bx
                        .type            n219_cut_bx, @function
n219_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_cut_α:             mov              r11, 113;                            jmp   n220_var_ref_α
                        .size            n219_cut_bx, .-n219_cut_bx
                        .type            n220_var_ref_bx, @function
n220_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7504], rax
                        mov              qword ptr [rsp + 7512], rdx;         jmp   n221_var_ref_α
                        .size            n220_var_ref_bx, .-n220_var_ref_bx
                        .type            n221_var_ref_bx, @function
n221_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7520], rax
                        mov              qword ptr [rsp + 7528], rdx;         jmp   n222_var_ref_α
                        .size            n221_var_ref_bx, .-n221_var_ref_bx
                        .type            n222_var_ref_bx, @function
n222_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 7536], rax
                        mov              qword ptr [rsp + 7544], rdx;         jmp   n223_call_proc_staged_α
                        .size            n222_var_ref_bx, .-n222_var_ref_bx
                        .type            n223_call_proc_staged_bx, @function
n223_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        mov              r11, 117
                        lea              rsi, [rsp + 7504]
                        lea              rdx, [rsp + 7520]
                        lea              rcx, [rsp + 7536]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_514_2
.Lcall_proc_staged_α_514_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_514_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7424], rax
                        mov              qword ptr [rsp + 7432], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7424]
                        mov              rdx, qword ptr [rsp + 7432]
.Lcall_proc_staged_α_514_29:
                        mov              qword ptr [rsp + 7424], rax
                        mov              qword ptr [rsp + 7432], rdx
                        cmp              al, 104;                             je    n476_call_prolog_α
                                                                              jmp   n224_var_ref_α
n223_call_proc_staged_β:
                        mov              r11, 117;                            jmp   n476_call_prolog_α
.Lcall_proc_staged_β_514_0:
                        .quad            .Lcall_proc_staged_β_514_0_s
.Lcall_proc_staged_β_514_0_s:
                        .string          "d/3"
                        .size            n223_call_proc_staged_bx, .-n223_call_proc_staged_bx
                        .type            n224_var_ref_bx, @function
n224_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7376], rax
                        mov              qword ptr [rsp + 7384], rdx;         jmp   n225_var_ref_α
                        .size            n224_var_ref_bx, .-n224_var_ref_bx
                        .type            n225_var_ref_bx, @function
n225_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7392], rax
                        mov              qword ptr [rsp + 7400], rdx;         jmp   n226_var_ref_α
                        .size            n225_var_ref_bx, .-n225_var_ref_bx
                        .type            n226_var_ref_bx, @function
n226_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 7408], rax
                        mov              qword ptr [rsp + 7416], rdx;         jmp   n227_call_proc_staged_α
                        .size            n226_var_ref_bx, .-n226_var_ref_bx
                        .type            n227_call_proc_staged_bx, @function
n227_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_call_proc_staged_α:
                        mov              r11, 121
                        lea              rsi, [rsp + 7376]
                        lea              rdx, [rsp + 7392]
                        lea              rcx, [rsp + 7408]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_522_2
.Lcall_proc_staged_α_522_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_522_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7296]
                        mov              rdx, qword ptr [rsp + 7304]
.Lcall_proc_staged_α_522_29:
                        mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx
                        cmp              al, 104;                             je    n223_call_proc_staged_β
                                                                              jmp   n228_move_label_α
n227_call_proc_staged_β:
                        mov              r11, 121;                            jmp   n223_call_proc_staged_β
.Lcall_proc_staged_β_522_0:
                        .quad            .Lcall_proc_staged_β_522_0_s
.Lcall_proc_staged_β_522_0_s:
                        .string          "d/3"
                        .size            n227_call_proc_staged_bx, .-n227_call_proc_staged_bx
                        .type            n228_move_label_bx, @function
n228_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_move_label_α:      mov              r11, 122
                        lea              rax, [rip + n227_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n228_move_label_bx, .-n228_move_label_bx
                        .type            n229_call_prolog_bx, @function
n229_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_call_prolog_α:     mov              r11, 123
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 7280], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 7288], rax
                        lea              rdi, [rsp + 7280]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7264], rax
                        mov              qword ptr [rsp + 7272], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n230_var_ref_α
n229_call_prolog_β:     mov              r11, 123;                            jmp   d$2F3_ω
                        .size            n229_call_prolog_bx, .-n229_call_prolog_bx
                        .type            n230_var_ref_bx, @function
n230_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7216], rax
                        mov              qword ptr [rsp + 7224], rdx;         jmp   n231_lit_integer_α
                        .size            n230_var_ref_bx, .-n230_var_ref_bx
                        .type            n231_lit_integer_bx, @function
n231_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:     mov              r11, 125
                        mov              qword ptr [rsp + 7232], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_528_0]
                        mov              qword ptr [rsp + 7240], rax;         jmp   n232_lit_string_α
.Llit_integer_α_528_0:  .quad            516
                        .size            n231_lit_integer_bx, .-n231_lit_integer_bx
                        .type            n232_lit_string_bx, @function
n232_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rsp + 7248], 2            # result
                        mov              dword ptr [rsp + 7252], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_529_0]
                        mov              qword ptr [rsp + 7256], rax;         jmp   n233_call_prolog_α
.Llit_string_α_529_0:   .quad            .Llit_string_α_529_0_s
.Llit_string_α_529_0_s: .string          "-"
                        .size            n232_lit_string_bx, .-n232_lit_string_bx
                        .type            n233_call_prolog_bx, @function
n233_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_call_prolog_α:     mov              r11, 127
                        mov              rax, qword ptr [rsp + 7248]
                        mov              qword ptr [rsp + 7200], rax
                        mov              rax, qword ptr [rsp + 7256]
                        mov              qword ptr [rsp + 7208], rax
                        mov              rax, qword ptr [rsp + 7232]
                        mov              qword ptr [rsp + 7184], rax
                        mov              rax, qword ptr [rsp + 7240]
                        mov              qword ptr [rsp + 7192], rax
                        mov              rax, qword ptr [rsp + 7216]
                        mov              qword ptr [rsp + 7168], rax
                        mov              rax, qword ptr [rsp + 7224]
                        mov              qword ptr [rsp + 7176], rax
                        lea              rdi, [rsp + 7168]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7152], rax
                        mov              qword ptr [rsp + 7160], rdx
                        cmp              al, 104;                             je    n260_var_ref_α
                                                                              jmp   n234_var_ref_α
n233_call_prolog_β:     mov              r11, 127;                            jmp   n260_var_ref_α
                        .size            n233_call_prolog_bx, .-n233_call_prolog_bx
                        .type            n234_var_ref_bx, @function
n234_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7008], rax
                        mov              qword ptr [rsp + 7016], rdx;         jmp   n235_lit_string_α
                        .size            n234_var_ref_bx, .-n234_var_ref_bx
                        .type            n235_lit_string_bx, @function
n235_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:      mov              r11, 129
                        mov              qword ptr [rsp + 7136], 2            # result
                        mov              dword ptr [rsp + 7140], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_533_0]
                        mov              qword ptr [rsp + 7144], rax;         jmp   n236_var_ref_α
.Llit_string_α_533_0:   .quad            .Llit_string_α_533_0_s
.Llit_string_α_533_0_s: .string          "-"
                        .size            n235_lit_string_bx, .-n235_lit_string_bx
                        .type            n236_var_ref_bx, @function
n236_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:         mov              r11, 130
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7024], rax
                        mov              qword ptr [rsp + 7032], rdx;         jmp   n237_var_ref_α
                        .size            n236_var_ref_bx, .-n236_var_ref_bx
                        .type            n237_var_ref_bx, @function
n237_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7040], rax
                        mov              qword ptr [rsp + 7048], rdx;         jmp   n238_call_prolog_α
                        .size            n237_var_ref_bx, .-n237_var_ref_bx
                        .type            n238_call_prolog_bx, @function
n238_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_call_prolog_α:     mov              r11, 132
                        mov              rax, qword ptr [rsp + 7040]
                        mov              qword ptr [rsp + 7104], rax
                        mov              rax, qword ptr [rsp + 7048]
                        mov              qword ptr [rsp + 7112], rax
                        mov              rax, qword ptr [rsp + 7024]
                        mov              qword ptr [rsp + 7088], rax
                        mov              rax, qword ptr [rsp + 7032]
                        mov              qword ptr [rsp + 7096], rax
                        mov              rax, qword ptr [rsp + 7136]
                        mov              qword ptr [rsp + 7072], rax
                        mov              rax, qword ptr [rsp + 7144]
                        mov              qword ptr [rsp + 7080], rax
                        lea              rdi, [rsp + 7072]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7056], rax
                        mov              qword ptr [rsp + 7064], rdx
                        cmp              al, 104;                             je    n259_call_prolog_α
                                                                              jmp   n239_call_prolog_α
n238_call_prolog_β:     mov              r11, 132;                            jmp   n259_call_prolog_α
                        .size            n238_call_prolog_bx, .-n238_call_prolog_bx
                        .type            n239_call_prolog_bx, @function
n239_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_call_prolog_α:     mov              r11, 133
                        mov              rax, qword ptr [rsp + 7056]
                        mov              qword ptr [rsp + 6992], rax
                        mov              rax, qword ptr [rsp + 7064]
                        mov              qword ptr [rsp + 7000], rax
                        mov              rax, qword ptr [rsp + 7008]
                        mov              qword ptr [rsp + 6976], rax
                        mov              rax, qword ptr [rsp + 7016]
                        mov              qword ptr [rsp + 6984], rax
                        lea              rdi, [rsp + 6976]
                        lea              r8, [rsp + 6976]
.Lcall_prolog_α_539_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_539_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_539_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_539_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_539_40
.Lcall_prolog_α_539_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_539_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_539_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_539_40
.Lcall_prolog_α_539_56: cmp              al, 72;                              jne   .Lcall_prolog_α_539_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_539_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_539_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_539_40
.Lcall_prolog_α_539_41: lea              r9, [rsp + 6992]
.Lcall_prolog_α_539_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_539_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_539_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_539_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_539_42
.Lcall_prolog_α_539_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_539_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_539_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_539_42
.Lcall_prolog_α_539_58: cmp              al, 72;                              jne   .Lcall_prolog_α_539_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_539_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_539_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_539_42
.Lcall_prolog_α_539_43: cmp              r8, r9;                              je    .Lcall_prolog_α_539_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_539_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_539_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_539_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_539_44
                                                                              jmp   .Lcall_prolog_α_539_45
.Lcall_prolog_α_539_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_539_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_539_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_539_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_539_53
                                                                              jmp   .Lcall_prolog_α_539_46
.Lcall_prolog_α_539_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_539_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_539_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_539_51
.Lcall_prolog_α_539_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_539_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_539_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_539_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_539_47
                                                                              jmp   .Lcall_prolog_α_539_48
.Lcall_prolog_α_539_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_539_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_539_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_539_51
.Lcall_prolog_α_539_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_539_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_539_53
                                                                              jmp   .Lcall_prolog_α_539_52
.Lcall_prolog_α_539_49: cmp              dl, 80;                              je    .Lcall_prolog_α_539_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_539_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_539_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_539_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_539_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_539_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_539_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_539_51
                                                                              jmp   .Lcall_prolog_α_539_52
.Lcall_prolog_α_539_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_539_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_539_53
.Lcall_prolog_α_539_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_539_54
.Lcall_prolog_α_539_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_539_54
.Lcall_prolog_α_539_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_539_54: mov              qword ptr [rsp + 6960], rax
                        mov              qword ptr [rsp + 6968], rdx
                        cmp              al, 104;                             je    n259_call_prolog_α
                                                                              jmp   n240_var_ref_α
n239_call_prolog_β:     mov              r11, 133;                            jmp   n259_call_prolog_α
                        .size            n239_call_prolog_bx, .-n239_call_prolog_bx
                        .type            n240_var_ref_bx, @function
n240_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 6928], rax
                        mov              qword ptr [rsp + 6936], rdx;         jmp   n241_var_ref_α
                        .size            n240_var_ref_bx, .-n240_var_ref_bx
                        .type            n241_var_ref_bx, @function
n241_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6944], rax
                        mov              qword ptr [rsp + 6952], rdx;         jmp   n242_call_prolog_α
                        .size            n241_var_ref_bx, .-n241_var_ref_bx
                        .type            n242_call_prolog_bx, @function
n242_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_call_prolog_α:     mov              r11, 136
                        mov              rax, qword ptr [rsp + 6944]
                        mov              qword ptr [rsp + 6912], rax
                        mov              rax, qword ptr [rsp + 6952]
                        mov              qword ptr [rsp + 6920], rax
                        mov              rax, qword ptr [rsp + 6928]
                        mov              qword ptr [rsp + 6896], rax
                        mov              rax, qword ptr [rsp + 6936]
                        mov              qword ptr [rsp + 6904], rax
                        lea              rdi, [rsp + 6896]
                        lea              r8, [rsp + 6896]
.Lcall_prolog_α_544_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_544_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_544_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_544_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_544_40
.Lcall_prolog_α_544_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_544_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_544_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_544_40
.Lcall_prolog_α_544_56: cmp              al, 72;                              jne   .Lcall_prolog_α_544_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_544_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_544_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_544_40
.Lcall_prolog_α_544_41: lea              r9, [rsp + 6912]
.Lcall_prolog_α_544_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_544_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_544_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_544_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_544_42
.Lcall_prolog_α_544_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_544_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_544_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_544_42
.Lcall_prolog_α_544_58: cmp              al, 72;                              jne   .Lcall_prolog_α_544_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_544_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_544_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_544_42
.Lcall_prolog_α_544_43: cmp              r8, r9;                              je    .Lcall_prolog_α_544_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_544_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_544_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_544_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_544_44
                                                                              jmp   .Lcall_prolog_α_544_45
.Lcall_prolog_α_544_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_544_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_544_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_544_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_544_53
                                                                              jmp   .Lcall_prolog_α_544_46
.Lcall_prolog_α_544_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_544_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_544_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_544_51
.Lcall_prolog_α_544_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_544_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_544_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_544_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_544_47
                                                                              jmp   .Lcall_prolog_α_544_48
.Lcall_prolog_α_544_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_544_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_544_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_544_51
.Lcall_prolog_α_544_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_544_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_544_53
                                                                              jmp   .Lcall_prolog_α_544_52
.Lcall_prolog_α_544_49: cmp              dl, 80;                              je    .Lcall_prolog_α_544_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_544_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_544_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_544_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_544_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_544_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_544_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_544_51
                                                                              jmp   .Lcall_prolog_α_544_52
.Lcall_prolog_α_544_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_544_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_544_53
.Lcall_prolog_α_544_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_544_54
.Lcall_prolog_α_544_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_544_54
.Lcall_prolog_α_544_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_544_54: mov              qword ptr [rsp + 6880], rax
                        mov              qword ptr [rsp + 6888], rdx
                        cmp              al, 104;                             je    n259_call_prolog_α
                                                                              jmp   n243_var_ref_α
n242_call_prolog_β:     mov              r11, 136;                            jmp   n259_call_prolog_α
                        .size            n242_call_prolog_bx, .-n242_call_prolog_bx
                        .type            n243_var_ref_bx, @function
n243_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 6736], rax
                        mov              qword ptr [rsp + 6744], rdx;         jmp   n244_lit_string_α
                        .size            n243_var_ref_bx, .-n243_var_ref_bx
                        .type            n244_lit_string_bx, @function
n244_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:      mov              r11, 138
                        mov              qword ptr [rsp + 6864], 2            # result
                        mov              dword ptr [rsp + 6868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_547_0]
                        mov              qword ptr [rsp + 6872], rax;         jmp   n245_var_ref_α
.Llit_string_α_547_0:   .quad            .Llit_string_α_547_0_s
.Llit_string_α_547_0_s: .string          "-"
                        .size            n244_lit_string_bx, .-n244_lit_string_bx
                        .type            n245_var_ref_bx, @function
n245_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 6752], rax
                        mov              qword ptr [rsp + 6760], rdx;         jmp   n246_var_ref_α
                        .size            n245_var_ref_bx, .-n245_var_ref_bx
                        .type            n246_var_ref_bx, @function
n246_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 6768], rax
                        mov              qword ptr [rsp + 6776], rdx;         jmp   n247_call_prolog_α
                        .size            n246_var_ref_bx, .-n246_var_ref_bx
                        .type            n247_call_prolog_bx, @function
n247_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_call_prolog_α:     mov              r11, 141
                        mov              rax, qword ptr [rsp + 6768]
                        mov              qword ptr [rsp + 6832], rax
                        mov              rax, qword ptr [rsp + 6776]
                        mov              qword ptr [rsp + 6840], rax
                        mov              rax, qword ptr [rsp + 6752]
                        mov              qword ptr [rsp + 6816], rax
                        mov              rax, qword ptr [rsp + 6760]
                        mov              qword ptr [rsp + 6824], rax
                        mov              rax, qword ptr [rsp + 6864]
                        mov              qword ptr [rsp + 6800], rax
                        mov              rax, qword ptr [rsp + 6872]
                        mov              qword ptr [rsp + 6808], rax
                        lea              rdi, [rsp + 6800]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6784], rax
                        mov              qword ptr [rsp + 6792], rdx
                        cmp              al, 104;                             je    n259_call_prolog_α
                                                                              jmp   n248_call_prolog_α
n247_call_prolog_β:     mov              r11, 141;                            jmp   n259_call_prolog_α
                        .size            n247_call_prolog_bx, .-n247_call_prolog_bx
                        .type            n248_call_prolog_bx, @function
n248_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_call_prolog_α:     mov              r11, 142
                        mov              rax, qword ptr [rsp + 6784]
                        mov              qword ptr [rsp + 6720], rax
                        mov              rax, qword ptr [rsp + 6792]
                        mov              qword ptr [rsp + 6728], rax
                        mov              rax, qword ptr [rsp + 6736]
                        mov              qword ptr [rsp + 6704], rax
                        mov              rax, qword ptr [rsp + 6744]
                        mov              qword ptr [rsp + 6712], rax
                        lea              rdi, [rsp + 6704]
                        lea              r8, [rsp + 6704]
.Lcall_prolog_α_553_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_553_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_553_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_553_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_553_40
.Lcall_prolog_α_553_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_553_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_553_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_553_40
.Lcall_prolog_α_553_56: cmp              al, 72;                              jne   .Lcall_prolog_α_553_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_553_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_553_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_553_40
.Lcall_prolog_α_553_41: lea              r9, [rsp + 6720]
.Lcall_prolog_α_553_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_553_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_553_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_553_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_553_42
.Lcall_prolog_α_553_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_553_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_553_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_553_42
.Lcall_prolog_α_553_58: cmp              al, 72;                              jne   .Lcall_prolog_α_553_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_553_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_553_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_553_42
.Lcall_prolog_α_553_43: cmp              r8, r9;                              je    .Lcall_prolog_α_553_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_553_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_553_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_553_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_553_44
                                                                              jmp   .Lcall_prolog_α_553_45
.Lcall_prolog_α_553_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_553_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_553_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_553_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_553_53
                                                                              jmp   .Lcall_prolog_α_553_46
.Lcall_prolog_α_553_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_553_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_553_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_553_51
.Lcall_prolog_α_553_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_553_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_553_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_553_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_553_47
                                                                              jmp   .Lcall_prolog_α_553_48
.Lcall_prolog_α_553_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_553_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_553_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_553_51
.Lcall_prolog_α_553_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_553_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_553_53
                                                                              jmp   .Lcall_prolog_α_553_52
.Lcall_prolog_α_553_49: cmp              dl, 80;                              je    .Lcall_prolog_α_553_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_553_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_553_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_553_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_553_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_553_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_553_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_553_51
                                                                              jmp   .Lcall_prolog_α_553_52
.Lcall_prolog_α_553_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_553_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_553_53
.Lcall_prolog_α_553_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_553_54
.Lcall_prolog_α_553_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_553_54
.Lcall_prolog_α_553_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_553_54: mov              qword ptr [rsp + 6688], rax
                        mov              qword ptr [rsp + 6696], rdx
                        cmp              al, 104;                             je    n259_call_prolog_α
                                                                              jmp   n249_cut_α
n248_call_prolog_β:     mov              r11, 142;                            jmp   n259_call_prolog_α
                        .size            n248_call_prolog_bx, .-n248_call_prolog_bx
                        .type            n249_cut_bx, @function
n249_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_cut_α:             mov              r11, 143;                            jmp   n250_var_ref_α
                        .size            n249_cut_bx, .-n249_cut_bx
                        .type            n250_var_ref_bx, @function
n250_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 6640], rax
                        mov              qword ptr [rsp + 6648], rdx;         jmp   n251_var_ref_α
                        .size            n250_var_ref_bx, .-n250_var_ref_bx
                        .type            n251_var_ref_bx, @function
n251_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6656], rax
                        mov              qword ptr [rsp + 6664], rdx;         jmp   n252_var_ref_α
                        .size            n251_var_ref_bx, .-n251_var_ref_bx
                        .type            n252_var_ref_bx, @function
n252_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 6672], rax
                        mov              qword ptr [rsp + 6680], rdx;         jmp   n253_call_proc_staged_α
                        .size            n252_var_ref_bx, .-n252_var_ref_bx
                        .type            n253_call_proc_staged_bx, @function
n253_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_call_proc_staged_α:
                        mov              r11, 147
                        lea              rsi, [rsp + 6640]
                        lea              rdx, [rsp + 6656]
                        lea              rcx, [rsp + 6672]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_562_2
.Lcall_proc_staged_α_562_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_562_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6560], rax
                        mov              qword ptr [rsp + 6568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6560]
                        mov              rdx, qword ptr [rsp + 6568]
.Lcall_proc_staged_α_562_29:
                        mov              qword ptr [rsp + 6560], rax
                        mov              qword ptr [rsp + 6568], rdx
                        cmp              al, 104;                             je    n476_call_prolog_α
                                                                              jmp   n254_var_ref_α
n253_call_proc_staged_β:
                        mov              r11, 147;                            jmp   n476_call_prolog_α
.Lcall_proc_staged_β_562_0:
                        .quad            .Lcall_proc_staged_β_562_0_s
.Lcall_proc_staged_β_562_0_s:
                        .string          "d/3"
                        .size            n253_call_proc_staged_bx, .-n253_call_proc_staged_bx
                        .type            n254_var_ref_bx, @function
n254_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 6512], rax
                        mov              qword ptr [rsp + 6520], rdx;         jmp   n255_var_ref_α
                        .size            n254_var_ref_bx, .-n254_var_ref_bx
                        .type            n255_var_ref_bx, @function
n255_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6528], rax
                        mov              qword ptr [rsp + 6536], rdx;         jmp   n256_var_ref_α
                        .size            n255_var_ref_bx, .-n255_var_ref_bx
                        .type            n256_var_ref_bx, @function
n256_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:         mov              r11, 150
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 6544], rax
                        mov              qword ptr [rsp + 6552], rdx;         jmp   n257_call_proc_staged_α
                        .size            n256_var_ref_bx, .-n256_var_ref_bx
                        .type            n257_call_proc_staged_bx, @function
n257_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_call_proc_staged_α:
                        mov              r11, 151
                        lea              rsi, [rsp + 6512]
                        lea              rdx, [rsp + 6528]
                        lea              rcx, [rsp + 6544]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_570_2
.Lcall_proc_staged_α_570_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_570_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6432], rax
                        mov              qword ptr [rsp + 6440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6432]
                        mov              rdx, qword ptr [rsp + 6440]
.Lcall_proc_staged_α_570_29:
                        mov              qword ptr [rsp + 6432], rax
                        mov              qword ptr [rsp + 6440], rdx
                        cmp              al, 104;                             je    n253_call_proc_staged_β
                                                                              jmp   n258_move_label_α
n257_call_proc_staged_β:
                        mov              r11, 151;                            jmp   n253_call_proc_staged_β
.Lcall_proc_staged_β_570_0:
                        .quad            .Lcall_proc_staged_β_570_0_s
.Lcall_proc_staged_β_570_0_s:
                        .string          "d/3"
                        .size            n257_call_proc_staged_bx, .-n257_call_proc_staged_bx
                        .type            n258_move_label_bx, @function
n258_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_move_label_α:      mov              r11, 152
                        lea              rax, [rip + n257_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n258_move_label_bx, .-n258_move_label_bx
                        .type            n259_call_prolog_bx, @function
n259_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_call_prolog_α:     mov              r11, 153
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 6416], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 6424], rax
                        lea              rdi, [rsp + 6416]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6400], rax
                        mov              qword ptr [rsp + 6408], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n260_var_ref_α
n259_call_prolog_β:     mov              r11, 153;                            jmp   d$2F3_ω
                        .size            n259_call_prolog_bx, .-n259_call_prolog_bx
                        .type            n260_var_ref_bx, @function
n260_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 6352], rax
                        mov              qword ptr [rsp + 6360], rdx;         jmp   n261_lit_integer_α
                        .size            n260_var_ref_bx, .-n260_var_ref_bx
                        .type            n261_lit_integer_bx, @function
n261_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_integer_α:     mov              r11, 155
                        mov              qword ptr [rsp + 6368], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_576_0]
                        mov              qword ptr [rsp + 6376], rax;         jmp   n262_lit_string_α
.Llit_integer_α_576_0:  .quad            516
                        .size            n261_lit_integer_bx, .-n261_lit_integer_bx
                        .type            n262_lit_string_bx, @function
n262_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:      mov              r11, 156
                        mov              qword ptr [rsp + 6384], 2            # result
                        mov              dword ptr [rsp + 6388], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_577_0]
                        mov              qword ptr [rsp + 6392], rax;         jmp   n263_call_prolog_α
.Llit_string_α_577_0:   .quad            .Llit_string_α_577_0_s
.Llit_string_α_577_0_s: .string          "*"
                        .size            n262_lit_string_bx, .-n262_lit_string_bx
                        .type            n263_call_prolog_bx, @function
n263_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_call_prolog_α:     mov              r11, 157
                        mov              rax, qword ptr [rsp + 6384]
                        mov              qword ptr [rsp + 6336], rax
                        mov              rax, qword ptr [rsp + 6392]
                        mov              qword ptr [rsp + 6344], rax
                        mov              rax, qword ptr [rsp + 6368]
                        mov              qword ptr [rsp + 6320], rax
                        mov              rax, qword ptr [rsp + 6376]
                        mov              qword ptr [rsp + 6328], rax
                        mov              rax, qword ptr [rsp + 6352]
                        mov              qword ptr [rsp + 6304], rax
                        mov              rax, qword ptr [rsp + 6360]
                        mov              qword ptr [rsp + 6312], rax
                        lea              rdi, [rsp + 6304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6288], rax
                        mov              qword ptr [rsp + 6296], rdx
                        cmp              al, 104;                             je    n296_var_ref_α
                                                                              jmp   n264_var_ref_α
n263_call_prolog_β:     mov              r11, 157;                            jmp   n296_var_ref_α
                        .size            n263_call_prolog_bx, .-n263_call_prolog_bx
                        .type            n264_var_ref_bx, @function
n264_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_var_ref_α:         mov              r11, 158
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 6144], rax
                        mov              qword ptr [rsp + 6152], rdx;         jmp   n265_lit_string_α
                        .size            n264_var_ref_bx, .-n264_var_ref_bx
                        .type            n265_lit_string_bx, @function
n265_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:      mov              r11, 159
                        mov              qword ptr [rsp + 6272], 2            # result
                        mov              dword ptr [rsp + 6276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_581_0]
                        mov              qword ptr [rsp + 6280], rax;         jmp   n266_var_ref_α
.Llit_string_α_581_0:   .quad            .Llit_string_α_581_0_s
.Llit_string_α_581_0_s: .string          "*"
                        .size            n265_lit_string_bx, .-n265_lit_string_bx
                        .type            n266_var_ref_bx, @function
n266_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:         mov              r11, 160
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 6160], rax
                        mov              qword ptr [rsp + 6168], rdx;         jmp   n267_var_ref_α
                        .size            n266_var_ref_bx, .-n266_var_ref_bx
                        .type            n267_var_ref_bx, @function
n267_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:         mov              r11, 161
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 6176], rax
                        mov              qword ptr [rsp + 6184], rdx;         jmp   n268_call_prolog_α
                        .size            n267_var_ref_bx, .-n267_var_ref_bx
                        .type            n268_call_prolog_bx, @function
n268_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_call_prolog_α:     mov              r11, 162
                        mov              rax, qword ptr [rsp + 6176]
                        mov              qword ptr [rsp + 6240], rax
                        mov              rax, qword ptr [rsp + 6184]
                        mov              qword ptr [rsp + 6248], rax
                        mov              rax, qword ptr [rsp + 6160]
                        mov              qword ptr [rsp + 6224], rax
                        mov              rax, qword ptr [rsp + 6168]
                        mov              qword ptr [rsp + 6232], rax
                        mov              rax, qword ptr [rsp + 6272]
                        mov              qword ptr [rsp + 6208], rax
                        mov              rax, qword ptr [rsp + 6280]
                        mov              qword ptr [rsp + 6216], rax
                        lea              rdi, [rsp + 6208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6192], rax
                        mov              qword ptr [rsp + 6200], rdx
                        cmp              al, 104;                             je    n295_call_prolog_α
                                                                              jmp   n269_call_prolog_α
n268_call_prolog_β:     mov              r11, 162;                            jmp   n295_call_prolog_α
                        .size            n268_call_prolog_bx, .-n268_call_prolog_bx
                        .type            n269_call_prolog_bx, @function
n269_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_call_prolog_α:     mov              r11, 163
                        mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 6128], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 6136], rax
                        mov              rax, qword ptr [rsp + 6144]
                        mov              qword ptr [rsp + 6112], rax
                        mov              rax, qword ptr [rsp + 6152]
                        mov              qword ptr [rsp + 6120], rax
                        lea              rdi, [rsp + 6112]
                        lea              r8, [rsp + 6112]
.Lcall_prolog_α_587_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_587_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_587_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_587_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_587_40
.Lcall_prolog_α_587_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_587_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_587_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_587_40
.Lcall_prolog_α_587_56: cmp              al, 72;                              jne   .Lcall_prolog_α_587_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_587_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_587_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_587_40
.Lcall_prolog_α_587_41: lea              r9, [rsp + 6128]
.Lcall_prolog_α_587_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_587_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_587_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_587_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_587_42
.Lcall_prolog_α_587_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_587_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_587_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_587_42
.Lcall_prolog_α_587_58: cmp              al, 72;                              jne   .Lcall_prolog_α_587_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_587_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_587_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_587_42
.Lcall_prolog_α_587_43: cmp              r8, r9;                              je    .Lcall_prolog_α_587_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_587_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_587_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_587_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_587_44
                                                                              jmp   .Lcall_prolog_α_587_45
.Lcall_prolog_α_587_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_587_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_587_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_587_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_587_53
                                                                              jmp   .Lcall_prolog_α_587_46
.Lcall_prolog_α_587_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_587_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_587_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_587_51
.Lcall_prolog_α_587_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_587_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_587_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_587_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_587_47
                                                                              jmp   .Lcall_prolog_α_587_48
.Lcall_prolog_α_587_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_587_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_587_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_587_51
.Lcall_prolog_α_587_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_587_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_587_53
                                                                              jmp   .Lcall_prolog_α_587_52
.Lcall_prolog_α_587_49: cmp              dl, 80;                              je    .Lcall_prolog_α_587_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_587_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_587_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_587_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_587_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_587_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_587_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_587_51
                                                                              jmp   .Lcall_prolog_α_587_52
.Lcall_prolog_α_587_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_587_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_587_53
.Lcall_prolog_α_587_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_587_54
.Lcall_prolog_α_587_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_587_54
.Lcall_prolog_α_587_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_587_54: mov              qword ptr [rsp + 6096], rax
                        mov              qword ptr [rsp + 6104], rdx
                        cmp              al, 104;                             je    n295_call_prolog_α
                                                                              jmp   n270_var_ref_α
n269_call_prolog_β:     mov              r11, 163;                            jmp   n295_call_prolog_α
                        .size            n269_call_prolog_bx, .-n269_call_prolog_bx
                        .type            n270_var_ref_bx, @function
n270_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_var_ref_α:         mov              r11, 164
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 6064], rax
                        mov              qword ptr [rsp + 6072], rdx;         jmp   n271_var_ref_α
                        .size            n270_var_ref_bx, .-n270_var_ref_bx
                        .type            n271_var_ref_bx, @function
n271_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6080], rax
                        mov              qword ptr [rsp + 6088], rdx;         jmp   n272_call_prolog_α
                        .size            n271_var_ref_bx, .-n271_var_ref_bx
                        .type            n272_call_prolog_bx, @function
n272_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_call_prolog_α:     mov              r11, 166
                        mov              rax, qword ptr [rsp + 6080]
                        mov              qword ptr [rsp + 6048], rax
                        mov              rax, qword ptr [rsp + 6088]
                        mov              qword ptr [rsp + 6056], rax
                        mov              rax, qword ptr [rsp + 6064]
                        mov              qword ptr [rsp + 6032], rax
                        mov              rax, qword ptr [rsp + 6072]
                        mov              qword ptr [rsp + 6040], rax
                        lea              rdi, [rsp + 6032]
                        lea              r8, [rsp + 6032]
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
.Lcall_prolog_α_592_41: lea              r9, [rsp + 6048]
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
.Lcall_prolog_α_592_54: mov              qword ptr [rsp + 6016], rax
                        mov              qword ptr [rsp + 6024], rdx
                        cmp              al, 104;                             je    n295_call_prolog_α
                                                                              jmp   n273_var_ref_α
n272_call_prolog_β:     mov              r11, 166;                            jmp   n295_call_prolog_α
                        .size            n272_call_prolog_bx, .-n272_call_prolog_bx
                        .type            n273_var_ref_bx, @function
n273_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 5648], rax
                        mov              qword ptr [rsp + 5656], rdx;         jmp   n274_lit_string_α
                        .size            n273_var_ref_bx, .-n273_var_ref_bx
                        .type            n274_lit_string_bx, @function
n274_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:      mov              r11, 168
                        mov              qword ptr [rsp + 6000], 2            # result
                        mov              dword ptr [rsp + 6004], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_595_0]
                        mov              qword ptr [rsp + 6008], rax;         jmp   n275_lit_string_α
.Llit_string_α_595_0:   .quad            .Llit_string_α_595_0_s
.Llit_string_α_595_0_s: .string          "+"
                        .size            n274_lit_string_bx, .-n274_lit_string_bx
                        .type            n275_lit_string_bx, @function
n275_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rsp + 5776], 2            # result
                        mov              dword ptr [rsp + 5780], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_596_0]
                        mov              qword ptr [rsp + 5784], rax;         jmp   n276_var_ref_α
.Llit_string_α_596_0:   .quad            .Llit_string_α_596_0_s
.Llit_string_α_596_0_s: .string          "*"
                        .size            n275_lit_string_bx, .-n275_lit_string_bx
                        .type            n276_var_ref_bx, @function
n276_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx;         jmp   n277_var_ref_α
                        .size            n276_var_ref_bx, .-n276_var_ref_bx
                        .type            n277_var_ref_bx, @function
n277_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5680], rax
                        mov              qword ptr [rsp + 5688], rdx;         jmp   n278_call_prolog_α
                        .size            n277_var_ref_bx, .-n277_var_ref_bx
                        .type            n278_call_prolog_bx, @function
n278_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_call_prolog_α:     mov              r11, 172
                        mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 5744], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 5752], rax
                        mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 5728], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 5736], rax
                        mov              rax, qword ptr [rsp + 5776]
                        mov              qword ptr [rsp + 5712], rax
                        mov              rax, qword ptr [rsp + 5784]
                        mov              qword ptr [rsp + 5720], rax
                        lea              rdi, [rsp + 5712]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5696], rax
                        mov              qword ptr [rsp + 5704], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n279_lit_string_α
n278_call_prolog_β:     mov              r11, 172;                            jmp   d$2F3_ω
                        .size            n278_call_prolog_bx, .-n278_call_prolog_bx
                        .type            n279_lit_string_bx, @function
n279_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:      mov              r11, 173
                        mov              qword ptr [rsp + 5904], 2            # result
                        mov              dword ptr [rsp + 5908], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_602_0]
                        mov              qword ptr [rsp + 5912], rax;         jmp   n280_var_ref_α
.Llit_string_α_602_0:   .quad            .Llit_string_α_602_0_s
.Llit_string_α_602_0_s: .string          "*"
                        .size            n279_lit_string_bx, .-n279_lit_string_bx
                        .type            n280_var_ref_bx, @function
n280_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5792], rax
                        mov              qword ptr [rsp + 5800], rdx;         jmp   n281_var_ref_α
                        .size            n280_var_ref_bx, .-n280_var_ref_bx
                        .type            n281_var_ref_bx, @function
n281_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:         mov              r11, 175
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 5808], rax
                        mov              qword ptr [rsp + 5816], rdx;         jmp   n282_call_prolog_α
                        .size            n281_var_ref_bx, .-n281_var_ref_bx
                        .type            n282_call_prolog_bx, @function
n282_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_call_prolog_α:     mov              r11, 176
                        mov              rax, qword ptr [rsp + 5808]
                        mov              qword ptr [rsp + 5872], rax
                        mov              rax, qword ptr [rsp + 5816]
                        mov              qword ptr [rsp + 5880], rax
                        mov              rax, qword ptr [rsp + 5792]
                        mov              qword ptr [rsp + 5856], rax
                        mov              rax, qword ptr [rsp + 5800]
                        mov              qword ptr [rsp + 5864], rax
                        mov              rax, qword ptr [rsp + 5904]
                        mov              qword ptr [rsp + 5840], rax
                        mov              rax, qword ptr [rsp + 5912]
                        mov              qword ptr [rsp + 5848], rax
                        lea              rdi, [rsp + 5840]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5824], rax
                        mov              qword ptr [rsp + 5832], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n283_call_prolog_α
n282_call_prolog_β:     mov              r11, 176;                            jmp   d$2F3_ω
                        .size            n282_call_prolog_bx, .-n282_call_prolog_bx
                        .type            n283_call_prolog_bx, @function
n283_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_call_prolog_α:     mov              r11, 177
                        mov              rax, qword ptr [rsp + 5824]
                        mov              qword ptr [rsp + 5968], rax
                        mov              rax, qword ptr [rsp + 5832]
                        mov              qword ptr [rsp + 5976], rax
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 5952], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 5960], rax
                        mov              rax, qword ptr [rsp + 6000]
                        mov              qword ptr [rsp + 5936], rax
                        mov              rax, qword ptr [rsp + 6008]
                        mov              qword ptr [rsp + 5944], rax
                        lea              rdi, [rsp + 5936]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5920], rax
                        mov              qword ptr [rsp + 5928], rdx
                        cmp              al, 104;                             je    n295_call_prolog_α
                                                                              jmp   n284_call_prolog_α
n283_call_prolog_β:     mov              r11, 177;                            jmp   n295_call_prolog_α
                        .size            n283_call_prolog_bx, .-n283_call_prolog_bx
                        .type            n284_call_prolog_bx, @function
n284_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_call_prolog_α:     mov              r11, 178
                        mov              rax, qword ptr [rsp + 5920]
                        mov              qword ptr [rsp + 5632], rax
                        mov              rax, qword ptr [rsp + 5928]
                        mov              qword ptr [rsp + 5640], rax
                        mov              rax, qword ptr [rsp + 5648]
                        mov              qword ptr [rsp + 5616], rax
                        mov              rax, qword ptr [rsp + 5656]
                        mov              qword ptr [rsp + 5624], rax
                        lea              rdi, [rsp + 5616]
                        lea              r8, [rsp + 5616]
.Lcall_prolog_α_609_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_609_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_609_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_609_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_609_40
.Lcall_prolog_α_609_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_609_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_609_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_609_40
.Lcall_prolog_α_609_56: cmp              al, 72;                              jne   .Lcall_prolog_α_609_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_609_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_609_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_609_40
.Lcall_prolog_α_609_41: lea              r9, [rsp + 5632]
.Lcall_prolog_α_609_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_609_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_609_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_609_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_609_42
.Lcall_prolog_α_609_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_609_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_609_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_609_42
.Lcall_prolog_α_609_58: cmp              al, 72;                              jne   .Lcall_prolog_α_609_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_609_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_609_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_609_42
.Lcall_prolog_α_609_43: cmp              r8, r9;                              je    .Lcall_prolog_α_609_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_609_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_609_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_609_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_609_44
                                                                              jmp   .Lcall_prolog_α_609_45
.Lcall_prolog_α_609_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_609_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_609_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_609_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_609_53
                                                                              jmp   .Lcall_prolog_α_609_46
.Lcall_prolog_α_609_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_609_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_609_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_609_51
.Lcall_prolog_α_609_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_609_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_609_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_609_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_609_47
                                                                              jmp   .Lcall_prolog_α_609_48
.Lcall_prolog_α_609_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_609_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_609_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_609_51
.Lcall_prolog_α_609_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_609_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_609_53
                                                                              jmp   .Lcall_prolog_α_609_52
.Lcall_prolog_α_609_49: cmp              dl, 80;                              je    .Lcall_prolog_α_609_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_609_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_609_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_609_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_609_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_609_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_609_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_609_51
                                                                              jmp   .Lcall_prolog_α_609_52
.Lcall_prolog_α_609_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_609_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_609_53
.Lcall_prolog_α_609_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_609_54
.Lcall_prolog_α_609_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_609_54
.Lcall_prolog_α_609_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_609_54: mov              qword ptr [rsp + 5600], rax
                        mov              qword ptr [rsp + 5608], rdx
                        cmp              al, 104;                             je    n295_call_prolog_α
                                                                              jmp   n285_cut_α
n284_call_prolog_β:     mov              r11, 178;                            jmp   n295_call_prolog_α
                        .size            n284_call_prolog_bx, .-n284_call_prolog_bx
                        .type            n285_cut_bx, @function
n285_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_cut_α:             mov              r11, 179;                            jmp   n286_var_ref_α
                        .size            n285_cut_bx, .-n285_cut_bx
                        .type            n286_var_ref_bx, @function
n286_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:         mov              r11, 180
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5552], rax
                        mov              qword ptr [rsp + 5560], rdx;         jmp   n287_var_ref_α
                        .size            n286_var_ref_bx, .-n286_var_ref_bx
                        .type            n287_var_ref_bx, @function
n287_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:         mov              r11, 181
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 5568], rax
                        mov              qword ptr [rsp + 5576], rdx;         jmp   n288_var_ref_α
                        .size            n287_var_ref_bx, .-n287_var_ref_bx
                        .type            n288_var_ref_bx, @function
n288_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:         mov              r11, 182
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 5584], rax
                        mov              qword ptr [rsp + 5592], rdx;         jmp   n289_call_proc_staged_α
                        .size            n288_var_ref_bx, .-n288_var_ref_bx
                        .type            n289_call_proc_staged_bx, @function
n289_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_call_proc_staged_α:
                        mov              r11, 183
                        lea              rsi, [rsp + 5552]
                        lea              rdx, [rsp + 5568]
                        lea              rcx, [rsp + 5584]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_618_2
.Lcall_proc_staged_α_618_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_618_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5472]
                        mov              rdx, qword ptr [rsp + 5480]
.Lcall_proc_staged_α_618_29:
                        mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx
                        cmp              al, 104;                             je    n476_call_prolog_α
                                                                              jmp   n290_var_ref_α
n289_call_proc_staged_β:
                        mov              r11, 183;                            jmp   n476_call_prolog_α
.Lcall_proc_staged_β_618_0:
                        .quad            .Lcall_proc_staged_β_618_0_s
.Lcall_proc_staged_β_618_0_s:
                        .string          "d/3"
                        .size            n289_call_proc_staged_bx, .-n289_call_proc_staged_bx
                        .type            n290_var_ref_bx, @function
n290_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:         mov              r11, 184
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5424], rax
                        mov              qword ptr [rsp + 5432], rdx;         jmp   n291_var_ref_α
                        .size            n290_var_ref_bx, .-n290_var_ref_bx
                        .type            n291_var_ref_bx, @function
n291_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 5440], rax
                        mov              qword ptr [rsp + 5448], rdx;         jmp   n292_var_ref_α
                        .size            n291_var_ref_bx, .-n291_var_ref_bx
                        .type            n292_var_ref_bx, @function
n292_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 5456], rax
                        mov              qword ptr [rsp + 5464], rdx;         jmp   n293_call_proc_staged_α
                        .size            n292_var_ref_bx, .-n292_var_ref_bx
                        .type            n293_call_proc_staged_bx, @function
n293_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_call_proc_staged_α:
                        mov              r11, 187
                        lea              rsi, [rsp + 5424]
                        lea              rdx, [rsp + 5440]
                        lea              rcx, [rsp + 5456]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_626_2
.Lcall_proc_staged_α_626_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_626_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5344], rax
                        mov              qword ptr [rsp + 5352], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5344]
                        mov              rdx, qword ptr [rsp + 5352]
.Lcall_proc_staged_α_626_29:
                        mov              qword ptr [rsp + 5344], rax
                        mov              qword ptr [rsp + 5352], rdx
                        cmp              al, 104;                             je    n289_call_proc_staged_β
                                                                              jmp   n294_move_label_α
n293_call_proc_staged_β:
                        mov              r11, 187;                            jmp   n289_call_proc_staged_β
.Lcall_proc_staged_β_626_0:
                        .quad            .Lcall_proc_staged_β_626_0_s
.Lcall_proc_staged_β_626_0_s:
                        .string          "d/3"
                        .size            n293_call_proc_staged_bx, .-n293_call_proc_staged_bx
                        .type            n294_move_label_bx, @function
n294_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_move_label_α:      mov              r11, 188
                        lea              rax, [rip + n293_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n294_move_label_bx, .-n294_move_label_bx
                        .type            n295_call_prolog_bx, @function
n295_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_call_prolog_α:     mov              r11, 189
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 5328], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 5336], rax
                        lea              rdi, [rsp + 5328]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5312], rax
                        mov              qword ptr [rsp + 5320], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n296_var_ref_α
n295_call_prolog_β:     mov              r11, 189;                            jmp   d$2F3_ω
                        .size            n295_call_prolog_bx, .-n295_call_prolog_bx
                        .type            n296_var_ref_bx, @function
n296_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:         mov              r11, 190
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5264], rax
                        mov              qword ptr [rsp + 5272], rdx;         jmp   n297_lit_integer_α
                        .size            n296_var_ref_bx, .-n296_var_ref_bx
                        .type            n297_lit_integer_bx, @function
n297_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_integer_α:     mov              r11, 191
                        mov              qword ptr [rsp + 5280], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_632_0]
                        mov              qword ptr [rsp + 5288], rax;         jmp   n298_lit_string_α
.Llit_integer_α_632_0:  .quad            516
                        .size            n297_lit_integer_bx, .-n297_lit_integer_bx
                        .type            n298_lit_string_bx, @function
n298_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:      mov              r11, 192
                        mov              qword ptr [rsp + 5296], 2            # result
                        mov              dword ptr [rsp + 5300], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_633_0]
                        mov              qword ptr [rsp + 5304], rax;         jmp   n299_call_prolog_α
.Llit_string_α_633_0:   .quad            .Llit_string_α_633_0_s
.Llit_string_α_633_0_s: .string          "/"
                        .size            n298_lit_string_bx, .-n298_lit_string_bx
                        .type            n299_call_prolog_bx, @function
n299_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_call_prolog_α:     mov              r11, 193
                        mov              rax, qword ptr [rsp + 5296]
                        mov              qword ptr [rsp + 5248], rax
                        mov              rax, qword ptr [rsp + 5304]
                        mov              qword ptr [rsp + 5256], rax
                        mov              rax, qword ptr [rsp + 5280]
                        mov              qword ptr [rsp + 5232], rax
                        mov              rax, qword ptr [rsp + 5288]
                        mov              qword ptr [rsp + 5240], rax
                        mov              rax, qword ptr [rsp + 5264]
                        mov              qword ptr [rsp + 5216], rax
                        mov              rax, qword ptr [rsp + 5272]
                        mov              qword ptr [rsp + 5224], rax
                        lea              rdi, [rsp + 5216]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5200], rax
                        mov              qword ptr [rsp + 5208], rdx
                        cmp              al, 104;                             je    n338_var_ref_α
                                                                              jmp   n300_var_ref_α
n299_call_prolog_β:     mov              r11, 193;                            jmp   n338_var_ref_α
                        .size            n299_call_prolog_bx, .-n299_call_prolog_bx
                        .type            n300_var_ref_bx, @function
n300_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5056], rax
                        mov              qword ptr [rsp + 5064], rdx;         jmp   n301_lit_string_α
                        .size            n300_var_ref_bx, .-n300_var_ref_bx
                        .type            n301_lit_string_bx, @function
n301_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_string_α:      mov              r11, 195
                        mov              qword ptr [rsp + 5184], 2            # result
                        mov              dword ptr [rsp + 5188], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_637_0]
                        mov              qword ptr [rsp + 5192], rax;         jmp   n302_var_ref_α
.Llit_string_α_637_0:   .quad            .Llit_string_α_637_0_s
.Llit_string_α_637_0_s: .string          "/"
                        .size            n301_lit_string_bx, .-n301_lit_string_bx
                        .type            n302_var_ref_bx, @function
n302_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5072], rax
                        mov              qword ptr [rsp + 5080], rdx;         jmp   n303_var_ref_α
                        .size            n302_var_ref_bx, .-n302_var_ref_bx
                        .type            n303_var_ref_bx, @function
n303_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5088], rax
                        mov              qword ptr [rsp + 5096], rdx;         jmp   n304_call_prolog_α
                        .size            n303_var_ref_bx, .-n303_var_ref_bx
                        .type            n304_call_prolog_bx, @function
n304_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_call_prolog_α:     mov              r11, 198
                        mov              rax, qword ptr [rsp + 5088]
                        mov              qword ptr [rsp + 5152], rax
                        mov              rax, qword ptr [rsp + 5096]
                        mov              qword ptr [rsp + 5160], rax
                        mov              rax, qword ptr [rsp + 5072]
                        mov              qword ptr [rsp + 5136], rax
                        mov              rax, qword ptr [rsp + 5080]
                        mov              qword ptr [rsp + 5144], rax
                        mov              rax, qword ptr [rsp + 5184]
                        mov              qword ptr [rsp + 5120], rax
                        mov              rax, qword ptr [rsp + 5192]
                        mov              qword ptr [rsp + 5128], rax
                        lea              rdi, [rsp + 5120]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5104], rax
                        mov              qword ptr [rsp + 5112], rdx
                        cmp              al, 104;                             je    n337_call_prolog_α
                                                                              jmp   n305_call_prolog_α
n304_call_prolog_β:     mov              r11, 198;                            jmp   n337_call_prolog_α
                        .size            n304_call_prolog_bx, .-n304_call_prolog_bx
                        .type            n305_call_prolog_bx, @function
n305_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_call_prolog_α:     mov              r11, 199
                        mov              rax, qword ptr [rsp + 5104]
                        mov              qword ptr [rsp + 5040], rax
                        mov              rax, qword ptr [rsp + 5112]
                        mov              qword ptr [rsp + 5048], rax
                        mov              rax, qword ptr [rsp + 5056]
                        mov              qword ptr [rsp + 5024], rax
                        mov              rax, qword ptr [rsp + 5064]
                        mov              qword ptr [rsp + 5032], rax
                        lea              rdi, [rsp + 5024]
                        lea              r8, [rsp + 5024]
.Lcall_prolog_α_643_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_643_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_643_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_643_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_643_40
.Lcall_prolog_α_643_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_643_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_643_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_643_40
.Lcall_prolog_α_643_56: cmp              al, 72;                              jne   .Lcall_prolog_α_643_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_643_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_643_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_643_40
.Lcall_prolog_α_643_41: lea              r9, [rsp + 5040]
.Lcall_prolog_α_643_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_643_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_643_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_643_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_643_42
.Lcall_prolog_α_643_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_643_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_643_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_643_42
.Lcall_prolog_α_643_58: cmp              al, 72;                              jne   .Lcall_prolog_α_643_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_643_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_643_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_643_42
.Lcall_prolog_α_643_43: cmp              r8, r9;                              je    .Lcall_prolog_α_643_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_643_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_643_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_643_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_643_44
                                                                              jmp   .Lcall_prolog_α_643_45
.Lcall_prolog_α_643_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_643_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_643_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_643_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_643_53
                                                                              jmp   .Lcall_prolog_α_643_46
.Lcall_prolog_α_643_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_643_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_643_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_643_51
.Lcall_prolog_α_643_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_643_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_643_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_643_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_643_47
                                                                              jmp   .Lcall_prolog_α_643_48
.Lcall_prolog_α_643_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_643_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_643_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_643_51
.Lcall_prolog_α_643_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_643_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_643_53
                                                                              jmp   .Lcall_prolog_α_643_52
.Lcall_prolog_α_643_49: cmp              dl, 80;                              je    .Lcall_prolog_α_643_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_643_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_643_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_643_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_643_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_643_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_643_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_643_51
                                                                              jmp   .Lcall_prolog_α_643_52
.Lcall_prolog_α_643_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_643_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_643_53
.Lcall_prolog_α_643_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_643_54
.Lcall_prolog_α_643_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_643_54
.Lcall_prolog_α_643_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_643_54: mov              qword ptr [rsp + 5008], rax
                        mov              qword ptr [rsp + 5016], rdx
                        cmp              al, 104;                             je    n337_call_prolog_α
                                                                              jmp   n306_var_ref_α
n305_call_prolog_β:     mov              r11, 199;                            jmp   n337_call_prolog_α
                        .size            n305_call_prolog_bx, .-n305_call_prolog_bx
                        .type            n306_var_ref_bx, @function
n306_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4976], rax
                        mov              qword ptr [rsp + 4984], rdx;         jmp   n307_var_ref_α
                        .size            n306_var_ref_bx, .-n306_var_ref_bx
                        .type            n307_var_ref_bx, @function
n307_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx;         jmp   n308_call_prolog_α
                        .size            n307_var_ref_bx, .-n307_var_ref_bx
                        .type            n308_call_prolog_bx, @function
n308_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_call_prolog_α:     mov              r11, 202
                        mov              rax, qword ptr [rsp + 4992]
                        mov              qword ptr [rsp + 4960], rax
                        mov              rax, qword ptr [rsp + 5000]
                        mov              qword ptr [rsp + 4968], rax
                        mov              rax, qword ptr [rsp + 4976]
                        mov              qword ptr [rsp + 4944], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 4952], rax
                        lea              rdi, [rsp + 4944]
                        lea              r8, [rsp + 4944]
.Lcall_prolog_α_648_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_648_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_648_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_648_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_648_40
.Lcall_prolog_α_648_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_648_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_648_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_648_40
.Lcall_prolog_α_648_56: cmp              al, 72;                              jne   .Lcall_prolog_α_648_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_648_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_648_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_648_40
.Lcall_prolog_α_648_41: lea              r9, [rsp + 4960]
.Lcall_prolog_α_648_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_648_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_648_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_648_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_648_42
.Lcall_prolog_α_648_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_648_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_648_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_648_42
.Lcall_prolog_α_648_58: cmp              al, 72;                              jne   .Lcall_prolog_α_648_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_648_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_648_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_648_42
.Lcall_prolog_α_648_43: cmp              r8, r9;                              je    .Lcall_prolog_α_648_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_648_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_648_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_648_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_648_44
                                                                              jmp   .Lcall_prolog_α_648_45
.Lcall_prolog_α_648_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_648_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_648_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_648_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_648_53
                                                                              jmp   .Lcall_prolog_α_648_46
.Lcall_prolog_α_648_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_648_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_648_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_648_51
.Lcall_prolog_α_648_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_648_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_648_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_648_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_648_47
                                                                              jmp   .Lcall_prolog_α_648_48
.Lcall_prolog_α_648_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_648_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_648_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_648_51
.Lcall_prolog_α_648_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_648_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_648_53
                                                                              jmp   .Lcall_prolog_α_648_52
.Lcall_prolog_α_648_49: cmp              dl, 80;                              je    .Lcall_prolog_α_648_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_648_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_648_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_648_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_648_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_648_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_648_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_648_51
                                                                              jmp   .Lcall_prolog_α_648_52
.Lcall_prolog_α_648_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_648_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_648_53
.Lcall_prolog_α_648_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_648_54
.Lcall_prolog_α_648_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_648_54
.Lcall_prolog_α_648_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_648_54: mov              qword ptr [rsp + 4928], rax
                        mov              qword ptr [rsp + 4936], rdx
                        cmp              al, 104;                             je    n337_call_prolog_α
                                                                              jmp   n309_var_ref_α
n308_call_prolog_β:     mov              r11, 202;                            jmp   n337_call_prolog_α
                        .size            n308_call_prolog_bx, .-n308_call_prolog_bx
                        .type            n309_var_ref_bx, @function
n309_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx;         jmp   n310_lit_string_α
                        .size            n309_var_ref_bx, .-n309_var_ref_bx
                        .type            n310_lit_string_bx, @function
n310_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:      mov              r11, 204
                        mov              qword ptr [rsp + 4912], 2            # result
                        mov              dword ptr [rsp + 4916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_651_0]
                        mov              qword ptr [rsp + 4920], rax;         jmp   n311_lit_string_α
.Llit_string_α_651_0:   .quad            .Llit_string_α_651_0_s
.Llit_string_α_651_0_s: .string          "/"
                        .size            n310_lit_string_bx, .-n310_lit_string_bx
                        .type            n311_lit_string_bx, @function
n311_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:      mov              r11, 205
                        mov              qword ptr [rsp + 4688], 2            # result
                        mov              dword ptr [rsp + 4692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_652_0]
                        mov              qword ptr [rsp + 4696], rax;         jmp   n312_lit_string_α
.Llit_string_α_652_0:   .quad            .Llit_string_α_652_0_s
.Llit_string_α_652_0_s: .string          "-"
                        .size            n311_lit_string_bx, .-n311_lit_string_bx
                        .type            n312_lit_string_bx, @function
n312_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:      mov              r11, 206
                        mov              qword ptr [rsp + 4464], 2            # result
                        mov              dword ptr [rsp + 4468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_653_0]
                        mov              qword ptr [rsp + 4472], rax;         jmp   n313_var_ref_α
.Llit_string_α_653_0:   .quad            .Llit_string_α_653_0_s
.Llit_string_α_653_0_s: .string          "*"
                        .size            n312_lit_string_bx, .-n312_lit_string_bx
                        .type            n313_var_ref_bx, @function
n313_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:         mov              r11, 207
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx;         jmp   n314_var_ref_α
                        .size            n313_var_ref_bx, .-n313_var_ref_bx
                        .type            n314_var_ref_bx, @function
n314_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:         mov              r11, 208
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4368], rax
                        mov              qword ptr [rsp + 4376], rdx;         jmp   n315_call_prolog_α
                        .size            n314_var_ref_bx, .-n314_var_ref_bx
                        .type            n315_call_prolog_bx, @function
n315_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_call_prolog_α:     mov              r11, 209
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 4432], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 4440], rax
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 4416], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 4424], rax
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 4408], rax
                        lea              rdi, [rsp + 4400]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4384], rax
                        mov              qword ptr [rsp + 4392], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n316_lit_string_α
n315_call_prolog_β:     mov              r11, 209;                            jmp   d$2F3_ω
                        .size            n315_call_prolog_bx, .-n315_call_prolog_bx
                        .type            n316_lit_string_bx, @function
n316_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:      mov              r11, 210
                        mov              qword ptr [rsp + 4592], 2            # result
                        mov              dword ptr [rsp + 4596], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_659_0]
                        mov              qword ptr [rsp + 4600], rax;         jmp   n317_var_ref_α
.Llit_string_α_659_0:   .quad            .Llit_string_α_659_0_s
.Llit_string_α_659_0_s: .string          "*"
                        .size            n316_lit_string_bx, .-n316_lit_string_bx
                        .type            n317_var_ref_bx, @function
n317_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx;         jmp   n318_var_ref_α
                        .size            n317_var_ref_bx, .-n317_var_ref_bx
                        .type            n318_var_ref_bx, @function
n318_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx;         jmp   n319_call_prolog_α
                        .size            n318_var_ref_bx, .-n318_var_ref_bx
                        .type            n319_call_prolog_bx, @function
n319_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_call_prolog_α:     mov              r11, 213
                        mov              rax, qword ptr [rsp + 4496]
                        mov              qword ptr [rsp + 4560], rax
                        mov              rax, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 4568], rax
                        mov              rax, qword ptr [rsp + 4480]
                        mov              qword ptr [rsp + 4544], rax
                        mov              rax, qword ptr [rsp + 4488]
                        mov              qword ptr [rsp + 4552], rax
                        mov              rax, qword ptr [rsp + 4592]
                        mov              qword ptr [rsp + 4528], rax
                        mov              rax, qword ptr [rsp + 4600]
                        mov              qword ptr [rsp + 4536], rax
                        lea              rdi, [rsp + 4528]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4512], rax
                        mov              qword ptr [rsp + 4520], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n320_call_prolog_α
n319_call_prolog_β:     mov              r11, 213;                            jmp   d$2F3_ω
                        .size            n319_call_prolog_bx, .-n319_call_prolog_bx
                        .type            n320_call_prolog_bx, @function
n320_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_call_prolog_α:     mov              r11, 214
                        mov              rax, qword ptr [rsp + 4512]
                        mov              qword ptr [rsp + 4656], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 4664], rax
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 4640], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 4648], rax
                        mov              rax, qword ptr [rsp + 4688]
                        mov              qword ptr [rsp + 4624], rax
                        mov              rax, qword ptr [rsp + 4696]
                        mov              qword ptr [rsp + 4632], rax
                        lea              rdi, [rsp + 4624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4608], rax
                        mov              qword ptr [rsp + 4616], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n321_lit_string_α
n320_call_prolog_β:     mov              r11, 214;                            jmp   d$2F3_ω
                        .size            n320_call_prolog_bx, .-n320_call_prolog_bx
                        .type            n321_lit_string_bx, @function
n321_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:      mov              r11, 215
                        mov              qword ptr [rsp + 4816], 2            # result
                        mov              dword ptr [rsp + 4820], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_666_0]
                        mov              qword ptr [rsp + 4824], rax;         jmp   n322_var_ref_α
.Llit_string_α_666_0:   .quad            .Llit_string_α_666_0_s
.Llit_string_α_666_0_s: .string          "^"
                        .size            n321_lit_string_bx, .-n321_lit_string_bx
                        .type            n322_var_ref_bx, @function
n322_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4704], rax
                        mov              qword ptr [rsp + 4712], rdx;         jmp   n323_lit_integer_α
                        .size            n322_var_ref_bx, .-n322_var_ref_bx
                        .type            n323_lit_integer_bx, @function
n323_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_integer_α:     mov              r11, 217
                        mov              qword ptr [rsp + 4720], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_669_0]
                        mov              qword ptr [rsp + 4728], rax;         jmp   n324_call_prolog_α
.Llit_integer_α_669_0:  .quad            2
                        .size            n323_lit_integer_bx, .-n323_lit_integer_bx
                        .type            n324_call_prolog_bx, @function
n324_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_call_prolog_α:     mov              r11, 218
                        mov              rax, qword ptr [rsp + 4720]
                        mov              qword ptr [rsp + 4784], rax
                        mov              rax, qword ptr [rsp + 4728]
                        mov              qword ptr [rsp + 4792], rax
                        mov              rax, qword ptr [rsp + 4704]
                        mov              qword ptr [rsp + 4768], rax
                        mov              rax, qword ptr [rsp + 4712]
                        mov              qword ptr [rsp + 4776], rax
                        mov              rax, qword ptr [rsp + 4816]
                        mov              qword ptr [rsp + 4752], rax
                        mov              rax, qword ptr [rsp + 4824]
                        mov              qword ptr [rsp + 4760], rax
                        lea              rdi, [rsp + 4752]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4736], rax
                        mov              qword ptr [rsp + 4744], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n325_call_prolog_α
n324_call_prolog_β:     mov              r11, 218;                            jmp   d$2F3_ω
                        .size            n324_call_prolog_bx, .-n324_call_prolog_bx
                        .type            n325_call_prolog_bx, @function
n325_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_call_prolog_α:     mov              r11, 219
                        mov              rax, qword ptr [rsp + 4736]
                        mov              qword ptr [rsp + 4880], rax
                        mov              rax, qword ptr [rsp + 4744]
                        mov              qword ptr [rsp + 4888], rax
                        mov              rax, qword ptr [rsp + 4608]
                        mov              qword ptr [rsp + 4864], rax
                        mov              rax, qword ptr [rsp + 4616]
                        mov              qword ptr [rsp + 4872], rax
                        mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 4848], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 4856], rax
                        lea              rdi, [rsp + 4848]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4832], rax
                        mov              qword ptr [rsp + 4840], rdx
                        cmp              al, 104;                             je    n337_call_prolog_α
                                                                              jmp   n326_call_prolog_α
n325_call_prolog_β:     mov              r11, 219;                            jmp   n337_call_prolog_α
                        .size            n325_call_prolog_bx, .-n325_call_prolog_bx
                        .type            n326_call_prolog_bx, @function
n326_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_call_prolog_α:     mov              r11, 220
                        mov              rax, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 4328], rax
                        mov              rax, qword ptr [rsp + 4336]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4344]
                        mov              qword ptr [rsp + 4312], rax
                        lea              rdi, [rsp + 4304]
                        lea              r8, [rsp + 4304]
.Lcall_prolog_α_672_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_672_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_672_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_672_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_672_40
.Lcall_prolog_α_672_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_672_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_672_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_672_40
.Lcall_prolog_α_672_56: cmp              al, 72;                              jne   .Lcall_prolog_α_672_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_672_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_672_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_672_40
.Lcall_prolog_α_672_41: lea              r9, [rsp + 4320]
.Lcall_prolog_α_672_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_672_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_672_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_672_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_672_42
.Lcall_prolog_α_672_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_672_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_672_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_672_42
.Lcall_prolog_α_672_58: cmp              al, 72;                              jne   .Lcall_prolog_α_672_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_672_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_672_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_672_42
.Lcall_prolog_α_672_43: cmp              r8, r9;                              je    .Lcall_prolog_α_672_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_672_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_672_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_672_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_672_44
                                                                              jmp   .Lcall_prolog_α_672_45
.Lcall_prolog_α_672_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_672_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_672_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_672_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_672_53
                                                                              jmp   .Lcall_prolog_α_672_46
.Lcall_prolog_α_672_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_672_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_672_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_672_51
.Lcall_prolog_α_672_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_672_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_672_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_672_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_672_47
                                                                              jmp   .Lcall_prolog_α_672_48
.Lcall_prolog_α_672_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_672_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_672_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_672_51
.Lcall_prolog_α_672_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_672_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_672_53
                                                                              jmp   .Lcall_prolog_α_672_52
.Lcall_prolog_α_672_49: cmp              dl, 80;                              je    .Lcall_prolog_α_672_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_672_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_672_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_672_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_672_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_672_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_672_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_672_51
                                                                              jmp   .Lcall_prolog_α_672_52
.Lcall_prolog_α_672_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_672_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_672_53
.Lcall_prolog_α_672_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_672_54
.Lcall_prolog_α_672_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_672_54
.Lcall_prolog_α_672_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_672_54: mov              qword ptr [rsp + 4288], rax
                        mov              qword ptr [rsp + 4296], rdx
                        cmp              al, 104;                             je    n337_call_prolog_α
                                                                              jmp   n327_cut_α
n326_call_prolog_β:     mov              r11, 220;                            jmp   n337_call_prolog_α
                        .size            n326_call_prolog_bx, .-n326_call_prolog_bx
                        .type            n327_cut_bx, @function
n327_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_cut_α:             mov              r11, 221;                            jmp   n328_var_ref_α
                        .size            n327_cut_bx, .-n327_cut_bx
                        .type            n328_var_ref_bx, @function
n328_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 4240], rax
                        mov              qword ptr [rsp + 4248], rdx;         jmp   n329_var_ref_α
                        .size            n328_var_ref_bx, .-n328_var_ref_bx
                        .type            n329_var_ref_bx, @function
n329_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:         mov              r11, 223
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx;         jmp   n330_var_ref_α
                        .size            n329_var_ref_bx, .-n329_var_ref_bx
                        .type            n330_var_ref_bx, @function
n330_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:         mov              r11, 224
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 4272], rax
                        mov              qword ptr [rsp + 4280], rdx;         jmp   n331_call_proc_staged_α
                        .size            n330_var_ref_bx, .-n330_var_ref_bx
                        .type            n331_call_proc_staged_bx, @function
n331_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_call_proc_staged_α:
                        mov              r11, 225
                        lea              rsi, [rsp + 4240]
                        lea              rdx, [rsp + 4256]
                        lea              rcx, [rsp + 4272]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_681_2
.Lcall_proc_staged_α_681_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_681_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4160]
                        mov              rdx, qword ptr [rsp + 4168]
.Lcall_proc_staged_α_681_29:
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              al, 104;                             je    n476_call_prolog_α
                                                                              jmp   n332_var_ref_α
n331_call_proc_staged_β:
                        mov              r11, 225;                            jmp   n476_call_prolog_α
.Lcall_proc_staged_β_681_0:
                        .quad            .Lcall_proc_staged_β_681_0_s
.Lcall_proc_staged_β_681_0_s:
                        .string          "d/3"
                        .size            n331_call_proc_staged_bx, .-n331_call_proc_staged_bx
                        .type            n332_var_ref_bx, @function
n332_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx;         jmp   n333_var_ref_α
                        .size            n332_var_ref_bx, .-n332_var_ref_bx
                        .type            n333_var_ref_bx, @function
n333_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n334_var_ref_α
                        .size            n333_var_ref_bx, .-n333_var_ref_bx
                        .type            n334_var_ref_bx, @function
n334_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx;         jmp   n335_call_proc_staged_α
                        .size            n334_var_ref_bx, .-n334_var_ref_bx
                        .type            n335_call_proc_staged_bx, @function
n335_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_call_proc_staged_α:
                        mov              r11, 229
                        lea              rsi, [rsp + 4112]
                        lea              rdx, [rsp + 4128]
                        lea              rcx, [rsp + 4144]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_689_2
.Lcall_proc_staged_α_689_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_689_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4032]
                        mov              rdx, qword ptr [rsp + 4040]
.Lcall_proc_staged_α_689_29:
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        cmp              al, 104;                             je    n331_call_proc_staged_β
                                                                              jmp   n336_move_label_α
n335_call_proc_staged_β:
                        mov              r11, 229;                            jmp   n331_call_proc_staged_β
.Lcall_proc_staged_β_689_0:
                        .quad            .Lcall_proc_staged_β_689_0_s
.Lcall_proc_staged_β_689_0_s:
                        .string          "d/3"
                        .size            n335_call_proc_staged_bx, .-n335_call_proc_staged_bx
                        .type            n336_move_label_bx, @function
n336_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_move_label_α:      mov              r11, 230
                        lea              rax, [rip + n335_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n336_move_label_bx, .-n336_move_label_bx
                        .type            n337_call_prolog_bx, @function
n337_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_call_prolog_α:     mov              r11, 231
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 4016], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 4024], rax
                        lea              rdi, [rsp + 4016]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4000], rax
                        mov              qword ptr [rsp + 4008], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n338_var_ref_α
n337_call_prolog_β:     mov              r11, 231;                            jmp   d$2F3_ω
                        .size            n337_call_prolog_bx, .-n337_call_prolog_bx
                        .type            n338_var_ref_bx, @function
n338_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:         mov              r11, 232
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx;         jmp   n339_lit_integer_α
                        .size            n338_var_ref_bx, .-n338_var_ref_bx
                        .type            n339_lit_integer_bx, @function
n339_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_integer_α:     mov              r11, 233
                        mov              qword ptr [rsp + 3968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_695_0]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n340_lit_string_α
.Llit_integer_α_695_0:  .quad            516
                        .size            n339_lit_integer_bx, .-n339_lit_integer_bx
                        .type            n340_lit_string_bx, @function
n340_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:      mov              r11, 234
                        mov              qword ptr [rsp + 3984], 2            # result
                        mov              dword ptr [rsp + 3988], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_696_0]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n341_call_prolog_α
.Llit_string_α_696_0:   .quad            .Llit_string_α_696_0_s
.Llit_string_α_696_0_s: .string          "^"
                        .size            n340_lit_string_bx, .-n340_lit_string_bx
                        .type            n341_call_prolog_bx, @function
n341_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_call_prolog_α:     mov              r11, 235
                        mov              rax, qword ptr [rsp + 3984]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 3992]
                        mov              qword ptr [rsp + 3944], rax
                        mov              rax, qword ptr [rsp + 3968]
                        mov              qword ptr [rsp + 3920], rax
                        mov              rax, qword ptr [rsp + 3976]
                        mov              qword ptr [rsp + 3928], rax
                        mov              rax, qword ptr [rsp + 3952]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 3960]
                        mov              qword ptr [rsp + 3912], rax
                        lea              rdi, [rsp + 3904]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3888], rax
                        mov              qword ptr [rsp + 3896], rdx
                        cmp              al, 104;                             je    n377_var_ref_α
                                                                              jmp   n342_var_ref_α
n341_call_prolog_β:     mov              r11, 235;                            jmp   n377_var_ref_α
                        .size            n341_call_prolog_bx, .-n341_call_prolog_bx
                        .type            n342_var_ref_bx, @function
n342_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:         mov              r11, 236
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx;         jmp   n343_lit_string_α
                        .size            n342_var_ref_bx, .-n342_var_ref_bx
                        .type            n343_lit_string_bx, @function
n343_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:      mov              r11, 237
                        mov              qword ptr [rsp + 3872], 2            # result
                        mov              dword ptr [rsp + 3876], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_700_0]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n344_var_ref_α
.Llit_string_α_700_0:   .quad            .Llit_string_α_700_0_s
.Llit_string_α_700_0_s: .string          "^"
                        .size            n343_lit_string_bx, .-n343_lit_string_bx
                        .type            n344_var_ref_bx, @function
n344_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:         mov              r11, 238
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx;         jmp   n345_var_ref_α
                        .size            n344_var_ref_bx, .-n344_var_ref_bx
                        .type            n345_var_ref_bx, @function
n345_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:         mov              r11, 239
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx;         jmp   n346_call_prolog_α
                        .size            n345_var_ref_bx, .-n345_var_ref_bx
                        .type            n346_call_prolog_bx, @function
n346_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_call_prolog_α:     mov              r11, 240
                        mov              rax, qword ptr [rsp + 3776]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 3784]
                        mov              qword ptr [rsp + 3848], rax
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 3832], rax
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3816], rax
                        lea              rdi, [rsp + 3808]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx
                        cmp              al, 104;                             je    n376_call_prolog_α
                                                                              jmp   n347_call_prolog_α
n346_call_prolog_β:     mov              r11, 240;                            jmp   n376_call_prolog_α
                        .size            n346_call_prolog_bx, .-n346_call_prolog_bx
                        .type            n347_call_prolog_bx, @function
n347_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_call_prolog_α:     mov              r11, 241
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3728], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3736], rax
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3712], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3720], rax
                        lea              rdi, [rsp + 3712]
                        lea              r8, [rsp + 3712]
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
.Lcall_prolog_α_706_41: lea              r9, [rsp + 3728]
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
.Lcall_prolog_α_706_54: mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx
                        cmp              al, 104;                             je    n376_call_prolog_α
                                                                              jmp   n348_var_ref_α
n347_call_prolog_β:     mov              r11, 241;                            jmp   n376_call_prolog_α
                        .size            n347_call_prolog_bx, .-n347_call_prolog_bx
                        .type            n348_var_ref_bx, @function
n348_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:         mov              r11, 242
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx;         jmp   n349_var_ref_α
                        .size            n348_var_ref_bx, .-n348_var_ref_bx
                        .type            n349_var_ref_bx, @function
n349_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:         mov              r11, 243
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx;         jmp   n350_call_prolog_α
                        .size            n349_var_ref_bx, .-n349_var_ref_bx
                        .type            n350_call_prolog_bx, @function
n350_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_call_prolog_α:     mov              r11, 244
                        mov              rax, qword ptr [rsp + 3680]
                        mov              qword ptr [rsp + 3648], rax
                        mov              rax, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 3656], rax
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3640], rax
                        lea              rdi, [rsp + 3632]
                        lea              r8, [rsp + 3632]
.Lcall_prolog_α_711_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_711_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_711_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_711_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_711_40
.Lcall_prolog_α_711_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_711_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_711_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_711_40
.Lcall_prolog_α_711_56: cmp              al, 72;                              jne   .Lcall_prolog_α_711_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_711_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_711_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_711_40
.Lcall_prolog_α_711_41: lea              r9, [rsp + 3648]
.Lcall_prolog_α_711_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_711_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_711_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_711_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_711_42
.Lcall_prolog_α_711_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_711_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_711_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_711_42
.Lcall_prolog_α_711_58: cmp              al, 72;                              jne   .Lcall_prolog_α_711_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_711_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_711_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_711_42
.Lcall_prolog_α_711_43: cmp              r8, r9;                              je    .Lcall_prolog_α_711_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_711_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_711_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_711_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_711_44
                                                                              jmp   .Lcall_prolog_α_711_45
.Lcall_prolog_α_711_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_711_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_711_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_711_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_711_53
                                                                              jmp   .Lcall_prolog_α_711_46
.Lcall_prolog_α_711_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_711_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_711_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_711_51
.Lcall_prolog_α_711_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_711_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_711_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_711_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_711_47
                                                                              jmp   .Lcall_prolog_α_711_48
.Lcall_prolog_α_711_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_711_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_711_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_711_51
.Lcall_prolog_α_711_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_711_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_711_53
                                                                              jmp   .Lcall_prolog_α_711_52
.Lcall_prolog_α_711_49: cmp              dl, 80;                              je    .Lcall_prolog_α_711_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_711_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_711_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_711_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_711_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_711_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_711_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_711_51
                                                                              jmp   .Lcall_prolog_α_711_52
.Lcall_prolog_α_711_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_711_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_711_53
.Lcall_prolog_α_711_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_711_54
.Lcall_prolog_α_711_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_711_54
.Lcall_prolog_α_711_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_711_54: mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx
                        cmp              al, 104;                             je    n376_call_prolog_α
                                                                              jmp   n351_var_ref_α
n350_call_prolog_β:     mov              r11, 244;                            jmp   n376_call_prolog_α
                        .size            n350_call_prolog_bx, .-n350_call_prolog_bx
                        .type            n351_var_ref_bx, @function
n351_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:         mov              r11, 245
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx;         jmp   n352_lit_string_α
                        .size            n351_var_ref_bx, .-n351_var_ref_bx
                        .type            n352_lit_string_bx, @function
n352_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:      mov              r11, 246
                        mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_714_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n353_lit_string_α
.Llit_string_α_714_0:   .quad            .Llit_string_α_714_0_s
.Llit_string_α_714_0_s: .string          "*"
                        .size            n352_lit_string_bx, .-n352_lit_string_bx
                        .type            n353_lit_string_bx, @function
n353_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:      mov              r11, 247
                        mov              qword ptr [rsp + 3376], 2            # result
                        mov              dword ptr [rsp + 3380], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_715_0]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n354_var_ref_α
.Llit_string_α_715_0:   .quad            .Llit_string_α_715_0_s
.Llit_string_α_715_0_s: .string          "*"
                        .size            n353_lit_string_bx, .-n353_lit_string_bx
                        .type            n354_var_ref_bx, @function
n354_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:         mov              r11, 248
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx;         jmp   n355_var_ref_α
                        .size            n354_var_ref_bx, .-n354_var_ref_bx
                        .type            n355_var_ref_bx, @function
n355_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:         mov              r11, 249
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx;         jmp   n356_call_prolog_α
                        .size            n355_var_ref_bx, .-n355_var_ref_bx
                        .type            n356_call_prolog_bx, @function
n356_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_call_prolog_α:     mov              r11, 250
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3352], rax
                        mov              rax, qword ptr [rsp + 3264]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3272]
                        mov              qword ptr [rsp + 3336], rax
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3320], rax
                        lea              rdi, [rsp + 3312]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n357_lit_string_α
n356_call_prolog_β:     mov              r11, 250;                            jmp   d$2F3_ω
                        .size            n356_call_prolog_bx, .-n356_call_prolog_bx
                        .type            n357_lit_string_bx, @function
n357_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:      mov              r11, 251
                        mov              qword ptr [rsp + 3504], 2            # result
                        mov              dword ptr [rsp + 3508], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_721_0]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n358_var_ref_α
.Llit_string_α_721_0:   .quad            .Llit_string_α_721_0_s
.Llit_string_α_721_0_s: .string          "^"
                        .size            n357_lit_string_bx, .-n357_lit_string_bx
                        .type            n358_var_ref_bx, @function
n358_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:         mov              r11, 252
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx;         jmp   n359_var_ref_α
                        .size            n358_var_ref_bx, .-n358_var_ref_bx
                        .type            n359_var_ref_bx, @function
n359_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:         mov              r11, 253
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx;         jmp   n360_call_prolog_α
                        .size            n359_var_ref_bx, .-n359_var_ref_bx
                        .type            n360_call_prolog_bx, @function
n360_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_call_prolog_α:     mov              r11, 254
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3480], rax
                        mov              rax, qword ptr [rsp + 3392]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3400]
                        mov              qword ptr [rsp + 3464], rax
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3448], rax
                        lea              rdi, [rsp + 3440]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n361_call_prolog_α
n360_call_prolog_β:     mov              r11, 254;                            jmp   d$2F3_ω
                        .size            n360_call_prolog_bx, .-n360_call_prolog_bx
                        .type            n361_call_prolog_bx, @function
n361_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_call_prolog_α:     mov              r11, 255
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 3576], rax
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3560], rax
                        mov              rax, qword ptr [rsp + 3600]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3608]
                        mov              qword ptr [rsp + 3544], rax
                        lea              rdi, [rsp + 3536]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx
                        cmp              al, 104;                             je    n376_call_prolog_α
                                                                              jmp   n362_call_prolog_α
n361_call_prolog_β:     mov              r11, 255;                            jmp   n376_call_prolog_α
                        .size            n361_call_prolog_bx, .-n361_call_prolog_bx
                        .type            n362_call_prolog_bx, @function
n362_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_call_prolog_α:     mov              r11, 256
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 3240], rax
                        mov              rax, qword ptr [rsp + 3248]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 3224], rax
                        lea              rdi, [rsp + 3216]
                        lea              r8, [rsp + 3216]
.Lcall_prolog_α_728_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_728_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_728_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_728_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_728_40
.Lcall_prolog_α_728_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_728_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_728_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_728_40
.Lcall_prolog_α_728_56: cmp              al, 72;                              jne   .Lcall_prolog_α_728_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_728_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_728_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_728_40
.Lcall_prolog_α_728_41: lea              r9, [rsp + 3232]
.Lcall_prolog_α_728_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_728_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_728_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_728_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_728_42
.Lcall_prolog_α_728_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_728_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_728_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_728_42
.Lcall_prolog_α_728_58: cmp              al, 72;                              jne   .Lcall_prolog_α_728_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_728_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_728_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_728_42
.Lcall_prolog_α_728_43: cmp              r8, r9;                              je    .Lcall_prolog_α_728_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_728_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_728_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_728_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_728_44
                                                                              jmp   .Lcall_prolog_α_728_45
.Lcall_prolog_α_728_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_728_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_728_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_728_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_728_53
                                                                              jmp   .Lcall_prolog_α_728_46
.Lcall_prolog_α_728_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_728_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_728_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_728_51
.Lcall_prolog_α_728_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_728_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_728_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_728_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_728_47
                                                                              jmp   .Lcall_prolog_α_728_48
.Lcall_prolog_α_728_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_728_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_728_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_728_51
.Lcall_prolog_α_728_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_728_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_728_53
                                                                              jmp   .Lcall_prolog_α_728_52
.Lcall_prolog_α_728_49: cmp              dl, 80;                              je    .Lcall_prolog_α_728_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_728_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_728_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_728_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_728_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_728_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_728_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_728_51
                                                                              jmp   .Lcall_prolog_α_728_52
.Lcall_prolog_α_728_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_728_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_728_53
.Lcall_prolog_α_728_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_728_54
.Lcall_prolog_α_728_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_728_54
.Lcall_prolog_α_728_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_728_54: mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              al, 104;                             je    n376_call_prolog_α
                                                                              jmp   n363_cut_α
n362_call_prolog_β:     mov              r11, 256;                            jmp   n376_call_prolog_α
                        .size            n362_call_prolog_bx, .-n362_call_prolog_bx
                        .type            n363_cut_bx, @function
n363_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_cut_α:             mov              r11, 257;                            jmp   n364_var_ref_α
                        .size            n363_cut_bx, .-n363_cut_bx
                        .type            n364_var_ref_bx, @function
n364_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:         mov              r11, 258
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3184], rax
                        mov              qword ptr [rsp + 3192], rdx;         jmp   n365_call_prolog_α
                        .size            n364_var_ref_bx, .-n364_var_ref_bx
                        .type            n365_call_prolog_bx, @function
n365_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_call_prolog_α:     mov              r11, 259
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3176], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn733: .string          "$tt_integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn733]
                        lea              rsi, [rsp + 3168]
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
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        cmp              al, 104;                             je    n476_call_prolog_α
                                                                              jmp   n366_var_ref_α
n365_call_prolog_β:     mov              r11, 259;                            jmp   n476_call_prolog_α
                        .size            n365_call_prolog_bx, .-n365_call_prolog_bx
                        .type            n366_var_ref_bx, @function
n366_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:         mov              r11, 260
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx;         jmp   n367_var_α
                        .size            n366_var_ref_bx, .-n366_var_ref_bx
                        .type            n367_var_bx, @function
n367_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             mov              r11, 261
                        mov              rax, qword ptr [rsp + 8128]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 8136]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n368_lit_integer_α
                        .size            n367_var_bx, .-n367_var_bx
                        .type            n368_lit_integer_bx, @function
n368_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_integer_α:     mov              r11, 262
                        mov              qword ptr [rsp + 3136], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_738_0]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n369_call_prolog_α
.Llit_integer_α_738_0:  .quad            1
                        .size            n368_lit_integer_bx, .-n368_lit_integer_bx
                        .type            n369_call_prolog_bx, @function
n369_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_call_prolog_α:     mov              r11, 263
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3096], rax
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3080], rax
                        lea              rdi, [rsp + 3072]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        cmp              al, 104;                             je    n476_call_prolog_α
                                                                              jmp   n370_call_prolog_α
n369_call_prolog_β:     mov              r11, 263;                            jmp   n476_call_prolog_α
                        .size            n369_call_prolog_bx, .-n369_call_prolog_bx
                        .type            n370_call_prolog_bx, @function
n370_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_call_prolog_α:     mov              r11, 264
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3032], rax
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 3016], rax
                        lea              rdi, [rsp + 3008]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              al, 104;                             je    n476_call_prolog_α
                                                                              jmp   n371_var_ref_α
n370_call_prolog_β:     mov              r11, 264;                            jmp   n476_call_prolog_α
                        .size            n370_call_prolog_bx, .-n370_call_prolog_bx
                        .type            n371_var_ref_bx, @function
n371_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_var_ref_α:         mov              r11, 265
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n372_var_ref_α
                        .size            n371_var_ref_bx, .-n371_var_ref_bx
                        .type            n372_var_ref_bx, @function
n372_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_var_ref_α:         mov              r11, 266
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n373_var_ref_α
                        .size            n372_var_ref_bx, .-n372_var_ref_bx
                        .type            n373_var_ref_bx, @function
n373_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_var_ref_α:         mov              r11, 267
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n374_call_proc_staged_α
                        .size            n373_var_ref_bx, .-n373_var_ref_bx
                        .type            n374_call_proc_staged_bx, @function
n374_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_call_proc_staged_α:
                        mov              r11, 268
                        lea              rsi, [rsp + 2944]
                        lea              rdx, [rsp + 2960]
                        lea              rcx, [rsp + 2976]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_748_2
.Lcall_proc_staged_α_748_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_748_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2864]
                        mov              rdx, qword ptr [rsp + 2872]
.Lcall_proc_staged_α_748_29:
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n476_call_prolog_α
                                                                              jmp   n375_move_label_α
n374_call_proc_staged_β:
                        mov              r11, 268;                            jmp   n476_call_prolog_α
.Lcall_proc_staged_β_748_0:
                        .quad            .Lcall_proc_staged_β_748_0_s
.Lcall_proc_staged_β_748_0_s:
                        .string          "d/3"
                        .size            n374_call_proc_staged_bx, .-n374_call_proc_staged_bx
                        .type            n375_move_label_bx, @function
n375_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_move_label_α:      mov              r11, 269
                        lea              rax, [rip + n374_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n375_move_label_bx, .-n375_move_label_bx
                        .type            n376_call_prolog_bx, @function
n376_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_call_prolog_α:     mov              r11, 270
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 2856], rax
                        lea              rdi, [rsp + 2848]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n377_var_ref_α
n376_call_prolog_β:     mov              r11, 270;                            jmp   d$2F3_ω
                        .size            n376_call_prolog_bx, .-n376_call_prolog_bx
                        .type            n377_var_ref_bx, @function
n377_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_var_ref_α:         mov              r11, 271
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx;         jmp   n378_lit_integer_α
                        .size            n377_var_ref_bx, .-n377_var_ref_bx
                        .type            n378_lit_integer_bx, @function
n378_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_integer_α:     mov              r11, 272
                        mov              qword ptr [rsp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_754_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n379_lit_string_α
.Llit_integer_α_754_0:  .quad            260
                        .size            n378_lit_integer_bx, .-n378_lit_integer_bx
                        .type            n379_lit_string_bx, @function
n379_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:      mov              r11, 273
                        mov              qword ptr [rsp + 2816], 2            # result
                        mov              dword ptr [rsp + 2820], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_755_0]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n380_call_prolog_α
.Llit_string_α_755_0:   .quad            .Llit_string_α_755_0_s
.Llit_string_α_755_0_s: .string          "-"
                        .size            n379_lit_string_bx, .-n379_lit_string_bx
                        .type            n380_call_prolog_bx, @function
n380_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_call_prolog_α:     mov              r11, 274
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2776], rax
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2760], rax
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2744], rax
                        lea              rdi, [rsp + 2736]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        cmp              al, 104;                             je    n401_var_ref_α
                                                                              jmp   n381_var_ref_α
n380_call_prolog_β:     mov              r11, 274;                            jmp   n401_var_ref_α
                        .size            n380_call_prolog_bx, .-n380_call_prolog_bx
                        .type            n381_var_ref_bx, @function
n381_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_var_ref_α:         mov              r11, 275
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n382_lit_string_α
                        .size            n381_var_ref_bx, .-n381_var_ref_bx
                        .type            n382_lit_string_bx, @function
n382_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:      mov              r11, 276
                        mov              qword ptr [rsp + 2704], 2            # result
                        mov              dword ptr [rsp + 2708], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_759_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n383_var_ref_α
.Llit_string_α_759_0:   .quad            .Llit_string_α_759_0_s
.Llit_string_α_759_0_s: .string          "-"
                        .size            n382_lit_string_bx, .-n382_lit_string_bx
                        .type            n383_var_ref_bx, @function
n383_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:         mov              r11, 277
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n384_call_prolog_α
                        .size            n383_var_ref_bx, .-n383_var_ref_bx
                        .type            n384_call_prolog_bx, @function
n384_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_call_prolog_α:     mov              r11, 278
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2680], rax
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2664], rax
                        lea              rdi, [rsp + 2656]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        cmp              al, 104;                             je    n400_call_prolog_α
                                                                              jmp   n385_call_prolog_α
n384_call_prolog_β:     mov              r11, 278;                            jmp   n400_call_prolog_α
                        .size            n384_call_prolog_bx, .-n384_call_prolog_bx
                        .type            n385_call_prolog_bx, @function
n385_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_call_prolog_α:     mov              r11, 279
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2600], rax
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2584], rax
                        lea              rdi, [rsp + 2576]
                        lea              r8, [rsp + 2576]
.Lcall_prolog_α_763_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_763_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_763_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_763_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_763_40
.Lcall_prolog_α_763_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_763_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_763_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_763_40
.Lcall_prolog_α_763_56: cmp              al, 72;                              jne   .Lcall_prolog_α_763_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_763_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_763_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_763_40
.Lcall_prolog_α_763_41: lea              r9, [rsp + 2592]
.Lcall_prolog_α_763_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_763_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_763_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_763_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_763_42
.Lcall_prolog_α_763_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_763_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_763_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_763_42
.Lcall_prolog_α_763_58: cmp              al, 72;                              jne   .Lcall_prolog_α_763_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_763_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_763_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_763_42
.Lcall_prolog_α_763_43: cmp              r8, r9;                              je    .Lcall_prolog_α_763_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_763_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_763_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_763_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_763_44
                                                                              jmp   .Lcall_prolog_α_763_45
.Lcall_prolog_α_763_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_763_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_763_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_763_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_763_53
                                                                              jmp   .Lcall_prolog_α_763_46
.Lcall_prolog_α_763_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_763_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_763_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_763_51
.Lcall_prolog_α_763_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_763_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_763_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_763_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_763_47
                                                                              jmp   .Lcall_prolog_α_763_48
.Lcall_prolog_α_763_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_763_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_763_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_763_51
.Lcall_prolog_α_763_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_763_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_763_53
                                                                              jmp   .Lcall_prolog_α_763_52
.Lcall_prolog_α_763_49: cmp              dl, 80;                              je    .Lcall_prolog_α_763_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_763_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_763_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_763_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_763_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_763_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_763_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_763_51
                                                                              jmp   .Lcall_prolog_α_763_52
.Lcall_prolog_α_763_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_763_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_763_53
.Lcall_prolog_α_763_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_763_54
.Lcall_prolog_α_763_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_763_54
.Lcall_prolog_α_763_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_763_54: mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                        cmp              al, 104;                             je    n400_call_prolog_α
                                                                              jmp   n386_var_ref_α
n385_call_prolog_β:     mov              r11, 279;                            jmp   n400_call_prolog_α
                        .size            n385_call_prolog_bx, .-n385_call_prolog_bx
                        .type            n386_var_ref_bx, @function
n386_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:         mov              r11, 280
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n387_var_ref_α
                        .size            n386_var_ref_bx, .-n386_var_ref_bx
                        .type            n387_var_ref_bx, @function
n387_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_var_ref_α:         mov              r11, 281
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx;         jmp   n388_call_prolog_α
                        .size            n387_var_ref_bx, .-n387_var_ref_bx
                        .type            n388_call_prolog_bx, @function
n388_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_call_prolog_α:     mov              r11, 282
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2520], rax
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2504], rax
                        lea              rdi, [rsp + 2496]
                        lea              r8, [rsp + 2496]
.Lcall_prolog_α_768_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_768_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_768_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_768_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_768_40
.Lcall_prolog_α_768_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_768_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_768_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_768_40
.Lcall_prolog_α_768_56: cmp              al, 72;                              jne   .Lcall_prolog_α_768_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_768_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_768_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_768_40
.Lcall_prolog_α_768_41: lea              r9, [rsp + 2512]
.Lcall_prolog_α_768_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_768_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_768_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_768_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_768_42
.Lcall_prolog_α_768_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_768_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_768_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_768_42
.Lcall_prolog_α_768_58: cmp              al, 72;                              jne   .Lcall_prolog_α_768_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_768_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_768_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_768_42
.Lcall_prolog_α_768_43: cmp              r8, r9;                              je    .Lcall_prolog_α_768_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_768_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_768_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_768_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_768_44
                                                                              jmp   .Lcall_prolog_α_768_45
.Lcall_prolog_α_768_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_768_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_768_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_768_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_768_53
                                                                              jmp   .Lcall_prolog_α_768_46
.Lcall_prolog_α_768_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_768_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_768_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_768_51
.Lcall_prolog_α_768_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_768_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_768_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_768_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_768_47
                                                                              jmp   .Lcall_prolog_α_768_48
.Lcall_prolog_α_768_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_768_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_768_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_768_51
.Lcall_prolog_α_768_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_768_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_768_53
                                                                              jmp   .Lcall_prolog_α_768_52
.Lcall_prolog_α_768_49: cmp              dl, 80;                              je    .Lcall_prolog_α_768_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_768_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_768_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_768_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_768_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_768_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_768_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_768_51
                                                                              jmp   .Lcall_prolog_α_768_52
.Lcall_prolog_α_768_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_768_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_768_53
.Lcall_prolog_α_768_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_768_54
.Lcall_prolog_α_768_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_768_54
.Lcall_prolog_α_768_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_768_54: mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              al, 104;                             je    n400_call_prolog_α
                                                                              jmp   n389_var_ref_α
n388_call_prolog_β:     mov              r11, 282;                            jmp   n400_call_prolog_α
                        .size            n388_call_prolog_bx, .-n388_call_prolog_bx
                        .type            n389_var_ref_bx, @function
n389_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_var_ref_α:         mov              r11, 283
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx;         jmp   n390_lit_string_α
                        .size            n389_var_ref_bx, .-n389_var_ref_bx
                        .type            n390_lit_string_bx, @function
n390_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:      mov              r11, 284
                        mov              qword ptr [rsp + 2464], 2            # result
                        mov              dword ptr [rsp + 2468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_771_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n391_var_ref_α
.Llit_string_α_771_0:   .quad            .Llit_string_α_771_0_s
.Llit_string_α_771_0_s: .string          "-"
                        .size            n390_lit_string_bx, .-n390_lit_string_bx
                        .type            n391_var_ref_bx, @function
n391_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_var_ref_α:         mov              r11, 285
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx;         jmp   n392_call_prolog_α
                        .size            n391_var_ref_bx, .-n391_var_ref_bx
                        .type            n392_call_prolog_bx, @function
n392_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_call_prolog_α:     mov              r11, 286
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2440], rax
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2424], rax
                        lea              rdi, [rsp + 2416]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              al, 104;                             je    n400_call_prolog_α
                                                                              jmp   n393_call_prolog_α
n392_call_prolog_β:     mov              r11, 286;                            jmp   n400_call_prolog_α
                        .size            n392_call_prolog_bx, .-n392_call_prolog_bx
                        .type            n393_call_prolog_bx, @function
n393_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_call_prolog_α:     mov              r11, 287
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2360], rax
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2344], rax
                        lea              rdi, [rsp + 2336]
                        lea              r8, [rsp + 2336]
.Lcall_prolog_α_775_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_775_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_775_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_775_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_775_40
.Lcall_prolog_α_775_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_775_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_775_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_775_40
.Lcall_prolog_α_775_56: cmp              al, 72;                              jne   .Lcall_prolog_α_775_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_775_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_775_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_775_40
.Lcall_prolog_α_775_41: lea              r9, [rsp + 2352]
.Lcall_prolog_α_775_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_775_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_775_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_775_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_775_42
.Lcall_prolog_α_775_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_775_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_775_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_775_42
.Lcall_prolog_α_775_58: cmp              al, 72;                              jne   .Lcall_prolog_α_775_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_775_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_775_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_775_42
.Lcall_prolog_α_775_43: cmp              r8, r9;                              je    .Lcall_prolog_α_775_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_775_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_775_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_775_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_775_44
                                                                              jmp   .Lcall_prolog_α_775_45
.Lcall_prolog_α_775_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_775_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_775_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_775_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_775_53
                                                                              jmp   .Lcall_prolog_α_775_46
.Lcall_prolog_α_775_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_775_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_775_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_775_51
.Lcall_prolog_α_775_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_775_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_775_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_775_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_775_47
                                                                              jmp   .Lcall_prolog_α_775_48
.Lcall_prolog_α_775_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_775_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_775_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_775_51
.Lcall_prolog_α_775_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_775_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_775_53
                                                                              jmp   .Lcall_prolog_α_775_52
.Lcall_prolog_α_775_49: cmp              dl, 80;                              je    .Lcall_prolog_α_775_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_775_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_775_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_775_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_775_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_775_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_775_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_775_51
                                                                              jmp   .Lcall_prolog_α_775_52
.Lcall_prolog_α_775_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_775_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_775_53
.Lcall_prolog_α_775_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_775_54
.Lcall_prolog_α_775_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_775_54
.Lcall_prolog_α_775_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_775_54: mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              al, 104;                             je    n400_call_prolog_α
                                                                              jmp   n394_cut_α
n393_call_prolog_β:     mov              r11, 287;                            jmp   n400_call_prolog_α
                        .size            n393_call_prolog_bx, .-n393_call_prolog_bx
                        .type            n394_cut_bx, @function
n394_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_cut_α:             mov              r11, 288;                            jmp   n395_var_ref_α
                        .size            n394_cut_bx, .-n394_cut_bx
                        .type            n395_var_ref_bx, @function
n395_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_var_ref_α:         mov              r11, 289
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n396_var_ref_α
                        .size            n395_var_ref_bx, .-n395_var_ref_bx
                        .type            n396_var_ref_bx, @function
n396_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_var_ref_α:         mov              r11, 290
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n397_var_ref_α
                        .size            n396_var_ref_bx, .-n396_var_ref_bx
                        .type            n397_var_ref_bx, @function
n397_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_var_ref_α:         mov              r11, 291
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n398_call_proc_staged_α
                        .size            n397_var_ref_bx, .-n397_var_ref_bx
                        .type            n398_call_proc_staged_bx, @function
n398_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_call_proc_staged_α:
                        mov              r11, 292
                        lea              rsi, [rsp + 2272]
                        lea              rdx, [rsp + 2288]
                        lea              rcx, [rsp + 2304]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_784_2
.Lcall_proc_staged_α_784_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_784_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2192]
                        mov              rdx, qword ptr [rsp + 2200]
.Lcall_proc_staged_α_784_29:
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              al, 104;                             je    n476_call_prolog_α
                                                                              jmp   n399_move_label_α
n398_call_proc_staged_β:
                        mov              r11, 292;                            jmp   n476_call_prolog_α
.Lcall_proc_staged_β_784_0:
                        .quad            .Lcall_proc_staged_β_784_0_s
.Lcall_proc_staged_β_784_0_s:
                        .string          "d/3"
                        .size            n398_call_proc_staged_bx, .-n398_call_proc_staged_bx
                        .type            n399_move_label_bx, @function
n399_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_move_label_α:      mov              r11, 293
                        lea              rax, [rip + n398_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n399_move_label_bx, .-n399_move_label_bx
                        .type            n400_call_prolog_bx, @function
n400_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_call_prolog_α:     mov              r11, 294
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 2184], rax
                        lea              rdi, [rsp + 2176]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n401_var_ref_α
n400_call_prolog_β:     mov              r11, 294;                            jmp   d$2F3_ω
                        .size            n400_call_prolog_bx, .-n400_call_prolog_bx
                        .type            n401_var_ref_bx, @function
n401_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_var_ref_α:         mov              r11, 295
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n402_lit_integer_α
                        .size            n401_var_ref_bx, .-n401_var_ref_bx
                        .type            n402_lit_integer_bx, @function
n402_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_integer_α:     mov              r11, 296
                        mov              qword ptr [rsp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_790_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n403_lit_string_α
.Llit_integer_α_790_0:  .quad            260
                        .size            n402_lit_integer_bx, .-n402_lit_integer_bx
                        .type            n403_lit_string_bx, @function
n403_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_string_α:      mov              r11, 297
                        mov              qword ptr [rsp + 2144], 2            # result
                        mov              dword ptr [rsp + 2148], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_791_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n404_call_prolog_α
.Llit_string_α_791_0:   .quad            .Llit_string_α_791_0_s
.Llit_string_α_791_0_s: .string          "exp"
                        .size            n403_lit_string_bx, .-n403_lit_string_bx
                        .type            n404_call_prolog_bx, @function
n404_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_call_prolog_α:     mov              r11, 298
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2104], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2088], rax
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2072], rax
                        lea              rdi, [rsp + 2064]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              al, 104;                             je    n428_var_ref_α
                                                                              jmp   n405_var_ref_α
n404_call_prolog_β:     mov              r11, 298;                            jmp   n428_var_ref_α
                        .size            n404_call_prolog_bx, .-n404_call_prolog_bx
                        .type            n405_var_ref_bx, @function
n405_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_var_ref_α:         mov              r11, 299
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n406_lit_string_α
                        .size            n405_var_ref_bx, .-n405_var_ref_bx
                        .type            n406_lit_string_bx, @function
n406_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:      mov              r11, 300
                        mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_795_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n407_var_ref_α
.Llit_string_α_795_0:   .quad            .Llit_string_α_795_0_s
.Llit_string_α_795_0_s: .string          "exp"
                        .size            n406_lit_string_bx, .-n406_lit_string_bx
                        .type            n407_var_ref_bx, @function
n407_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_var_ref_α:         mov              r11, 301
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n408_call_prolog_α
                        .size            n407_var_ref_bx, .-n407_var_ref_bx
                        .type            n408_call_prolog_bx, @function
n408_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_call_prolog_α:     mov              r11, 302
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 2008], rax
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 1992], rax
                        lea              rdi, [rsp + 1984]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              al, 104;                             je    n427_call_prolog_α
                                                                              jmp   n409_call_prolog_α
n408_call_prolog_β:     mov              r11, 302;                            jmp   n427_call_prolog_α
                        .size            n408_call_prolog_bx, .-n408_call_prolog_bx
                        .type            n409_call_prolog_bx, @function
n409_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_call_prolog_α:     mov              r11, 303
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1912], rax
                        lea              rdi, [rsp + 1904]
                        lea              r8, [rsp + 1904]
.Lcall_prolog_α_799_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_799_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_799_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_799_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_799_40
.Lcall_prolog_α_799_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_799_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_799_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_799_40
.Lcall_prolog_α_799_56: cmp              al, 72;                              jne   .Lcall_prolog_α_799_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_799_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_799_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_799_40
.Lcall_prolog_α_799_41: lea              r9, [rsp + 1920]
.Lcall_prolog_α_799_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_799_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_799_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_799_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_799_42
.Lcall_prolog_α_799_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_799_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_799_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_799_42
.Lcall_prolog_α_799_58: cmp              al, 72;                              jne   .Lcall_prolog_α_799_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_799_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_799_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_799_42
.Lcall_prolog_α_799_43: cmp              r8, r9;                              je    .Lcall_prolog_α_799_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_799_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_799_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_799_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_799_44
                                                                              jmp   .Lcall_prolog_α_799_45
.Lcall_prolog_α_799_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_799_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_799_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_799_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_799_53
                                                                              jmp   .Lcall_prolog_α_799_46
.Lcall_prolog_α_799_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_799_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_799_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_799_51
.Lcall_prolog_α_799_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_799_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_799_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_799_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_799_47
                                                                              jmp   .Lcall_prolog_α_799_48
.Lcall_prolog_α_799_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_799_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_799_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_799_51
.Lcall_prolog_α_799_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_799_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_799_53
                                                                              jmp   .Lcall_prolog_α_799_52
.Lcall_prolog_α_799_49: cmp              dl, 80;                              je    .Lcall_prolog_α_799_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_799_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_799_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_799_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_799_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_799_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_799_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_799_51
                                                                              jmp   .Lcall_prolog_α_799_52
.Lcall_prolog_α_799_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_799_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_799_53
.Lcall_prolog_α_799_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_799_54
.Lcall_prolog_α_799_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_799_54
.Lcall_prolog_α_799_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_799_54: mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    n427_call_prolog_α
                                                                              jmp   n410_var_ref_α
n409_call_prolog_β:     mov              r11, 303;                            jmp   n427_call_prolog_α
                        .size            n409_call_prolog_bx, .-n409_call_prolog_bx
                        .type            n410_var_ref_bx, @function
n410_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_var_ref_α:         mov              r11, 304
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n411_var_ref_α
                        .size            n410_var_ref_bx, .-n410_var_ref_bx
                        .type            n411_var_ref_bx, @function
n411_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_var_ref_α:         mov              r11, 305
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx;         jmp   n412_call_prolog_α
                        .size            n411_var_ref_bx, .-n411_var_ref_bx
                        .type            n412_call_prolog_bx, @function
n412_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_call_prolog_α:     mov              r11, 306
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1832], rax
                        lea              rdi, [rsp + 1824]
                        lea              r8, [rsp + 1824]
.Lcall_prolog_α_804_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_804_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_804_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_804_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_804_40
.Lcall_prolog_α_804_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_804_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_804_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_804_40
.Lcall_prolog_α_804_56: cmp              al, 72;                              jne   .Lcall_prolog_α_804_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_804_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_804_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_804_40
.Lcall_prolog_α_804_41: lea              r9, [rsp + 1840]
.Lcall_prolog_α_804_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_804_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_804_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_804_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_804_42
.Lcall_prolog_α_804_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_804_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_804_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_804_42
.Lcall_prolog_α_804_58: cmp              al, 72;                              jne   .Lcall_prolog_α_804_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_804_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_804_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_804_42
.Lcall_prolog_α_804_43: cmp              r8, r9;                              je    .Lcall_prolog_α_804_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_804_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_804_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_804_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_804_44
                                                                              jmp   .Lcall_prolog_α_804_45
.Lcall_prolog_α_804_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_804_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_804_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_804_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_804_53
                                                                              jmp   .Lcall_prolog_α_804_46
.Lcall_prolog_α_804_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_804_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_804_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_804_51
.Lcall_prolog_α_804_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_804_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_804_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_804_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_804_47
                                                                              jmp   .Lcall_prolog_α_804_48
.Lcall_prolog_α_804_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_804_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_804_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_804_51
.Lcall_prolog_α_804_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_804_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_804_53
                                                                              jmp   .Lcall_prolog_α_804_52
.Lcall_prolog_α_804_49: cmp              dl, 80;                              je    .Lcall_prolog_α_804_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_804_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_804_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_804_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_804_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_804_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_804_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_804_51
                                                                              jmp   .Lcall_prolog_α_804_52
.Lcall_prolog_α_804_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_804_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_804_53
.Lcall_prolog_α_804_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_804_54
.Lcall_prolog_α_804_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_804_54
.Lcall_prolog_α_804_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_804_54: mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              al, 104;                             je    n427_call_prolog_α
                                                                              jmp   n413_var_ref_α
n412_call_prolog_β:     mov              r11, 306;                            jmp   n427_call_prolog_α
                        .size            n412_call_prolog_bx, .-n412_call_prolog_bx
                        .type            n413_var_ref_bx, @function
n413_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_var_ref_α:         mov              r11, 307
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n414_lit_string_α
                        .size            n413_var_ref_bx, .-n413_var_ref_bx
                        .type            n414_lit_string_bx, @function
n414_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:      mov              r11, 308
                        mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_807_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n415_lit_string_α
.Llit_string_α_807_0:   .quad            .Llit_string_α_807_0_s
.Llit_string_α_807_0_s: .string          "*"
                        .size            n414_lit_string_bx, .-n414_lit_string_bx
                        .type            n415_lit_string_bx, @function
n415_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_string_α:      mov              r11, 309
                        mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_808_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n416_var_ref_α
.Llit_string_α_808_0:   .quad            .Llit_string_α_808_0_s
.Llit_string_α_808_0_s: .string          "exp"
                        .size            n415_lit_string_bx, .-n415_lit_string_bx
                        .type            n416_var_ref_bx, @function
n416_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_var_ref_α:         mov              r11, 310
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n417_call_prolog_α
                        .size            n416_var_ref_bx, .-n416_var_ref_bx
                        .type            n417_call_prolog_bx, @function
n417_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_call_prolog_α:     mov              r11, 311
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1656], rax
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax
                        lea              rdi, [rsp + 1632]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n418_var_ref_α
n417_call_prolog_β:     mov              r11, 311;                            jmp   d$2F3_ω
                        .size            n417_call_prolog_bx, .-n417_call_prolog_bx
                        .type            n418_var_ref_bx, @function
n418_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_var_ref_α:         mov              r11, 312
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n419_call_prolog_α
                        .size            n418_var_ref_bx, .-n418_var_ref_bx
                        .type            n419_call_prolog_bx, @function
n419_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_call_prolog_α:     mov              r11, 313
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1752], rax
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1736], rax
                        lea              rdi, [rsp + 1728]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              al, 104;                             je    n427_call_prolog_α
                                                                              jmp   n420_call_prolog_α
n419_call_prolog_β:     mov              r11, 313;                            jmp   n427_call_prolog_α
                        .size            n419_call_prolog_bx, .-n419_call_prolog_bx
                        .type            n420_call_prolog_bx, @function
n420_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_call_prolog_α:     mov              r11, 314
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1576], rax
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1560], rax
                        lea              rdi, [rsp + 1552]
                        lea              r8, [rsp + 1552]
.Lcall_prolog_α_815_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_815_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_815_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_815_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_815_40
.Lcall_prolog_α_815_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_815_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_815_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_815_40
.Lcall_prolog_α_815_56: cmp              al, 72;                              jne   .Lcall_prolog_α_815_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_815_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_815_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_815_40
.Lcall_prolog_α_815_41: lea              r9, [rsp + 1568]
.Lcall_prolog_α_815_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_815_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_815_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_815_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_815_42
.Lcall_prolog_α_815_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_815_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_815_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_815_42
.Lcall_prolog_α_815_58: cmp              al, 72;                              jne   .Lcall_prolog_α_815_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_815_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_815_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_815_42
.Lcall_prolog_α_815_43: cmp              r8, r9;                              je    .Lcall_prolog_α_815_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_815_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_815_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_815_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_815_44
                                                                              jmp   .Lcall_prolog_α_815_45
.Lcall_prolog_α_815_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_815_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_815_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_815_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_815_53
                                                                              jmp   .Lcall_prolog_α_815_46
.Lcall_prolog_α_815_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_815_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_815_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_815_51
.Lcall_prolog_α_815_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_815_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_815_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_815_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_815_47
                                                                              jmp   .Lcall_prolog_α_815_48
.Lcall_prolog_α_815_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_815_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_815_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_815_51
.Lcall_prolog_α_815_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_815_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_815_53
                                                                              jmp   .Lcall_prolog_α_815_52
.Lcall_prolog_α_815_49: cmp              dl, 80;                              je    .Lcall_prolog_α_815_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_815_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_815_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_815_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_815_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_815_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_815_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_815_51
                                                                              jmp   .Lcall_prolog_α_815_52
.Lcall_prolog_α_815_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_815_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_815_53
.Lcall_prolog_α_815_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_815_54
.Lcall_prolog_α_815_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_815_54
.Lcall_prolog_α_815_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_815_54: mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    n427_call_prolog_α
                                                                              jmp   n421_cut_α
n420_call_prolog_β:     mov              r11, 314;                            jmp   n427_call_prolog_α
                        .size            n420_call_prolog_bx, .-n420_call_prolog_bx
                        .type            n421_cut_bx, @function
n421_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_cut_α:             mov              r11, 315;                            jmp   n422_var_ref_α
                        .size            n421_cut_bx, .-n421_cut_bx
                        .type            n422_var_ref_bx, @function
n422_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_var_ref_α:         mov              r11, 316
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n423_var_ref_α
                        .size            n422_var_ref_bx, .-n422_var_ref_bx
                        .type            n423_var_ref_bx, @function
n423_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_var_ref_α:         mov              r11, 317
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n424_var_ref_α
                        .size            n423_var_ref_bx, .-n423_var_ref_bx
                        .type            n424_var_ref_bx, @function
n424_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_var_ref_α:         mov              r11, 318
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n425_call_proc_staged_α
                        .size            n424_var_ref_bx, .-n424_var_ref_bx
                        .type            n425_call_proc_staged_bx, @function
n425_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_call_proc_staged_α:
                        mov              r11, 319
                        lea              rsi, [rsp + 1488]
                        lea              rdx, [rsp + 1504]
                        lea              rcx, [rsp + 1520]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_824_2
.Lcall_proc_staged_α_824_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_824_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
.Lcall_proc_staged_α_824_29:
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n476_call_prolog_α
                                                                              jmp   n426_move_label_α
n425_call_proc_staged_β:
                        mov              r11, 319;                            jmp   n476_call_prolog_α
.Lcall_proc_staged_β_824_0:
                        .quad            .Lcall_proc_staged_β_824_0_s
.Lcall_proc_staged_β_824_0_s:
                        .string          "d/3"
                        .size            n425_call_proc_staged_bx, .-n425_call_proc_staged_bx
                        .type            n426_move_label_bx, @function
n426_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_move_label_α:      mov              r11, 320
                        lea              rax, [rip + n425_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n426_move_label_bx, .-n426_move_label_bx
                        .type            n427_call_prolog_bx, @function
n427_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_call_prolog_α:     mov              r11, 321
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 1400], rax
                        lea              rdi, [rsp + 1392]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n428_var_ref_α
n427_call_prolog_β:     mov              r11, 321;                            jmp   d$2F3_ω
                        .size            n427_call_prolog_bx, .-n427_call_prolog_bx
                        .type            n428_var_ref_bx, @function
n428_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_var_ref_α:         mov              r11, 322
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n429_lit_integer_α
                        .size            n428_var_ref_bx, .-n428_var_ref_bx
                        .type            n429_lit_integer_bx, @function
n429_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_integer_α:     mov              r11, 323
                        mov              qword ptr [rsp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_830_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n430_lit_string_α
.Llit_integer_α_830_0:  .quad            260
                        .size            n429_lit_integer_bx, .-n429_lit_integer_bx
                        .type            n430_lit_string_bx, @function
n430_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_string_α:      mov              r11, 324
                        mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_831_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n431_call_prolog_α
.Llit_string_α_831_0:   .quad            .Llit_string_α_831_0_s
.Llit_string_α_831_0_s: .string          "log"
                        .size            n430_lit_string_bx, .-n430_lit_string_bx
                        .type            n431_call_prolog_bx, @function
n431_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_call_prolog_α:     mov              r11, 325
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1304], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1288], rax
                        lea              rdi, [rsp + 1280]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n453_var_ref_α
                                                                              jmp   n432_var_ref_α
n431_call_prolog_β:     mov              r11, 325;                            jmp   n453_var_ref_α
                        .size            n431_call_prolog_bx, .-n431_call_prolog_bx
                        .type            n432_var_ref_bx, @function
n432_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:         mov              r11, 326
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n433_lit_string_α
                        .size            n432_var_ref_bx, .-n432_var_ref_bx
                        .type            n433_lit_string_bx, @function
n433_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:      mov              r11, 327
                        mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_835_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n434_var_ref_α
.Llit_string_α_835_0:   .quad            .Llit_string_α_835_0_s
.Llit_string_α_835_0_s: .string          "log"
                        .size            n433_lit_string_bx, .-n433_lit_string_bx
                        .type            n434_var_ref_bx, @function
n434_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_var_ref_α:         mov              r11, 328
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n435_call_prolog_α
                        .size            n434_var_ref_bx, .-n434_var_ref_bx
                        .type            n435_call_prolog_bx, @function
n435_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_call_prolog_α:     mov              r11, 329
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1208], rax
                        lea              rdi, [rsp + 1200]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n452_call_prolog_α
                                                                              jmp   n436_call_prolog_α
n435_call_prolog_β:     mov              r11, 329;                            jmp   n452_call_prolog_α
                        .size            n435_call_prolog_bx, .-n435_call_prolog_bx
                        .type            n436_call_prolog_bx, @function
n436_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_call_prolog_α:     mov              r11, 330
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        lea              rdi, [rsp + 1120]
                        lea              r8, [rsp + 1120]
.Lcall_prolog_α_839_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_839_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_839_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_839_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_839_40
.Lcall_prolog_α_839_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_839_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_839_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_839_40
.Lcall_prolog_α_839_56: cmp              al, 72;                              jne   .Lcall_prolog_α_839_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_839_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_839_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_839_40
.Lcall_prolog_α_839_41: lea              r9, [rsp + 1136]
.Lcall_prolog_α_839_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_839_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_839_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_839_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_839_42
.Lcall_prolog_α_839_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_839_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_839_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_839_42
.Lcall_prolog_α_839_58: cmp              al, 72;                              jne   .Lcall_prolog_α_839_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_839_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_839_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_839_42
.Lcall_prolog_α_839_43: cmp              r8, r9;                              je    .Lcall_prolog_α_839_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_839_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_839_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_839_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_839_44
                                                                              jmp   .Lcall_prolog_α_839_45
.Lcall_prolog_α_839_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_839_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_839_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_839_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_839_53
                                                                              jmp   .Lcall_prolog_α_839_46
.Lcall_prolog_α_839_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_839_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_839_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_839_51
.Lcall_prolog_α_839_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_839_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_839_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_839_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_839_47
                                                                              jmp   .Lcall_prolog_α_839_48
.Lcall_prolog_α_839_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_839_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_839_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_839_51
.Lcall_prolog_α_839_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_839_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_839_53
                                                                              jmp   .Lcall_prolog_α_839_52
.Lcall_prolog_α_839_49: cmp              dl, 80;                              je    .Lcall_prolog_α_839_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_839_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_839_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_839_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_839_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_839_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_839_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_839_51
                                                                              jmp   .Lcall_prolog_α_839_52
.Lcall_prolog_α_839_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_839_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_839_53
.Lcall_prolog_α_839_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_839_54
.Lcall_prolog_α_839_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_839_54
.Lcall_prolog_α_839_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_839_54: mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n452_call_prolog_α
                                                                              jmp   n437_var_ref_α
n436_call_prolog_β:     mov              r11, 330;                            jmp   n452_call_prolog_α
                        .size            n436_call_prolog_bx, .-n436_call_prolog_bx
                        .type            n437_var_ref_bx, @function
n437_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_var_ref_α:         mov              r11, 331
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n438_var_ref_α
                        .size            n437_var_ref_bx, .-n437_var_ref_bx
                        .type            n438_var_ref_bx, @function
n438_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_var_ref_α:         mov              r11, 332
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n439_call_prolog_α
                        .size            n438_var_ref_bx, .-n438_var_ref_bx
                        .type            n439_call_prolog_bx, @function
n439_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_call_prolog_α:     mov              r11, 333
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1048], rax
                        lea              rdi, [rsp + 1040]
                        lea              r8, [rsp + 1040]
.Lcall_prolog_α_844_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_844_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_844_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_844_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_844_40
.Lcall_prolog_α_844_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_844_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_844_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_844_40
.Lcall_prolog_α_844_56: cmp              al, 72;                              jne   .Lcall_prolog_α_844_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_844_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_844_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_844_40
.Lcall_prolog_α_844_41: lea              r9, [rsp + 1056]
.Lcall_prolog_α_844_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_844_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_844_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_844_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_844_42
.Lcall_prolog_α_844_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_844_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_844_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_844_42
.Lcall_prolog_α_844_58: cmp              al, 72;                              jne   .Lcall_prolog_α_844_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_844_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_844_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_844_42
.Lcall_prolog_α_844_43: cmp              r8, r9;                              je    .Lcall_prolog_α_844_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_844_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_844_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_844_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_844_44
                                                                              jmp   .Lcall_prolog_α_844_45
.Lcall_prolog_α_844_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_844_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_844_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_844_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_844_53
                                                                              jmp   .Lcall_prolog_α_844_46
.Lcall_prolog_α_844_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_844_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_844_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_844_51
.Lcall_prolog_α_844_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_844_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_844_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_844_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_844_47
                                                                              jmp   .Lcall_prolog_α_844_48
.Lcall_prolog_α_844_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_844_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_844_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_844_51
.Lcall_prolog_α_844_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_844_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_844_53
                                                                              jmp   .Lcall_prolog_α_844_52
.Lcall_prolog_α_844_49: cmp              dl, 80;                              je    .Lcall_prolog_α_844_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_844_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_844_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_844_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_844_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_844_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_844_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_844_51
                                                                              jmp   .Lcall_prolog_α_844_52
.Lcall_prolog_α_844_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_844_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_844_53
.Lcall_prolog_α_844_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_844_54
.Lcall_prolog_α_844_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_844_54
.Lcall_prolog_α_844_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_844_54: mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n452_call_prolog_α
                                                                              jmp   n440_var_ref_α
n439_call_prolog_β:     mov              r11, 333;                            jmp   n452_call_prolog_α
                        .size            n439_call_prolog_bx, .-n439_call_prolog_bx
                        .type            n440_var_ref_bx, @function
n440_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:         mov              r11, 334
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n441_lit_string_α
                        .size            n440_var_ref_bx, .-n440_var_ref_bx
                        .type            n441_lit_string_bx, @function
n441_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_string_α:      mov              r11, 335
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_847_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n442_var_ref_α
.Llit_string_α_847_0:   .quad            .Llit_string_α_847_0_s
.Llit_string_α_847_0_s: .string          "/"
                        .size            n441_lit_string_bx, .-n441_lit_string_bx
                        .type            n442_var_ref_bx, @function
n442_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:         mov              r11, 336
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n443_var_ref_α
                        .size            n442_var_ref_bx, .-n442_var_ref_bx
                        .type            n443_var_ref_bx, @function
n443_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:         mov              r11, 337
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n444_call_prolog_α
                        .size            n443_var_ref_bx, .-n443_var_ref_bx
                        .type            n444_call_prolog_bx, @function
n444_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_call_prolog_α:     mov              r11, 338
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 944]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n452_call_prolog_α
                                                                              jmp   n445_call_prolog_α
n444_call_prolog_β:     mov              r11, 338;                            jmp   n452_call_prolog_α
                        .size            n444_call_prolog_bx, .-n444_call_prolog_bx
                        .type            n445_call_prolog_bx, @function
n445_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_call_prolog_α:     mov              r11, 339
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        lea              r8, [rsp + 848]
.Lcall_prolog_α_853_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_853_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_853_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_853_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_853_40
.Lcall_prolog_α_853_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_853_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_853_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_853_40
.Lcall_prolog_α_853_56: cmp              al, 72;                              jne   .Lcall_prolog_α_853_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_853_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_853_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_853_40
.Lcall_prolog_α_853_41: lea              r9, [rsp + 864]
.Lcall_prolog_α_853_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_853_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_853_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_853_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_853_42
.Lcall_prolog_α_853_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_853_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_853_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_853_42
.Lcall_prolog_α_853_58: cmp              al, 72;                              jne   .Lcall_prolog_α_853_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_853_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_853_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_853_42
.Lcall_prolog_α_853_43: cmp              r8, r9;                              je    .Lcall_prolog_α_853_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_853_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_853_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_853_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_853_44
                                                                              jmp   .Lcall_prolog_α_853_45
.Lcall_prolog_α_853_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_853_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_853_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_853_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_853_53
                                                                              jmp   .Lcall_prolog_α_853_46
.Lcall_prolog_α_853_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_853_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_853_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_853_51
.Lcall_prolog_α_853_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_853_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_853_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_853_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_853_47
                                                                              jmp   .Lcall_prolog_α_853_48
.Lcall_prolog_α_853_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_853_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_853_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_853_51
.Lcall_prolog_α_853_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_853_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_853_53
                                                                              jmp   .Lcall_prolog_α_853_52
.Lcall_prolog_α_853_49: cmp              dl, 80;                              je    .Lcall_prolog_α_853_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_853_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_853_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_853_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_853_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_853_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_853_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_853_51
                                                                              jmp   .Lcall_prolog_α_853_52
.Lcall_prolog_α_853_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_853_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_853_53
.Lcall_prolog_α_853_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_853_54
.Lcall_prolog_α_853_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_853_54
.Lcall_prolog_α_853_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_853_54: mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n452_call_prolog_α
                                                                              jmp   n446_cut_α
n445_call_prolog_β:     mov              r11, 339;                            jmp   n452_call_prolog_α
                        .size            n445_call_prolog_bx, .-n445_call_prolog_bx
                        .type            n446_cut_bx, @function
n446_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_cut_α:             mov              r11, 340;                            jmp   n447_var_ref_α
                        .size            n446_cut_bx, .-n446_cut_bx
                        .type            n447_var_ref_bx, @function
n447_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_var_ref_α:         mov              r11, 341
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n448_var_ref_α
                        .size            n447_var_ref_bx, .-n447_var_ref_bx
                        .type            n448_var_ref_bx, @function
n448_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_var_ref_α:         mov              r11, 342
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n449_var_ref_α
                        .size            n448_var_ref_bx, .-n448_var_ref_bx
                        .type            n449_var_ref_bx, @function
n449_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:         mov              r11, 343
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n450_call_proc_staged_α
                        .size            n449_var_ref_bx, .-n449_var_ref_bx
                        .type            n450_call_proc_staged_bx, @function
n450_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_call_proc_staged_α:
                        mov              r11, 344
                        lea              rsi, [rsp + 784]
                        lea              rdx, [rsp + 800]
                        lea              rcx, [rsp + 816]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_862_2
.Lcall_proc_staged_α_862_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_862_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
.Lcall_proc_staged_α_862_29:
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n476_call_prolog_α
                                                                              jmp   n451_move_label_α
n450_call_proc_staged_β:
                        mov              r11, 344;                            jmp   n476_call_prolog_α
.Lcall_proc_staged_β_862_0:
                        .quad            .Lcall_proc_staged_β_862_0_s
.Lcall_proc_staged_β_862_0_s:
                        .string          "d/3"
                        .size            n450_call_proc_staged_bx, .-n450_call_proc_staged_bx
                        .type            n451_move_label_bx, @function
n451_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_move_label_α:      mov              r11, 345
                        lea              rax, [rip + n450_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n451_move_label_bx, .-n451_move_label_bx
                        .type            n452_call_prolog_bx, @function
n452_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_call_prolog_α:     mov              r11, 346
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n453_var_ref_α
n452_call_prolog_β:     mov              r11, 346;                            jmp   d$2F3_ω
                        .size            n452_call_prolog_bx, .-n452_call_prolog_bx
                        .type            n453_var_ref_bx, @function
n453_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_var_ref_α:         mov              r11, 347
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n454_var_ref_α
                        .size            n453_var_ref_bx, .-n453_var_ref_bx
                        .type            n454_var_ref_bx, @function
n454_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_var_ref_α:         mov              r11, 348
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8160]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n455_call_prolog_α
                        .size            n454_var_ref_bx, .-n454_var_ref_bx
                        .type            n455_call_prolog_bx, @function
n455_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_call_prolog_α:     mov              r11, 349
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        lea              r8, [rsp + 608]
.Lcall_prolog_α_870_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_870_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_870_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_870_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_870_40
.Lcall_prolog_α_870_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_870_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_870_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_870_40
.Lcall_prolog_α_870_56: cmp              al, 72;                              jne   .Lcall_prolog_α_870_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_870_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_870_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_870_40
.Lcall_prolog_α_870_41: lea              r9, [rsp + 624]
.Lcall_prolog_α_870_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_870_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_870_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_870_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_870_42
.Lcall_prolog_α_870_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_870_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_870_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_870_42
.Lcall_prolog_α_870_58: cmp              al, 72;                              jne   .Lcall_prolog_α_870_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_870_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_870_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_870_42
.Lcall_prolog_α_870_43: cmp              r8, r9;                              je    .Lcall_prolog_α_870_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_870_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_870_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_870_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_870_44
                                                                              jmp   .Lcall_prolog_α_870_45
.Lcall_prolog_α_870_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_870_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_870_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_870_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_870_53
                                                                              jmp   .Lcall_prolog_α_870_46
.Lcall_prolog_α_870_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_870_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_870_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_870_51
.Lcall_prolog_α_870_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_870_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_870_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_870_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_870_47
                                                                              jmp   .Lcall_prolog_α_870_48
.Lcall_prolog_α_870_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_870_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_870_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_870_51
.Lcall_prolog_α_870_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_870_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_870_53
                                                                              jmp   .Lcall_prolog_α_870_52
.Lcall_prolog_α_870_49: cmp              dl, 80;                              je    .Lcall_prolog_α_870_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_870_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_870_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_870_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_870_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_870_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_870_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_870_51
                                                                              jmp   .Lcall_prolog_α_870_52
.Lcall_prolog_α_870_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_870_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_870_53
.Lcall_prolog_α_870_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_870_54
.Lcall_prolog_α_870_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_870_54
.Lcall_prolog_α_870_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_870_54: mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n464_call_prolog_α
                                                                              jmp   n456_var_ref_α
n455_call_prolog_β:     mov              r11, 349;                            jmp   n464_call_prolog_α
                        .size            n455_call_prolog_bx, .-n455_call_prolog_bx
                        .type            n456_var_ref_bx, @function
n456_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:         mov              r11, 350
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n457_var_ref_α
                        .size            n456_var_ref_bx, .-n456_var_ref_bx
                        .type            n457_var_ref_bx, @function
n457_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:         mov              r11, 351
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8160]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n458_call_prolog_α
                        .size            n457_var_ref_bx, .-n457_var_ref_bx
                        .type            n458_call_prolog_bx, @function
n458_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_call_prolog_α:     mov              r11, 352
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        lea              r8, [rsp + 528]
.Lcall_prolog_α_875_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_875_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_875_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_875_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_875_40
.Lcall_prolog_α_875_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_875_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_875_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_875_40
.Lcall_prolog_α_875_56: cmp              al, 72;                              jne   .Lcall_prolog_α_875_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_875_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_875_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_875_40
.Lcall_prolog_α_875_41: lea              r9, [rsp + 544]
.Lcall_prolog_α_875_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_875_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_875_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_875_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_875_42
.Lcall_prolog_α_875_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_875_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_875_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_875_42
.Lcall_prolog_α_875_58: cmp              al, 72;                              jne   .Lcall_prolog_α_875_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_875_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_875_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_875_42
.Lcall_prolog_α_875_43: cmp              r8, r9;                              je    .Lcall_prolog_α_875_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_875_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_875_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_875_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_875_44
                                                                              jmp   .Lcall_prolog_α_875_45
.Lcall_prolog_α_875_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_875_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_875_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_875_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_875_53
                                                                              jmp   .Lcall_prolog_α_875_46
.Lcall_prolog_α_875_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_875_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_875_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_875_51
.Lcall_prolog_α_875_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_875_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_875_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_875_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_875_47
                                                                              jmp   .Lcall_prolog_α_875_48
.Lcall_prolog_α_875_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_875_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_875_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_875_51
.Lcall_prolog_α_875_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_875_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_875_53
                                                                              jmp   .Lcall_prolog_α_875_52
.Lcall_prolog_α_875_49: cmp              dl, 80;                              je    .Lcall_prolog_α_875_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_875_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_875_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_875_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_875_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_875_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_875_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_875_51
                                                                              jmp   .Lcall_prolog_α_875_52
.Lcall_prolog_α_875_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_875_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_875_53
.Lcall_prolog_α_875_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_875_54
.Lcall_prolog_α_875_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_875_54
.Lcall_prolog_α_875_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_875_54: mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n464_call_prolog_α
                                                                              jmp   n459_var_ref_α
n458_call_prolog_β:     mov              r11, 352;                            jmp   n464_call_prolog_α
                        .size            n458_call_prolog_bx, .-n458_call_prolog_bx
                        .type            n459_var_ref_bx, @function
n459_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_var_ref_α:         mov              r11, 353
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n460_lit_integer_α
                        .size            n459_var_ref_bx, .-n459_var_ref_bx
                        .type            n460_lit_integer_bx, @function
n460_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_integer_α:     mov              r11, 354
                        mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_878_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n461_call_prolog_α
.Llit_integer_α_878_0:  .quad            1
                        .size            n460_lit_integer_bx, .-n460_lit_integer_bx
                        .type            n461_call_prolog_bx, @function
n461_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n461_call_prolog_α:     mov              r11, 355
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n464_call_prolog_α
                                                                              jmp   n462_cut_α
n461_call_prolog_β:     mov              r11, 355;                            jmp   n464_call_prolog_α
                        .size            n461_call_prolog_bx, .-n461_call_prolog_bx
                        .type            n462_cut_bx, @function
n462_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_cut_α:             mov              r11, 356;                            jmp   n463_move_label_α
                        .size            n462_cut_bx, .-n462_cut_bx
                        .type            n463_move_label_bx, @function
n463_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_move_label_α:      mov              r11, 357
                        lea              rax, [rip + n464_call_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n463_move_label_bx, .-n463_move_label_bx
                        .type            n464_call_prolog_bx, @function
n464_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_call_prolog_α:     mov              r11, 358
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n465_var_ref_α
n464_call_prolog_β:     mov              r11, 358;                            jmp   d$2F3_ω
                        .size            n464_call_prolog_bx, .-n464_call_prolog_bx
                        .type            n465_var_ref_bx, @function
n465_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_var_ref_α:         mov              r11, 359
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n466_var_ref_α
                        .size            n465_var_ref_bx, .-n465_var_ref_bx
                        .type            n466_var_ref_bx, @function
n466_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n466_var_ref_α:         mov              r11, 360
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n467_call_prolog_α
                        .size            n466_var_ref_bx, .-n466_var_ref_bx
                        .type            n467_call_prolog_bx, @function
n467_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n467_call_prolog_α:     mov              r11, 361
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        lea              r8, [rsp + 336]
.Lcall_prolog_α_888_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_888_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_888_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_888_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_888_40
.Lcall_prolog_α_888_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_888_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_888_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_888_40
.Lcall_prolog_α_888_56: cmp              al, 72;                              jne   .Lcall_prolog_α_888_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_888_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_888_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_888_40
.Lcall_prolog_α_888_41: lea              r9, [rsp + 352]
.Lcall_prolog_α_888_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_888_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_888_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_888_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_888_42
.Lcall_prolog_α_888_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_888_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_888_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_888_42
.Lcall_prolog_α_888_58: cmp              al, 72;                              jne   .Lcall_prolog_α_888_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_888_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_888_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_888_42
.Lcall_prolog_α_888_43: cmp              r8, r9;                              je    .Lcall_prolog_α_888_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_888_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_888_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_888_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_888_44
                                                                              jmp   .Lcall_prolog_α_888_45
.Lcall_prolog_α_888_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_888_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_888_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_888_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_888_53
                                                                              jmp   .Lcall_prolog_α_888_46
.Lcall_prolog_α_888_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_888_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_888_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_888_51
.Lcall_prolog_α_888_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_888_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_888_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_888_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_888_47
                                                                              jmp   .Lcall_prolog_α_888_48
.Lcall_prolog_α_888_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_888_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_888_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_888_51
.Lcall_prolog_α_888_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_888_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_888_53
                                                                              jmp   .Lcall_prolog_α_888_52
.Lcall_prolog_α_888_49: cmp              dl, 80;                              je    .Lcall_prolog_α_888_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_888_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_888_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_888_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_888_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_888_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_888_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_888_51
                                                                              jmp   .Lcall_prolog_α_888_52
.Lcall_prolog_α_888_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_888_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_888_53
.Lcall_prolog_α_888_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_888_54
.Lcall_prolog_α_888_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_888_54
.Lcall_prolog_α_888_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_888_54: mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n476_call_prolog_α
                                                                              jmp   n468_var_ref_α
n467_call_prolog_β:     mov              r11, 361;                            jmp   n476_call_prolog_α
                        .size            n467_call_prolog_bx, .-n467_call_prolog_bx
                        .type            n468_var_ref_bx, @function
n468_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n468_var_ref_α:         mov              r11, 362
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n469_var_ref_α
                        .size            n468_var_ref_bx, .-n468_var_ref_bx
                        .type            n469_var_ref_bx, @function
n469_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n469_var_ref_α:         mov              r11, 363
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n470_call_prolog_α
                        .size            n469_var_ref_bx, .-n469_var_ref_bx
                        .type            n470_call_prolog_bx, @function
n470_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n470_call_prolog_α:     mov              r11, 364
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        lea              r8, [rsp + 256]
.Lcall_prolog_α_893_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_893_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_893_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_893_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_893_40
.Lcall_prolog_α_893_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_893_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_893_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_893_40
.Lcall_prolog_α_893_56: cmp              al, 72;                              jne   .Lcall_prolog_α_893_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_893_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_893_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_893_40
.Lcall_prolog_α_893_41: lea              r9, [rsp + 272]
.Lcall_prolog_α_893_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_893_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_893_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_893_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_893_42
.Lcall_prolog_α_893_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_893_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_893_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_893_42
.Lcall_prolog_α_893_58: cmp              al, 72;                              jne   .Lcall_prolog_α_893_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_893_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_893_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_893_42
.Lcall_prolog_α_893_43: cmp              r8, r9;                              je    .Lcall_prolog_α_893_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_893_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_893_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_893_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_893_44
                                                                              jmp   .Lcall_prolog_α_893_45
.Lcall_prolog_α_893_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_893_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_893_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_893_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_893_53
                                                                              jmp   .Lcall_prolog_α_893_46
.Lcall_prolog_α_893_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_893_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_893_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_893_51
.Lcall_prolog_α_893_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_893_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_893_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_893_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_893_47
                                                                              jmp   .Lcall_prolog_α_893_48
.Lcall_prolog_α_893_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_893_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_893_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_893_51
.Lcall_prolog_α_893_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_893_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_893_53
                                                                              jmp   .Lcall_prolog_α_893_52
.Lcall_prolog_α_893_49: cmp              dl, 80;                              je    .Lcall_prolog_α_893_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_893_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_893_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_893_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_893_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_893_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_893_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_893_51
                                                                              jmp   .Lcall_prolog_α_893_52
.Lcall_prolog_α_893_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_893_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_893_53
.Lcall_prolog_α_893_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_893_54
.Lcall_prolog_α_893_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_893_54
.Lcall_prolog_α_893_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_893_54: mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n476_call_prolog_α
                                                                              jmp   n471_var_ref_α
n470_call_prolog_β:     mov              r11, 364;                            jmp   n476_call_prolog_α
                        .size            n470_call_prolog_bx, .-n470_call_prolog_bx
                        .type            n471_var_ref_bx, @function
n471_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n471_var_ref_α:         mov              r11, 365
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n472_lit_integer_α
                        .size            n471_var_ref_bx, .-n471_var_ref_bx
                        .type            n472_lit_integer_bx, @function
n472_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_integer_α:     mov              r11, 366
                        mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_896_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n473_call_prolog_α
.Llit_integer_α_896_0:  .quad            0
                        .size            n472_lit_integer_bx, .-n472_lit_integer_bx
                        .type            n473_call_prolog_bx, @function
n473_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n473_call_prolog_α:     mov              r11, 367
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n476_call_prolog_α
                                                                              jmp   n474_move_label_α
n473_call_prolog_β:     mov              r11, 367;                            jmp   n476_call_prolog_α
                        .size            n473_call_prolog_bx, .-n473_call_prolog_bx
                        .type            n474_move_label_bx, @function
n474_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n474_move_label_α:      mov              r11, 368
                        lea              rax, [rip + n476_call_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
                        .size            n474_move_label_bx, .-n474_move_label_bx
                        .type            n475_disjunction_bx, @function
n475_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n475_disjunction_α:     mov              r11, 369
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
n475_disjunction_β:     mov              r11, 369;                            jmp   d$2F3_ω
                        .size            n475_disjunction_bx, .-n475_disjunction_bx
                        .type            n476_call_prolog_bx, @function
n476_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n476_call_prolog_α:     mov              r11, 370
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ω
n476_call_prolog_β:     mov              r11, 370;                            jmp   d$2F3_ω
                        .size            n476_call_prolog_bx, .-n476_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_β:
                                                                              jmp   n475_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 8248]
                        add              rsp, 8272;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ω:
                        mov              rcx, qword ptr [rsp + 8256]
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
                        lea              rcx, [rip + .Ld$2F3_α_903_2]
                        lea              rdx, [rip + .Ld$2F3_α_903_3];        jmp   FN__d$2F3
.Ld$2F3_α_903_2:        pop              r12
                        pop              r12;                                 jmp   r12
.Ld$2F3_α_903_3:        pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__top$2F0:
                        sub              rsp, 240
                        mov              qword ptr [rsp + 216], rcx
                        mov              qword ptr [rsp + 224], rdx
                        mov              qword ptr [rsp + 232], rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
top$2F0_α_body:
                        lea              rax, [rip + n908_suspend_β]
                        mov              qword ptr [rsp + 176], rax
                        .type            n904_call_prolog_bx, @function
n904_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n904_call_prolog_α:     mov              r11, 371
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_910_102
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lcall_prolog_α_910_101
.Lcall_prolog_α_910_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_910_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_910_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_910_101
.Lcall_prolog_α_910_100:
                        lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_910_101:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    top$2F0_ω
                                                                              jmp   n905_call_proc_staged_α
n904_call_prolog_β:     mov              r11, 371;                            jmp   top$2F0_ω
                        .size            n904_call_prolog_bx, .-n904_call_prolog_bx
                        .type            n905_call_proc_staged_bx, @function
n905_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n905_call_proc_staged_α:
                        mov              r11, 372
                        call             ops8$2F0_dcα;                        jmp   .Lcall_proc_staged_α_912_2
.Lcall_proc_staged_α_912_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_912_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
.Lcall_proc_staged_α_912_29:
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n909_call_prolog_α
                                                                              jmp   n906_call_proc_staged_α
n905_call_proc_staged_β:
                        mov              r11, 372;                            jmp   n909_call_prolog_α
.Lcall_proc_staged_β_912_0:
                        .quad            .Lcall_proc_staged_β_912_0_s
.Lcall_proc_staged_β_912_0_s:
                        .string          "ops8/0"
                        .size            n905_call_proc_staged_bx, .-n905_call_proc_staged_bx
                        .type            n906_call_proc_staged_bx, @function
n906_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n906_call_proc_staged_α:
                        mov              r11, 373
                        call             log10$2F0_dcα;                       jmp   .Lcall_proc_staged_α_914_2
.Lcall_proc_staged_α_914_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_914_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lcall_proc_staged_α_914_29:
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n905_call_proc_staged_β
                                                                              jmp   n907_call_proc_staged_α
n906_call_proc_staged_β:
                        mov              r11, 373;                            jmp   n905_call_proc_staged_β
.Lcall_proc_staged_β_914_0:
                        .quad            .Lcall_proc_staged_β_914_0_s
.Lcall_proc_staged_β_914_0_s:
                        .string          "log10/0"
                        .size            n906_call_proc_staged_bx, .-n906_call_proc_staged_bx
                        .type            n907_call_proc_staged_bx, @function
n907_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n907_call_proc_staged_α:
                        mov              r11, 374
                        call             divide10$2F0_dcα;                    jmp   .Lcall_proc_staged_α_916_2
.Lcall_proc_staged_α_916_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_916_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lcall_proc_staged_α_916_29:
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n906_call_proc_staged_β
                                                                              jmp   n908_suspend_α
n907_call_proc_staged_β:
                        mov              r11, 374;                            jmp   n906_call_proc_staged_β
.Lcall_proc_staged_β_916_0:
                        .quad            .Lcall_proc_staged_β_916_0_s
.Lcall_proc_staged_β_916_0_s:
                        .string          "divide10/0"
                        .size            n907_call_proc_staged_bx, .-n907_call_proc_staged_bx
                        .type            n908_suspend_bx, @function
n908_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n908_suspend_α:         mov              r11, 375
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_918_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Lsuspend_α_918_61:     mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n908_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n908_suspend_β]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   top$2F0_γ
n908_suspend_β:         mov              r11, 375;                            jmp   n907_call_proc_staged_β
                        .size            n908_suspend_bx, .-n908_suspend_bx
                        .type            n909_call_prolog_bx, @function
n909_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n909_call_prolog_α:     mov              r11, 376
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    top$2F0_ω
                                                                              jmp   top$2F0_ω
n909_call_prolog_β:     mov              r11, 376;                            jmp   top$2F0_ω
                        .size            n909_call_prolog_bx, .-n909_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_β:
                                                                              jmp   n908_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Ltop$2F0_α_919_50
                        mov              qword ptr [rsp + 176], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Ltop$2F0_α_919_50:     mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 216]
                        add              rsp, 240;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_ω:
                        mov              rcx, qword ptr [rsp + 224]
                        add              rsp, 240;                            jmp   rcx
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
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 288
                        rep              stosb
main_α_body:
                        .type            n920_call_proc_staged_bx, @function
n920_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n920_call_proc_staged_α:
                        mov              r11, 377
                        mov              qword ptr [rsp + 240], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_931_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 4
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_931_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_931_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_931_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_931_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_931_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 248], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_931_5
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_931_2
.Lcall_proc_staged_α_931_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_931_2
.Lcall_proc_staged_α_931_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_931_6
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_931_2
.Lcall_proc_staged_α_931_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_931_2
.Lcall_proc_staged_α_931_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_931_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_931_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
.Lcall_proc_staged_α_931_29:
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n923_lit_string_α
                                                                              jmp   n921_lit_string_α
n920_call_proc_staged_β:
                        mov              r11, 377
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 240], 0
                        lea              rdi, [rsp + 256]
                        lea              rsi, [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n923_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              ecx, 16
                        mov              r8d, 176
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 4
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n923_lit_string_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_931_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_931_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_931_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_931_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_931_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n923_lit_string_α
                                                                              jmp   n921_lit_string_α
.Lcall_proc_staged_β_931_0:
                        .quad            .Lcall_proc_staged_β_931_0_s
.Lcall_proc_staged_β_931_0_s:
                        .string          "top/0"
                        .size            n920_call_proc_staged_bx, .-n920_call_proc_staged_bx
                        .type            n921_lit_string_bx, @function
n921_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n921_lit_string_α:      mov              r11, 378
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_932_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n922_call_prolog_α
.Llit_string_α_932_0:   .quad            .Llit_string_α_932_0_s
.Llit_string_α_932_0_s: .string          "ok"
                        .size            n921_lit_string_bx, .-n921_lit_string_bx
                        .type            n922_call_prolog_bx, @function
n922_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n922_call_prolog_α:     mov              r11, 379
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn934: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn934]
                        lea              rsi, [rsp + 144]
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
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n925_lit_string_α
n922_call_prolog_β:     mov              r11, 379;                            jmp   main_ω
                        .size            n922_call_prolog_bx, .-n922_call_prolog_bx
                        .type            n923_lit_string_bx, @function
n923_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n923_lit_string_α:      mov              r11, 380
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_935_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n924_call_prolog_α
.Llit_string_α_935_0:   .quad            .Llit_string_α_935_0_s
.Llit_string_α_935_0_s: .string          "failed"
                        .size            n923_lit_string_bx, .-n923_lit_string_bx
                        .type            n924_call_prolog_bx, @function
n924_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n924_call_prolog_α:     mov              r11, 381
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn937: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn937]
                        lea              rsi, [rsp + 192]
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
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n927_lit_string_α
                                                                              jmp   n925_lit_string_α
n924_call_prolog_β:     mov              r11, 381;                            jmp   n927_lit_string_α
                        .size            n924_call_prolog_bx, .-n924_call_prolog_bx
                        .type            n925_lit_string_bx, @function
n925_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n925_lit_string_α:      mov              r11, 382
                        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_938_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n926_call_prolog_α
.Llit_string_α_938_0:   .quad            .Llit_string_α_938_0_s
.Llit_string_α_938_0_s: .string          ""
                        .size            n925_lit_string_bx, .-n925_lit_string_bx
                        .type            n926_call_prolog_bx, @function
n926_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n926_call_prolog_α:     mov              r11, 383
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn940: .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn940]
                        lea              rsi, [rsp + 96]
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
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n927_lit_string_α
                                                                              jmp   main_γ
n926_call_prolog_β:     mov              r11, 383;                            jmp   n927_lit_string_α
                        .size            n926_call_prolog_bx, .-n926_call_prolog_bx
                        .type            n927_lit_string_bx, @function
n927_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n927_lit_string_α:      mov              r11, 384
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_941_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n928_lit_string_α
.Llit_string_α_941_0:   .quad            .Llit_string_α_941_0_s
.Llit_string_α_941_0_s: .string          "user_error"
                        .size            n927_lit_string_bx, .-n927_lit_string_bx
                        .type            n928_lit_string_bx, @function
n928_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n928_lit_string_α:      mov              r11, 385
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 44
                        mov              rax, qword ptr [rip + .Llit_string_α_942_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n929_call_prolog_α
.Llit_string_α_942_0:   .quad            .Llit_string_α_942_0_s
.Llit_string_α_942_0_s: .string          "Warning: initialization goal failed: main/0\n"
                        .size            n928_lit_string_bx, .-n928_lit_string_bx
                        .type            n929_call_prolog_bx, @function
n929_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n929_call_prolog_α:     mov              r11, 386
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn944: .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn944]
                        lea              rsi, [rsp + 16]
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
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n929_call_prolog_β:     mov              r11, 386;                            jmp   main_ω
                        .size            n929_call_prolog_bx, .-n929_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 296]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 304]
                        add              rsp, 320;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "divide10/0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__divide10$2F0
                        .quad            divide10$2F0_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1248
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "log10/0"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
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
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "ops8/0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
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
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "d/3"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
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
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "top/0"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__top$2F0
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
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
