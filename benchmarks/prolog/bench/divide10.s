                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__divide10$2F0:
                        sub              rsp, 1296
                        mov              qword ptr [rsp + 1272], rcx
                        mov              qword ptr [rsp + 1280], rdx
                        mov              qword ptr [rsp + 1288], rbp
                        mov              rbp, rsp
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
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40];           jmp   .Lcall_prolog_α_35_101
.Lcall_prolog_α_35_102: lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_35_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_35_101
.Lcall_prolog_α_35_100: lea              rdi, [rbp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_35_101: mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n1_lit_string_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   divide10$2F0_ω
                        .size            n0_call_prolog_bx, .-n0_call_prolog_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rbp + 1184], 2            # result
                        mov              dword ptr [rbp + 1188], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_36_0]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n2_lit_string_α
.Llit_string_α_36_0:    .quad            .Llit_string_α_36_0_s
.Llit_string_α_36_0_s:  .string          "/"
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rbp + 1072], 2            # result
                        mov              dword ptr [rbp + 1076], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_37_0]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n3_lit_string_α
.Llit_string_α_37_0:    .quad            .Llit_string_α_37_0_s
.Llit_string_α_37_0_s:  .string          "/"
                        .size            n2_lit_string_bx, .-n2_lit_string_bx
                        .type            n3_lit_string_bx, @function
n3_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rbp + 960], 2             # result
                        mov              dword ptr [rbp + 964], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_38_0]
                        mov              qword ptr [rbp + 968], rax;          jmp   n4_lit_string_α
.Llit_string_α_38_0:    .quad            .Llit_string_α_38_0_s
.Llit_string_α_38_0_s:  .string          "/"
                        .size            n3_lit_string_bx, .-n3_lit_string_bx
                        .type            n4_lit_string_bx, @function
n4_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rbp + 848], 2             # result
                        mov              dword ptr [rbp + 852], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_39_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n5_lit_string_α
.Llit_string_α_39_0:    .quad            .Llit_string_α_39_0_s
.Llit_string_α_39_0_s:  .string          "/"
                        .size            n4_lit_string_bx, .-n4_lit_string_bx
                        .type            n5_lit_string_bx, @function
n5_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rbp + 736], 2             # result
                        mov              dword ptr [rbp + 740], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_40_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n6_lit_string_α
.Llit_string_α_40_0:    .quad            .Llit_string_α_40_0_s
.Llit_string_α_40_0_s:  .string          "/"
                        .size            n5_lit_string_bx, .-n5_lit_string_bx
                        .type            n6_lit_string_bx, @function
n6_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rbp + 624], 2             # result
                        mov              dword ptr [rbp + 628], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_41_0]
                        mov              qword ptr [rbp + 632], rax;          jmp   n7_lit_string_α
.Llit_string_α_41_0:    .quad            .Llit_string_α_41_0_s
.Llit_string_α_41_0_s:  .string          "/"
                        .size            n6_lit_string_bx, .-n6_lit_string_bx
                        .type            n7_lit_string_bx, @function
n7_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rbp + 512], 2             # result
                        mov              dword ptr [rbp + 516], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_42_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n8_lit_string_α
.Llit_string_α_42_0:    .quad            .Llit_string_α_42_0_s
.Llit_string_α_42_0_s:  .string          "/"
                        .size            n7_lit_string_bx, .-n7_lit_string_bx
                        .type            n8_lit_string_bx, @function
n8_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_43_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n9_lit_string_α
.Llit_string_α_43_0:    .quad            .Llit_string_α_43_0_s
.Llit_string_α_43_0_s:  .string          "/"
                        .size            n8_lit_string_bx, .-n8_lit_string_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_44_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n10_lit_string_α
.Llit_string_α_44_0:    .quad            .Llit_string_α_44_0_s
.Llit_string_α_44_0_s:  .string          "/"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_lit_string_bx, @function
n10_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_45_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n11_lit_string_α
.Llit_string_α_45_0:    .quad            .Llit_string_α_45_0_s
.Llit_string_α_45_0_s:  .string          "x"
                        .size            n10_lit_string_bx, .-n10_lit_string_bx
                        .type            n11_lit_string_bx, @function
n11_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rbp + 192], 2             # result
                        mov              dword ptr [rbp + 196], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_46_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n12_call_prolog_α
.Llit_string_α_46_0:    .quad            .Llit_string_α_46_0_s
.Llit_string_α_46_0_s:  .string          "x"
                        .size            n11_lit_string_bx, .-n11_lit_string_bx
                        .type            n12_call_prolog_bx, @function
n12_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_prolog_α:      mov              r11, 13
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
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n13_lit_string_α
n12_call_prolog_β:      mov              r11, 13;                             jmp   divide10$2F0_ω
                        .size            n12_call_prolog_bx, .-n12_call_prolog_bx
                        .type            n13_lit_string_bx, @function
n13_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_48_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n14_call_prolog_α
.Llit_string_α_48_0:    .quad            .Llit_string_α_48_0_s
.Llit_string_α_48_0_s:  .string          "x"
                        .size            n13_lit_string_bx, .-n13_lit_string_bx
                        .type            n14_call_prolog_bx, @function
n14_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_prolog_α:      mov              r11, 15
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 216]
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
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n15_lit_string_α
n14_call_prolog_β:      mov              r11, 15;                             jmp   divide10$2F0_ω
                        .size            n14_call_prolog_bx, .-n14_call_prolog_bx
                        .type            n15_lit_string_bx, @function
n15_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_50_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n16_call_prolog_α
.Llit_string_α_50_0:    .quad            .Llit_string_α_50_0_s
.Llit_string_α_50_0_s:  .string          "x"
                        .size            n15_lit_string_bx, .-n15_lit_string_bx
                        .type            n16_call_prolog_bx, @function
n16_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_call_prolog_α:      mov              r11, 17
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 328]
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n17_lit_string_α
n16_call_prolog_β:      mov              r11, 17;                             jmp   divide10$2F0_ω
                        .size            n16_call_prolog_bx, .-n16_call_prolog_bx
                        .type            n17_lit_string_bx, @function
n17_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rbp + 528], 2             # result
                        mov              dword ptr [rbp + 532], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_52_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n18_call_prolog_α
.Llit_string_α_52_0:    .quad            .Llit_string_α_52_0_s
.Llit_string_α_52_0_s:  .string          "x"
                        .size            n17_lit_string_bx, .-n17_lit_string_bx
                        .type            n18_call_prolog_bx, @function
n18_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_call_prolog_α:      mov              r11, 19
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n19_lit_string_α
n18_call_prolog_β:      mov              r11, 19;                             jmp   divide10$2F0_ω
                        .size            n18_call_prolog_bx, .-n18_call_prolog_bx
                        .type            n19_lit_string_bx, @function
n19_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rbp + 640], 2             # result
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_54_0]
                        mov              qword ptr [rbp + 648], rax;          jmp   n20_call_prolog_α
.Llit_string_α_54_0:    .quad            .Llit_string_α_54_0_s
.Llit_string_α_54_0_s:  .string          "x"
                        .size            n19_lit_string_bx, .-n19_lit_string_bx
                        .type            n20_call_prolog_bx, @function
n20_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_prolog_α:      mov              r11, 21
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 552]
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n21_lit_string_α
n20_call_prolog_β:      mov              r11, 21;                             jmp   divide10$2F0_ω
                        .size            n20_call_prolog_bx, .-n20_call_prolog_bx
                        .type            n21_lit_string_bx, @function
n21_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       mov              r11, 22
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_56_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n22_call_prolog_α
.Llit_string_α_56_0:    .quad            .Llit_string_α_56_0_s
.Llit_string_α_56_0_s:  .string          "x"
                        .size            n21_lit_string_bx, .-n21_lit_string_bx
                        .type            n22_call_prolog_bx, @function
n22_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_call_prolog_α:      mov              r11, 23
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 664]
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n23_lit_string_α
n22_call_prolog_β:      mov              r11, 23;                             jmp   divide10$2F0_ω
                        .size            n22_call_prolog_bx, .-n22_call_prolog_bx
                        .type            n23_lit_string_bx, @function
n23_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rbp + 864], 2             # result
                        mov              dword ptr [rbp + 868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_58_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n24_call_prolog_α
.Llit_string_α_58_0:    .quad            .Llit_string_α_58_0_s
.Llit_string_α_58_0_s:  .string          "x"
                        .size            n23_lit_string_bx, .-n23_lit_string_bx
                        .type            n24_call_prolog_bx, @function
n24_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_call_prolog_α:      mov              r11, 25
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 776]
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
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n25_lit_string_α
n24_call_prolog_β:      mov              r11, 25;                             jmp   divide10$2F0_ω
                        .size            n24_call_prolog_bx, .-n24_call_prolog_bx
                        .type            n25_lit_string_bx, @function
n25_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rbp + 976], 2             # result
                        mov              dword ptr [rbp + 980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_60_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n26_call_prolog_α
.Llit_string_α_60_0:    .quad            .Llit_string_α_60_0_s
.Llit_string_α_60_0_s:  .string          "x"
                        .size            n25_lit_string_bx, .-n25_lit_string_bx
                        .type            n26_call_prolog_bx, @function
n26_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_call_prolog_α:      mov              r11, 27
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n27_lit_string_α
n26_call_prolog_β:      mov              r11, 27;                             jmp   divide10$2F0_ω
                        .size            n26_call_prolog_bx, .-n26_call_prolog_bx
                        .type            n27_lit_string_bx, @function
n27_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rbp + 1088], 2            # result
                        mov              dword ptr [rbp + 1092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_62_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n28_call_prolog_α
.Llit_string_α_62_0:    .quad            .Llit_string_α_62_0_s
.Llit_string_α_62_0_s:  .string          "x"
                        .size            n27_lit_string_bx, .-n27_lit_string_bx
                        .type            n28_call_prolog_bx, @function
n28_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_prolog_α:      mov              r11, 29
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    n34_call_prolog_α
                                                                              jmp   n29_lit_string_α
n28_call_prolog_β:      mov              r11, 29;                             jmp   n34_call_prolog_α
                        .size            n28_call_prolog_bx, .-n28_call_prolog_bx
                        .type            n29_lit_string_bx, @function
n29_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              r11, 30
                        mov              qword ptr [rbp + 1200], 2            # result
                        mov              dword ptr [rbp + 1204], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_64_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n30_var_ref_α
.Llit_string_α_64_0:    .quad            .Llit_string_α_64_0_s
.Llit_string_α_64_0_s:  .string          "x"
                        .size            n29_lit_string_bx, .-n29_lit_string_bx
                        .type            n30_var_ref_bx, @function
n30_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n31_call_proc_staged_α
                        .size            n30_var_ref_bx, .-n30_var_ref_bx
                        .type            n31_call_proc_staged_bx, @function
n31_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_call_proc_staged_α: mov              r11, 32
                        lea              rsi, [rbp + 1104]
                        lea              rdx, [rbp + 1200]
                        lea              rcx, [rbp + 1216]
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
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
.Lcall_proc_staged_α_68_29:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
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
                        mov              qword ptr [rbp + 16], rax;           jmp   divide10$2F0_γ
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
                        lea              rsp, [rbp + 1296]
                        mov              rbp, qword ptr [rbp + 1288];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
divide10$2F0_ω:
                        mov              rcx, qword ptr [rsp + 1280]
                        lea              rsp, [rbp + 1296]
                        mov              rbp, qword ptr [rbp + 1288];         jmp   rcx
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
                        .type            n75_call_prolog_bx, @function
n75_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_call_prolog_α:      mov              r11, 36
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_353_102
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104];          jmp   .Lcall_prolog_α_353_101
.Lcall_prolog_α_353_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_353_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_353_101
.Lcall_prolog_α_353_100:
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
.Lcall_prolog_α_353_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n76_var_ref_α
n75_call_prolog_β:      mov              r11, 36;                             jmp   d$2F3_ω
                        .size            n75_call_prolog_bx, .-n75_call_prolog_bx
                        .type            n76_var_ref_bx, @function
n76_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 8080], rax
                        mov              qword ptr [rbp + 8088], rdx;         jmp   n77_lit_integer_α
                        .size            n76_var_ref_bx, .-n76_var_ref_bx
                        .type            n77_lit_integer_bx, @function
n77_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      mov              r11, 38
                        mov              qword ptr [rbp + 8096], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_356_0]
                        mov              qword ptr [rbp + 8104], rax;         jmp   n78_lit_string_α
.Llit_integer_α_356_0:  .quad            516
                        .size            n77_lit_integer_bx, .-n77_lit_integer_bx
                        .type            n78_lit_string_bx, @function
n78_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       mov              r11, 39
                        mov              qword ptr [rbp + 8112], 2            # result
                        mov              dword ptr [rbp + 8116], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_357_0]
                        mov              qword ptr [rbp + 8120], rax;         jmp   n79_call_prolog_α
.Llit_string_α_357_0:   .quad            .Llit_string_α_357_0_s
.Llit_string_α_357_0_s: .string          "+"
                        .size            n78_lit_string_bx, .-n78_lit_string_bx
                        .type            n79_call_prolog_bx, @function
n79_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_call_prolog_α:      mov              r11, 40
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
                        cmp              al, 104;                             je    n106_var_ref_α
                                                                              jmp   n80_var_ref_α
n79_call_prolog_β:      mov              r11, 40;                             jmp   n106_var_ref_α
                        .size            n79_call_prolog_bx, .-n79_call_prolog_bx
                        .type            n80_var_ref_bx, @function
n80_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7872], rax
                        mov              qword ptr [rbp + 7880], rdx;         jmp   n81_lit_string_α
                        .size            n80_var_ref_bx, .-n80_var_ref_bx
                        .type            n81_lit_string_bx, @function
n81_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              r11, 42
                        mov              qword ptr [rbp + 8000], 2            # result
                        mov              dword ptr [rbp + 8004], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_361_0]
                        mov              qword ptr [rbp + 8008], rax;         jmp   n82_var_ref_α
.Llit_string_α_361_0:   .quad            .Llit_string_α_361_0_s
.Llit_string_α_361_0_s: .string          "+"
                        .size            n81_lit_string_bx, .-n81_lit_string_bx
                        .type            n82_var_ref_bx, @function
n82_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7888], rax
                        mov              qword ptr [rbp + 7896], rdx;         jmp   n83_var_ref_α
                        .size            n82_var_ref_bx, .-n82_var_ref_bx
                        .type            n83_var_ref_bx, @function
n83_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7904], rax
                        mov              qword ptr [rbp + 7912], rdx;         jmp   n84_call_prolog_α
                        .size            n83_var_ref_bx, .-n83_var_ref_bx
                        .type            n84_call_prolog_bx, @function
n84_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_call_prolog_α:      mov              r11, 45
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
                        cmp              al, 104;                             je    n105_call_prolog_α
                                                                              jmp   n85_call_prolog_α
n84_call_prolog_β:      mov              r11, 45;                             jmp   n105_call_prolog_α
                        .size            n84_call_prolog_bx, .-n84_call_prolog_bx
                        .type            n85_call_prolog_bx, @function
n85_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_call_prolog_α:      mov              r11, 46
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
.Lcall_prolog_α_367_41: lea              r9, [rbp + 7856]
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
.Lcall_prolog_α_367_54: mov              qword ptr [rbp + 7824], rax
                        mov              qword ptr [rbp + 7832], rdx
                        cmp              al, 104;                             je    n105_call_prolog_α
                                                                              jmp   n86_var_ref_α
n85_call_prolog_β:      mov              r11, 46;                             jmp   n105_call_prolog_α
                        .size            n85_call_prolog_bx, .-n85_call_prolog_bx
                        .type            n86_var_ref_bx, @function
n86_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7792], rax
                        mov              qword ptr [rbp + 7800], rdx;         jmp   n87_var_ref_α
                        .size            n86_var_ref_bx, .-n86_var_ref_bx
                        .type            n87_var_ref_bx, @function
n87_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7808], rax
                        mov              qword ptr [rbp + 7816], rdx;         jmp   n88_call_prolog_α
                        .size            n87_var_ref_bx, .-n87_var_ref_bx
                        .type            n88_call_prolog_bx, @function
n88_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_call_prolog_α:      mov              r11, 49
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
.Lcall_prolog_α_372_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_372_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_372_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_372_40
.Lcall_prolog_α_372_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_372_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_372_40
.Lcall_prolog_α_372_56: cmp              al, 72;                              jne   .Lcall_prolog_α_372_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_372_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_372_40
.Lcall_prolog_α_372_41: lea              r9, [rbp + 7776]
.Lcall_prolog_α_372_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_372_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_372_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_372_42
.Lcall_prolog_α_372_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_372_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_372_42
.Lcall_prolog_α_372_58: cmp              al, 72;                              jne   .Lcall_prolog_α_372_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_372_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_372_42
.Lcall_prolog_α_372_43: cmp              r8, r9;                              je    .Lcall_prolog_α_372_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_372_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_372_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_372_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_372_44
                                                                              jmp   .Lcall_prolog_α_372_45
.Lcall_prolog_α_372_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_372_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_372_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_372_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_372_53
                                                                              jmp   .Lcall_prolog_α_372_46
.Lcall_prolog_α_372_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_372_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_372_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_372_51
.Lcall_prolog_α_372_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_372_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_372_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_372_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_372_47
                                                                              jmp   .Lcall_prolog_α_372_48
.Lcall_prolog_α_372_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_372_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_372_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_372_51
.Lcall_prolog_α_372_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_372_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_372_53
                                                                              jmp   .Lcall_prolog_α_372_52
.Lcall_prolog_α_372_49: cmp              dl, 80;                              je    .Lcall_prolog_α_372_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_372_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_372_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_372_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_372_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_372_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_372_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_372_51
                                                                              jmp   .Lcall_prolog_α_372_52
.Lcall_prolog_α_372_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_372_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_372_53
.Lcall_prolog_α_372_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_372_54
.Lcall_prolog_α_372_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_372_54
.Lcall_prolog_α_372_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_372_54: mov              qword ptr [rbp + 7744], rax
                        mov              qword ptr [rbp + 7752], rdx
                        cmp              al, 104;                             je    n105_call_prolog_α
                                                                              jmp   n89_var_ref_α
n88_call_prolog_β:      mov              r11, 49;                             jmp   n105_call_prolog_α
                        .size            n88_call_prolog_bx, .-n88_call_prolog_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7600], rax
                        mov              qword ptr [rbp + 7608], rdx;         jmp   n90_lit_string_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_lit_string_bx, @function
n90_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              r11, 51
                        mov              qword ptr [rbp + 7728], 2            # result
                        mov              dword ptr [rbp + 7732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_375_0]
                        mov              qword ptr [rbp + 7736], rax;         jmp   n91_var_ref_α
.Llit_string_α_375_0:   .quad            .Llit_string_α_375_0_s
.Llit_string_α_375_0_s: .string          "+"
                        .size            n90_lit_string_bx, .-n90_lit_string_bx
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 7616], rax
                        mov              qword ptr [rbp + 7624], rdx;         jmp   n92_var_ref_α
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_var_ref_bx, @function
n92_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx;         jmp   n93_call_prolog_α
                        .size            n92_var_ref_bx, .-n92_var_ref_bx
                        .type            n93_call_prolog_bx, @function
n93_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_prolog_α:      mov              r11, 54
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
                        cmp              al, 104;                             je    n105_call_prolog_α
                                                                              jmp   n94_call_prolog_α
n93_call_prolog_β:      mov              r11, 54;                             jmp   n105_call_prolog_α
                        .size            n93_call_prolog_bx, .-n93_call_prolog_bx
                        .type            n94_call_prolog_bx, @function
n94_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_call_prolog_α:      mov              r11, 55
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
.Lcall_prolog_α_381_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_381_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_381_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_381_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_381_40
.Lcall_prolog_α_381_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_381_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_381_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_381_40
.Lcall_prolog_α_381_56: cmp              al, 72;                              jne   .Lcall_prolog_α_381_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_381_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_381_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_381_40
.Lcall_prolog_α_381_41: lea              r9, [rbp + 7584]
.Lcall_prolog_α_381_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_381_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_381_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_381_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_381_42
.Lcall_prolog_α_381_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_381_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_381_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_381_42
.Lcall_prolog_α_381_58: cmp              al, 72;                              jne   .Lcall_prolog_α_381_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_381_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_381_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_381_42
.Lcall_prolog_α_381_43: cmp              r8, r9;                              je    .Lcall_prolog_α_381_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_381_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_381_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_381_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_381_44
                                                                              jmp   .Lcall_prolog_α_381_45
.Lcall_prolog_α_381_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_381_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_381_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_381_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_381_53
                                                                              jmp   .Lcall_prolog_α_381_46
.Lcall_prolog_α_381_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_381_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_381_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_381_51
.Lcall_prolog_α_381_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_381_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_381_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_381_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_381_47
                                                                              jmp   .Lcall_prolog_α_381_48
.Lcall_prolog_α_381_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_381_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_381_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_381_51
.Lcall_prolog_α_381_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_381_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_381_53
                                                                              jmp   .Lcall_prolog_α_381_52
.Lcall_prolog_α_381_49: cmp              dl, 80;                              je    .Lcall_prolog_α_381_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_381_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_381_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_381_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_381_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_381_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_381_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_381_51
                                                                              jmp   .Lcall_prolog_α_381_52
.Lcall_prolog_α_381_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_381_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_381_53
.Lcall_prolog_α_381_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_381_54
.Lcall_prolog_α_381_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_381_54
.Lcall_prolog_α_381_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_381_54: mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                        cmp              al, 104;                             je    n105_call_prolog_α
                                                                              jmp   n95_cut_α
n94_call_prolog_β:      mov              r11, 55;                             jmp   n105_call_prolog_α
                        .size            n94_call_prolog_bx, .-n94_call_prolog_bx
                        .type            n95_cut_bx, @function
n95_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_cut_α:              mov              r11, 56;                             jmp   n96_var_ref_α
                        .size            n95_cut_bx, .-n95_cut_bx
                        .type            n96_var_ref_bx, @function
n96_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7504], rax
                        mov              qword ptr [rbp + 7512], rdx;         jmp   n97_var_ref_α
                        .size            n96_var_ref_bx, .-n96_var_ref_bx
                        .type            n97_var_ref_bx, @function
n97_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:          mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx;         jmp   n98_var_ref_α
                        .size            n97_var_ref_bx, .-n97_var_ref_bx
                        .type            n98_var_ref_bx, @function
n98_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx;         jmp   n99_call_proc_staged_α
                        .size            n98_var_ref_bx, .-n98_var_ref_bx
                        .type            n99_call_proc_staged_bx, @function
n99_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_call_proc_staged_α: mov              r11, 60
                        lea              rsi, [rbp + 7504]
                        lea              rdx, [rbp + 7520]
                        lea              rcx, [rbp + 7536]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_390_2
.Lcall_proc_staged_α_390_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_390_29
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
.Lcall_proc_staged_α_390_29:
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                        cmp              al, 104;                             je    n352_call_prolog_α
                                                                              jmp   n100_var_ref_α
n99_call_proc_staged_β: mov              r11, 60;                             jmp   n352_call_prolog_α
.Lcall_proc_staged_β_390_0:
                        .quad            .Lcall_proc_staged_β_390_0_s
.Lcall_proc_staged_β_390_0_s:
                        .string          "d/3"
                        .size            n99_call_proc_staged_bx, .-n99_call_proc_staged_bx
                        .type            n100_var_ref_bx, @function
n100_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7376], rax
                        mov              qword ptr [rbp + 7384], rdx;         jmp   n101_var_ref_α
                        .size            n100_var_ref_bx, .-n100_var_ref_bx
                        .type            n101_var_ref_bx, @function
n101_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx;         jmp   n102_var_ref_α
                        .size            n101_var_ref_bx, .-n101_var_ref_bx
                        .type            n102_var_ref_bx, @function
n102_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 7408], rax
                        mov              qword ptr [rbp + 7416], rdx;         jmp   n103_call_proc_staged_α
                        .size            n102_var_ref_bx, .-n102_var_ref_bx
                        .type            n103_call_proc_staged_bx, @function
n103_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_call_proc_staged_α:
                        mov              r11, 64
                        lea              rsi, [rbp + 7376]
                        lea              rdx, [rbp + 7392]
                        lea              rcx, [rbp + 7408]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_398_2
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
                        mov              qword ptr [rbp + 7296], rax
                        mov              qword ptr [rbp + 7304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 7296]
                        mov              rdx, qword ptr [rbp + 7304]
.Lcall_proc_staged_α_398_29:
                        mov              qword ptr [rbp + 7296], rax
                        mov              qword ptr [rbp + 7304], rdx
                        cmp              al, 104;                             je    n99_call_proc_staged_β
                                                                              jmp   n104_move_label_α
n103_call_proc_staged_β:
                        mov              r11, 64;                             jmp   n99_call_proc_staged_β
.Lcall_proc_staged_β_398_0:
                        .quad            .Lcall_proc_staged_β_398_0_s
.Lcall_proc_staged_β_398_0_s:
                        .string          "d/3"
                        .size            n103_call_proc_staged_bx, .-n103_call_proc_staged_bx
                        .type            n104_move_label_bx, @function
n104_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_move_label_α:      mov              r11, 65
                        lea              rax, [rip + n103_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n104_move_label_bx, .-n104_move_label_bx
                        .type            n105_call_prolog_bx, @function
n105_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_call_prolog_α:     mov              r11, 66
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
                                                                              jmp   n106_var_ref_α
n105_call_prolog_β:     mov              r11, 66;                             jmp   d$2F3_ω
                        .size            n105_call_prolog_bx, .-n105_call_prolog_bx
                        .type            n106_var_ref_bx, @function
n106_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:         mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7216], rax
                        mov              qword ptr [rbp + 7224], rdx;         jmp   n107_lit_integer_α
                        .size            n106_var_ref_bx, .-n106_var_ref_bx
                        .type            n107_lit_integer_bx, @function
n107_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:     mov              r11, 68
                        mov              qword ptr [rbp + 7232], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_404_0]
                        mov              qword ptr [rbp + 7240], rax;         jmp   n108_lit_string_α
.Llit_integer_α_404_0:  .quad            516
                        .size            n107_lit_integer_bx, .-n107_lit_integer_bx
                        .type            n108_lit_string_bx, @function
n108_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      mov              r11, 69
                        mov              qword ptr [rbp + 7248], 2            # result
                        mov              dword ptr [rbp + 7252], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_405_0]
                        mov              qword ptr [rbp + 7256], rax;         jmp   n109_call_prolog_α
.Llit_string_α_405_0:   .quad            .Llit_string_α_405_0_s
.Llit_string_α_405_0_s: .string          "-"
                        .size            n108_lit_string_bx, .-n108_lit_string_bx
                        .type            n109_call_prolog_bx, @function
n109_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_prolog_α:     mov              r11, 70
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
                        cmp              al, 104;                             je    n136_var_ref_α
                                                                              jmp   n110_var_ref_α
n109_call_prolog_β:     mov              r11, 70;                             jmp   n136_var_ref_α
                        .size            n109_call_prolog_bx, .-n109_call_prolog_bx
                        .type            n110_var_ref_bx, @function
n110_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7008], rax
                        mov              qword ptr [rbp + 7016], rdx;         jmp   n111_lit_string_α
                        .size            n110_var_ref_bx, .-n110_var_ref_bx
                        .type            n111_lit_string_bx, @function
n111_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:      mov              r11, 72
                        mov              qword ptr [rbp + 7136], 2            # result
                        mov              dword ptr [rbp + 7140], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_409_0]
                        mov              qword ptr [rbp + 7144], rax;         jmp   n112_var_ref_α
.Llit_string_α_409_0:   .quad            .Llit_string_α_409_0_s
.Llit_string_α_409_0_s: .string          "-"
                        .size            n111_lit_string_bx, .-n111_lit_string_bx
                        .type            n112_var_ref_bx, @function
n112_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:         mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7024], rax
                        mov              qword ptr [rbp + 7032], rdx;         jmp   n113_var_ref_α
                        .size            n112_var_ref_bx, .-n112_var_ref_bx
                        .type            n113_var_ref_bx, @function
n113_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7040], rax
                        mov              qword ptr [rbp + 7048], rdx;         jmp   n114_call_prolog_α
                        .size            n113_var_ref_bx, .-n113_var_ref_bx
                        .type            n114_call_prolog_bx, @function
n114_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_call_prolog_α:     mov              r11, 75
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
                        cmp              al, 104;                             je    n135_call_prolog_α
                                                                              jmp   n115_call_prolog_α
n114_call_prolog_β:     mov              r11, 75;                             jmp   n135_call_prolog_α
                        .size            n114_call_prolog_bx, .-n114_call_prolog_bx
                        .type            n115_call_prolog_bx, @function
n115_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_call_prolog_α:     mov              r11, 76
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
.Lcall_prolog_α_415_41: lea              r9, [rbp + 6992]
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
.Lcall_prolog_α_415_54: mov              qword ptr [rbp + 6960], rax
                        mov              qword ptr [rbp + 6968], rdx
                        cmp              al, 104;                             je    n135_call_prolog_α
                                                                              jmp   n116_var_ref_α
n115_call_prolog_β:     mov              r11, 76;                             jmp   n135_call_prolog_α
                        .size            n115_call_prolog_bx, .-n115_call_prolog_bx
                        .type            n116_var_ref_bx, @function
n116_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6928], rax
                        mov              qword ptr [rbp + 6936], rdx;         jmp   n117_var_ref_α
                        .size            n116_var_ref_bx, .-n116_var_ref_bx
                        .type            n117_var_ref_bx, @function
n117_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx;         jmp   n118_call_prolog_α
                        .size            n117_var_ref_bx, .-n117_var_ref_bx
                        .type            n118_call_prolog_bx, @function
n118_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_call_prolog_α:     mov              r11, 79
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
.Lcall_prolog_α_420_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_420_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_420_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_420_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_420_40
.Lcall_prolog_α_420_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_420_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_420_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_420_40
.Lcall_prolog_α_420_56: cmp              al, 72;                              jne   .Lcall_prolog_α_420_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_420_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_420_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_420_40
.Lcall_prolog_α_420_41: lea              r9, [rbp + 6912]
.Lcall_prolog_α_420_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_420_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_420_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_420_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_420_42
.Lcall_prolog_α_420_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_420_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_420_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_420_42
.Lcall_prolog_α_420_58: cmp              al, 72;                              jne   .Lcall_prolog_α_420_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_420_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_420_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_420_42
.Lcall_prolog_α_420_43: cmp              r8, r9;                              je    .Lcall_prolog_α_420_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_420_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_420_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_420_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_420_44
                                                                              jmp   .Lcall_prolog_α_420_45
.Lcall_prolog_α_420_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_420_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_420_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_420_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_420_53
                                                                              jmp   .Lcall_prolog_α_420_46
.Lcall_prolog_α_420_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_420_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_420_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_420_51
.Lcall_prolog_α_420_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_420_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_420_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_420_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_420_47
                                                                              jmp   .Lcall_prolog_α_420_48
.Lcall_prolog_α_420_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_420_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_420_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_420_51
.Lcall_prolog_α_420_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_420_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_420_53
                                                                              jmp   .Lcall_prolog_α_420_52
.Lcall_prolog_α_420_49: cmp              dl, 80;                              je    .Lcall_prolog_α_420_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_420_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_420_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_420_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_420_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_420_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_420_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_420_51
                                                                              jmp   .Lcall_prolog_α_420_52
.Lcall_prolog_α_420_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_420_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_420_53
.Lcall_prolog_α_420_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_420_54
.Lcall_prolog_α_420_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_420_54
.Lcall_prolog_α_420_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_420_54: mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx
                        cmp              al, 104;                             je    n135_call_prolog_α
                                                                              jmp   n119_var_ref_α
n118_call_prolog_β:     mov              r11, 79;                             jmp   n135_call_prolog_α
                        .size            n118_call_prolog_bx, .-n118_call_prolog_bx
                        .type            n119_var_ref_bx, @function
n119_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx;         jmp   n120_lit_string_α
                        .size            n119_var_ref_bx, .-n119_var_ref_bx
                        .type            n120_lit_string_bx, @function
n120_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:      mov              r11, 81
                        mov              qword ptr [rbp + 6864], 2            # result
                        mov              dword ptr [rbp + 6868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_423_0]
                        mov              qword ptr [rbp + 6872], rax;         jmp   n121_var_ref_α
.Llit_string_α_423_0:   .quad            .Llit_string_α_423_0_s
.Llit_string_α_423_0_s: .string          "-"
                        .size            n120_lit_string_bx, .-n120_lit_string_bx
                        .type            n121_var_ref_bx, @function
n121_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx;         jmp   n122_var_ref_α
                        .size            n121_var_ref_bx, .-n121_var_ref_bx
                        .type            n122_var_ref_bx, @function
n122_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 6768], rax
                        mov              qword ptr [rbp + 6776], rdx;         jmp   n123_call_prolog_α
                        .size            n122_var_ref_bx, .-n122_var_ref_bx
                        .type            n123_call_prolog_bx, @function
n123_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_call_prolog_α:     mov              r11, 84
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
                        cmp              al, 104;                             je    n135_call_prolog_α
                                                                              jmp   n124_call_prolog_α
n123_call_prolog_β:     mov              r11, 84;                             jmp   n135_call_prolog_α
                        .size            n123_call_prolog_bx, .-n123_call_prolog_bx
                        .type            n124_call_prolog_bx, @function
n124_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_call_prolog_α:     mov              r11, 85
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
.Lcall_prolog_α_429_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_429_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_429_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_429_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_429_40
.Lcall_prolog_α_429_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_429_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_429_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_429_40
.Lcall_prolog_α_429_56: cmp              al, 72;                              jne   .Lcall_prolog_α_429_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_429_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_429_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_429_40
.Lcall_prolog_α_429_41: lea              r9, [rbp + 6720]
.Lcall_prolog_α_429_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_429_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_429_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_429_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_429_42
.Lcall_prolog_α_429_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_429_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_429_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_429_42
.Lcall_prolog_α_429_58: cmp              al, 72;                              jne   .Lcall_prolog_α_429_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_429_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_429_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_429_42
.Lcall_prolog_α_429_43: cmp              r8, r9;                              je    .Lcall_prolog_α_429_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_429_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_429_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_429_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_429_44
                                                                              jmp   .Lcall_prolog_α_429_45
.Lcall_prolog_α_429_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_429_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_429_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_429_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_429_53
                                                                              jmp   .Lcall_prolog_α_429_46
.Lcall_prolog_α_429_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_429_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_429_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_429_51
.Lcall_prolog_α_429_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_429_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_429_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_429_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_429_47
                                                                              jmp   .Lcall_prolog_α_429_48
.Lcall_prolog_α_429_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_429_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_429_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_429_51
.Lcall_prolog_α_429_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_429_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_429_53
                                                                              jmp   .Lcall_prolog_α_429_52
.Lcall_prolog_α_429_49: cmp              dl, 80;                              je    .Lcall_prolog_α_429_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_429_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_429_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_429_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_429_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_429_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_429_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_429_51
                                                                              jmp   .Lcall_prolog_α_429_52
.Lcall_prolog_α_429_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_429_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_429_53
.Lcall_prolog_α_429_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_429_54
.Lcall_prolog_α_429_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_429_54
.Lcall_prolog_α_429_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_429_54: mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                        cmp              al, 104;                             je    n135_call_prolog_α
                                                                              jmp   n125_cut_α
n124_call_prolog_β:     mov              r11, 85;                             jmp   n135_call_prolog_α
                        .size            n124_call_prolog_bx, .-n124_call_prolog_bx
                        .type            n125_cut_bx, @function
n125_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_cut_α:             mov              r11, 86;                             jmp   n126_var_ref_α
                        .size            n125_cut_bx, .-n125_cut_bx
                        .type            n126_var_ref_bx, @function
n126_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 6640], rax
                        mov              qword ptr [rbp + 6648], rdx;         jmp   n127_var_ref_α
                        .size            n126_var_ref_bx, .-n126_var_ref_bx
                        .type            n127_var_ref_bx, @function
n127_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_var_ref_α:         mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6656], rax
                        mov              qword ptr [rbp + 6664], rdx;         jmp   n128_var_ref_α
                        .size            n127_var_ref_bx, .-n127_var_ref_bx
                        .type            n128_var_ref_bx, @function
n128_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 6672], rax
                        mov              qword ptr [rbp + 6680], rdx;         jmp   n129_call_proc_staged_α
                        .size            n128_var_ref_bx, .-n128_var_ref_bx
                        .type            n129_call_proc_staged_bx, @function
n129_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_call_proc_staged_α:
                        mov              r11, 90
                        lea              rsi, [rbp + 6640]
                        lea              rdx, [rbp + 6656]
                        lea              rcx, [rbp + 6672]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_438_2
.Lcall_proc_staged_α_438_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_438_29
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
.Lcall_proc_staged_α_438_29:
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx
                        cmp              al, 104;                             je    n352_call_prolog_α
                                                                              jmp   n130_var_ref_α
n129_call_proc_staged_β:
                        mov              r11, 90;                             jmp   n352_call_prolog_α
.Lcall_proc_staged_β_438_0:
                        .quad            .Lcall_proc_staged_β_438_0_s
.Lcall_proc_staged_β_438_0_s:
                        .string          "d/3"
                        .size            n129_call_proc_staged_bx, .-n129_call_proc_staged_bx
                        .type            n130_var_ref_bx, @function
n130_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx;         jmp   n131_var_ref_α
                        .size            n130_var_ref_bx, .-n130_var_ref_bx
                        .type            n131_var_ref_bx, @function
n131_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx;         jmp   n132_var_ref_α
                        .size            n131_var_ref_bx, .-n131_var_ref_bx
                        .type            n132_var_ref_bx, @function
n132_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx;         jmp   n133_call_proc_staged_α
                        .size            n132_var_ref_bx, .-n132_var_ref_bx
                        .type            n133_call_proc_staged_bx, @function
n133_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_call_proc_staged_α:
                        mov              r11, 94
                        lea              rsi, [rbp + 6512]
                        lea              rdx, [rbp + 6528]
                        lea              rcx, [rbp + 6544]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_446_2
.Lcall_proc_staged_α_446_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_446_29
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
.Lcall_proc_staged_α_446_29:
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                        cmp              al, 104;                             je    n129_call_proc_staged_β
                                                                              jmp   n134_move_label_α
n133_call_proc_staged_β:
                        mov              r11, 94;                             jmp   n129_call_proc_staged_β
.Lcall_proc_staged_β_446_0:
                        .quad            .Lcall_proc_staged_β_446_0_s
.Lcall_proc_staged_β_446_0_s:
                        .string          "d/3"
                        .size            n133_call_proc_staged_bx, .-n133_call_proc_staged_bx
                        .type            n134_move_label_bx, @function
n134_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_move_label_α:      mov              r11, 95
                        lea              rax, [rip + n133_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n134_move_label_bx, .-n134_move_label_bx
                        .type            n135_call_prolog_bx, @function
n135_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_call_prolog_α:     mov              r11, 96
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
                                                                              jmp   n136_var_ref_α
n135_call_prolog_β:     mov              r11, 96;                             jmp   d$2F3_ω
                        .size            n135_call_prolog_bx, .-n135_call_prolog_bx
                        .type            n136_var_ref_bx, @function
n136_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx;         jmp   n137_lit_integer_α
                        .size            n136_var_ref_bx, .-n136_var_ref_bx
                        .type            n137_lit_integer_bx, @function
n137_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:     mov              r11, 98
                        mov              qword ptr [rbp + 6368], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_452_0]
                        mov              qword ptr [rbp + 6376], rax;         jmp   n138_lit_string_α
.Llit_integer_α_452_0:  .quad            516
                        .size            n137_lit_integer_bx, .-n137_lit_integer_bx
                        .type            n138_lit_string_bx, @function
n138_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      mov              r11, 99
                        mov              qword ptr [rbp + 6384], 2            # result
                        mov              dword ptr [rbp + 6388], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_453_0]
                        mov              qword ptr [rbp + 6392], rax;         jmp   n139_call_prolog_α
.Llit_string_α_453_0:   .quad            .Llit_string_α_453_0_s
.Llit_string_α_453_0_s: .string          "*"
                        .size            n138_lit_string_bx, .-n138_lit_string_bx
                        .type            n139_call_prolog_bx, @function
n139_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_call_prolog_α:     mov              r11, 100
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
                        cmp              al, 104;                             je    n172_var_ref_α
                                                                              jmp   n140_var_ref_α
n139_call_prolog_β:     mov              r11, 100;                            jmp   n172_var_ref_α
                        .size            n139_call_prolog_bx, .-n139_call_prolog_bx
                        .type            n140_var_ref_bx, @function
n140_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx;         jmp   n141_lit_string_α
                        .size            n140_var_ref_bx, .-n140_var_ref_bx
                        .type            n141_lit_string_bx, @function
n141_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      mov              r11, 102
                        mov              qword ptr [rbp + 6272], 2            # result
                        mov              dword ptr [rbp + 6276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_457_0]
                        mov              qword ptr [rbp + 6280], rax;         jmp   n142_var_ref_α
.Llit_string_α_457_0:   .quad            .Llit_string_α_457_0_s
.Llit_string_α_457_0_s: .string          "*"
                        .size            n141_lit_string_bx, .-n141_lit_string_bx
                        .type            n142_var_ref_bx, @function
n142_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx;         jmp   n143_var_ref_α
                        .size            n142_var_ref_bx, .-n142_var_ref_bx
                        .type            n143_var_ref_bx, @function
n143_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 6176], rax
                        mov              qword ptr [rbp + 6184], rdx;         jmp   n144_call_prolog_α
                        .size            n143_var_ref_bx, .-n143_var_ref_bx
                        .type            n144_call_prolog_bx, @function
n144_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_call_prolog_α:     mov              r11, 105
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
                        cmp              al, 104;                             je    n171_call_prolog_α
                                                                              jmp   n145_call_prolog_α
n144_call_prolog_β:     mov              r11, 105;                            jmp   n171_call_prolog_α
                        .size            n144_call_prolog_bx, .-n144_call_prolog_bx
                        .type            n145_call_prolog_bx, @function
n145_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_call_prolog_α:     mov              r11, 106
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
.Lcall_prolog_α_463_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_463_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_463_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_463_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_463_40
.Lcall_prolog_α_463_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_463_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_463_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_463_40
.Lcall_prolog_α_463_56: cmp              al, 72;                              jne   .Lcall_prolog_α_463_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_463_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_463_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_463_40
.Lcall_prolog_α_463_41: lea              r9, [rbp + 6128]
.Lcall_prolog_α_463_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_463_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_463_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_463_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_463_42
.Lcall_prolog_α_463_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_463_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_463_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_463_42
.Lcall_prolog_α_463_58: cmp              al, 72;                              jne   .Lcall_prolog_α_463_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_463_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_463_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_463_42
.Lcall_prolog_α_463_43: cmp              r8, r9;                              je    .Lcall_prolog_α_463_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_463_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_463_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_463_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_463_44
                                                                              jmp   .Lcall_prolog_α_463_45
.Lcall_prolog_α_463_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_463_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_463_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_463_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_463_53
                                                                              jmp   .Lcall_prolog_α_463_46
.Lcall_prolog_α_463_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_463_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_463_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_463_51
.Lcall_prolog_α_463_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_463_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_463_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_463_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_463_47
                                                                              jmp   .Lcall_prolog_α_463_48
.Lcall_prolog_α_463_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_463_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_463_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_463_51
.Lcall_prolog_α_463_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_463_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_463_53
                                                                              jmp   .Lcall_prolog_α_463_52
.Lcall_prolog_α_463_49: cmp              dl, 80;                              je    .Lcall_prolog_α_463_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_463_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_463_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_463_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_463_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_463_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_463_51
                                                                              jmp   .Lcall_prolog_α_463_52
.Lcall_prolog_α_463_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_463_53
.Lcall_prolog_α_463_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_463_54
.Lcall_prolog_α_463_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_463_54
.Lcall_prolog_α_463_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_463_54: mov              qword ptr [rbp + 6096], rax
                        mov              qword ptr [rbp + 6104], rdx
                        cmp              al, 104;                             je    n171_call_prolog_α
                                                                              jmp   n146_var_ref_α
n145_call_prolog_β:     mov              r11, 106;                            jmp   n171_call_prolog_α
                        .size            n145_call_prolog_bx, .-n145_call_prolog_bx
                        .type            n146_var_ref_bx, @function
n146_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx;         jmp   n147_var_ref_α
                        .size            n146_var_ref_bx, .-n146_var_ref_bx
                        .type            n147_var_ref_bx, @function
n147_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6080], rax
                        mov              qword ptr [rbp + 6088], rdx;         jmp   n148_call_prolog_α
                        .size            n147_var_ref_bx, .-n147_var_ref_bx
                        .type            n148_call_prolog_bx, @function
n148_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_call_prolog_α:     mov              r11, 109
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
.Lcall_prolog_α_468_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_468_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_468_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_468_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_468_40
.Lcall_prolog_α_468_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_468_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_468_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_468_40
.Lcall_prolog_α_468_56: cmp              al, 72;                              jne   .Lcall_prolog_α_468_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_468_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_468_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_468_40
.Lcall_prolog_α_468_41: lea              r9, [rbp + 6048]
.Lcall_prolog_α_468_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_468_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_468_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_468_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_468_42
.Lcall_prolog_α_468_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_468_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_468_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_468_42
.Lcall_prolog_α_468_58: cmp              al, 72;                              jne   .Lcall_prolog_α_468_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_468_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_468_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_468_42
.Lcall_prolog_α_468_43: cmp              r8, r9;                              je    .Lcall_prolog_α_468_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_468_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_468_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_468_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_468_44
                                                                              jmp   .Lcall_prolog_α_468_45
.Lcall_prolog_α_468_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_468_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_468_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_468_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_468_53
                                                                              jmp   .Lcall_prolog_α_468_46
.Lcall_prolog_α_468_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_468_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_468_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_468_51
.Lcall_prolog_α_468_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_468_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_468_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_468_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_468_47
                                                                              jmp   .Lcall_prolog_α_468_48
.Lcall_prolog_α_468_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_468_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_468_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_468_51
.Lcall_prolog_α_468_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_468_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_468_53
                                                                              jmp   .Lcall_prolog_α_468_52
.Lcall_prolog_α_468_49: cmp              dl, 80;                              je    .Lcall_prolog_α_468_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_468_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_468_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_468_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_468_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_468_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_468_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_468_51
                                                                              jmp   .Lcall_prolog_α_468_52
.Lcall_prolog_α_468_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_468_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_468_53
.Lcall_prolog_α_468_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_468_54
.Lcall_prolog_α_468_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_468_54
.Lcall_prolog_α_468_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_468_54: mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx
                        cmp              al, 104;                             je    n171_call_prolog_α
                                                                              jmp   n149_var_ref_α
n148_call_prolog_β:     mov              r11, 109;                            jmp   n171_call_prolog_α
                        .size            n148_call_prolog_bx, .-n148_call_prolog_bx
                        .type            n149_var_ref_bx, @function
n149_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx;         jmp   n150_lit_string_α
                        .size            n149_var_ref_bx, .-n149_var_ref_bx
                        .type            n150_lit_string_bx, @function
n150_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:      mov              r11, 111
                        mov              qword ptr [rbp + 6000], 2            # result
                        mov              dword ptr [rbp + 6004], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_471_0]
                        mov              qword ptr [rbp + 6008], rax;         jmp   n151_lit_string_α
.Llit_string_α_471_0:   .quad            .Llit_string_α_471_0_s
.Llit_string_α_471_0_s: .string          "+"
                        .size            n150_lit_string_bx, .-n150_lit_string_bx
                        .type            n151_lit_string_bx, @function
n151_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rbp + 5776], 2            # result
                        mov              dword ptr [rbp + 5780], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_472_0]
                        mov              qword ptr [rbp + 5784], rax;         jmp   n152_var_ref_α
.Llit_string_α_472_0:   .quad            .Llit_string_α_472_0_s
.Llit_string_α_472_0_s: .string          "*"
                        .size            n151_lit_string_bx, .-n151_lit_string_bx
                        .type            n152_var_ref_bx, @function
n152_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx;         jmp   n153_var_ref_α
                        .size            n152_var_ref_bx, .-n152_var_ref_bx
                        .type            n153_var_ref_bx, @function
n153_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx;         jmp   n154_call_prolog_α
                        .size            n153_var_ref_bx, .-n153_var_ref_bx
                        .type            n154_call_prolog_bx, @function
n154_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_call_prolog_α:     mov              r11, 115
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
                                                                              jmp   n155_lit_string_α
n154_call_prolog_β:     mov              r11, 115;                            jmp   d$2F3_ω
                        .size            n154_call_prolog_bx, .-n154_call_prolog_bx
                        .type            n155_lit_string_bx, @function
n155_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rbp + 5904], 2            # result
                        mov              dword ptr [rbp + 5908], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_478_0]
                        mov              qword ptr [rbp + 5912], rax;         jmp   n156_var_ref_α
.Llit_string_α_478_0:   .quad            .Llit_string_α_478_0_s
.Llit_string_α_478_0_s: .string          "*"
                        .size            n155_lit_string_bx, .-n155_lit_string_bx
                        .type            n156_var_ref_bx, @function
n156_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx;         jmp   n157_var_ref_α
                        .size            n156_var_ref_bx, .-n156_var_ref_bx
                        .type            n157_var_ref_bx, @function
n157_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 5808], rax
                        mov              qword ptr [rbp + 5816], rdx;         jmp   n158_call_prolog_α
                        .size            n157_var_ref_bx, .-n157_var_ref_bx
                        .type            n158_call_prolog_bx, @function
n158_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_call_prolog_α:     mov              r11, 119
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
                                                                              jmp   n159_call_prolog_α
n158_call_prolog_β:     mov              r11, 119;                            jmp   d$2F3_ω
                        .size            n158_call_prolog_bx, .-n158_call_prolog_bx
                        .type            n159_call_prolog_bx, @function
n159_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_call_prolog_α:     mov              r11, 120
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
                        cmp              al, 104;                             je    n171_call_prolog_α
                                                                              jmp   n160_call_prolog_α
n159_call_prolog_β:     mov              r11, 120;                            jmp   n171_call_prolog_α
                        .size            n159_call_prolog_bx, .-n159_call_prolog_bx
                        .type            n160_call_prolog_bx, @function
n160_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_call_prolog_α:     mov              r11, 121
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
.Lcall_prolog_α_485_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_485_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_485_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_485_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_485_40
.Lcall_prolog_α_485_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_485_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_485_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_485_40
.Lcall_prolog_α_485_56: cmp              al, 72;                              jne   .Lcall_prolog_α_485_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_485_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_485_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_485_40
.Lcall_prolog_α_485_41: lea              r9, [rbp + 5632]
.Lcall_prolog_α_485_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_485_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_485_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_485_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_485_42
.Lcall_prolog_α_485_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_485_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_485_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_485_42
.Lcall_prolog_α_485_58: cmp              al, 72;                              jne   .Lcall_prolog_α_485_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_485_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_485_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_485_42
.Lcall_prolog_α_485_43: cmp              r8, r9;                              je    .Lcall_prolog_α_485_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_485_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_485_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_485_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_485_44
                                                                              jmp   .Lcall_prolog_α_485_45
.Lcall_prolog_α_485_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_485_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_485_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_485_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_485_53
                                                                              jmp   .Lcall_prolog_α_485_46
.Lcall_prolog_α_485_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_485_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_485_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_485_51
.Lcall_prolog_α_485_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_485_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_485_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_485_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_485_47
                                                                              jmp   .Lcall_prolog_α_485_48
.Lcall_prolog_α_485_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_485_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_485_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_485_51
.Lcall_prolog_α_485_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_485_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_485_53
                                                                              jmp   .Lcall_prolog_α_485_52
.Lcall_prolog_α_485_49: cmp              dl, 80;                              je    .Lcall_prolog_α_485_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_485_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_485_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_485_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_485_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_485_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_485_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_485_51
                                                                              jmp   .Lcall_prolog_α_485_52
.Lcall_prolog_α_485_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_485_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_485_53
.Lcall_prolog_α_485_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_485_54
.Lcall_prolog_α_485_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_485_54
.Lcall_prolog_α_485_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_485_54: mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                        cmp              al, 104;                             je    n171_call_prolog_α
                                                                              jmp   n161_cut_α
n160_call_prolog_β:     mov              r11, 121;                            jmp   n171_call_prolog_α
                        .size            n160_call_prolog_bx, .-n160_call_prolog_bx
                        .type            n161_cut_bx, @function
n161_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_cut_α:             mov              r11, 122;                            jmp   n162_var_ref_α
                        .size            n161_cut_bx, .-n161_cut_bx
                        .type            n162_var_ref_bx, @function
n162_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx;         jmp   n163_var_ref_α
                        .size            n162_var_ref_bx, .-n162_var_ref_bx
                        .type            n163_var_ref_bx, @function
n163_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx;         jmp   n164_var_ref_α
                        .size            n163_var_ref_bx, .-n163_var_ref_bx
                        .type            n164_var_ref_bx, @function
n164_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx;         jmp   n165_call_proc_staged_α
                        .size            n164_var_ref_bx, .-n164_var_ref_bx
                        .type            n165_call_proc_staged_bx, @function
n165_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_call_proc_staged_α:
                        mov              r11, 126
                        lea              rsi, [rbp + 5552]
                        lea              rdx, [rbp + 5568]
                        lea              rcx, [rbp + 5584]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_494_2
.Lcall_proc_staged_α_494_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_494_29
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
.Lcall_proc_staged_α_494_29:
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              al, 104;                             je    n352_call_prolog_α
                                                                              jmp   n166_var_ref_α
n165_call_proc_staged_β:
                        mov              r11, 126;                            jmp   n352_call_prolog_α
.Lcall_proc_staged_β_494_0:
                        .quad            .Lcall_proc_staged_β_494_0_s
.Lcall_proc_staged_β_494_0_s:
                        .string          "d/3"
                        .size            n165_call_proc_staged_bx, .-n165_call_proc_staged_bx
                        .type            n166_var_ref_bx, @function
n166_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx;         jmp   n167_var_ref_α
                        .size            n166_var_ref_bx, .-n166_var_ref_bx
                        .type            n167_var_ref_bx, @function
n167_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 5440], rax
                        mov              qword ptr [rbp + 5448], rdx;         jmp   n168_var_ref_α
                        .size            n167_var_ref_bx, .-n167_var_ref_bx
                        .type            n168_var_ref_bx, @function
n168_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx;         jmp   n169_call_proc_staged_α
                        .size            n168_var_ref_bx, .-n168_var_ref_bx
                        .type            n169_call_proc_staged_bx, @function
n169_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_call_proc_staged_α:
                        mov              r11, 130
                        lea              rsi, [rbp + 5424]
                        lea              rdx, [rbp + 5440]
                        lea              rcx, [rbp + 5456]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_502_2
.Lcall_proc_staged_α_502_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_502_29
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
.Lcall_proc_staged_α_502_29:
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                        cmp              al, 104;                             je    n165_call_proc_staged_β
                                                                              jmp   n170_move_label_α
n169_call_proc_staged_β:
                        mov              r11, 130;                            jmp   n165_call_proc_staged_β
.Lcall_proc_staged_β_502_0:
                        .quad            .Lcall_proc_staged_β_502_0_s
.Lcall_proc_staged_β_502_0_s:
                        .string          "d/3"
                        .size            n169_call_proc_staged_bx, .-n169_call_proc_staged_bx
                        .type            n170_move_label_bx, @function
n170_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_move_label_α:      mov              r11, 131
                        lea              rax, [rip + n169_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n170_move_label_bx, .-n170_move_label_bx
                        .type            n171_call_prolog_bx, @function
n171_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_call_prolog_α:     mov              r11, 132
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
                                                                              jmp   n172_var_ref_α
n171_call_prolog_β:     mov              r11, 132;                            jmp   d$2F3_ω
                        .size            n171_call_prolog_bx, .-n171_call_prolog_bx
                        .type            n172_var_ref_bx, @function
n172_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx;         jmp   n173_lit_integer_α
                        .size            n172_var_ref_bx, .-n172_var_ref_bx
                        .type            n173_lit_integer_bx, @function
n173_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     mov              r11, 134
                        mov              qword ptr [rbp + 5280], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_508_0]
                        mov              qword ptr [rbp + 5288], rax;         jmp   n174_lit_string_α
.Llit_integer_α_508_0:  .quad            516
                        .size            n173_lit_integer_bx, .-n173_lit_integer_bx
                        .type            n174_lit_string_bx, @function
n174_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              r11, 135
                        mov              qword ptr [rbp + 5296], 2            # result
                        mov              dword ptr [rbp + 5300], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_509_0]
                        mov              qword ptr [rbp + 5304], rax;         jmp   n175_call_prolog_α
.Llit_string_α_509_0:   .quad            .Llit_string_α_509_0_s
.Llit_string_α_509_0_s: .string          "/"
                        .size            n174_lit_string_bx, .-n174_lit_string_bx
                        .type            n175_call_prolog_bx, @function
n175_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_call_prolog_α:     mov              r11, 136
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
                        cmp              al, 104;                             je    n214_var_ref_α
                                                                              jmp   n176_var_ref_α
n175_call_prolog_β:     mov              r11, 136;                            jmp   n214_var_ref_α
                        .size            n175_call_prolog_bx, .-n175_call_prolog_bx
                        .type            n176_var_ref_bx, @function
n176_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx;         jmp   n177_lit_string_α
                        .size            n176_var_ref_bx, .-n176_var_ref_bx
                        .type            n177_lit_string_bx, @function
n177_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:      mov              r11, 138
                        mov              qword ptr [rbp + 5184], 2            # result
                        mov              dword ptr [rbp + 5188], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_513_0]
                        mov              qword ptr [rbp + 5192], rax;         jmp   n178_var_ref_α
.Llit_string_α_513_0:   .quad            .Llit_string_α_513_0_s
.Llit_string_α_513_0_s: .string          "/"
                        .size            n177_lit_string_bx, .-n177_lit_string_bx
                        .type            n178_var_ref_bx, @function
n178_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx;         jmp   n179_var_ref_α
                        .size            n178_var_ref_bx, .-n178_var_ref_bx
                        .type            n179_var_ref_bx, @function
n179_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx;         jmp   n180_call_prolog_α
                        .size            n179_var_ref_bx, .-n179_var_ref_bx
                        .type            n180_call_prolog_bx, @function
n180_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_call_prolog_α:     mov              r11, 141
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
                        cmp              al, 104;                             je    n213_call_prolog_α
                                                                              jmp   n181_call_prolog_α
n180_call_prolog_β:     mov              r11, 141;                            jmp   n213_call_prolog_α
                        .size            n180_call_prolog_bx, .-n180_call_prolog_bx
                        .type            n181_call_prolog_bx, @function
n181_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_call_prolog_α:     mov              r11, 142
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
.Lcall_prolog_α_519_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_519_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_519_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_519_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_519_40
.Lcall_prolog_α_519_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_519_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_519_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_519_40
.Lcall_prolog_α_519_56: cmp              al, 72;                              jne   .Lcall_prolog_α_519_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_519_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_519_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_519_40
.Lcall_prolog_α_519_41: lea              r9, [rbp + 5040]
.Lcall_prolog_α_519_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_519_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_519_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_519_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_519_42
.Lcall_prolog_α_519_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_519_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_519_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_519_42
.Lcall_prolog_α_519_58: cmp              al, 72;                              jne   .Lcall_prolog_α_519_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_519_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_519_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_519_42
.Lcall_prolog_α_519_43: cmp              r8, r9;                              je    .Lcall_prolog_α_519_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_519_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_519_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_519_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_519_44
                                                                              jmp   .Lcall_prolog_α_519_45
.Lcall_prolog_α_519_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_519_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_519_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_519_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_519_53
                                                                              jmp   .Lcall_prolog_α_519_46
.Lcall_prolog_α_519_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_519_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_519_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_519_51
.Lcall_prolog_α_519_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_519_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_519_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_519_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_519_47
                                                                              jmp   .Lcall_prolog_α_519_48
.Lcall_prolog_α_519_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_519_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_519_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_519_51
.Lcall_prolog_α_519_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_519_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_519_53
                                                                              jmp   .Lcall_prolog_α_519_52
.Lcall_prolog_α_519_49: cmp              dl, 80;                              je    .Lcall_prolog_α_519_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_519_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_519_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_519_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_519_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_519_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_519_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_519_51
                                                                              jmp   .Lcall_prolog_α_519_52
.Lcall_prolog_α_519_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_519_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_519_53
.Lcall_prolog_α_519_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_519_54
.Lcall_prolog_α_519_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_519_54
.Lcall_prolog_α_519_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_519_54: mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                        cmp              al, 104;                             je    n213_call_prolog_α
                                                                              jmp   n182_var_ref_α
n181_call_prolog_β:     mov              r11, 142;                            jmp   n213_call_prolog_α
                        .size            n181_call_prolog_bx, .-n181_call_prolog_bx
                        .type            n182_var_ref_bx, @function
n182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx;         jmp   n183_var_ref_α
                        .size            n182_var_ref_bx, .-n182_var_ref_bx
                        .type            n183_var_ref_bx, @function
n183_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx;         jmp   n184_call_prolog_α
                        .size            n183_var_ref_bx, .-n183_var_ref_bx
                        .type            n184_call_prolog_bx, @function
n184_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_call_prolog_α:     mov              r11, 145
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
.Lcall_prolog_α_524_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_524_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_524_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_524_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_524_40
.Lcall_prolog_α_524_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_524_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_524_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_524_40
.Lcall_prolog_α_524_56: cmp              al, 72;                              jne   .Lcall_prolog_α_524_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_524_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_524_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_524_40
.Lcall_prolog_α_524_41: lea              r9, [rbp + 4960]
.Lcall_prolog_α_524_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_524_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_524_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_524_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_524_42
.Lcall_prolog_α_524_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_524_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_524_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_524_42
.Lcall_prolog_α_524_58: cmp              al, 72;                              jne   .Lcall_prolog_α_524_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_524_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_524_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_524_42
.Lcall_prolog_α_524_43: cmp              r8, r9;                              je    .Lcall_prolog_α_524_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_524_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_524_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_524_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_524_44
                                                                              jmp   .Lcall_prolog_α_524_45
.Lcall_prolog_α_524_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_524_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_524_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_524_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_524_53
                                                                              jmp   .Lcall_prolog_α_524_46
.Lcall_prolog_α_524_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_524_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_524_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_524_51
.Lcall_prolog_α_524_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_524_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_524_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_524_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_524_47
                                                                              jmp   .Lcall_prolog_α_524_48
.Lcall_prolog_α_524_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_524_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_524_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_524_51
.Lcall_prolog_α_524_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_524_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_524_53
                                                                              jmp   .Lcall_prolog_α_524_52
.Lcall_prolog_α_524_49: cmp              dl, 80;                              je    .Lcall_prolog_α_524_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_524_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_524_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_524_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_524_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_524_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_524_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_524_51
                                                                              jmp   .Lcall_prolog_α_524_52
.Lcall_prolog_α_524_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_524_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_524_53
.Lcall_prolog_α_524_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_524_54
.Lcall_prolog_α_524_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_524_54
.Lcall_prolog_α_524_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_524_54: mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                        cmp              al, 104;                             je    n213_call_prolog_α
                                                                              jmp   n185_var_ref_α
n184_call_prolog_β:     mov              r11, 145;                            jmp   n213_call_prolog_α
                        .size            n184_call_prolog_bx, .-n184_call_prolog_bx
                        .type            n185_var_ref_bx, @function
n185_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx;         jmp   n186_lit_string_α
                        .size            n185_var_ref_bx, .-n185_var_ref_bx
                        .type            n186_lit_string_bx, @function
n186_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rbp + 4912], 2            # result
                        mov              dword ptr [rbp + 4916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_527_0]
                        mov              qword ptr [rbp + 4920], rax;         jmp   n187_lit_string_α
.Llit_string_α_527_0:   .quad            .Llit_string_α_527_0_s
.Llit_string_α_527_0_s: .string          "/"
                        .size            n186_lit_string_bx, .-n186_lit_string_bx
                        .type            n187_lit_string_bx, @function
n187_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:      mov              r11, 148
                        mov              qword ptr [rbp + 4688], 2            # result
                        mov              dword ptr [rbp + 4692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_528_0]
                        mov              qword ptr [rbp + 4696], rax;         jmp   n188_lit_string_α
.Llit_string_α_528_0:   .quad            .Llit_string_α_528_0_s
.Llit_string_α_528_0_s: .string          "-"
                        .size            n187_lit_string_bx, .-n187_lit_string_bx
                        .type            n188_lit_string_bx, @function
n188_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rbp + 4464], 2            # result
                        mov              dword ptr [rbp + 4468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_529_0]
                        mov              qword ptr [rbp + 4472], rax;         jmp   n189_var_ref_α
.Llit_string_α_529_0:   .quad            .Llit_string_α_529_0_s
.Llit_string_α_529_0_s: .string          "*"
                        .size            n188_lit_string_bx, .-n188_lit_string_bx
                        .type            n189_var_ref_bx, @function
n189_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_var_ref_α:         mov              r11, 150
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx;         jmp   n190_var_ref_α
                        .size            n189_var_ref_bx, .-n189_var_ref_bx
                        .type            n190_var_ref_bx, @function
n190_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx;         jmp   n191_call_prolog_α
                        .size            n190_var_ref_bx, .-n190_var_ref_bx
                        .type            n191_call_prolog_bx, @function
n191_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_call_prolog_α:     mov              r11, 152
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
                                                                              jmp   n192_lit_string_α
n191_call_prolog_β:     mov              r11, 152;                            jmp   d$2F3_ω
                        .size            n191_call_prolog_bx, .-n191_call_prolog_bx
                        .type            n192_lit_string_bx, @function
n192_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:      mov              r11, 153
                        mov              qword ptr [rbp + 4592], 2            # result
                        mov              dword ptr [rbp + 4596], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_535_0]
                        mov              qword ptr [rbp + 4600], rax;         jmp   n193_var_ref_α
.Llit_string_α_535_0:   .quad            .Llit_string_α_535_0_s
.Llit_string_α_535_0_s: .string          "*"
                        .size            n192_lit_string_bx, .-n192_lit_string_bx
                        .type            n193_var_ref_bx, @function
n193_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx;         jmp   n194_var_ref_α
                        .size            n193_var_ref_bx, .-n193_var_ref_bx
                        .type            n194_var_ref_bx, @function
n194_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:         mov              r11, 155
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx;         jmp   n195_call_prolog_α
                        .size            n194_var_ref_bx, .-n194_var_ref_bx
                        .type            n195_call_prolog_bx, @function
n195_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_call_prolog_α:     mov              r11, 156
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
                                                                              jmp   n196_call_prolog_α
n195_call_prolog_β:     mov              r11, 156;                            jmp   d$2F3_ω
                        .size            n195_call_prolog_bx, .-n195_call_prolog_bx
                        .type            n196_call_prolog_bx, @function
n196_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_call_prolog_α:     mov              r11, 157
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
                                                                              jmp   n197_lit_string_α
n196_call_prolog_β:     mov              r11, 157;                            jmp   d$2F3_ω
                        .size            n196_call_prolog_bx, .-n196_call_prolog_bx
                        .type            n197_lit_string_bx, @function
n197_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rbp + 4816], 2            # result
                        mov              dword ptr [rbp + 4820], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_542_0]
                        mov              qword ptr [rbp + 4824], rax;         jmp   n198_var_ref_α
.Llit_string_α_542_0:   .quad            .Llit_string_α_542_0_s
.Llit_string_α_542_0_s: .string          "^"
                        .size            n197_lit_string_bx, .-n197_lit_string_bx
                        .type            n198_var_ref_bx, @function
n198_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx;         jmp   n199_lit_integer_α
                        .size            n198_var_ref_bx, .-n198_var_ref_bx
                        .type            n199_lit_integer_bx, @function
n199_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:     mov              r11, 160
                        mov              qword ptr [rbp + 4720], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_545_0]
                        mov              qword ptr [rbp + 4728], rax;         jmp   n200_call_prolog_α
.Llit_integer_α_545_0:  .quad            2
                        .size            n199_lit_integer_bx, .-n199_lit_integer_bx
                        .type            n200_call_prolog_bx, @function
n200_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_call_prolog_α:     mov              r11, 161
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
                                                                              jmp   n201_call_prolog_α
n200_call_prolog_β:     mov              r11, 161;                            jmp   d$2F3_ω
                        .size            n200_call_prolog_bx, .-n200_call_prolog_bx
                        .type            n201_call_prolog_bx, @function
n201_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_call_prolog_α:     mov              r11, 162
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
                        cmp              al, 104;                             je    n213_call_prolog_α
                                                                              jmp   n202_call_prolog_α
n201_call_prolog_β:     mov              r11, 162;                            jmp   n213_call_prolog_α
                        .size            n201_call_prolog_bx, .-n201_call_prolog_bx
                        .type            n202_call_prolog_bx, @function
n202_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_call_prolog_α:     mov              r11, 163
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
.Lcall_prolog_α_548_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_548_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_548_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_548_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_548_40
.Lcall_prolog_α_548_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_548_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_548_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_548_40
.Lcall_prolog_α_548_56: cmp              al, 72;                              jne   .Lcall_prolog_α_548_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_548_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_548_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_548_40
.Lcall_prolog_α_548_41: lea              r9, [rbp + 4320]
.Lcall_prolog_α_548_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_548_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_548_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_548_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_548_42
.Lcall_prolog_α_548_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_548_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_548_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_548_42
.Lcall_prolog_α_548_58: cmp              al, 72;                              jne   .Lcall_prolog_α_548_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_548_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_548_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_548_42
.Lcall_prolog_α_548_43: cmp              r8, r9;                              je    .Lcall_prolog_α_548_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_548_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_548_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_548_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_548_44
                                                                              jmp   .Lcall_prolog_α_548_45
.Lcall_prolog_α_548_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_548_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_548_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_548_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_548_53
                                                                              jmp   .Lcall_prolog_α_548_46
.Lcall_prolog_α_548_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_548_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_548_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_548_51
.Lcall_prolog_α_548_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_548_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_548_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_548_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_548_47
                                                                              jmp   .Lcall_prolog_α_548_48
.Lcall_prolog_α_548_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_548_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_548_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_548_51
.Lcall_prolog_α_548_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_548_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_548_53
                                                                              jmp   .Lcall_prolog_α_548_52
.Lcall_prolog_α_548_49: cmp              dl, 80;                              je    .Lcall_prolog_α_548_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_548_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_548_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_548_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_548_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_548_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_548_51
                                                                              jmp   .Lcall_prolog_α_548_52
.Lcall_prolog_α_548_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_548_53
.Lcall_prolog_α_548_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_548_54
.Lcall_prolog_α_548_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_548_54
.Lcall_prolog_α_548_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_548_54: mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              al, 104;                             je    n213_call_prolog_α
                                                                              jmp   n203_cut_α
n202_call_prolog_β:     mov              r11, 163;                            jmp   n213_call_prolog_α
                        .size            n202_call_prolog_bx, .-n202_call_prolog_bx
                        .type            n203_cut_bx, @function
n203_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_cut_α:             mov              r11, 164;                            jmp   n204_var_ref_α
                        .size            n203_cut_bx, .-n203_cut_bx
                        .type            n204_var_ref_bx, @function
n204_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx;         jmp   n205_var_ref_α
                        .size            n204_var_ref_bx, .-n204_var_ref_bx
                        .type            n205_var_ref_bx, @function
n205_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:         mov              r11, 166
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx;         jmp   n206_var_ref_α
                        .size            n205_var_ref_bx, .-n205_var_ref_bx
                        .type            n206_var_ref_bx, @function
n206_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx;         jmp   n207_call_proc_staged_α
                        .size            n206_var_ref_bx, .-n206_var_ref_bx
                        .type            n207_call_proc_staged_bx, @function
n207_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_call_proc_staged_α:
                        mov              r11, 168
                        lea              rsi, [rbp + 4240]
                        lea              rdx, [rbp + 4256]
                        lea              rcx, [rbp + 4272]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_557_2
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
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 4160]
                        mov              rdx, qword ptr [rbp + 4168]
.Lcall_proc_staged_α_557_29:
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              al, 104;                             je    n352_call_prolog_α
                                                                              jmp   n208_var_ref_α
n207_call_proc_staged_β:
                        mov              r11, 168;                            jmp   n352_call_prolog_α
.Lcall_proc_staged_β_557_0:
                        .quad            .Lcall_proc_staged_β_557_0_s
.Lcall_proc_staged_β_557_0_s:
                        .string          "d/3"
                        .size            n207_call_proc_staged_bx, .-n207_call_proc_staged_bx
                        .type            n208_var_ref_bx, @function
n208_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              r11, 169
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx;         jmp   n209_var_ref_α
                        .size            n208_var_ref_bx, .-n208_var_ref_bx
                        .type            n209_var_ref_bx, @function
n209_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx;         jmp   n210_var_ref_α
                        .size            n209_var_ref_bx, .-n209_var_ref_bx
                        .type            n210_var_ref_bx, @function
n210_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx;         jmp   n211_call_proc_staged_α
                        .size            n210_var_ref_bx, .-n210_var_ref_bx
                        .type            n211_call_proc_staged_bx, @function
n211_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_call_proc_staged_α:
                        mov              r11, 172
                        lea              rsi, [rbp + 4112]
                        lea              rdx, [rbp + 4128]
                        lea              rcx, [rbp + 4144]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_565_2
.Lcall_proc_staged_α_565_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_565_29
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
.Lcall_proc_staged_α_565_29:
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        cmp              al, 104;                             je    n207_call_proc_staged_β
                                                                              jmp   n212_move_label_α
n211_call_proc_staged_β:
                        mov              r11, 172;                            jmp   n207_call_proc_staged_β
.Lcall_proc_staged_β_565_0:
                        .quad            .Lcall_proc_staged_β_565_0_s
.Lcall_proc_staged_β_565_0_s:
                        .string          "d/3"
                        .size            n211_call_proc_staged_bx, .-n211_call_proc_staged_bx
                        .type            n212_move_label_bx, @function
n212_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_move_label_α:      mov              r11, 173
                        lea              rax, [rip + n211_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n212_move_label_bx, .-n212_move_label_bx
                        .type            n213_call_prolog_bx, @function
n213_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_call_prolog_α:     mov              r11, 174
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
                                                                              jmp   n214_var_ref_α
n213_call_prolog_β:     mov              r11, 174;                            jmp   d$2F3_ω
                        .size            n213_call_prolog_bx, .-n213_call_prolog_bx
                        .type            n214_var_ref_bx, @function
n214_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:         mov              r11, 175
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx;         jmp   n215_lit_integer_α
                        .size            n214_var_ref_bx, .-n214_var_ref_bx
                        .type            n215_lit_integer_bx, @function
n215_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_integer_α:     mov              r11, 176
                        mov              qword ptr [rbp + 3968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_571_0]
                        mov              qword ptr [rbp + 3976], rax;         jmp   n216_lit_string_α
.Llit_integer_α_571_0:  .quad            516
                        .size            n215_lit_integer_bx, .-n215_lit_integer_bx
                        .type            n216_lit_string_bx, @function
n216_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rbp + 3984], 2            # result
                        mov              dword ptr [rbp + 3988], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_572_0]
                        mov              qword ptr [rbp + 3992], rax;         jmp   n217_call_prolog_α
.Llit_string_α_572_0:   .quad            .Llit_string_α_572_0_s
.Llit_string_α_572_0_s: .string          "^"
                        .size            n216_lit_string_bx, .-n216_lit_string_bx
                        .type            n217_call_prolog_bx, @function
n217_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_call_prolog_α:     mov              r11, 178
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
                        cmp              al, 104;                             je    n253_var_ref_α
                                                                              jmp   n218_var_ref_α
n217_call_prolog_β:     mov              r11, 178;                            jmp   n253_var_ref_α
                        .size            n217_call_prolog_bx, .-n217_call_prolog_bx
                        .type            n218_var_ref_bx, @function
n218_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx;         jmp   n219_lit_string_α
                        .size            n218_var_ref_bx, .-n218_var_ref_bx
                        .type            n219_lit_string_bx, @function
n219_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      mov              r11, 180
                        mov              qword ptr [rbp + 3872], 2            # result
                        mov              dword ptr [rbp + 3876], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_576_0]
                        mov              qword ptr [rbp + 3880], rax;         jmp   n220_var_ref_α
.Llit_string_α_576_0:   .quad            .Llit_string_α_576_0_s
.Llit_string_α_576_0_s: .string          "^"
                        .size            n219_lit_string_bx, .-n219_lit_string_bx
                        .type            n220_var_ref_bx, @function
n220_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:         mov              r11, 181
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx;         jmp   n221_var_ref_α
                        .size            n220_var_ref_bx, .-n220_var_ref_bx
                        .type            n221_var_ref_bx, @function
n221_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:         mov              r11, 182
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx;         jmp   n222_call_prolog_α
                        .size            n221_var_ref_bx, .-n221_var_ref_bx
                        .type            n222_call_prolog_bx, @function
n222_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_call_prolog_α:     mov              r11, 183
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
                        cmp              al, 104;                             je    n252_call_prolog_α
                                                                              jmp   n223_call_prolog_α
n222_call_prolog_β:     mov              r11, 183;                            jmp   n252_call_prolog_α
                        .size            n222_call_prolog_bx, .-n222_call_prolog_bx
                        .type            n223_call_prolog_bx, @function
n223_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_call_prolog_α:     mov              r11, 184
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
.Lcall_prolog_α_582_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_582_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_582_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_582_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_582_40
.Lcall_prolog_α_582_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_582_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_582_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_582_40
.Lcall_prolog_α_582_56: cmp              al, 72;                              jne   .Lcall_prolog_α_582_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_582_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_582_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_582_40
.Lcall_prolog_α_582_41: lea              r9, [rbp + 3728]
.Lcall_prolog_α_582_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_582_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_582_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_582_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_582_42
.Lcall_prolog_α_582_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_582_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_582_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_582_42
.Lcall_prolog_α_582_58: cmp              al, 72;                              jne   .Lcall_prolog_α_582_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_582_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_582_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_582_42
.Lcall_prolog_α_582_43: cmp              r8, r9;                              je    .Lcall_prolog_α_582_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_582_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_582_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_582_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_582_44
                                                                              jmp   .Lcall_prolog_α_582_45
.Lcall_prolog_α_582_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_582_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_582_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_582_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_582_53
                                                                              jmp   .Lcall_prolog_α_582_46
.Lcall_prolog_α_582_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_582_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_582_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_582_51
.Lcall_prolog_α_582_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_582_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_582_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_582_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_582_47
                                                                              jmp   .Lcall_prolog_α_582_48
.Lcall_prolog_α_582_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_582_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_582_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_582_51
.Lcall_prolog_α_582_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_582_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_582_53
                                                                              jmp   .Lcall_prolog_α_582_52
.Lcall_prolog_α_582_49: cmp              dl, 80;                              je    .Lcall_prolog_α_582_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_582_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_582_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_582_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_582_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_582_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_582_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_582_51
                                                                              jmp   .Lcall_prolog_α_582_52
.Lcall_prolog_α_582_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_582_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_582_53
.Lcall_prolog_α_582_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_582_54
.Lcall_prolog_α_582_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_582_54
.Lcall_prolog_α_582_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_582_54: mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              al, 104;                             je    n252_call_prolog_α
                                                                              jmp   n224_var_ref_α
n223_call_prolog_β:     mov              r11, 184;                            jmp   n252_call_prolog_α
                        .size            n223_call_prolog_bx, .-n223_call_prolog_bx
                        .type            n224_var_ref_bx, @function
n224_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx;         jmp   n225_var_ref_α
                        .size            n224_var_ref_bx, .-n224_var_ref_bx
                        .type            n225_var_ref_bx, @function
n225_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx;         jmp   n226_call_prolog_α
                        .size            n225_var_ref_bx, .-n225_var_ref_bx
                        .type            n226_call_prolog_bx, @function
n226_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_call_prolog_α:     mov              r11, 187
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
.Lcall_prolog_α_587_41: lea              r9, [rbp + 3648]
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
.Lcall_prolog_α_587_54: mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              al, 104;                             je    n252_call_prolog_α
                                                                              jmp   n227_var_ref_α
n226_call_prolog_β:     mov              r11, 187;                            jmp   n252_call_prolog_α
                        .size            n226_call_prolog_bx, .-n226_call_prolog_bx
                        .type            n227_var_ref_bx, @function
n227_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx;         jmp   n228_lit_string_α
                        .size            n227_var_ref_bx, .-n227_var_ref_bx
                        .type            n228_lit_string_bx, @function
n228_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:      mov              r11, 189
                        mov              qword ptr [rbp + 3600], 2            # result
                        mov              dword ptr [rbp + 3604], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_590_0]
                        mov              qword ptr [rbp + 3608], rax;         jmp   n229_lit_string_α
.Llit_string_α_590_0:   .quad            .Llit_string_α_590_0_s
.Llit_string_α_590_0_s: .string          "*"
                        .size            n228_lit_string_bx, .-n228_lit_string_bx
                        .type            n229_lit_string_bx, @function
n229_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:      mov              r11, 190
                        mov              qword ptr [rbp + 3376], 2            # result
                        mov              dword ptr [rbp + 3380], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_591_0]
                        mov              qword ptr [rbp + 3384], rax;         jmp   n230_var_ref_α
.Llit_string_α_591_0:   .quad            .Llit_string_α_591_0_s
.Llit_string_α_591_0_s: .string          "*"
                        .size            n229_lit_string_bx, .-n229_lit_string_bx
                        .type            n230_var_ref_bx, @function
n230_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx;         jmp   n231_var_ref_α
                        .size            n230_var_ref_bx, .-n230_var_ref_bx
                        .type            n231_var_ref_bx, @function
n231_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx;         jmp   n232_call_prolog_α
                        .size            n231_var_ref_bx, .-n231_var_ref_bx
                        .type            n232_call_prolog_bx, @function
n232_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_call_prolog_α:     mov              r11, 193
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
                                                                              jmp   n233_lit_string_α
n232_call_prolog_β:     mov              r11, 193;                            jmp   d$2F3_ω
                        .size            n232_call_prolog_bx, .-n232_call_prolog_bx
                        .type            n233_lit_string_bx, @function
n233_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:      mov              r11, 194
                        mov              qword ptr [rbp + 3504], 2            # result
                        mov              dword ptr [rbp + 3508], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_597_0]
                        mov              qword ptr [rbp + 3512], rax;         jmp   n234_var_ref_α
.Llit_string_α_597_0:   .quad            .Llit_string_α_597_0_s
.Llit_string_α_597_0_s: .string          "^"
                        .size            n233_lit_string_bx, .-n233_lit_string_bx
                        .type            n234_var_ref_bx, @function
n234_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:         mov              r11, 195
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx;         jmp   n235_var_ref_α
                        .size            n234_var_ref_bx, .-n234_var_ref_bx
                        .type            n235_var_ref_bx, @function
n235_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx;         jmp   n236_call_prolog_α
                        .size            n235_var_ref_bx, .-n235_var_ref_bx
                        .type            n236_call_prolog_bx, @function
n236_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_call_prolog_α:     mov              r11, 197
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
                                                                              jmp   n237_call_prolog_α
n236_call_prolog_β:     mov              r11, 197;                            jmp   d$2F3_ω
                        .size            n236_call_prolog_bx, .-n236_call_prolog_bx
                        .type            n237_call_prolog_bx, @function
n237_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_call_prolog_α:     mov              r11, 198
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
                        cmp              al, 104;                             je    n252_call_prolog_α
                                                                              jmp   n238_call_prolog_α
n237_call_prolog_β:     mov              r11, 198;                            jmp   n252_call_prolog_α
                        .size            n237_call_prolog_bx, .-n237_call_prolog_bx
                        .type            n238_call_prolog_bx, @function
n238_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_call_prolog_α:     mov              r11, 199
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
.Lcall_prolog_α_604_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_604_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_604_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_604_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_604_40
.Lcall_prolog_α_604_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_604_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_604_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_604_40
.Lcall_prolog_α_604_56: cmp              al, 72;                              jne   .Lcall_prolog_α_604_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_604_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_604_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_604_40
.Lcall_prolog_α_604_41: lea              r9, [rbp + 3232]
.Lcall_prolog_α_604_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_604_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_604_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_604_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_604_42
.Lcall_prolog_α_604_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_604_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_604_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_604_42
.Lcall_prolog_α_604_58: cmp              al, 72;                              jne   .Lcall_prolog_α_604_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_604_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_604_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_604_42
.Lcall_prolog_α_604_43: cmp              r8, r9;                              je    .Lcall_prolog_α_604_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_604_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_604_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_604_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_604_44
                                                                              jmp   .Lcall_prolog_α_604_45
.Lcall_prolog_α_604_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_604_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_604_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_604_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_604_53
                                                                              jmp   .Lcall_prolog_α_604_46
.Lcall_prolog_α_604_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_604_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_604_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_604_51
.Lcall_prolog_α_604_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_604_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_604_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_604_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_604_47
                                                                              jmp   .Lcall_prolog_α_604_48
.Lcall_prolog_α_604_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_604_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_604_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_604_51
.Lcall_prolog_α_604_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_604_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_604_53
                                                                              jmp   .Lcall_prolog_α_604_52
.Lcall_prolog_α_604_49: cmp              dl, 80;                              je    .Lcall_prolog_α_604_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_604_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_604_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_604_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_604_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_604_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_604_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_604_51
                                                                              jmp   .Lcall_prolog_α_604_52
.Lcall_prolog_α_604_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_604_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_604_53
.Lcall_prolog_α_604_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_604_54
.Lcall_prolog_α_604_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_604_54
.Lcall_prolog_α_604_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_604_54: mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              al, 104;                             je    n252_call_prolog_α
                                                                              jmp   n239_cut_α
n238_call_prolog_β:     mov              r11, 199;                            jmp   n252_call_prolog_α
                        .size            n238_call_prolog_bx, .-n238_call_prolog_bx
                        .type            n239_cut_bx, @function
n239_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_cut_α:             mov              r11, 200;                            jmp   n240_var_ref_α
                        .size            n239_cut_bx, .-n239_cut_bx
                        .type            n240_var_ref_bx, @function
n240_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n241_call_prolog_α
                        .size            n240_var_ref_bx, .-n240_var_ref_bx
                        .type            n241_call_prolog_bx, @function
n241_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_call_prolog_α:     mov              r11, 202
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3176], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn609: .string          "$tt_integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn609]
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
                        cmp              al, 104;                             je    n352_call_prolog_α
                                                                              jmp   n242_var_ref_α
n241_call_prolog_β:     mov              r11, 202;                            jmp   n352_call_prolog_α
                        .size            n241_call_prolog_bx, .-n241_call_prolog_bx
                        .type            n242_var_ref_bx, @function
n242_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx;         jmp   n243_var_α
                        .size            n242_var_ref_bx, .-n242_var_ref_bx
                        .type            n243_var_bx, @function
n243_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:             mov              r11, 204
                        mov              rax, qword ptr [rbp + 8128]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 8136]
                        mov              qword ptr [rbp + 3128], rax;         jmp   n244_lit_integer_α
                        .size            n243_var_bx, .-n243_var_bx
                        .type            n244_lit_integer_bx, @function
n244_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:     mov              r11, 205
                        mov              qword ptr [rbp + 3136], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_614_0]
                        mov              qword ptr [rbp + 3144], rax;         jmp   n245_call_prolog_α
.Llit_integer_α_614_0:  .quad            1
                        .size            n244_lit_integer_bx, .-n244_lit_integer_bx
                        .type            n245_call_prolog_bx, @function
n245_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_call_prolog_α:     mov              r11, 206
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
                        cmp              al, 104;                             je    n352_call_prolog_α
                                                                              jmp   n246_call_prolog_α
n245_call_prolog_β:     mov              r11, 206;                            jmp   n352_call_prolog_α
                        .size            n245_call_prolog_bx, .-n245_call_prolog_bx
                        .type            n246_call_prolog_bx, @function
n246_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_call_prolog_α:     mov              r11, 207
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
                        cmp              al, 104;                             je    n352_call_prolog_α
                                                                              jmp   n247_var_ref_α
n246_call_prolog_β:     mov              r11, 207;                            jmp   n352_call_prolog_α
                        .size            n246_call_prolog_bx, .-n246_call_prolog_bx
                        .type            n247_var_ref_bx, @function
n247_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:         mov              r11, 208
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n248_var_ref_α
                        .size            n247_var_ref_bx, .-n247_var_ref_bx
                        .type            n248_var_ref_bx, @function
n248_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx;         jmp   n249_var_ref_α
                        .size            n248_var_ref_bx, .-n248_var_ref_bx
                        .type            n249_var_ref_bx, @function
n249_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:         mov              r11, 210
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx;         jmp   n250_call_proc_staged_α
                        .size            n249_var_ref_bx, .-n249_var_ref_bx
                        .type            n250_call_proc_staged_bx, @function
n250_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_call_proc_staged_α:
                        mov              r11, 211
                        lea              rsi, [rbp + 2944]
                        lea              rdx, [rbp + 2960]
                        lea              rcx, [rbp + 2976]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_624_2
.Lcall_proc_staged_α_624_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_624_29
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
.Lcall_proc_staged_α_624_29:
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              al, 104;                             je    n352_call_prolog_α
                                                                              jmp   n251_move_label_α
n250_call_proc_staged_β:
                        mov              r11, 211;                            jmp   n352_call_prolog_α
.Lcall_proc_staged_β_624_0:
                        .quad            .Lcall_proc_staged_β_624_0_s
.Lcall_proc_staged_β_624_0_s:
                        .string          "d/3"
                        .size            n250_call_proc_staged_bx, .-n250_call_proc_staged_bx
                        .type            n251_move_label_bx, @function
n251_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_move_label_α:      mov              r11, 212
                        lea              rax, [rip + n250_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n251_move_label_bx, .-n251_move_label_bx
                        .type            n252_call_prolog_bx, @function
n252_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_call_prolog_α:     mov              r11, 213
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
                                                                              jmp   n253_var_ref_α
n252_call_prolog_β:     mov              r11, 213;                            jmp   d$2F3_ω
                        .size            n252_call_prolog_bx, .-n252_call_prolog_bx
                        .type            n253_var_ref_bx, @function
n253_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:         mov              r11, 214
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n254_lit_integer_α
                        .size            n253_var_ref_bx, .-n253_var_ref_bx
                        .type            n254_lit_integer_bx, @function
n254_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:     mov              r11, 215
                        mov              qword ptr [rbp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_630_0]
                        mov              qword ptr [rbp + 2808], rax;         jmp   n255_lit_string_α
.Llit_integer_α_630_0:  .quad            260
                        .size            n254_lit_integer_bx, .-n254_lit_integer_bx
                        .type            n255_lit_string_bx, @function
n255_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:      mov              r11, 216
                        mov              qword ptr [rbp + 2816], 2            # result
                        mov              dword ptr [rbp + 2820], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_631_0]
                        mov              qword ptr [rbp + 2824], rax;         jmp   n256_call_prolog_α
.Llit_string_α_631_0:   .quad            .Llit_string_α_631_0_s
.Llit_string_α_631_0_s: .string          "-"
                        .size            n255_lit_string_bx, .-n255_lit_string_bx
                        .type            n256_call_prolog_bx, @function
n256_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_call_prolog_α:     mov              r11, 217
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
                        cmp              al, 104;                             je    n277_var_ref_α
                                                                              jmp   n257_var_ref_α
n256_call_prolog_β:     mov              r11, 217;                            jmp   n277_var_ref_α
                        .size            n256_call_prolog_bx, .-n256_call_prolog_bx
                        .type            n257_var_ref_bx, @function
n257_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx;         jmp   n258_lit_string_α
                        .size            n257_var_ref_bx, .-n257_var_ref_bx
                        .type            n258_lit_string_bx, @function
n258_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:      mov              r11, 219
                        mov              qword ptr [rbp + 2704], 2            # result
                        mov              dword ptr [rbp + 2708], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_635_0]
                        mov              qword ptr [rbp + 2712], rax;         jmp   n259_var_ref_α
.Llit_string_α_635_0:   .quad            .Llit_string_α_635_0_s
.Llit_string_α_635_0_s: .string          "-"
                        .size            n258_lit_string_bx, .-n258_lit_string_bx
                        .type            n259_var_ref_bx, @function
n259_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx;         jmp   n260_call_prolog_α
                        .size            n259_var_ref_bx, .-n259_var_ref_bx
                        .type            n260_call_prolog_bx, @function
n260_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_call_prolog_α:     mov              r11, 221
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
                        cmp              al, 104;                             je    n276_call_prolog_α
                                                                              jmp   n261_call_prolog_α
n260_call_prolog_β:     mov              r11, 221;                            jmp   n276_call_prolog_α
                        .size            n260_call_prolog_bx, .-n260_call_prolog_bx
                        .type            n261_call_prolog_bx, @function
n261_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_call_prolog_α:     mov              r11, 222
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
.Lcall_prolog_α_639_41: lea              r9, [rbp + 2592]
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
.Lcall_prolog_α_639_54: mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              al, 104;                             je    n276_call_prolog_α
                                                                              jmp   n262_var_ref_α
n261_call_prolog_β:     mov              r11, 222;                            jmp   n276_call_prolog_α
                        .size            n261_call_prolog_bx, .-n261_call_prolog_bx
                        .type            n262_var_ref_bx, @function
n262_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_var_ref_α:         mov              r11, 223
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx;         jmp   n263_var_ref_α
                        .size            n262_var_ref_bx, .-n262_var_ref_bx
                        .type            n263_var_ref_bx, @function
n263_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:         mov              r11, 224
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n264_call_prolog_α
                        .size            n263_var_ref_bx, .-n263_var_ref_bx
                        .type            n264_call_prolog_bx, @function
n264_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_call_prolog_α:     mov              r11, 225
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
.Lcall_prolog_α_644_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_644_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_644_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_644_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_644_40
.Lcall_prolog_α_644_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_644_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_644_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_644_40
.Lcall_prolog_α_644_56: cmp              al, 72;                              jne   .Lcall_prolog_α_644_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_644_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_644_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_644_40
.Lcall_prolog_α_644_41: lea              r9, [rbp + 2512]
.Lcall_prolog_α_644_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_644_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_644_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_644_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_644_42
.Lcall_prolog_α_644_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_644_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_644_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_644_42
.Lcall_prolog_α_644_58: cmp              al, 72;                              jne   .Lcall_prolog_α_644_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_644_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_644_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_644_42
.Lcall_prolog_α_644_43: cmp              r8, r9;                              je    .Lcall_prolog_α_644_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_644_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_644_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_644_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_644_44
                                                                              jmp   .Lcall_prolog_α_644_45
.Lcall_prolog_α_644_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_644_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_644_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_644_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_644_53
                                                                              jmp   .Lcall_prolog_α_644_46
.Lcall_prolog_α_644_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_644_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_644_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_644_51
.Lcall_prolog_α_644_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_644_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_644_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_644_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_644_47
                                                                              jmp   .Lcall_prolog_α_644_48
.Lcall_prolog_α_644_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_644_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_644_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_644_51
.Lcall_prolog_α_644_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_644_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_644_53
                                                                              jmp   .Lcall_prolog_α_644_52
.Lcall_prolog_α_644_49: cmp              dl, 80;                              je    .Lcall_prolog_α_644_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_644_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_644_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_644_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_644_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_644_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_644_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_644_51
                                                                              jmp   .Lcall_prolog_α_644_52
.Lcall_prolog_α_644_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_644_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_644_53
.Lcall_prolog_α_644_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_644_54
.Lcall_prolog_α_644_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_644_54
.Lcall_prolog_α_644_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_644_54: mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    n276_call_prolog_α
                                                                              jmp   n265_var_ref_α
n264_call_prolog_β:     mov              r11, 225;                            jmp   n276_call_prolog_α
                        .size            n264_call_prolog_bx, .-n264_call_prolog_bx
                        .type            n265_var_ref_bx, @function
n265_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx;         jmp   n266_lit_string_α
                        .size            n265_var_ref_bx, .-n265_var_ref_bx
                        .type            n266_lit_string_bx, @function
n266_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:      mov              r11, 227
                        mov              qword ptr [rbp + 2464], 2            # result
                        mov              dword ptr [rbp + 2468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_647_0]
                        mov              qword ptr [rbp + 2472], rax;         jmp   n267_var_ref_α
.Llit_string_α_647_0:   .quad            .Llit_string_α_647_0_s
.Llit_string_α_647_0_s: .string          "-"
                        .size            n266_lit_string_bx, .-n266_lit_string_bx
                        .type            n267_var_ref_bx, @function
n267_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n268_call_prolog_α
                        .size            n267_var_ref_bx, .-n267_var_ref_bx
                        .type            n268_call_prolog_bx, @function
n268_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_call_prolog_α:     mov              r11, 229
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
                        cmp              al, 104;                             je    n276_call_prolog_α
                                                                              jmp   n269_call_prolog_α
n268_call_prolog_β:     mov              r11, 229;                            jmp   n276_call_prolog_α
                        .size            n268_call_prolog_bx, .-n268_call_prolog_bx
                        .type            n269_call_prolog_bx, @function
n269_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_call_prolog_α:     mov              r11, 230
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
.Lcall_prolog_α_651_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_651_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_651_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_651_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_651_40
.Lcall_prolog_α_651_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_651_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_651_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_651_40
.Lcall_prolog_α_651_56: cmp              al, 72;                              jne   .Lcall_prolog_α_651_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_651_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_651_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_651_40
.Lcall_prolog_α_651_41: lea              r9, [rbp + 2352]
.Lcall_prolog_α_651_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_651_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_651_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_651_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_651_42
.Lcall_prolog_α_651_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_651_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_651_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_651_42
.Lcall_prolog_α_651_58: cmp              al, 72;                              jne   .Lcall_prolog_α_651_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_651_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_651_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_651_42
.Lcall_prolog_α_651_43: cmp              r8, r9;                              je    .Lcall_prolog_α_651_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_651_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_651_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_651_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_651_44
                                                                              jmp   .Lcall_prolog_α_651_45
.Lcall_prolog_α_651_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_651_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_651_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_651_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_651_53
                                                                              jmp   .Lcall_prolog_α_651_46
.Lcall_prolog_α_651_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_651_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_651_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_651_51
.Lcall_prolog_α_651_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_651_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_651_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_651_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_651_47
                                                                              jmp   .Lcall_prolog_α_651_48
.Lcall_prolog_α_651_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_651_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_651_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_651_51
.Lcall_prolog_α_651_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_651_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_651_53
                                                                              jmp   .Lcall_prolog_α_651_52
.Lcall_prolog_α_651_49: cmp              dl, 80;                              je    .Lcall_prolog_α_651_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_651_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_651_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_651_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_651_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_651_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_651_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_651_51
                                                                              jmp   .Lcall_prolog_α_651_52
.Lcall_prolog_α_651_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_651_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_651_53
.Lcall_prolog_α_651_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_651_54
.Lcall_prolog_α_651_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_651_54
.Lcall_prolog_α_651_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_651_54: mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              al, 104;                             je    n276_call_prolog_α
                                                                              jmp   n270_cut_α
n269_call_prolog_β:     mov              r11, 230;                            jmp   n276_call_prolog_α
                        .size            n269_call_prolog_bx, .-n269_call_prolog_bx
                        .type            n270_cut_bx, @function
n270_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_cut_α:             mov              r11, 231;                            jmp   n271_var_ref_α
                        .size            n270_cut_bx, .-n270_cut_bx
                        .type            n271_var_ref_bx, @function
n271_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              r11, 232
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n272_var_ref_α
                        .size            n271_var_ref_bx, .-n271_var_ref_bx
                        .type            n272_var_ref_bx, @function
n272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx;         jmp   n273_var_ref_α
                        .size            n272_var_ref_bx, .-n272_var_ref_bx
                        .type            n273_var_ref_bx, @function
n273_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:         mov              r11, 234
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n274_call_proc_staged_α
                        .size            n273_var_ref_bx, .-n273_var_ref_bx
                        .type            n274_call_proc_staged_bx, @function
n274_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_call_proc_staged_α:
                        mov              r11, 235
                        lea              rsi, [rbp + 2272]
                        lea              rdx, [rbp + 2288]
                        lea              rcx, [rbp + 2304]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_660_2
.Lcall_proc_staged_α_660_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_660_29
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
.Lcall_proc_staged_α_660_29:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              al, 104;                             je    n352_call_prolog_α
                                                                              jmp   n275_move_label_α
n274_call_proc_staged_β:
                        mov              r11, 235;                            jmp   n352_call_prolog_α
.Lcall_proc_staged_β_660_0:
                        .quad            .Lcall_proc_staged_β_660_0_s
.Lcall_proc_staged_β_660_0_s:
                        .string          "d/3"
                        .size            n274_call_proc_staged_bx, .-n274_call_proc_staged_bx
                        .type            n275_move_label_bx, @function
n275_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_move_label_α:      mov              r11, 236
                        lea              rax, [rip + n274_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n275_move_label_bx, .-n275_move_label_bx
                        .type            n276_call_prolog_bx, @function
n276_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_call_prolog_α:     mov              r11, 237
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
                                                                              jmp   n277_var_ref_α
n276_call_prolog_β:     mov              r11, 237;                            jmp   d$2F3_ω
                        .size            n276_call_prolog_bx, .-n276_call_prolog_bx
                        .type            n277_var_ref_bx, @function
n277_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:         mov              r11, 238
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx;         jmp   n278_lit_integer_α
                        .size            n277_var_ref_bx, .-n277_var_ref_bx
                        .type            n278_lit_integer_bx, @function
n278_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:     mov              r11, 239
                        mov              qword ptr [rbp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_666_0]
                        mov              qword ptr [rbp + 2136], rax;         jmp   n279_lit_string_α
.Llit_integer_α_666_0:  .quad            260
                        .size            n278_lit_integer_bx, .-n278_lit_integer_bx
                        .type            n279_lit_string_bx, @function
n279_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:      mov              r11, 240
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_667_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n280_call_prolog_α
.Llit_string_α_667_0:   .quad            .Llit_string_α_667_0_s
.Llit_string_α_667_0_s: .string          "exp"
                        .size            n279_lit_string_bx, .-n279_lit_string_bx
                        .type            n280_call_prolog_bx, @function
n280_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_call_prolog_α:     mov              r11, 241
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
                        cmp              al, 104;                             je    n304_var_ref_α
                                                                              jmp   n281_var_ref_α
n280_call_prolog_β:     mov              r11, 241;                            jmp   n304_var_ref_α
                        .size            n280_call_prolog_bx, .-n280_call_prolog_bx
                        .type            n281_var_ref_bx, @function
n281_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:         mov              r11, 242
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n282_lit_string_α
                        .size            n281_var_ref_bx, .-n281_var_ref_bx
                        .type            n282_lit_string_bx, @function
n282_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:      mov              r11, 243
                        mov              qword ptr [rbp + 2032], 2            # result
                        mov              dword ptr [rbp + 2036], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_671_0]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n283_var_ref_α
.Llit_string_α_671_0:   .quad            .Llit_string_α_671_0_s
.Llit_string_α_671_0_s: .string          "exp"
                        .size            n282_lit_string_bx, .-n282_lit_string_bx
                        .type            n283_var_ref_bx, @function
n283_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_var_ref_α:         mov              r11, 244
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n284_call_prolog_α
                        .size            n283_var_ref_bx, .-n283_var_ref_bx
                        .type            n284_call_prolog_bx, @function
n284_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_call_prolog_α:     mov              r11, 245
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
                        cmp              al, 104;                             je    n303_call_prolog_α
                                                                              jmp   n285_call_prolog_α
n284_call_prolog_β:     mov              r11, 245;                            jmp   n303_call_prolog_α
                        .size            n284_call_prolog_bx, .-n284_call_prolog_bx
                        .type            n285_call_prolog_bx, @function
n285_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_call_prolog_α:     mov              r11, 246
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
.Lcall_prolog_α_675_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_675_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_675_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_675_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_675_40
.Lcall_prolog_α_675_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_675_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_675_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_675_40
.Lcall_prolog_α_675_56: cmp              al, 72;                              jne   .Lcall_prolog_α_675_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_675_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_675_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_675_40
.Lcall_prolog_α_675_41: lea              r9, [rbp + 1920]
.Lcall_prolog_α_675_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_675_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_675_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_675_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_675_42
.Lcall_prolog_α_675_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_675_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_675_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_675_42
.Lcall_prolog_α_675_58: cmp              al, 72;                              jne   .Lcall_prolog_α_675_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_675_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_675_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_675_42
.Lcall_prolog_α_675_43: cmp              r8, r9;                              je    .Lcall_prolog_α_675_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_675_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_675_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_675_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_675_44
                                                                              jmp   .Lcall_prolog_α_675_45
.Lcall_prolog_α_675_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_675_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_675_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_675_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_675_53
                                                                              jmp   .Lcall_prolog_α_675_46
.Lcall_prolog_α_675_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_675_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_675_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_675_51
.Lcall_prolog_α_675_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_675_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_675_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_675_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_675_47
                                                                              jmp   .Lcall_prolog_α_675_48
.Lcall_prolog_α_675_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_675_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_675_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_675_51
.Lcall_prolog_α_675_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_675_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_675_53
                                                                              jmp   .Lcall_prolog_α_675_52
.Lcall_prolog_α_675_49: cmp              dl, 80;                              je    .Lcall_prolog_α_675_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_675_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_675_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_675_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_675_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_675_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_675_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_675_51
                                                                              jmp   .Lcall_prolog_α_675_52
.Lcall_prolog_α_675_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_675_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_675_53
.Lcall_prolog_α_675_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_675_54
.Lcall_prolog_α_675_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_675_54
.Lcall_prolog_α_675_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_675_54: mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    n303_call_prolog_α
                                                                              jmp   n286_var_ref_α
n285_call_prolog_β:     mov              r11, 246;                            jmp   n303_call_prolog_α
                        .size            n285_call_prolog_bx, .-n285_call_prolog_bx
                        .type            n286_var_ref_bx, @function
n286_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:         mov              r11, 247
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n287_var_ref_α
                        .size            n286_var_ref_bx, .-n286_var_ref_bx
                        .type            n287_var_ref_bx, @function
n287_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:         mov              r11, 248
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx;         jmp   n288_call_prolog_α
                        .size            n287_var_ref_bx, .-n287_var_ref_bx
                        .type            n288_call_prolog_bx, @function
n288_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_call_prolog_α:     mov              r11, 249
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
.Lcall_prolog_α_680_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_680_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_680_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_680_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_680_40
.Lcall_prolog_α_680_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_680_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_680_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_680_40
.Lcall_prolog_α_680_56: cmp              al, 72;                              jne   .Lcall_prolog_α_680_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_680_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_680_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_680_40
.Lcall_prolog_α_680_41: lea              r9, [rbp + 1840]
.Lcall_prolog_α_680_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_680_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_680_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_680_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_680_42
.Lcall_prolog_α_680_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_680_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_680_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_680_42
.Lcall_prolog_α_680_58: cmp              al, 72;                              jne   .Lcall_prolog_α_680_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_680_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_680_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_680_42
.Lcall_prolog_α_680_43: cmp              r8, r9;                              je    .Lcall_prolog_α_680_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_680_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_680_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_680_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_680_44
                                                                              jmp   .Lcall_prolog_α_680_45
.Lcall_prolog_α_680_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_680_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_680_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_680_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_680_53
                                                                              jmp   .Lcall_prolog_α_680_46
.Lcall_prolog_α_680_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_680_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_680_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_680_51
.Lcall_prolog_α_680_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_680_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_680_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_680_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_680_47
                                                                              jmp   .Lcall_prolog_α_680_48
.Lcall_prolog_α_680_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_680_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_680_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_680_51
.Lcall_prolog_α_680_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_680_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_680_53
                                                                              jmp   .Lcall_prolog_α_680_52
.Lcall_prolog_α_680_49: cmp              dl, 80;                              je    .Lcall_prolog_α_680_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_680_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_680_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_680_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_680_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_680_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_680_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_680_51
                                                                              jmp   .Lcall_prolog_α_680_52
.Lcall_prolog_α_680_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_680_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_680_53
.Lcall_prolog_α_680_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_680_54
.Lcall_prolog_α_680_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_680_54
.Lcall_prolog_α_680_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_680_54: mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    n303_call_prolog_α
                                                                              jmp   n289_var_ref_α
n288_call_prolog_β:     mov              r11, 249;                            jmp   n303_call_prolog_α
                        .size            n288_call_prolog_bx, .-n288_call_prolog_bx
                        .type            n289_var_ref_bx, @function
n289_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_var_ref_α:         mov              r11, 250
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx;         jmp   n290_lit_string_α
                        .size            n289_var_ref_bx, .-n289_var_ref_bx
                        .type            n290_lit_string_bx, @function
n290_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:      mov              r11, 251
                        mov              qword ptr [rbp + 1792], 2            # result
                        mov              dword ptr [rbp + 1796], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_683_0]
                        mov              qword ptr [rbp + 1800], rax;         jmp   n291_lit_string_α
.Llit_string_α_683_0:   .quad            .Llit_string_α_683_0_s
.Llit_string_α_683_0_s: .string          "*"
                        .size            n290_lit_string_bx, .-n290_lit_string_bx
                        .type            n291_lit_string_bx, @function
n291_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:      mov              r11, 252
                        mov              qword ptr [rbp + 1680], 2            # result
                        mov              dword ptr [rbp + 1684], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_684_0]
                        mov              qword ptr [rbp + 1688], rax;         jmp   n292_var_ref_α
.Llit_string_α_684_0:   .quad            .Llit_string_α_684_0_s
.Llit_string_α_684_0_s: .string          "exp"
                        .size            n291_lit_string_bx, .-n291_lit_string_bx
                        .type            n292_var_ref_bx, @function
n292_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:         mov              r11, 253
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n293_call_prolog_α
                        .size            n292_var_ref_bx, .-n292_var_ref_bx
                        .type            n293_call_prolog_bx, @function
n293_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_call_prolog_α:     mov              r11, 254
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
                                                                              jmp   n294_var_ref_α
n293_call_prolog_β:     mov              r11, 254;                            jmp   d$2F3_ω
                        .size            n293_call_prolog_bx, .-n293_call_prolog_bx
                        .type            n294_var_ref_bx, @function
n294_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n295_call_prolog_α
                        .size            n294_var_ref_bx, .-n294_var_ref_bx
                        .type            n295_call_prolog_bx, @function
n295_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_call_prolog_α:     mov              r11, 256
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
                        cmp              al, 104;                             je    n303_call_prolog_α
                                                                              jmp   n296_call_prolog_α
n295_call_prolog_β:     mov              r11, 256;                            jmp   n303_call_prolog_α
                        .size            n295_call_prolog_bx, .-n295_call_prolog_bx
                        .type            n296_call_prolog_bx, @function
n296_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_call_prolog_α:     mov              r11, 257
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
.Lcall_prolog_α_691_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_691_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_691_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_691_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_691_40
.Lcall_prolog_α_691_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_691_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_691_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_691_40
.Lcall_prolog_α_691_56: cmp              al, 72;                              jne   .Lcall_prolog_α_691_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_691_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_691_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_691_40
.Lcall_prolog_α_691_41: lea              r9, [rbp + 1568]
.Lcall_prolog_α_691_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_691_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_691_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_691_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_691_42
.Lcall_prolog_α_691_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_691_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_691_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_691_42
.Lcall_prolog_α_691_58: cmp              al, 72;                              jne   .Lcall_prolog_α_691_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_691_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_691_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_691_42
.Lcall_prolog_α_691_43: cmp              r8, r9;                              je    .Lcall_prolog_α_691_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_691_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_691_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_691_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_691_44
                                                                              jmp   .Lcall_prolog_α_691_45
.Lcall_prolog_α_691_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_691_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_691_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_691_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_691_53
                                                                              jmp   .Lcall_prolog_α_691_46
.Lcall_prolog_α_691_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_691_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_691_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_691_51
.Lcall_prolog_α_691_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_691_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_691_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_691_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_691_47
                                                                              jmp   .Lcall_prolog_α_691_48
.Lcall_prolog_α_691_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_691_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_691_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_691_51
.Lcall_prolog_α_691_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_691_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_691_53
                                                                              jmp   .Lcall_prolog_α_691_52
.Lcall_prolog_α_691_49: cmp              dl, 80;                              je    .Lcall_prolog_α_691_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_691_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_691_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_691_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_691_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_691_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_691_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_691_51
                                                                              jmp   .Lcall_prolog_α_691_52
.Lcall_prolog_α_691_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_691_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_691_53
.Lcall_prolog_α_691_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_691_54
.Lcall_prolog_α_691_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_691_54
.Lcall_prolog_α_691_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_691_54: mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    n303_call_prolog_α
                                                                              jmp   n297_cut_α
n296_call_prolog_β:     mov              r11, 257;                            jmp   n303_call_prolog_α
                        .size            n296_call_prolog_bx, .-n296_call_prolog_bx
                        .type            n297_cut_bx, @function
n297_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_cut_α:             mov              r11, 258;                            jmp   n298_var_ref_α
                        .size            n297_cut_bx, .-n297_cut_bx
                        .type            n298_var_ref_bx, @function
n298_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:         mov              r11, 259
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n299_var_ref_α
                        .size            n298_var_ref_bx, .-n298_var_ref_bx
                        .type            n299_var_ref_bx, @function
n299_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:         mov              r11, 260
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx;         jmp   n300_var_ref_α
                        .size            n299_var_ref_bx, .-n299_var_ref_bx
                        .type            n300_var_ref_bx, @function
n300_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:         mov              r11, 261
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n301_call_proc_staged_α
                        .size            n300_var_ref_bx, .-n300_var_ref_bx
                        .type            n301_call_proc_staged_bx, @function
n301_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_call_proc_staged_α:
                        mov              r11, 262
                        lea              rsi, [rbp + 1488]
                        lea              rdx, [rbp + 1504]
                        lea              rcx, [rbp + 1520]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_700_2
.Lcall_proc_staged_α_700_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_700_29
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
.Lcall_proc_staged_α_700_29:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              al, 104;                             je    n352_call_prolog_α
                                                                              jmp   n302_move_label_α
n301_call_proc_staged_β:
                        mov              r11, 262;                            jmp   n352_call_prolog_α
.Lcall_proc_staged_β_700_0:
                        .quad            .Lcall_proc_staged_β_700_0_s
.Lcall_proc_staged_β_700_0_s:
                        .string          "d/3"
                        .size            n301_call_proc_staged_bx, .-n301_call_proc_staged_bx
                        .type            n302_move_label_bx, @function
n302_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_move_label_α:      mov              r11, 263
                        lea              rax, [rip + n301_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n302_move_label_bx, .-n302_move_label_bx
                        .type            n303_call_prolog_bx, @function
n303_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_call_prolog_α:     mov              r11, 264
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
                                                                              jmp   n304_var_ref_α
n303_call_prolog_β:     mov              r11, 264;                            jmp   d$2F3_ω
                        .size            n303_call_prolog_bx, .-n303_call_prolog_bx
                        .type            n304_var_ref_bx, @function
n304_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:         mov              r11, 265
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n305_lit_integer_α
                        .size            n304_var_ref_bx, .-n304_var_ref_bx
                        .type            n305_lit_integer_bx, @function
n305_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_integer_α:     mov              r11, 266
                        mov              qword ptr [rbp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_706_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n306_lit_string_α
.Llit_integer_α_706_0:  .quad            260
                        .size            n305_lit_integer_bx, .-n305_lit_integer_bx
                        .type            n306_lit_string_bx, @function
n306_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:      mov              r11, 267
                        mov              qword ptr [rbp + 1360], 2            # result
                        mov              dword ptr [rbp + 1364], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_707_0]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n307_call_prolog_α
.Llit_string_α_707_0:   .quad            .Llit_string_α_707_0_s
.Llit_string_α_707_0_s: .string          "log"
                        .size            n306_lit_string_bx, .-n306_lit_string_bx
                        .type            n307_call_prolog_bx, @function
n307_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_call_prolog_α:     mov              r11, 268
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
                        cmp              al, 104;                             je    n329_var_ref_α
                                                                              jmp   n308_var_ref_α
n307_call_prolog_β:     mov              r11, 268;                            jmp   n329_var_ref_α
                        .size            n307_call_prolog_bx, .-n307_call_prolog_bx
                        .type            n308_var_ref_bx, @function
n308_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:         mov              r11, 269
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n309_lit_string_α
                        .size            n308_var_ref_bx, .-n308_var_ref_bx
                        .type            n309_lit_string_bx, @function
n309_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_string_α:      mov              r11, 270
                        mov              qword ptr [rbp + 1248], 2            # result
                        mov              dword ptr [rbp + 1252], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_711_0]
                        mov              qword ptr [rbp + 1256], rax;         jmp   n310_var_ref_α
.Llit_string_α_711_0:   .quad            .Llit_string_α_711_0_s
.Llit_string_α_711_0_s: .string          "log"
                        .size            n309_lit_string_bx, .-n309_lit_string_bx
                        .type            n310_var_ref_bx, @function
n310_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              r11, 271
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n311_call_prolog_α
                        .size            n310_var_ref_bx, .-n310_var_ref_bx
                        .type            n311_call_prolog_bx, @function
n311_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_call_prolog_α:     mov              r11, 272
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
                        cmp              al, 104;                             je    n328_call_prolog_α
                                                                              jmp   n312_call_prolog_α
n311_call_prolog_β:     mov              r11, 272;                            jmp   n328_call_prolog_α
                        .size            n311_call_prolog_bx, .-n311_call_prolog_bx
                        .type            n312_call_prolog_bx, @function
n312_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_call_prolog_α:     mov              r11, 273
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
.Lcall_prolog_α_715_41: lea              r9, [rbp + 1136]
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
.Lcall_prolog_α_715_54: mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    n328_call_prolog_α
                                                                              jmp   n313_var_ref_α
n312_call_prolog_β:     mov              r11, 273;                            jmp   n328_call_prolog_α
                        .size            n312_call_prolog_bx, .-n312_call_prolog_bx
                        .type            n313_var_ref_bx, @function
n313_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:         mov              r11, 274
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n314_var_ref_α
                        .size            n313_var_ref_bx, .-n313_var_ref_bx
                        .type            n314_var_ref_bx, @function
n314_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:         mov              r11, 275
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n315_call_prolog_α
                        .size            n314_var_ref_bx, .-n314_var_ref_bx
                        .type            n315_call_prolog_bx, @function
n315_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_call_prolog_α:     mov              r11, 276
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
.Lcall_prolog_α_720_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_720_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_720_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_720_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_720_40
.Lcall_prolog_α_720_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_720_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_720_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_720_40
.Lcall_prolog_α_720_56: cmp              al, 72;                              jne   .Lcall_prolog_α_720_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_720_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_720_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_720_40
.Lcall_prolog_α_720_41: lea              r9, [rbp + 1056]
.Lcall_prolog_α_720_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_720_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_720_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_720_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_720_42
.Lcall_prolog_α_720_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_720_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_720_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_720_42
.Lcall_prolog_α_720_58: cmp              al, 72;                              jne   .Lcall_prolog_α_720_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_720_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_720_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_720_42
.Lcall_prolog_α_720_43: cmp              r8, r9;                              je    .Lcall_prolog_α_720_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_720_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_720_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_720_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_720_44
                                                                              jmp   .Lcall_prolog_α_720_45
.Lcall_prolog_α_720_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_720_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_720_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_720_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_720_53
                                                                              jmp   .Lcall_prolog_α_720_46
.Lcall_prolog_α_720_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_720_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_720_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_720_51
.Lcall_prolog_α_720_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_720_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_720_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_720_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_720_47
                                                                              jmp   .Lcall_prolog_α_720_48
.Lcall_prolog_α_720_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_720_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_720_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_720_51
.Lcall_prolog_α_720_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_720_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_720_53
                                                                              jmp   .Lcall_prolog_α_720_52
.Lcall_prolog_α_720_49: cmp              dl, 80;                              je    .Lcall_prolog_α_720_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_720_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_720_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_720_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_720_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_720_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_720_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_720_51
                                                                              jmp   .Lcall_prolog_α_720_52
.Lcall_prolog_α_720_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_720_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_720_53
.Lcall_prolog_α_720_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_720_54
.Lcall_prolog_α_720_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_720_54
.Lcall_prolog_α_720_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_720_54: mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    n328_call_prolog_α
                                                                              jmp   n316_var_ref_α
n315_call_prolog_β:     mov              r11, 276;                            jmp   n328_call_prolog_α
                        .size            n315_call_prolog_bx, .-n315_call_prolog_bx
                        .type            n316_var_ref_bx, @function
n316_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:         mov              r11, 277
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n317_lit_string_α
                        .size            n316_var_ref_bx, .-n316_var_ref_bx
                        .type            n317_lit_string_bx, @function
n317_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:      mov              r11, 278
                        mov              qword ptr [rbp + 1008], 2            # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_723_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n318_var_ref_α
.Llit_string_α_723_0:   .quad            .Llit_string_α_723_0_s
.Llit_string_α_723_0_s: .string          "/"
                        .size            n317_lit_string_bx, .-n317_lit_string_bx
                        .type            n318_var_ref_bx, @function
n318_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:         mov              r11, 279
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n319_var_ref_α
                        .size            n318_var_ref_bx, .-n318_var_ref_bx
                        .type            n319_var_ref_bx, @function
n319_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:         mov              r11, 280
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n320_call_prolog_α
                        .size            n319_var_ref_bx, .-n319_var_ref_bx
                        .type            n320_call_prolog_bx, @function
n320_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_call_prolog_α:     mov              r11, 281
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
                        cmp              al, 104;                             je    n328_call_prolog_α
                                                                              jmp   n321_call_prolog_α
n320_call_prolog_β:     mov              r11, 281;                            jmp   n328_call_prolog_α
                        .size            n320_call_prolog_bx, .-n320_call_prolog_bx
                        .type            n321_call_prolog_bx, @function
n321_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_call_prolog_α:     mov              r11, 282
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
.Lcall_prolog_α_729_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_729_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_729_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_729_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_729_40
.Lcall_prolog_α_729_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_729_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_729_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_729_40
.Lcall_prolog_α_729_56: cmp              al, 72;                              jne   .Lcall_prolog_α_729_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_729_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_729_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_729_40
.Lcall_prolog_α_729_41: lea              r9, [rbp + 864]
.Lcall_prolog_α_729_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_729_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_729_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_729_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_729_42
.Lcall_prolog_α_729_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_729_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_729_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_729_42
.Lcall_prolog_α_729_58: cmp              al, 72;                              jne   .Lcall_prolog_α_729_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_729_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_729_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_729_42
.Lcall_prolog_α_729_43: cmp              r8, r9;                              je    .Lcall_prolog_α_729_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_729_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_729_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_729_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_729_44
                                                                              jmp   .Lcall_prolog_α_729_45
.Lcall_prolog_α_729_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_729_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_729_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_729_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_729_53
                                                                              jmp   .Lcall_prolog_α_729_46
.Lcall_prolog_α_729_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_729_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_729_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_729_51
.Lcall_prolog_α_729_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_729_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_729_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_729_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_729_47
                                                                              jmp   .Lcall_prolog_α_729_48
.Lcall_prolog_α_729_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_729_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_729_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_729_51
.Lcall_prolog_α_729_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_729_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_729_53
                                                                              jmp   .Lcall_prolog_α_729_52
.Lcall_prolog_α_729_49: cmp              dl, 80;                              je    .Lcall_prolog_α_729_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_729_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_729_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_729_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_729_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_729_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_729_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_729_51
                                                                              jmp   .Lcall_prolog_α_729_52
.Lcall_prolog_α_729_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_729_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_729_53
.Lcall_prolog_α_729_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_729_54
.Lcall_prolog_α_729_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_729_54
.Lcall_prolog_α_729_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_729_54: mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    n328_call_prolog_α
                                                                              jmp   n322_cut_α
n321_call_prolog_β:     mov              r11, 282;                            jmp   n328_call_prolog_α
                        .size            n321_call_prolog_bx, .-n321_call_prolog_bx
                        .type            n322_cut_bx, @function
n322_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_cut_α:             mov              r11, 283;                            jmp   n323_var_ref_α
                        .size            n322_cut_bx, .-n322_cut_bx
                        .type            n323_var_ref_bx, @function
n323_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:         mov              r11, 284
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n324_var_ref_α
                        .size            n323_var_ref_bx, .-n323_var_ref_bx
                        .type            n324_var_ref_bx, @function
n324_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:         mov              r11, 285
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n325_var_ref_α
                        .size            n324_var_ref_bx, .-n324_var_ref_bx
                        .type            n325_var_ref_bx, @function
n325_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:         mov              r11, 286
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n326_call_proc_staged_α
                        .size            n325_var_ref_bx, .-n325_var_ref_bx
                        .type            n326_call_proc_staged_bx, @function
n326_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_call_proc_staged_α:
                        mov              r11, 287
                        lea              rsi, [rbp + 784]
                        lea              rdx, [rbp + 800]
                        lea              rcx, [rbp + 816]
                        call             d$2F3_dcα;                           jmp   .Lcall_proc_staged_α_738_2
.Lcall_proc_staged_α_738_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_738_29
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
.Lcall_proc_staged_α_738_29:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    n352_call_prolog_α
                                                                              jmp   n327_move_label_α
n326_call_proc_staged_β:
                        mov              r11, 287;                            jmp   n352_call_prolog_α
.Lcall_proc_staged_β_738_0:
                        .quad            .Lcall_proc_staged_β_738_0_s
.Lcall_proc_staged_β_738_0_s:
                        .string          "d/3"
                        .size            n326_call_proc_staged_bx, .-n326_call_proc_staged_bx
                        .type            n327_move_label_bx, @function
n327_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_move_label_α:      mov              r11, 288
                        lea              rax, [rip + n326_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n327_move_label_bx, .-n327_move_label_bx
                        .type            n328_call_prolog_bx, @function
n328_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_call_prolog_α:     mov              r11, 289
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
                                                                              jmp   n329_var_ref_α
n328_call_prolog_β:     mov              r11, 289;                            jmp   d$2F3_ω
                        .size            n328_call_prolog_bx, .-n328_call_prolog_bx
                        .type            n329_var_ref_bx, @function
n329_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:         mov              r11, 290
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n330_var_ref_α
                        .size            n329_var_ref_bx, .-n329_var_ref_bx
                        .type            n330_var_ref_bx, @function
n330_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:         mov              r11, 291
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8160]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n331_call_prolog_α
                        .size            n330_var_ref_bx, .-n330_var_ref_bx
                        .type            n331_call_prolog_bx, @function
n331_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_call_prolog_α:     mov              r11, 292
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
.Lcall_prolog_α_746_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_746_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_746_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_746_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_746_40
.Lcall_prolog_α_746_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_746_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_746_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_746_40
.Lcall_prolog_α_746_56: cmp              al, 72;                              jne   .Lcall_prolog_α_746_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_746_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_746_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_746_40
.Lcall_prolog_α_746_41: lea              r9, [rbp + 624]
.Lcall_prolog_α_746_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_746_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_746_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_746_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_746_42
.Lcall_prolog_α_746_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_746_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_746_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_746_42
.Lcall_prolog_α_746_58: cmp              al, 72;                              jne   .Lcall_prolog_α_746_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_746_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_746_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_746_42
.Lcall_prolog_α_746_43: cmp              r8, r9;                              je    .Lcall_prolog_α_746_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_746_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_746_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_746_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_746_44
                                                                              jmp   .Lcall_prolog_α_746_45
.Lcall_prolog_α_746_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_746_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_746_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_746_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_746_53
                                                                              jmp   .Lcall_prolog_α_746_46
.Lcall_prolog_α_746_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_746_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_746_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_746_51
.Lcall_prolog_α_746_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_746_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_746_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_746_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_746_47
                                                                              jmp   .Lcall_prolog_α_746_48
.Lcall_prolog_α_746_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_746_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_746_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_746_51
.Lcall_prolog_α_746_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_746_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_746_53
                                                                              jmp   .Lcall_prolog_α_746_52
.Lcall_prolog_α_746_49: cmp              dl, 80;                              je    .Lcall_prolog_α_746_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_746_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_746_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_746_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_746_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_746_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_746_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_746_51
                                                                              jmp   .Lcall_prolog_α_746_52
.Lcall_prolog_α_746_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_746_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_746_53
.Lcall_prolog_α_746_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_746_54
.Lcall_prolog_α_746_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_746_54
.Lcall_prolog_α_746_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_746_54: mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n340_call_prolog_α
                                                                              jmp   n332_var_ref_α
n331_call_prolog_β:     mov              r11, 292;                            jmp   n340_call_prolog_α
                        .size            n331_call_prolog_bx, .-n331_call_prolog_bx
                        .type            n332_var_ref_bx, @function
n332_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:         mov              r11, 293
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n333_var_ref_α
                        .size            n332_var_ref_bx, .-n332_var_ref_bx
                        .type            n333_var_ref_bx, @function
n333_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:         mov              r11, 294
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8160]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n334_call_prolog_α
                        .size            n333_var_ref_bx, .-n333_var_ref_bx
                        .type            n334_call_prolog_bx, @function
n334_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_call_prolog_α:     mov              r11, 295
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
.Lcall_prolog_α_751_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_751_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_751_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_751_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_751_40
.Lcall_prolog_α_751_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_751_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_751_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_751_40
.Lcall_prolog_α_751_56: cmp              al, 72;                              jne   .Lcall_prolog_α_751_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_751_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_751_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_751_40
.Lcall_prolog_α_751_41: lea              r9, [rbp + 544]
.Lcall_prolog_α_751_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_751_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_751_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_751_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_751_42
.Lcall_prolog_α_751_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_751_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_751_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_751_42
.Lcall_prolog_α_751_58: cmp              al, 72;                              jne   .Lcall_prolog_α_751_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_751_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_751_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_751_42
.Lcall_prolog_α_751_43: cmp              r8, r9;                              je    .Lcall_prolog_α_751_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_751_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_751_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_751_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_751_44
                                                                              jmp   .Lcall_prolog_α_751_45
.Lcall_prolog_α_751_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_751_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_751_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_751_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_751_53
                                                                              jmp   .Lcall_prolog_α_751_46
.Lcall_prolog_α_751_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_751_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_751_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_751_51
.Lcall_prolog_α_751_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_751_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_751_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_751_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_751_47
                                                                              jmp   .Lcall_prolog_α_751_48
.Lcall_prolog_α_751_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_751_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_751_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_751_51
.Lcall_prolog_α_751_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_751_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_751_53
                                                                              jmp   .Lcall_prolog_α_751_52
.Lcall_prolog_α_751_49: cmp              dl, 80;                              je    .Lcall_prolog_α_751_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_751_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_751_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_751_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_751_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_751_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_751_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_751_51
                                                                              jmp   .Lcall_prolog_α_751_52
.Lcall_prolog_α_751_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_751_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_751_53
.Lcall_prolog_α_751_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_751_54
.Lcall_prolog_α_751_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_751_54
.Lcall_prolog_α_751_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_751_54: mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n340_call_prolog_α
                                                                              jmp   n335_var_ref_α
n334_call_prolog_β:     mov              r11, 295;                            jmp   n340_call_prolog_α
                        .size            n334_call_prolog_bx, .-n334_call_prolog_bx
                        .type            n335_var_ref_bx, @function
n335_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:         mov              r11, 296
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n336_lit_integer_α
                        .size            n335_var_ref_bx, .-n335_var_ref_bx
                        .type            n336_lit_integer_bx, @function
n336_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:     mov              r11, 297
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_754_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n337_call_prolog_α
.Llit_integer_α_754_0:  .quad            1
                        .size            n336_lit_integer_bx, .-n336_lit_integer_bx
                        .type            n337_call_prolog_bx, @function
n337_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_call_prolog_α:     mov              r11, 298
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
                        cmp              al, 104;                             je    n340_call_prolog_α
                                                                              jmp   n338_cut_α
n337_call_prolog_β:     mov              r11, 298;                            jmp   n340_call_prolog_α
                        .size            n337_call_prolog_bx, .-n337_call_prolog_bx
                        .type            n338_cut_bx, @function
n338_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_cut_α:             mov              r11, 299;                            jmp   n339_move_label_α
                        .size            n338_cut_bx, .-n338_cut_bx
                        .type            n339_move_label_bx, @function
n339_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_move_label_α:      mov              r11, 300
                        lea              rax, [rip + n340_call_prolog_α]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n339_move_label_bx, .-n339_move_label_bx
                        .type            n340_call_prolog_bx, @function
n340_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_call_prolog_α:     mov              r11, 301
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
                                                                              jmp   n341_var_ref_α
n340_call_prolog_β:     mov              r11, 301;                            jmp   d$2F3_ω
                        .size            n340_call_prolog_bx, .-n340_call_prolog_bx
                        .type            n341_var_ref_bx, @function
n341_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:         mov              r11, 302
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n342_var_ref_α
                        .size            n341_var_ref_bx, .-n341_var_ref_bx
                        .type            n342_var_ref_bx, @function
n342_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:         mov              r11, 303
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n343_call_prolog_α
                        .size            n342_var_ref_bx, .-n342_var_ref_bx
                        .type            n343_call_prolog_bx, @function
n343_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_call_prolog_α:     mov              r11, 304
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
.Lcall_prolog_α_764_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_764_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_764_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_764_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_764_40
.Lcall_prolog_α_764_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_764_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_764_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_764_40
.Lcall_prolog_α_764_56: cmp              al, 72;                              jne   .Lcall_prolog_α_764_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_764_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_764_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_764_40
.Lcall_prolog_α_764_41: lea              r9, [rbp + 352]
.Lcall_prolog_α_764_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_764_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_764_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_764_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_764_42
.Lcall_prolog_α_764_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_764_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_764_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_764_42
.Lcall_prolog_α_764_58: cmp              al, 72;                              jne   .Lcall_prolog_α_764_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_764_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_764_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_764_42
.Lcall_prolog_α_764_43: cmp              r8, r9;                              je    .Lcall_prolog_α_764_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_764_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_764_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_764_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_764_44
                                                                              jmp   .Lcall_prolog_α_764_45
.Lcall_prolog_α_764_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_764_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_764_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_764_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_764_53
                                                                              jmp   .Lcall_prolog_α_764_46
.Lcall_prolog_α_764_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_764_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_764_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_764_51
.Lcall_prolog_α_764_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_764_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_764_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_764_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_764_47
                                                                              jmp   .Lcall_prolog_α_764_48
.Lcall_prolog_α_764_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_764_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_764_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_764_51
.Lcall_prolog_α_764_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_764_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_764_53
                                                                              jmp   .Lcall_prolog_α_764_52
.Lcall_prolog_α_764_49: cmp              dl, 80;                              je    .Lcall_prolog_α_764_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_764_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_764_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_764_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_764_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_764_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_764_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_764_51
                                                                              jmp   .Lcall_prolog_α_764_52
.Lcall_prolog_α_764_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_764_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_764_53
.Lcall_prolog_α_764_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_764_54
.Lcall_prolog_α_764_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_764_54
.Lcall_prolog_α_764_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_764_54: mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n352_call_prolog_α
                                                                              jmp   n344_var_ref_α
n343_call_prolog_β:     mov              r11, 304;                            jmp   n352_call_prolog_α
                        .size            n343_call_prolog_bx, .-n343_call_prolog_bx
                        .type            n344_var_ref_bx, @function
n344_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:         mov              r11, 305
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n345_var_ref_α
                        .size            n344_var_ref_bx, .-n344_var_ref_bx
                        .type            n345_var_ref_bx, @function
n345_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:         mov              r11, 306
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n346_call_prolog_α
                        .size            n345_var_ref_bx, .-n345_var_ref_bx
                        .type            n346_call_prolog_bx, @function
n346_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_call_prolog_α:     mov              r11, 307
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
.Lcall_prolog_α_769_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_769_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_769_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_769_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_769_40
.Lcall_prolog_α_769_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_769_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_769_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_769_40
.Lcall_prolog_α_769_56: cmp              al, 72;                              jne   .Lcall_prolog_α_769_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_769_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_769_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_769_40
.Lcall_prolog_α_769_41: lea              r9, [rbp + 272]
.Lcall_prolog_α_769_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_769_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_769_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_769_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_769_42
.Lcall_prolog_α_769_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_769_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_769_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_769_42
.Lcall_prolog_α_769_58: cmp              al, 72;                              jne   .Lcall_prolog_α_769_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_769_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_769_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_769_42
.Lcall_prolog_α_769_43: cmp              r8, r9;                              je    .Lcall_prolog_α_769_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_769_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_769_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_769_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_769_44
                                                                              jmp   .Lcall_prolog_α_769_45
.Lcall_prolog_α_769_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_769_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_769_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_769_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_769_53
                                                                              jmp   .Lcall_prolog_α_769_46
.Lcall_prolog_α_769_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_769_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_769_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_769_51
.Lcall_prolog_α_769_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_769_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_769_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_769_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_769_47
                                                                              jmp   .Lcall_prolog_α_769_48
.Lcall_prolog_α_769_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_769_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_769_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_769_51
.Lcall_prolog_α_769_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_769_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_769_53
                                                                              jmp   .Lcall_prolog_α_769_52
.Lcall_prolog_α_769_49: cmp              dl, 80;                              je    .Lcall_prolog_α_769_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_769_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_769_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_769_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_769_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_769_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_769_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_769_51
                                                                              jmp   .Lcall_prolog_α_769_52
.Lcall_prolog_α_769_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_769_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_769_53
.Lcall_prolog_α_769_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_769_54
.Lcall_prolog_α_769_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_769_54
.Lcall_prolog_α_769_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_769_54: mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n352_call_prolog_α
                                                                              jmp   n347_var_ref_α
n346_call_prolog_β:     mov              r11, 307;                            jmp   n352_call_prolog_α
                        .size            n346_call_prolog_bx, .-n346_call_prolog_bx
                        .type            n347_var_ref_bx, @function
n347_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:         mov              r11, 308
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n348_lit_integer_α
                        .size            n347_var_ref_bx, .-n347_var_ref_bx
                        .type            n348_lit_integer_bx, @function
n348_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_integer_α:     mov              r11, 309
                        mov              qword ptr [rbp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_772_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n349_call_prolog_α
.Llit_integer_α_772_0:  .quad            0
                        .size            n348_lit_integer_bx, .-n348_lit_integer_bx
                        .type            n349_call_prolog_bx, @function
n349_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_call_prolog_α:     mov              r11, 310
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
                        cmp              al, 104;                             je    n352_call_prolog_α
                                                                              jmp   n350_move_label_α
n349_call_prolog_β:     mov              r11, 310;                            jmp   n352_call_prolog_α
                        .size            n349_call_prolog_bx, .-n349_call_prolog_bx
                        .type            n350_move_label_bx, @function
n350_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_move_label_α:      mov              r11, 311
                        lea              rax, [rip + n352_call_prolog_α]
                        mov              qword ptr [rbp + 80], rax;           jmp   d$2F3_γ
                        .size            n350_move_label_bx, .-n350_move_label_bx
                        .type            n351_disjunction_bx, @function
n351_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_disjunction_α:     mov              r11, 312
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
n351_disjunction_β:     mov              r11, 312;                            jmp   d$2F3_ω
                        .size            n351_disjunction_bx, .-n351_disjunction_bx
                        .type            n352_call_prolog_bx, @function
n352_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_call_prolog_α:     mov              r11, 313
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
n352_call_prolog_β:     mov              r11, 313;                            jmp   d$2F3_ω
                        .size            n352_call_prolog_bx, .-n352_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_β:
                                                                              jmp   n351_disjunction_α
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
                        lea              rcx, [rip + .Ld$2F3_α_779_2]
                        lea              rdx, [rip + .Ld$2F3_α_779_3];        jmp   FN__d$2F3
.Ld$2F3_α_779_2:        pop              r12
                        pop              r12;                                 jmp   r12
.Ld$2F3_α_779_3:        pop              r12
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
                        lea              rax, [rip + n782_suspend_β]
                        mov              qword ptr [rbp + 112], rax
                        .type            n780_call_prolog_bx, @function
n780_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n780_call_prolog_α:     mov              r11, 314
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_784_102
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24];           jmp   .Lcall_prolog_α_784_101
.Lcall_prolog_α_784_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_784_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_784_101
.Lcall_prolog_α_784_100:
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
.Lcall_prolog_α_784_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              al, 104;                             je    top$2F0_ω
                                                                              jmp   n781_call_proc_staged_α
n780_call_prolog_β:     mov              r11, 314;                            jmp   top$2F0_ω
                        .size            n780_call_prolog_bx, .-n780_call_prolog_bx
                        .type            n781_call_proc_staged_bx, @function
n781_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n781_call_proc_staged_α:
                        mov              r11, 315
                        call             divide10$2F0_dcα;                    jmp   .Lcall_proc_staged_α_786_2
.Lcall_proc_staged_α_786_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_786_29
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
.Lcall_proc_staged_α_786_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n783_call_prolog_α
                                                                              jmp   n782_suspend_α
n781_call_proc_staged_β:
                        mov              r11, 315;                            jmp   n783_call_prolog_α
.Lcall_proc_staged_β_786_0:
                        .quad            .Lcall_proc_staged_β_786_0_s
.Lcall_proc_staged_β_786_0_s:
                        .string          "divide10/0"
                        .size            n781_call_proc_staged_bx, .-n781_call_proc_staged_bx
                        .type            n782_suspend_bx, @function
n782_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n782_suspend_α:         mov              r11, 316
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_788_61
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
.Lsuspend_α_788_61:     mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        lea              rdx, [rip + n782_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n782_suspend_β]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax;            jmp   top$2F0_γ
n782_suspend_β:         mov              r11, 316;                            jmp   n781_call_proc_staged_β
                        .size            n782_suspend_bx, .-n782_suspend_bx
                        .type            n783_call_prolog_bx, @function
n783_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n783_call_prolog_α:     mov              r11, 317
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
n783_call_prolog_β:     mov              r11, 317;                            jmp   top$2F0_ω
                        .size            n783_call_prolog_bx, .-n783_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_β:
                                                                              jmp   n782_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Ltop$2F0_α_789_50
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
.Ltop$2F0_α_789_50:     mov              rdi, rax
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
                        .type            n790_var_ref_bx, @function
n790_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n790_var_ref_α:         mov              r11, 318
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n791_call_prolog_α
                        .size            n790_var_ref_bx, .-n790_var_ref_bx
                        .type            n791_call_prolog_bx, @function
n791_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n791_call_prolog_α:     mov              r11, 319
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn836: .string          "$wall_us"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn836]
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
                        cmp              al, 104;                             je    n830_lit_string_α
                                                                              jmp   n792_var_ref_α
n791_call_prolog_β:     mov              r11, 319;                            jmp   n830_lit_string_α
                        .size            n791_call_prolog_bx, .-n791_call_prolog_bx
                        .type            n792_var_ref_bx, @function
n792_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n792_var_ref_α:         mov              r11, 320
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n793_call_prolog_α
                        .size            n792_var_ref_bx, .-n792_var_ref_bx
                        .type            n793_call_prolog_bx, @function
n793_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n793_call_prolog_α:     mov              r11, 321
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn840: .string          "$wall_ms"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn840]
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
                        cmp              al, 104;                             je    n830_lit_string_α
                                                                              jmp   n794_call_proc_staged_α
n793_call_prolog_β:     mov              r11, 321;                            jmp   n830_lit_string_α
                        .size            n793_call_prolog_bx, .-n793_call_prolog_bx
                        .type            n794_call_proc_staged_bx, @function
n794_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n794_call_proc_staged_α:
                        mov              r11, 322
                        mov              qword ptr [rbp + 1120], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_842_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_842_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_842_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_842_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_842_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_842_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 1128], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 1120]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_842_5
                        mov              qword ptr [rbp + 1120], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_842_2
.Lcall_proc_staged_α_842_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_842_2
.Lcall_proc_staged_α_842_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 1120]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_842_6
                        mov              qword ptr [rbp + 1120], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_842_2
.Lcall_proc_staged_α_842_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_842_2
.Lcall_proc_staged_α_842_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_842_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n798_call_prolog_α
.Lcall_proc_staged_α_842_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_842_29
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
.Lcall_proc_staged_α_842_29:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    n798_call_prolog_α
                                                                              jmp   n795_var_ref_α
n794_call_proc_staged_β:
                        mov              r11, 322
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
                        test             rax, rax;                            je    n798_call_prolog_α
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
                        test             rax, rax;                            je    n798_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_842_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_842_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_842_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_842_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_842_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    n798_call_prolog_α
                                                                              jmp   n795_var_ref_α
.Lcall_proc_staged_α_842_0:
                        .quad            .Lcall_proc_staged_α_842_0_s
.Lcall_proc_staged_α_842_0_s:
                        .string          "top/0"
                        .size            n794_call_proc_staged_bx, .-n794_call_proc_staged_bx
                        .type            n795_var_ref_bx, @function
n795_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n795_var_ref_α:         mov              r11, 323
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n796_lit_string_α
                        .size            n795_var_ref_bx, .-n795_var_ref_bx
                        .type            n796_lit_string_bx, @function
n796_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n796_lit_string_α:      mov              r11, 324
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_845_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n797_call_prolog_α
.Llit_string_α_845_0:   .quad            .Llit_string_α_845_0_s
.Llit_string_α_845_0_s: .string          "ok"
                        .size            n796_lit_string_bx, .-n796_lit_string_bx
                        .type            n797_call_prolog_bx, @function
n797_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n797_call_prolog_α:     mov              r11, 325
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_846_2]
                                                                              jmp   .Lcall_prolog_α_846_3
.Lcall_prolog_α_846_2:  .quad            .Lcall_prolog_α_846_2_s
.Lcall_prolog_α_846_2_s:
                        .string          "ok"
.Lcall_prolog_α_846_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    n830_lit_string_α
                                                                              jmp   n802_var_ref_α
n797_call_prolog_β:     mov              r11, 325;                            jmp   n830_lit_string_α
                        .size            n797_call_prolog_bx, .-n797_call_prolog_bx
                        .type            n798_call_prolog_bx, @function
n798_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n798_call_prolog_α:     mov              r11, 326
                        .section         .rodata
.Lcall_prolog_α_rkfn848: .string          "$no_throw_or_fail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn848]
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
                        cmp              al, 104;                             je    n830_lit_string_α
                                                                              jmp   n799_var_ref_α
n798_call_prolog_β:     mov              r11, 326;                            jmp   n830_lit_string_α
                        .size            n798_call_prolog_bx, .-n798_call_prolog_bx
                        .type            n799_var_ref_bx, @function
n799_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n799_var_ref_α:         mov              r11, 327
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n800_lit_string_α
                        .size            n799_var_ref_bx, .-n799_var_ref_bx
                        .type            n800_lit_string_bx, @function
n800_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n800_lit_string_α:      mov              r11, 328
                        mov              qword ptr [rbp + 1072], 2            # result
                        mov              dword ptr [rbp + 1076], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_851_0]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n801_call_prolog_α
.Llit_string_α_851_0:   .quad            .Llit_string_α_851_0_s
.Llit_string_α_851_0_s: .string          "failed"
                        .size            n800_lit_string_bx, .-n800_lit_string_bx
                        .type            n801_call_prolog_bx, @function
n801_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n801_call_prolog_α:     mov              r11, 329
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_852_2]
                                                                              jmp   .Lcall_prolog_α_852_3
.Lcall_prolog_α_852_2:  .quad            .Lcall_prolog_α_852_2_s
.Lcall_prolog_α_852_2_s:
                        .string          "failed"
.Lcall_prolog_α_852_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    n830_lit_string_α
                                                                              jmp   n802_var_ref_α
n801_call_prolog_β:     mov              r11, 329;                            jmp   n830_lit_string_α
                        .size            n801_call_prolog_bx, .-n801_call_prolog_bx
                        .type            n802_var_ref_bx, @function
n802_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n802_var_ref_α:         mov              r11, 330
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n803_call_prolog_α
                        .size            n802_var_ref_bx, .-n802_var_ref_bx
                        .type            n803_call_prolog_bx, @function
n803_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n803_call_prolog_α:     mov              r11, 331
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn856: .string          "$wall_us"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn856]
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
                        cmp              al, 104;                             je    n830_lit_string_α
                                                                              jmp   n804_var_ref_α
n803_call_prolog_β:     mov              r11, 331;                            jmp   n830_lit_string_α
                        .size            n803_call_prolog_bx, .-n803_call_prolog_bx
                        .type            n804_var_ref_bx, @function
n804_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n804_var_ref_α:         mov              r11, 332
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n805_call_prolog_α
                        .size            n804_var_ref_bx, .-n804_var_ref_bx
                        .type            n805_call_prolog_bx, @function
n805_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n805_call_prolog_α:     mov              r11, 333
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn860: .string          "$wall_ms"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn860]
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
                        cmp              al, 104;                             je    n830_lit_string_α
                                                                              jmp   n806_var_α
n805_call_prolog_β:     mov              r11, 333;                            jmp   n830_lit_string_α
                        .size            n805_call_prolog_bx, .-n805_call_prolog_bx
                        .type            n806_var_bx, @function
n806_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n806_var_α:             mov              r11, 334
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 824], rax;          jmp   n807_call_prolog_α
                        .size            n806_var_bx, .-n806_var_bx
                        .type            n807_call_prolog_bx, @function
n807_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n807_call_prolog_α:     mov              r11, 335
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn864: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn864]
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
                        cmp              al, 104;                             je    n830_lit_string_α
                                                                              jmp   n808_lit_string_α
n807_call_prolog_β:     mov              r11, 335;                            jmp   n830_lit_string_α
                        .size            n807_call_prolog_bx, .-n807_call_prolog_bx
                        .type            n808_lit_string_bx, @function
n808_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n808_lit_string_α:      mov              r11, 336
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_865_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n809_call_prolog_α
.Llit_string_α_865_0:   .quad            .Llit_string_α_865_0_s
.Llit_string_α_865_0_s: .string          ""
                        .size            n808_lit_string_bx, .-n808_lit_string_bx
                        .type            n809_call_prolog_bx, @function
n809_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n809_call_prolog_α:     mov              r11, 337
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn867: .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn867]
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
                        cmp              al, 104;                             je    n830_lit_string_α
                                                                              jmp   n810_var_ref_α
n809_call_prolog_β:     mov              r11, 337;                            jmp   n830_lit_string_α
                        .size            n809_call_prolog_bx, .-n809_call_prolog_bx
                        .type            n810_var_ref_bx, @function
n810_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n810_var_ref_α:         mov              r11, 338
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n811_var_α
                        .size            n810_var_ref_bx, .-n810_var_ref_bx
                        .type            n811_var_bx, @function
n811_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n811_var_α:             mov              r11, 339
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 712], rax;          jmp   n812_var_α
                        .size            n811_var_bx, .-n811_var_bx
                        .type            n812_var_bx, @function
n812_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n812_var_α:             mov              r11, 340
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 728], rax;          jmp   n813_call_prolog_α
                        .size            n812_var_bx, .-n812_var_bx
                        .type            n813_call_prolog_bx, @function
n813_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n813_call_prolog_α:     mov              r11, 341
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
                        cmp              al, 104;                             je    n830_lit_string_α
                                                                              jmp   n814_call_prolog_α
n813_call_prolog_β:     mov              r11, 341;                            jmp   n830_lit_string_α
                        .size            n813_call_prolog_bx, .-n813_call_prolog_bx
                        .type            n814_call_prolog_bx, @function
n814_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n814_call_prolog_α:     mov              r11, 342
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
                        cmp              al, 104;                             je    n830_lit_string_α
                                                                              jmp   n815_var_ref_α
n814_call_prolog_β:     mov              r11, 342;                            jmp   n830_lit_string_α
                        .size            n814_call_prolog_bx, .-n814_call_prolog_bx
                        .type            n815_var_ref_bx, @function
n815_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n815_var_ref_α:         mov              r11, 343
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n816_var_α
                        .size            n815_var_ref_bx, .-n815_var_ref_bx
                        .type            n816_var_bx, @function
n816_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n816_var_α:             mov              r11, 344
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 552], rax;          jmp   n817_var_α
                        .size            n816_var_bx, .-n816_var_bx
                        .type            n817_var_bx, @function
n817_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n817_var_α:             mov              r11, 345
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 568], rax;          jmp   n818_call_prolog_α
                        .size            n817_var_bx, .-n817_var_bx
                        .type            n818_call_prolog_bx, @function
n818_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n818_call_prolog_α:     mov              r11, 346
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
                        cmp              al, 104;                             je    n830_lit_string_α
                                                                              jmp   n819_call_prolog_α
n818_call_prolog_β:     mov              r11, 346;                            jmp   n830_lit_string_α
                        .size            n818_call_prolog_bx, .-n818_call_prolog_bx
                        .type            n819_call_prolog_bx, @function
n819_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n819_call_prolog_α:     mov              r11, 347
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
                        cmp              al, 104;                             je    n830_lit_string_α
                                                                              jmp   n820_lit_string_α
n819_call_prolog_β:     mov              r11, 347;                            jmp   n830_lit_string_α
                        .size            n819_call_prolog_bx, .-n819_call_prolog_bx
                        .type            n820_lit_string_bx, @function
n820_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n820_lit_string_α:      mov              r11, 348
                        mov              qword ptr [rbp + 144], 2             # result
                        mov              dword ptr [rbp + 148], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_884_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n821_lit_string_α
.Llit_string_α_884_0:   .quad            .Llit_string_α_884_0_s
.Llit_string_α_884_0_s: .string          "user_error"
                        .size            n820_lit_string_bx, .-n820_lit_string_bx
                        .type            n821_lit_string_bx, @function
n821_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n821_lit_string_α:      mov              r11, 349
                        mov              qword ptr [rbp + 160], 2             # result
                        mov              dword ptr [rbp + 164], 45
                        mov              rax, qword ptr [rip + .Llit_string_α_885_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n822_lit_string_α
.Llit_string_α_885_0:   .quad            .Llit_string_α_885_0_s
.Llit_string_α_885_0_s: .string          "BENCH kernel=divide10 work_us=~w work_ms=~w~n"
                        .size            n821_lit_string_bx, .-n821_lit_string_bx
                        .type            n822_lit_string_bx, @function
n822_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n822_lit_string_α:      mov              r11, 350
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_886_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n823_var_ref_α
.Llit_string_α_886_0:   .quad            .Llit_string_α_886_0_s
.Llit_string_α_886_0_s: .string          "."
                        .size            n822_lit_string_bx, .-n822_lit_string_bx
                        .type            n823_var_ref_bx, @function
n823_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n823_var_ref_α:         mov              r11, 351
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n824_lit_string_α
                        .size            n823_var_ref_bx, .-n823_var_ref_bx
                        .type            n824_lit_string_bx, @function
n824_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n824_lit_string_α:      mov              r11, 352
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_889_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n825_var_ref_α
.Llit_string_α_889_0:   .quad            .Llit_string_α_889_0_s
.Llit_string_α_889_0_s: .string          "."
                        .size            n824_lit_string_bx, .-n824_lit_string_bx
                        .type            n825_var_ref_bx, @function
n825_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n825_var_ref_α:         mov              r11, 353
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n826_lit_string_α
                        .size            n825_var_ref_bx, .-n825_var_ref_bx
                        .type            n826_lit_string_bx, @function
n826_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n826_lit_string_α:      mov              r11, 354
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_892_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n827_call_prolog_α
.Llit_string_α_892_0:   .quad            .Llit_string_α_892_0_s
.Llit_string_α_892_0_s: .string          "[]"
                        .size            n826_lit_string_bx, .-n826_lit_string_bx
                        .type            n827_call_prolog_bx, @function
n827_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n827_call_prolog_α:     mov              r11, 355
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
                                                                              jmp   n828_call_prolog_α
n827_call_prolog_β:     mov              r11, 355;                            jmp   main_ω
                        .size            n827_call_prolog_bx, .-n827_call_prolog_bx
                        .type            n828_call_prolog_bx, @function
n828_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n828_call_prolog_α:     mov              r11, 356
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
                        cmp              al, 104;                             je    n830_lit_string_α
                                                                              jmp   n829_call_prolog_α
n828_call_prolog_β:     mov              r11, 356;                            jmp   n830_lit_string_α
                        .size            n828_call_prolog_bx, .-n828_call_prolog_bx
                        .type            n829_call_prolog_bx, @function
n829_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n829_call_prolog_α:     mov              r11, 357
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
.Lcall_prolog_α_rkfn896: .string          "$format3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn896]
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
                        cmp              al, 104;                             je    n830_lit_string_α
                                                                              jmp   main_γ
n829_call_prolog_β:     mov              r11, 357;                            jmp   n830_lit_string_α
                        .size            n829_call_prolog_bx, .-n829_call_prolog_bx
                        .type            n830_lit_string_bx, @function
n830_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n830_lit_string_α:      mov              r11, 358
                        mov              qword ptr [rbp + 48], 2              # result
                        mov              dword ptr [rbp + 52], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_897_0]
                        mov              qword ptr [rbp + 56], rax;           jmp   n831_lit_string_α
.Llit_string_α_897_0:   .quad            .Llit_string_α_897_0_s
.Llit_string_α_897_0_s: .string          "user_error"
                        .size            n830_lit_string_bx, .-n830_lit_string_bx
                        .type            n831_lit_string_bx, @function
n831_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n831_lit_string_α:      mov              r11, 359
                        mov              qword ptr [rbp + 64], 2              # result
                        mov              dword ptr [rbp + 68], 44
                        mov              rax, qword ptr [rip + .Llit_string_α_898_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n832_call_prolog_α
.Llit_string_α_898_0:   .quad            .Llit_string_α_898_0_s
.Llit_string_α_898_0_s: .string          "Warning: initialization goal failed: main/0\n"
                        .size            n831_lit_string_bx, .-n831_lit_string_bx
                        .type            n832_call_prolog_bx, @function
n832_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n832_call_prolog_α:     mov              r11, 360
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn900: .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn900]
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
n832_call_prolog_β:     mov              r11, 360;                            jmp   main_ω
                        .size            n832_call_prolog_bx, .-n832_call_prolog_bx
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
