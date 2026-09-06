                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__divide10$2F0:
                        sub              rsp, 1248
                        mov              qword ptr [rsp + 1224], rcx
                        mov              qword ptr [rsp + 1232], rdx
                        mov              qword ptr [rsp + 1240], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1208], r13
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1184], r12
                        mov              rdi, rsp
                        mov              esi, 1152
                        mov              edx, 1184
                        call             rt_jmp_frame_lexprep2@PLT
divide10$2F0_α_body:
                        .type            n0_lit_string_bx, @function
n0_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              r11, 1
                        mov              qword ptr [rbp + 1104], 2            # result
                        mov              dword ptr [rbp + 1108], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_31_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n1_lit_string_α
.Llit_string_α_31_0:    .quad            .Llit_string_α_31_0_s
.Llit_string_α_31_0_s:  .string          "/"
                        .size            n0_lit_string_bx, .-n0_lit_string_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_32_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n2_lit_string_α
.Llit_string_α_32_0:    .quad            .Llit_string_α_32_0_s
.Llit_string_α_32_0_s:  .string          "/"
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_33_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n3_lit_string_α
.Llit_string_α_33_0:    .quad            .Llit_string_α_33_0_s
.Llit_string_α_33_0_s:  .string          "/"
                        .size            n2_lit_string_bx, .-n2_lit_string_bx
                        .type            n3_lit_string_bx, @function
n3_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_34_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n4_lit_string_α
.Llit_string_α_34_0:    .quad            .Llit_string_α_34_0_s
.Llit_string_α_34_0_s:  .string          "/"
                        .size            n3_lit_string_bx, .-n3_lit_string_bx
                        .type            n4_lit_string_bx, @function
n4_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rbp + 656], 2             # result
                        mov              dword ptr [rbp + 660], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_35_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n5_lit_string_α
.Llit_string_α_35_0:    .quad            .Llit_string_α_35_0_s
.Llit_string_α_35_0_s:  .string          "/"
                        .size            n4_lit_string_bx, .-n4_lit_string_bx
                        .type            n5_lit_string_bx, @function
n5_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rbp + 544], 2             # result
                        mov              dword ptr [rbp + 548], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_36_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n6_lit_string_α
.Llit_string_α_36_0:    .quad            .Llit_string_α_36_0_s
.Llit_string_α_36_0_s:  .string          "/"
                        .size            n5_lit_string_bx, .-n5_lit_string_bx
                        .type            n6_lit_string_bx, @function
n6_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rbp + 432], 2             # result
                        mov              dword ptr [rbp + 436], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_37_0]
                        mov              qword ptr [rbp + 440], rax;          jmp   n7_lit_string_α
.Llit_string_α_37_0:    .quad            .Llit_string_α_37_0_s
.Llit_string_α_37_0_s:  .string          "/"
                        .size            n6_lit_string_bx, .-n6_lit_string_bx
                        .type            n7_lit_string_bx, @function
n7_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rbp + 320], 2             # result
                        mov              dword ptr [rbp + 324], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_38_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n8_lit_string_α
.Llit_string_α_38_0:    .quad            .Llit_string_α_38_0_s
.Llit_string_α_38_0_s:  .string          "/"
                        .size            n7_lit_string_bx, .-n7_lit_string_bx
                        .type            n8_lit_string_bx, @function
n8_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rbp + 208], 2             # result
                        mov              dword ptr [rbp + 212], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_39_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n9_lit_string_α
.Llit_string_α_39_0:    .quad            .Llit_string_α_39_0_s
.Llit_string_α_39_0_s:  .string          "/"
                        .size            n8_lit_string_bx, .-n8_lit_string_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rbp + 96], 2              # result
                        mov              dword ptr [rbp + 100], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_40_0]
                        mov              qword ptr [rbp + 104], rax;          jmp   n10_lit_string_α
.Llit_string_α_40_0:    .quad            .Llit_string_α_40_0_s
.Llit_string_α_40_0_s:  .string          "x"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_lit_string_bx, @function
n10_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_41_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n11_call_α
.Llit_string_α_41_0:    .quad            .Llit_string_α_41_0_s
.Llit_string_α_41_0_s:  .string          "x"
                        .size            n10_lit_string_bx, .-n10_lit_string_bx
                        .type            n11_call_bx, @function
n11_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:             mov              r11, 12
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n12_lit_string_α
n11_call_β:             mov              r11, 12;                             jmp   divide10$2F0_ω
                        .size            n11_call_bx, .-n11_call_bx
                        .type            n12_lit_string_bx, @function
n12_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              r11, 13
                        mov              qword ptr [rbp + 224], 2             # result
                        mov              dword ptr [rbp + 228], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_43_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n13_call_α
.Llit_string_α_43_0:    .quad            .Llit_string_α_43_0_s
.Llit_string_α_43_0_s:  .string          "x"
                        .size            n12_lit_string_bx, .-n12_lit_string_bx
                        .type            n13_call_bx, @function
n13_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:             mov              r11, 14
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n14_lit_string_α
n13_call_β:             mov              r11, 14;                             jmp   divide10$2F0_ω
                        .size            n13_call_bx, .-n13_call_bx
                        .type            n14_lit_string_bx, @function
n14_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_45_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n15_call_α
.Llit_string_α_45_0:    .quad            .Llit_string_α_45_0_s
.Llit_string_α_45_0_s:  .string          "x"
                        .size            n14_lit_string_bx, .-n14_lit_string_bx
                        .type            n15_call_bx, @function
n15_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_call_α:             mov              r11, 16
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 248]
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
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n16_lit_string_α
n15_call_β:             mov              r11, 16;                             jmp   divide10$2F0_ω
                        .size            n15_call_bx, .-n15_call_bx
                        .type            n16_lit_string_bx, @function
n16_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_47_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n17_call_α
.Llit_string_α_47_0:    .quad            .Llit_string_α_47_0_s
.Llit_string_α_47_0_s:  .string          "x"
                        .size            n16_lit_string_bx, .-n16_lit_string_bx
                        .type            n17_call_bx, @function
n17_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:             mov              r11, 18
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 360]
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
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n18_lit_string_α
n17_call_β:             mov              r11, 18;                             jmp   divide10$2F0_ω
                        .size            n17_call_bx, .-n17_call_bx
                        .type            n18_lit_string_bx, @function
n18_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rbp + 560], 2             # result
                        mov              dword ptr [rbp + 564], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_49_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n19_call_α
.Llit_string_α_49_0:    .quad            .Llit_string_α_49_0_s
.Llit_string_α_49_0_s:  .string          "x"
                        .size            n18_lit_string_bx, .-n18_lit_string_bx
                        .type            n19_call_bx, @function
n19_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_α:             mov              r11, 20
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 472]
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
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n20_lit_string_α
n19_call_β:             mov              r11, 20;                             jmp   divide10$2F0_ω
                        .size            n19_call_bx, .-n19_call_bx
                        .type            n20_lit_string_bx, @function
n20_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              r11, 21
                        mov              qword ptr [rbp + 672], 2             # result
                        mov              dword ptr [rbp + 676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_51_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n21_call_α
.Llit_string_α_51_0:    .quad            .Llit_string_α_51_0_s
.Llit_string_α_51_0_s:  .string          "x"
                        .size            n20_lit_string_bx, .-n20_lit_string_bx
                        .type            n21_call_bx, @function
n21_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:             mov              r11, 22
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
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n22_lit_string_α
n21_call_β:             mov              r11, 22;                             jmp   divide10$2F0_ω
                        .size            n21_call_bx, .-n21_call_bx
                        .type            n22_lit_string_bx, @function
n22_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_53_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n23_call_α
.Llit_string_α_53_0:    .quad            .Llit_string_α_53_0_s
.Llit_string_α_53_0_s:  .string          "x"
                        .size            n22_lit_string_bx, .-n22_lit_string_bx
                        .type            n23_call_bx, @function
n23_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_call_α:             mov              r11, 24
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 696]
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
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n24_lit_string_α
n23_call_β:             mov              r11, 24;                             jmp   divide10$2F0_ω
                        .size            n23_call_bx, .-n23_call_bx
                        .type            n24_lit_string_bx, @function
n24_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              r11, 25
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_55_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n25_call_α
.Llit_string_α_55_0:    .quad            .Llit_string_α_55_0_s
.Llit_string_α_55_0_s:  .string          "x"
                        .size            n24_lit_string_bx, .-n24_lit_string_bx
                        .type            n25_call_bx, @function
n25_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_call_α:             mov              r11, 26
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 808]
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
                        cmp              al, 104;                             je    divide10$2F0_ω
                                                                              jmp   n26_lit_string_α
n25_call_β:             mov              r11, 26;                             jmp   divide10$2F0_ω
                        .size            n25_call_bx, .-n25_call_bx
                        .type            n26_lit_string_bx, @function
n26_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       mov              r11, 27
                        mov              qword ptr [rbp + 1008], 2            # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_57_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n27_call_α
.Llit_string_α_57_0:    .quad            .Llit_string_α_57_0_s
.Llit_string_α_57_0_s:  .string          "x"
                        .size            n26_lit_string_bx, .-n26_lit_string_bx
                        .type            n27_call_bx, @function
n27_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_call_α:             mov              r11, 28
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 920]
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
                        cmp              al, 104;                             je    divide10$2F0_step
                                                                              jmp   n28_lit_string_α
n27_call_β:             mov              r11, 28;                             jmp   divide10$2F0_step
                        .size            n27_call_bx, .-n27_call_bx
                        .type            n28_lit_string_bx, @function
n28_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       mov              r11, 29
                        mov              qword ptr [rbp + 1120], 2            # result
                        mov              dword ptr [rbp + 1124], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_59_0]
                        mov              qword ptr [rbp + 1128], rax;         jmp   n29_var_ref_α
.Llit_string_α_59_0:    .quad            .Llit_string_α_59_0_s
.Llit_string_α_59_0_s:  .string          "x"
                        .size            n28_lit_string_bx, .-n28_lit_string_bx
                        .type            n29_var_ref_bx, @function
n29_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n30_call_proc_staged_α
                        .size            n29_var_ref_bx, .-n29_var_ref_bx
                        .type            n30_call_proc_staged_bx, @function
n30_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_call_proc_staged_α: mov              r11, 31
                        mov              qword ptr [rbp + 64], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_63_200
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_63_201
.Lcall_proc_staged_α_63_200:
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
.Lcall_proc_staged_α_63_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_63_202
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_63_203
.Lcall_proc_staged_α_63_202:
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
.Lcall_proc_staged_α_63_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_63_204
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_63_205
.Lcall_proc_staged_α_63_204:
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
.Lcall_proc_staged_α_63_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_63_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_63_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1248]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_63_99
                        mov              r10, qword ptr [rbp + 1208]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_63_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_63_99
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              rdx, qword ptr [rbp + 1232]
                        lea              rsp, [rbp + 1248]
                        mov              rbp, qword ptr [rbp + 1240];         jmp   rax
.Lcall_proc_staged_α_63_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_63_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_63_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_63_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_63_3:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_63_21
                        add              rsp, 32
.Lcall_proc_staged_α_63_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_63_2
.Lcall_proc_staged_α_63_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 64], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_63_2
.Lcall_proc_staged_α_63_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_63_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   divide10$2F0_step
.Lcall_proc_staged_α_63_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_63_29
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
.Lcall_proc_staged_α_63_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    divide10$2F0_step
                                                                              jmp   divide10$2F0_ret0
n30_call_proc_staged_β: mov              r11, 31
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_63_22
                        mov              rax, qword ptr [rbp + 64]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_63_22
                        mov              rcx, qword ptr [rbp + 72]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_63_22:
                                                                              jmp   divide10$2F0_step
.Lcall_proc_staged_α_63_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    divide10$2F0_step
                                                                              jmp   divide10$2F0_ret0
.Lcall_proc_staged_α_63_0:
                        .quad            .Lcall_proc_staged_α_63_0_s
.Lcall_proc_staged_α_63_0_s:
                        .string          "d/3"
                        .size            n30_call_proc_staged_bx, .-n30_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
divide10$2F0_ret0:
                        lea              rax, [rip + n30_call_proc_staged_β]
                        mov              qword ptr [rbp + 1200], rax
                                                                              jmp   divide10$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
divide10$2F0_step:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1200], 0
                        mov              qword ptr [rbp + 1152], 0
                        mov              qword ptr [rbp + 1160], 0
                        mov              rax, qword ptr [rbp + 1192]
                        test             rax, rax
                                                                              je    divide10$2F0_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
divide10$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
divide10$2F0_β:
                        test             r15, r15
                                                                              jne   divide10$2F0_ω
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1200], 0
                        test             rax, rax
                                                                              jne   divide10$2F0_βres
                                                                              jmp   divide10$2F0_step
divide10$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
divide10$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              rax, qword ptr [rbp + 1208]
                        cmp              r13, rax;                            je    divide10$2F0_altdet
                        lea              rdx, [rip + divide10$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1240];         jmp   rcx
divide10$2F0_altdet:    xor              eax, eax
                        lea              rsp, [rbp + 1248]
                        mov              rbp, qword ptr [rbp + 1240];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
divide10$2F0_ω:
                        mov              rcx, qword ptr [rbp + 1232]
                        mov              r13, qword ptr [rbp + 1208]
                        lea              rsp, [rbp + 1248]
                        mov              rbp, qword ptr [rbp + 1240];         jmp   rcx
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
                        .type            n64_lit_string_bx, @function
n64_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       mov              r11, 32
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_88_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n65_lit_string_α
.Llit_string_α_88_0:    .quad            .Llit_string_α_88_0_s
.Llit_string_α_88_0_s:  .string          "log"
                        .size            n64_lit_string_bx, .-n64_lit_string_bx
                        .type            n65_lit_string_bx, @function
n65_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rbp + 816], 2             # result
                        mov              dword ptr [rbp + 820], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_89_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n66_lit_string_α
.Llit_string_α_89_0:    .quad            .Llit_string_α_89_0_s
.Llit_string_α_89_0_s:  .string          "log"
                        .size            n65_lit_string_bx, .-n65_lit_string_bx
                        .type            n66_lit_string_bx, @function
n66_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rbp + 736], 2             # result
                        mov              dword ptr [rbp + 740], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_90_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n67_lit_string_α
.Llit_string_α_90_0:    .quad            .Llit_string_α_90_0_s
.Llit_string_α_90_0_s:  .string          "log"
                        .size            n66_lit_string_bx, .-n66_lit_string_bx
                        .type            n67_lit_string_bx, @function
n67_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rbp + 656], 2             # result
                        mov              dword ptr [rbp + 660], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_91_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n68_lit_string_α
.Llit_string_α_91_0:    .quad            .Llit_string_α_91_0_s
.Llit_string_α_91_0_s:  .string          "log"
                        .size            n67_lit_string_bx, .-n67_lit_string_bx
                        .type            n68_lit_string_bx, @function
n68_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rbp + 576], 2             # result
                        mov              dword ptr [rbp + 580], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_92_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n69_lit_string_α
.Llit_string_α_92_0:    .quad            .Llit_string_α_92_0_s
.Llit_string_α_92_0_s:  .string          "log"
                        .size            n68_lit_string_bx, .-n68_lit_string_bx
                        .type            n69_lit_string_bx, @function
n69_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rbp + 496], 2             # result
                        mov              dword ptr [rbp + 500], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_93_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n70_lit_string_α
.Llit_string_α_93_0:    .quad            .Llit_string_α_93_0_s
.Llit_string_α_93_0_s:  .string          "log"
                        .size            n69_lit_string_bx, .-n69_lit_string_bx
                        .type            n70_lit_string_bx, @function
n70_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_94_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n71_lit_string_α
.Llit_string_α_94_0:    .quad            .Llit_string_α_94_0_s
.Llit_string_α_94_0_s:  .string          "log"
                        .size            n70_lit_string_bx, .-n70_lit_string_bx
                        .type            n71_lit_string_bx, @function
n71_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              r11, 39
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_95_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n72_lit_string_α
.Llit_string_α_95_0:    .quad            .Llit_string_α_95_0_s
.Llit_string_α_95_0_s:  .string          "log"
                        .size            n71_lit_string_bx, .-n71_lit_string_bx
                        .type            n72_lit_string_bx, @function
n72_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_96_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n73_lit_string_α
.Llit_string_α_96_0:    .quad            .Llit_string_α_96_0_s
.Llit_string_α_96_0_s:  .string          "log"
                        .size            n72_lit_string_bx, .-n72_lit_string_bx
                        .type            n73_lit_string_bx, @function
n73_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_97_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n74_lit_string_α
.Llit_string_α_97_0:    .quad            .Llit_string_α_97_0_s
.Llit_string_α_97_0_s:  .string          "log"
                        .size            n73_lit_string_bx, .-n73_lit_string_bx
                        .type            n74_lit_string_bx, @function
n74_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       mov              r11, 42
                        mov              qword ptr [rbp + 96], 2              # result
                        mov              dword ptr [rbp + 100], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_98_0]
                        mov              qword ptr [rbp + 104], rax;          jmp   n75_call_α
.Llit_string_α_98_0:    .quad            .Llit_string_α_98_0_s
.Llit_string_α_98_0_s:  .string          "x"
                        .size            n74_lit_string_bx, .-n74_lit_string_bx
                        .type            n75_call_bx, @function
n75_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_call_α:             mov              r11, 43
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
                                                                              jmp   n76_call_α
n75_call_β:             mov              r11, 43;                             jmp   log10$2F0_ω
                        .size            n75_call_bx, .-n75_call_bx
                        .type            n76_call_bx, @function
n76_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:             mov              r11, 44
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
                                                                              jmp   n77_call_α
n76_call_β:             mov              r11, 44;                             jmp   log10$2F0_ω
                        .size            n76_call_bx, .-n76_call_bx
                        .type            n77_call_bx, @function
n77_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_call_α:             mov              r11, 45
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
                                                                              jmp   n78_call_α
n77_call_β:             mov              r11, 45;                             jmp   log10$2F0_ω
                        .size            n77_call_bx, .-n77_call_bx
                        .type            n78_call_bx, @function
n78_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:             mov              r11, 46
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
                                                                              jmp   n79_call_α
n78_call_β:             mov              r11, 46;                             jmp   log10$2F0_ω
                        .size            n78_call_bx, .-n78_call_bx
                        .type            n79_call_bx, @function
n79_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_call_α:             mov              r11, 47
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
                                                                              jmp   n80_call_α
n79_call_β:             mov              r11, 47;                             jmp   log10$2F0_ω
                        .size            n79_call_bx, .-n79_call_bx
                        .type            n80_call_bx, @function
n80_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_call_α:             mov              r11, 48
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
                                                                              jmp   n81_call_α
n80_call_β:             mov              r11, 48;                             jmp   log10$2F0_ω
                        .size            n80_call_bx, .-n80_call_bx
                        .type            n81_call_bx, @function
n81_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_call_α:             mov              r11, 49
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
                                                                              jmp   n82_call_α
n81_call_β:             mov              r11, 49;                             jmp   log10$2F0_ω
                        .size            n81_call_bx, .-n81_call_bx
                        .type            n82_call_bx, @function
n82_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_call_α:             mov              r11, 50
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
                                                                              jmp   n83_call_α
n82_call_β:             mov              r11, 50;                             jmp   log10$2F0_ω
                        .size            n82_call_bx, .-n82_call_bx
                        .type            n83_call_bx, @function
n83_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:             mov              r11, 51
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
                                                                              jmp   n84_call_α
n83_call_β:             mov              r11, 51;                             jmp   log10$2F0_ω
                        .size            n83_call_bx, .-n83_call_bx
                        .type            n84_call_bx, @function
n84_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_call_α:             mov              r11, 52
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
                                                                              jmp   n85_lit_string_α
n84_call_β:             mov              r11, 52;                             jmp   log10$2F0_step
                        .size            n84_call_bx, .-n84_call_bx
                        .type            n85_lit_string_bx, @function
n85_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              r11, 53
                        mov              qword ptr [rbp + 912], 2             # result
                        mov              dword ptr [rbp + 916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_109_0]
                        mov              qword ptr [rbp + 920], rax;          jmp   n86_var_ref_α
.Llit_string_α_109_0:   .quad            .Llit_string_α_109_0_s
.Llit_string_α_109_0_s: .string          "x"
                        .size            n85_lit_string_bx, .-n85_lit_string_bx
                        .type            n86_var_ref_bx, @function
n86_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n87_call_proc_staged_α
                        .size            n86_var_ref_bx, .-n86_var_ref_bx
                        .type            n87_call_proc_staged_bx, @function
n87_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_call_proc_staged_α: mov              r11, 55
                        mov              qword ptr [rbp + 64], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_113_200
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_113_201
.Lcall_proc_staged_α_113_200:
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
.Lcall_proc_staged_α_113_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_113_202
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_113_203
.Lcall_proc_staged_α_113_202:
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
.Lcall_proc_staged_α_113_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_113_204
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_113_205
.Lcall_proc_staged_α_113_204:
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
.Lcall_proc_staged_α_113_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_113_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_113_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_113_99
                        mov              r10, qword ptr [rbp + 1000]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_113_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_113_99
                        mov              rcx, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1024]
                        lea              rsp, [rbp + 1040]
                        mov              rbp, qword ptr [rbp + 1032];         jmp   rax
.Lcall_proc_staged_α_113_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_113_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_113_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_113_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_113_3:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_113_21
                        add              rsp, 32
.Lcall_proc_staged_α_113_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_113_2
.Lcall_proc_staged_α_113_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 64], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_113_2
.Lcall_proc_staged_α_113_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_113_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   log10$2F0_step
.Lcall_proc_staged_α_113_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_113_29
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
.Lcall_proc_staged_α_113_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    log10$2F0_step
                                                                              jmp   log10$2F0_ret0
n87_call_proc_staged_β: mov              r11, 55
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_113_22
                        mov              rax, qword ptr [rbp + 64]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_113_22
                        mov              rcx, qword ptr [rbp + 72]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_113_22:
                                                                              jmp   log10$2F0_step
.Lcall_proc_staged_α_113_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    log10$2F0_step
                                                                              jmp   log10$2F0_ret0
.Lcall_proc_staged_α_113_0:
                        .quad            .Lcall_proc_staged_α_113_0_s
.Lcall_proc_staged_α_113_0_s:
                        .string          "d/3"
                        .size            n87_call_proc_staged_bx, .-n87_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_ret0:
                        lea              rax, [rip + n87_call_proc_staged_β]
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
FN__ops8$2F0:
                        sub              rsp, 1024
                        mov              qword ptr [rsp + 1000], rcx
                        mov              qword ptr [rsp + 1008], rdx
                        mov              qword ptr [rsp + 1016], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 984], r13
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 960], r12
                        mov              rdi, rsp
                        mov              esi, 928
                        mov              edx, 960
                        call             rt_jmp_frame_lexprep2@PLT
ops8$2F0_α_body:
                        .type            n114_lit_string_bx, @function
n114_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:      mov              r11, 56
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_139_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n115_lit_string_α
.Llit_string_α_139_0:   .quad            .Llit_string_α_139_0_s
.Llit_string_α_139_0_s: .string          "*"
                        .size            n114_lit_string_bx, .-n114_lit_string_bx
                        .type            n115_lit_string_bx, @function
n115_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      mov              r11, 57
                        mov              qword ptr [rbp + 208], 2             # result
                        mov              dword ptr [rbp + 212], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_140_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n116_lit_string_α
.Llit_string_α_140_0:   .quad            .Llit_string_α_140_0_s
.Llit_string_α_140_0_s: .string          "+"
                        .size            n115_lit_string_bx, .-n115_lit_string_bx
                        .type            n116_lit_string_bx, @function
n116_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:      mov              r11, 58
                        mov              qword ptr [rbp + 96], 2              # result
                        mov              dword ptr [rbp + 100], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_141_0]
                        mov              qword ptr [rbp + 104], rax;          jmp   n117_lit_integer_α
.Llit_string_α_141_0:   .quad            .Llit_string_α_141_0_s
.Llit_string_α_141_0_s: .string          "x"
                        .size            n116_lit_string_bx, .-n116_lit_string_bx
                        .type            n117_lit_integer_bx, @function
n117_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     mov              r11, 59
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_142_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n118_call_α
.Llit_integer_α_142_0:  .quad            1
                        .size            n117_lit_integer_bx, .-n117_lit_integer_bx
                        .type            n118_call_bx, @function
n118_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:            mov              r11, 60
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n119_lit_string_α
n118_call_β:            mov              r11, 60;                             jmp   ops8$2F0_ω
                        .size            n118_call_bx, .-n118_call_bx
                        .type            n119_lit_string_bx, @function
n119_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:      mov              r11, 61
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_144_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n120_lit_string_α
.Llit_string_α_144_0:   .quad            .Llit_string_α_144_0_s
.Llit_string_α_144_0_s: .string          "*"
                        .size            n119_lit_string_bx, .-n119_lit_string_bx
                        .type            n120_lit_string_bx, @function
n120_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:      mov              r11, 62
                        mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_145_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n121_lit_string_α
.Llit_string_α_145_0:   .quad            .Llit_string_α_145_0_s
.Llit_string_α_145_0_s: .string          "+"
                        .size            n120_lit_string_bx, .-n120_lit_string_bx
                        .type            n121_lit_string_bx, @function
n121_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:      mov              r11, 63
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_146_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n122_lit_string_α
.Llit_string_α_146_0:   .quad            .Llit_string_α_146_0_s
.Llit_string_α_146_0_s: .string          "^"
                        .size            n121_lit_string_bx, .-n121_lit_string_bx
                        .type            n122_lit_string_bx, @function
n122_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:      mov              r11, 64
                        mov              qword ptr [rbp + 224], 2             # result
                        mov              dword ptr [rbp + 228], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_147_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n123_lit_integer_α
.Llit_string_α_147_0:   .quad            .Llit_string_α_147_0_s
.Llit_string_α_147_0_s: .string          "x"
                        .size            n122_lit_string_bx, .-n122_lit_string_bx
                        .type            n123_lit_integer_bx, @function
n123_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:     mov              r11, 65
                        mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_148_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n124_call_α
.Llit_integer_α_148_0:  .quad            2
                        .size            n123_lit_integer_bx, .-n123_lit_integer_bx
                        .type            n124_call_bx, @function
n124_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_call_α:            mov              r11, 66
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 232]
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
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n125_lit_integer_α
n124_call_β:            mov              r11, 66;                             jmp   ops8$2F0_ω
                        .size            n124_call_bx, .-n124_call_bx
                        .type            n125_lit_integer_bx, @function
n125_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:     mov              r11, 67
                        mov              qword ptr [rbp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_150_0]
                        mov              qword ptr [rbp + 360], rax;          jmp   n126_call_α
.Llit_integer_α_150_0:  .quad            2
                        .size            n125_lit_integer_bx, .-n125_lit_integer_bx
                        .type            n126_call_bx, @function
n126_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_call_α:            mov              r11, 68
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 264]
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
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n127_lit_string_α
n126_call_β:            mov              r11, 68;                             jmp   ops8$2F0_ω
                        .size            n126_call_bx, .-n126_call_bx
                        .type            n127_lit_string_bx, @function
n127_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              r11, 69
                        mov              qword ptr [rbp + 688], 2             # result
                        mov              dword ptr [rbp + 692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_152_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n128_lit_string_α
.Llit_string_α_152_0:   .quad            .Llit_string_α_152_0_s
.Llit_string_α_152_0_s: .string          "+"
                        .size            n127_lit_string_bx, .-n127_lit_string_bx
                        .type            n128_lit_string_bx, @function
n128_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:      mov              r11, 70
                        mov              qword ptr [rbp + 576], 2             # result
                        mov              dword ptr [rbp + 580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_153_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n129_lit_string_α
.Llit_string_α_153_0:   .quad            .Llit_string_α_153_0_s
.Llit_string_α_153_0_s: .string          "^"
                        .size            n128_lit_string_bx, .-n128_lit_string_bx
                        .type            n129_lit_string_bx, @function
n129_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:      mov              r11, 71
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_154_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n130_lit_integer_α
.Llit_string_α_154_0:   .quad            .Llit_string_α_154_0_s
.Llit_string_α_154_0_s: .string          "x"
                        .size            n129_lit_string_bx, .-n129_lit_string_bx
                        .type            n130_lit_integer_bx, @function
n130_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:     mov              r11, 72
                        mov              qword ptr [rbp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_155_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n131_call_α
.Llit_integer_α_155_0:  .quad            3
                        .size            n130_lit_integer_bx, .-n130_lit_integer_bx
                        .type            n131_call_bx, @function
n131_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_call_α:            mov              r11, 73
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 472]
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
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n132_lit_integer_α
n131_call_β:            mov              r11, 73;                             jmp   ops8$2F0_ω
                        .size            n131_call_bx, .-n131_call_bx
                        .type            n132_lit_integer_bx, @function
n132_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:     mov              r11, 74
                        mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_157_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n133_call_α
.Llit_integer_α_157_0:  .quad            3
                        .size            n132_lit_integer_bx, .-n132_lit_integer_bx
                        .type            n133_call_bx, @function
n133_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:            mov              r11, 75
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 504]
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
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n134_call_α
n133_call_β:            mov              r11, 75;                             jmp   ops8$2F0_ω
                        .size            n133_call_bx, .-n133_call_bx
                        .type            n134_call_bx, @function
n134_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_call_α:            mov              r11, 76
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 376]
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
                        cmp              al, 104;                             je    ops8$2F0_ω
                                                                              jmp   n135_call_α
n134_call_β:            mov              r11, 76;                             jmp   ops8$2F0_ω
                        .size            n134_call_bx, .-n134_call_bx
                        .type            n135_call_bx, @function
n135_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_call_α:            mov              r11, 77
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 136]
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
                        cmp              al, 104;                             je    ops8$2F0_step
                                                                              jmp   n136_lit_string_α
n135_call_β:            mov              r11, 77;                             jmp   ops8$2F0_step
                        .size            n135_call_bx, .-n135_call_bx
                        .type            n136_lit_string_bx, @function
n136_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:      mov              r11, 78
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_161_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n137_var_ref_α
.Llit_string_α_161_0:   .quad            .Llit_string_α_161_0_s
.Llit_string_α_161_0_s: .string          "x"
                        .size            n136_lit_string_bx, .-n136_lit_string_bx
                        .type            n137_var_ref_bx, @function
n137_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n138_call_proc_staged_α
                        .size            n137_var_ref_bx, .-n137_var_ref_bx
                        .type            n138_call_proc_staged_bx, @function
n138_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_call_proc_staged_α:
                        mov              r11, 80
                        mov              qword ptr [rbp + 64], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_165_200
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_165_201
.Lcall_proc_staged_α_165_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_165_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_165_202
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_165_203
.Lcall_proc_staged_α_165_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_165_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_165_204
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_165_205
.Lcall_proc_staged_α_165_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_165_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_165_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_165_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1024]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_165_99
                        mov              r10, qword ptr [rbp + 984]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_165_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_165_99
                        mov              rcx, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 1008]
                        lea              rsp, [rbp + 1024]
                        mov              rbp, qword ptr [rbp + 1016];         jmp   rax
.Lcall_proc_staged_α_165_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_165_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_165_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_165_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_165_3:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_165_21
                        add              rsp, 32
.Lcall_proc_staged_α_165_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_165_2
.Lcall_proc_staged_α_165_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 64], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_165_2
.Lcall_proc_staged_α_165_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_165_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   ops8$2F0_step
.Lcall_proc_staged_α_165_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_165_29
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
.Lcall_proc_staged_α_165_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    ops8$2F0_step
                                                                              jmp   ops8$2F0_ret0
n138_call_proc_staged_β:
                        mov              r11, 80
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_165_22
                        mov              rax, qword ptr [rbp + 64]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_165_22
                        mov              rcx, qword ptr [rbp + 72]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_165_22:
                                                                              jmp   ops8$2F0_step
.Lcall_proc_staged_α_165_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    ops8$2F0_step
                                                                              jmp   ops8$2F0_ret0
.Lcall_proc_staged_α_165_0:
                        .quad            .Lcall_proc_staged_α_165_0_s
.Lcall_proc_staged_α_165_0_s:
                        .string          "d/3"
                        .size            n138_call_proc_staged_bx, .-n138_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_ret0:
                        lea              rax, [rip + n138_call_proc_staged_β]
                        mov              qword ptr [rbp + 976], rax
                                                                              jmp   ops8$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_step:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], 0
                        mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 936], 0
                        mov              rax, qword ptr [rbp + 968]
                        test             rax, rax
                                                                              je    ops8$2F0_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_β:
                        test             r15, r15
                                                                              jne   ops8$2F0_ω
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 976], 0
                        test             rax, rax
                                                                              jne   ops8$2F0_βres
                                                                              jmp   ops8$2F0_step
ops8$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1000]
                        mov              rax, qword ptr [rbp + 984]
                        cmp              r13, rax;                            je    ops8$2F0_altdet
                        lea              rdx, [rip + ops8$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1016];         jmp   rcx
ops8$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 1024]
                        mov              rbp, qword ptr [rbp + 1016];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_ω:
                        mov              rcx, qword ptr [rbp + 1008]
                        mov              r13, qword ptr [rbp + 984]
                        lea              rsp, [rbp + 1024]
                        mov              rbp, qword ptr [rbp + 1016];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__d$2F3:
                        sub              rsp, 7776
                        mov              qword ptr [rsp + 7752], rcx
                        mov              qword ptr [rsp + 7760], rdx
                        mov              qword ptr [rsp + 7768], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 7776]
                        mov              qword ptr [rsp + 7744], rax
                        mov              qword ptr [rsp + 7736], r13
                        mov              qword ptr [rsp + 7728], 0
                        mov              qword ptr [rsp + 7720], 0
                        mov              qword ptr [rsp + 7712], r12
                        lea              rax, [rip + d$2F3_alt1]
                        mov              qword ptr [rsp + 7720], rax
                        lea              rdi, [rsp + 7712]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 7600
                        mov              edx, 7712
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
d$2F3_α_body:
                        .type            n166_var_ref_bx, @function
n166_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n167_lit_string_α
                        .size            n166_var_ref_bx, .-n166_var_ref_bx
                        .type            n167_lit_string_bx, @function
n167_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:      mov              r11, 82
                        mov              qword ptr [rbp + 848], 2             # result
                        mov              dword ptr [rbp + 852], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_393_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n168_var_ref_α
.Llit_string_α_393_0:   .quad            .Llit_string_α_393_0_s
.Llit_string_α_393_0_s: .string          "+"
                        .size            n167_lit_string_bx, .-n167_lit_string_bx
                        .type            n168_var_ref_bx, @function
n168_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n169_var_ref_α
                        .size            n168_var_ref_bx, .-n168_var_ref_bx
                        .type            n169_var_ref_bx, @function
n169_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n170_call_α
                        .size            n169_var_ref_bx, .-n169_var_ref_bx
                        .type            n170_call_bx, @function
n170_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_call_α:            mov              r11, 85
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
                                                                              jmp   n171_call_α
n170_call_β:            mov              r11, 85;                             jmp   d$2F3_step
                        .size            n170_call_bx, .-n170_call_bx
                        .type            n171_call_bx, @function
n171_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_call_α:            mov              r11, 86
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
                                                                              jmp   n172_var_ref_α
n171_call_β:            mov              r11, 86;                             jmp   d$2F3_step
                        .size            n171_call_bx, .-n171_call_bx
                        .type            n172_var_ref_bx, @function
n172_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n173_var_ref_α
                        .size            n172_var_ref_bx, .-n172_var_ref_bx
                        .type            n173_var_ref_bx, @function
n173_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:         mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n174_call_α
                        .size            n173_var_ref_bx, .-n173_var_ref_bx
                        .type            n174_call_bx, @function
n174_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_call_α:            mov              r11, 89
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
                                                                              jmp   n175_var_ref_α
n174_call_β:            mov              r11, 89;                             jmp   d$2F3_step
                        .size            n174_call_bx, .-n174_call_bx
                        .type            n175_var_ref_bx, @function
n175_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:         mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n176_lit_string_α
                        .size            n175_var_ref_bx, .-n175_var_ref_bx
                        .type            n176_lit_string_bx, @function
n176_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:      mov              r11, 91
                        mov              qword ptr [rbp + 544], 2             # result
                        mov              dword ptr [rbp + 548], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_407_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n177_var_ref_α
.Llit_string_α_407_0:   .quad            .Llit_string_α_407_0_s
.Llit_string_α_407_0_s: .string          "+"
                        .size            n176_lit_string_bx, .-n176_lit_string_bx
                        .type            n177_var_ref_bx, @function
n177_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n178_var_ref_α
                        .size            n177_var_ref_bx, .-n177_var_ref_bx
                        .type            n178_var_ref_bx, @function
n178_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7632]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n179_call_α
                        .size            n178_var_ref_bx, .-n178_var_ref_bx
                        .type            n179_call_bx, @function
n179_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_call_α:            mov              r11, 94
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
                                                                              jmp   n180_call_α
n179_call_β:            mov              r11, 94;                             jmp   d$2F3_step
                        .size            n179_call_bx, .-n179_call_bx
                        .type            n180_call_bx, @function
n180_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_call_α:            mov              r11, 95
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
                                                                              jmp   n181_cut_α
n180_call_β:            mov              r11, 95;                             jmp   d$2F3_step
                        .size            n180_call_bx, .-n180_call_bx
                        .type            n181_cut_bx, @function
n181_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_cut_α:             mov              r11, 96
                        mov              qword ptr [rbp + 7720], 0
                        mov              qword ptr [rbp + 7728], 0
                        lea              rdi, [rbp + 7712]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n182_var_ref_α
                        .size            n181_cut_bx, .-n181_cut_bx
                        .type            n182_var_ref_bx, @function
n182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n183_var_ref_α
                        .size            n182_var_ref_bx, .-n182_var_ref_bx
                        .type            n183_var_ref_bx, @function
n183_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n184_var_ref_α
                        .size            n183_var_ref_bx, .-n183_var_ref_bx
                        .type            n184_var_ref_bx, @function
n184_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n185_call_proc_staged_α
                        .size            n184_var_ref_bx, .-n184_var_ref_bx
                        .type            n185_call_proc_staged_bx, @function
n185_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_call_proc_staged_α:
                        mov              r11, 100
                        mov              qword ptr [rbp + 272], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_423_200
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_423_201
.Lcall_proc_staged_α_423_200:
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
.Lcall_proc_staged_α_423_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_423_202
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_423_203
.Lcall_proc_staged_α_423_202:
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
.Lcall_proc_staged_α_423_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_423_204
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_423_205
.Lcall_proc_staged_α_423_204:
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
.Lcall_proc_staged_α_423_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_423_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_423_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_423_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_423_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_423_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_423_3:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_423_21
                        add              rsp, 32
.Lcall_proc_staged_α_423_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_423_2
.Lcall_proc_staged_α_423_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 272], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_423_2
.Lcall_proc_staged_α_423_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_423_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_423_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_423_29
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
.Lcall_proc_staged_α_423_29:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n186_var_ref_α
n185_call_proc_staged_β:
                        mov              r11, 100
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_423_22
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_423_22
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_423_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_423_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n186_var_ref_α
.Lcall_proc_staged_α_423_0:
                        .quad            .Lcall_proc_staged_α_423_0_s
.Lcall_proc_staged_α_423_0_s:
                        .string          "d/3"
                        .size            n185_call_proc_staged_bx, .-n185_call_proc_staged_bx
                        .type            n186_var_ref_bx, @function
n186_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n187_var_ref_α
                        .size            n186_var_ref_bx, .-n186_var_ref_bx
                        .type            n187_var_ref_bx, @function
n187_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n188_var_ref_α
                        .size            n187_var_ref_bx, .-n187_var_ref_bx
                        .type            n188_var_ref_bx, @function
n188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7632]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n189_call_proc_staged_α
                        .size            n188_var_ref_bx, .-n188_var_ref_bx
                        .type            n189_call_proc_staged_bx, @function
n189_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_call_proc_staged_α:
                        mov              r11, 104
                        mov              qword ptr [rbp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_431_200
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_431_201
.Lcall_proc_staged_α_431_200:
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
.Lcall_proc_staged_α_431_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_431_202
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_431_203
.Lcall_proc_staged_α_431_202:
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
.Lcall_proc_staged_α_431_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_431_204
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_431_205
.Lcall_proc_staged_α_431_204:
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
.Lcall_proc_staged_α_431_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_431_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_431_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7776]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_431_99
                        mov              r10, qword ptr [rbp + 7736]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_431_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_431_99
                        mov              rcx, qword ptr [rbp + 7752]
                        mov              rdx, qword ptr [rbp + 7760]
                        lea              rsp, [rbp + 7776]
                        mov              rbp, qword ptr [rbp + 7768];         jmp   rax
.Lcall_proc_staged_α_431_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_431_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_431_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_431_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_431_3:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_431_21
                        add              rsp, 32
.Lcall_proc_staged_α_431_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_431_2
.Lcall_proc_staged_α_431_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 128], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_431_2
.Lcall_proc_staged_α_431_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_431_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n185_call_proc_staged_β
.Lcall_proc_staged_α_431_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_431_29
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
.Lcall_proc_staged_α_431_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n185_call_proc_staged_β
                                                                              jmp   d$2F3_ret0
n189_call_proc_staged_β:
                        mov              r11, 104
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_431_22
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_431_22
                        mov              rcx, qword ptr [rbp + 136]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_431_22:
                                                                              jmp   n185_call_proc_staged_β
.Lcall_proc_staged_α_431_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n185_call_proc_staged_β
                                                                              jmp   d$2F3_ret0
.Lcall_proc_staged_α_431_0:
                        .quad            .Lcall_proc_staged_α_431_0_s
.Lcall_proc_staged_α_431_0_s:
                        .string          "d/3"
                        .size            n189_call_proc_staged_bx, .-n189_call_proc_staged_bx
                        .type            n190_var_ref_bx, @function
n190_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              r11, 105
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n191_lit_string_α
                        .size            n190_var_ref_bx, .-n190_var_ref_bx
                        .type            n191_lit_string_bx, @function
n191_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:      mov              r11, 106
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_434_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n192_var_ref_α
.Llit_string_α_434_0:   .quad            .Llit_string_α_434_0_s
.Llit_string_α_434_0_s: .string          "-"
                        .size            n191_lit_string_bx, .-n191_lit_string_bx
                        .type            n192_var_ref_bx, @function
n192_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx;         jmp   n193_var_ref_α
                        .size            n192_var_ref_bx, .-n192_var_ref_bx
                        .type            n193_var_ref_bx, @function
n193_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n194_call_α
                        .size            n193_var_ref_bx, .-n193_var_ref_bx
                        .type            n194_call_bx, @function
n194_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_call_α:            mov              r11, 109
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
                                                                              jmp   n195_call_α
n194_call_β:            mov              r11, 109;                            jmp   d$2F3_step
                        .size            n194_call_bx, .-n194_call_bx
                        .type            n195_call_bx, @function
n195_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_call_α:            mov              r11, 110
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
                                                                              jmp   n196_var_ref_α
n195_call_β:            mov              r11, 110;                            jmp   d$2F3_step
                        .size            n195_call_bx, .-n195_call_bx
                        .type            n196_var_ref_bx, @function
n196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n197_var_ref_α
                        .size            n196_var_ref_bx, .-n196_var_ref_bx
                        .type            n197_var_ref_bx, @function
n197_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n198_call_α
                        .size            n197_var_ref_bx, .-n197_var_ref_bx
                        .type            n198_call_bx, @function
n198_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_call_α:            mov              r11, 113
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
                                                                              jmp   n199_var_ref_α
n198_call_β:            mov              r11, 113;                            jmp   d$2F3_step
                        .size            n198_call_bx, .-n198_call_bx
                        .type            n199_var_ref_bx, @function
n199_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n200_lit_string_α
                        .size            n199_var_ref_bx, .-n199_var_ref_bx
                        .type            n200_lit_string_bx, @function
n200_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:      mov              r11, 115
                        mov              qword ptr [rbp + 1344], 2            # result
                        mov              dword ptr [rbp + 1348], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_448_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n201_var_ref_α
.Llit_string_α_448_0:   .quad            .Llit_string_α_448_0_s
.Llit_string_α_448_0_s: .string          "-"
                        .size            n200_lit_string_bx, .-n200_lit_string_bx
                        .type            n201_var_ref_bx, @function
n201_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n202_var_ref_α
                        .size            n201_var_ref_bx, .-n201_var_ref_bx
                        .type            n202_var_ref_bx, @function
n202_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7632]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n203_call_α
                        .size            n202_var_ref_bx, .-n202_var_ref_bx
                        .type            n203_call_bx, @function
n203_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_call_α:            mov              r11, 118
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
                                                                              jmp   n204_call_α
n203_call_β:            mov              r11, 118;                            jmp   d$2F3_step
                        .size            n203_call_bx, .-n203_call_bx
                        .type            n204_call_bx, @function
n204_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_call_α:            mov              r11, 119
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
                                                                              jmp   n205_cut_α
n204_call_β:            mov              r11, 119;                            jmp   d$2F3_step
                        .size            n204_call_bx, .-n204_call_bx
                        .type            n205_cut_bx, @function
n205_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_cut_α:             mov              r11, 120
                        mov              qword ptr [rbp + 7720], 0
                        mov              qword ptr [rbp + 7728], 0
                        lea              rdi, [rbp + 7712]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n206_var_ref_α
                        .size            n205_cut_bx, .-n205_cut_bx
                        .type            n206_var_ref_bx, @function
n206_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n207_var_ref_α
                        .size            n206_var_ref_bx, .-n206_var_ref_bx
                        .type            n207_var_ref_bx, @function
n207_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n208_var_ref_α
                        .size            n207_var_ref_bx, .-n207_var_ref_bx
                        .type            n208_var_ref_bx, @function
n208_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n209_call_proc_staged_α
                        .size            n208_var_ref_bx, .-n208_var_ref_bx
                        .type            n209_call_proc_staged_bx, @function
n209_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_call_proc_staged_α:
                        mov              r11, 124
                        mov              qword ptr [rbp + 1072], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_464_200
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_464_201
.Lcall_proc_staged_α_464_200:
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
.Lcall_proc_staged_α_464_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_464_202
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_464_203
.Lcall_proc_staged_α_464_202:
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
.Lcall_proc_staged_α_464_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_464_204
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_464_205
.Lcall_proc_staged_α_464_204:
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
.Lcall_proc_staged_α_464_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_464_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_464_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_464_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_464_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_464_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_464_3:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_464_21
                        add              rsp, 32
.Lcall_proc_staged_α_464_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_464_2
.Lcall_proc_staged_α_464_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1072], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_464_2
.Lcall_proc_staged_α_464_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_464_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_464_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_464_29
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
.Lcall_proc_staged_α_464_29:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n210_var_ref_α
n209_call_proc_staged_β:
                        mov              r11, 124
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_464_22
                        mov              rax, qword ptr [rbp + 1072]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_464_22
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_464_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_464_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n210_var_ref_α
.Lcall_proc_staged_α_464_0:
                        .quad            .Lcall_proc_staged_α_464_0_s
.Lcall_proc_staged_α_464_0_s:
                        .string          "d/3"
                        .size            n209_call_proc_staged_bx, .-n209_call_proc_staged_bx
                        .type            n210_var_ref_bx, @function
n210_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n211_var_ref_α
                        .size            n210_var_ref_bx, .-n210_var_ref_bx
                        .type            n211_var_ref_bx, @function
n211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 126
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n212_var_ref_α
                        .size            n211_var_ref_bx, .-n211_var_ref_bx
                        .type            n212_var_ref_bx, @function
n212_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7632]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n213_call_proc_staged_α
                        .size            n212_var_ref_bx, .-n212_var_ref_bx
                        .type            n213_call_proc_staged_bx, @function
n213_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_call_proc_staged_α:
                        mov              r11, 128
                        mov              qword ptr [rbp + 928], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_472_200
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_472_201
.Lcall_proc_staged_α_472_200:
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
.Lcall_proc_staged_α_472_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_472_202
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_472_203
.Lcall_proc_staged_α_472_202:
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
.Lcall_proc_staged_α_472_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_472_204
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_472_205
.Lcall_proc_staged_α_472_204:
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
.Lcall_proc_staged_α_472_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_472_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_472_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7776]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_472_99
                        mov              r10, qword ptr [rbp + 7736]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_472_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_472_99
                        mov              rcx, qword ptr [rbp + 7752]
                        mov              rdx, qword ptr [rbp + 7760]
                        lea              rsp, [rbp + 7776]
                        mov              rbp, qword ptr [rbp + 7768];         jmp   rax
.Lcall_proc_staged_α_472_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_472_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_472_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_472_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_472_3:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_472_21
                        add              rsp, 32
.Lcall_proc_staged_α_472_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_472_2
.Lcall_proc_staged_α_472_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 928], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_472_2
.Lcall_proc_staged_α_472_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_472_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n209_call_proc_staged_β
.Lcall_proc_staged_α_472_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_472_29
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
.Lcall_proc_staged_α_472_29:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    n209_call_proc_staged_β
                                                                              jmp   d$2F3_ret1
n213_call_proc_staged_β:
                        mov              r11, 128
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_472_22
                        mov              rax, qword ptr [rbp + 928]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_472_22
                        mov              rcx, qword ptr [rbp + 936]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_472_22:
                                                                              jmp   n209_call_proc_staged_β
.Lcall_proc_staged_α_472_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    n209_call_proc_staged_β
                                                                              jmp   d$2F3_ret1
.Lcall_proc_staged_α_472_0:
                        .quad            .Lcall_proc_staged_α_472_0_s
.Lcall_proc_staged_α_472_0_s:
                        .string          "d/3"
                        .size            n213_call_proc_staged_bx, .-n213_call_proc_staged_bx
                        .type            n214_var_ref_bx, @function
n214_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n215_lit_string_α
                        .size            n214_var_ref_bx, .-n214_var_ref_bx
                        .type            n215_lit_string_bx, @function
n215_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      mov              r11, 130
                        mov              qword ptr [rbp + 2672], 2            # result
                        mov              dword ptr [rbp + 2676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_475_0]
                        mov              qword ptr [rbp + 2680], rax;         jmp   n216_var_ref_α
.Llit_string_α_475_0:   .quad            .Llit_string_α_475_0_s
.Llit_string_α_475_0_s: .string          "*"
                        .size            n215_lit_string_bx, .-n215_lit_string_bx
                        .type            n216_var_ref_bx, @function
n216_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx;         jmp   n217_var_ref_α
                        .size            n216_var_ref_bx, .-n216_var_ref_bx
                        .type            n217_var_ref_bx, @function
n217_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx;         jmp   n218_call_α
                        .size            n217_var_ref_bx, .-n217_var_ref_bx
                        .type            n218_call_bx, @function
n218_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_call_α:            mov              r11, 133
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
                                                                              jmp   n219_call_α
n218_call_β:            mov              r11, 133;                            jmp   d$2F3_step
                        .size            n218_call_bx, .-n218_call_bx
                        .type            n219_call_bx, @function
n219_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_call_α:            mov              r11, 134
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
                                                                              jmp   n220_var_ref_α
n219_call_β:            mov              r11, 134;                            jmp   d$2F3_step
                        .size            n219_call_bx, .-n219_call_bx
                        .type            n220_var_ref_bx, @function
n220_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx;         jmp   n221_var_ref_α
                        .size            n220_var_ref_bx, .-n220_var_ref_bx
                        .type            n221_var_ref_bx, @function
n221_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx;         jmp   n222_call_α
                        .size            n221_var_ref_bx, .-n221_var_ref_bx
                        .type            n222_call_bx, @function
n222_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_call_α:            mov              r11, 137
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
                                                                              jmp   n223_var_ref_α
n222_call_β:            mov              r11, 137;                            jmp   d$2F3_step
                        .size            n222_call_bx, .-n222_call_bx
                        .type            n223_var_ref_bx, @function
n223_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx;         jmp   n224_lit_string_α
                        .size            n223_var_ref_bx, .-n223_var_ref_bx
                        .type            n224_lit_string_bx, @function
n224_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rbp + 2368], 2            # result
                        mov              dword ptr [rbp + 2372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_489_0]
                        mov              qword ptr [rbp + 2376], rax;         jmp   n225_lit_string_α
.Llit_string_α_489_0:   .quad            .Llit_string_α_489_0_s
.Llit_string_α_489_0_s: .string          "+"
                        .size            n224_lit_string_bx, .-n224_lit_string_bx
                        .type            n225_lit_string_bx, @function
n225_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:      mov              r11, 140
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_490_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n226_var_ref_α
.Llit_string_α_490_0:   .quad            .Llit_string_α_490_0_s
.Llit_string_α_490_0_s: .string          "*"
                        .size            n225_lit_string_bx, .-n225_lit_string_bx
                        .type            n226_var_ref_bx, @function
n226_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n227_var_ref_α
                        .size            n226_var_ref_bx, .-n226_var_ref_bx
                        .type            n227_var_ref_bx, @function
n227_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n228_call_α
                        .size            n227_var_ref_bx, .-n227_var_ref_bx
                        .type            n228_call_bx, @function
n228_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_call_α:            mov              r11, 143
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
                                                                              jmp   n229_lit_string_α
n228_call_β:            mov              r11, 143;                            jmp   d$2F3_ω
                        .size            n228_call_bx, .-n228_call_bx
                        .type            n229_lit_string_bx, @function
n229_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rbp + 2272], 2            # result
                        mov              dword ptr [rbp + 2276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_496_0]
                        mov              qword ptr [rbp + 2280], rax;         jmp   n230_var_ref_α
.Llit_string_α_496_0:   .quad            .Llit_string_α_496_0_s
.Llit_string_α_496_0_s: .string          "*"
                        .size            n229_lit_string_bx, .-n229_lit_string_bx
                        .type            n230_var_ref_bx, @function
n230_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx;         jmp   n231_var_ref_α
                        .size            n230_var_ref_bx, .-n230_var_ref_bx
                        .type            n231_var_ref_bx, @function
n231_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7632]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx;         jmp   n232_call_α
                        .size            n231_var_ref_bx, .-n231_var_ref_bx
                        .type            n232_call_bx, @function
n232_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_call_α:            mov              r11, 147
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
                                                                              jmp   n233_call_α
n232_call_β:            mov              r11, 147;                            jmp   d$2F3_ω
                        .size            n232_call_bx, .-n232_call_bx
                        .type            n233_call_bx, @function
n233_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_call_α:            mov              r11, 148
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
                                                                              jmp   n234_call_α
n233_call_β:            mov              r11, 148;                            jmp   d$2F3_step
                        .size            n233_call_bx, .-n233_call_bx
                        .type            n234_call_bx, @function
n234_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_call_α:            mov              r11, 149
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
                                                                              jmp   n235_cut_α
n234_call_β:            mov              r11, 149;                            jmp   d$2F3_step
                        .size            n234_call_bx, .-n234_call_bx
                        .type            n235_cut_bx, @function
n235_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_cut_α:             mov              r11, 150
                        mov              qword ptr [rbp + 7720], 0
                        mov              qword ptr [rbp + 7728], 0
                        lea              rdi, [rbp + 7712]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n236_var_ref_α
                        .size            n235_cut_bx, .-n235_cut_bx
                        .type            n236_var_ref_bx, @function
n236_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n237_var_ref_α
                        .size            n236_var_ref_bx, .-n236_var_ref_bx
                        .type            n237_var_ref_bx, @function
n237_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx;         jmp   n238_var_ref_α
                        .size            n237_var_ref_bx, .-n237_var_ref_bx
                        .type            n238_var_ref_bx, @function
n238_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n239_call_proc_staged_α
                        .size            n238_var_ref_bx, .-n238_var_ref_bx
                        .type            n239_call_proc_staged_bx, @function
n239_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_call_proc_staged_α:
                        mov              r11, 154
                        mov              qword ptr [rbp + 1872], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_513_200
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_513_201
.Lcall_proc_staged_α_513_200:
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
.Lcall_proc_staged_α_513_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_513_202
                        mov              rax, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_513_203
.Lcall_proc_staged_α_513_202:
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
.Lcall_proc_staged_α_513_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_513_204
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_513_205
.Lcall_proc_staged_α_513_204:
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
.Lcall_proc_staged_α_513_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_513_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_513_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_513_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_513_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_513_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_513_3:
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_513_21
                        add              rsp, 32
.Lcall_proc_staged_α_513_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_513_2
.Lcall_proc_staged_α_513_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1872], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_513_2
.Lcall_proc_staged_α_513_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_513_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_513_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_513_29
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
.Lcall_proc_staged_α_513_29:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n240_var_ref_α
n239_call_proc_staged_β:
                        mov              r11, 154
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_513_22
                        mov              rax, qword ptr [rbp + 1872]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_513_22
                        mov              rcx, qword ptr [rbp + 1880]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_513_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_513_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n240_var_ref_α
.Lcall_proc_staged_α_513_0:
                        .quad            .Lcall_proc_staged_α_513_0_s
.Lcall_proc_staged_α_513_0_s:
                        .string          "d/3"
                        .size            n239_call_proc_staged_bx, .-n239_call_proc_staged_bx
                        .type            n240_var_ref_bx, @function
n240_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_var_ref_α:         mov              r11, 155
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n241_var_ref_α
                        .size            n240_var_ref_bx, .-n240_var_ref_bx
                        .type            n241_var_ref_bx, @function
n241_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n242_var_ref_α
                        .size            n241_var_ref_bx, .-n241_var_ref_bx
                        .type            n242_var_ref_bx, @function
n242_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_var_ref_α:         mov              r11, 157
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7632]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n243_call_proc_staged_α
                        .size            n242_var_ref_bx, .-n242_var_ref_bx
                        .type            n243_call_proc_staged_bx, @function
n243_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_call_proc_staged_α:
                        mov              r11, 158
                        mov              qword ptr [rbp + 1728], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_521_200
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_521_201
.Lcall_proc_staged_α_521_200:
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
.Lcall_proc_staged_α_521_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_521_202
                        mov              rax, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_521_203
.Lcall_proc_staged_α_521_202:
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
.Lcall_proc_staged_α_521_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_521_204
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_521_205
.Lcall_proc_staged_α_521_204:
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
.Lcall_proc_staged_α_521_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_521_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_521_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7776]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_521_99
                        mov              r10, qword ptr [rbp + 7736]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_521_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_521_99
                        mov              rcx, qword ptr [rbp + 7752]
                        mov              rdx, qword ptr [rbp + 7760]
                        lea              rsp, [rbp + 7776]
                        mov              rbp, qword ptr [rbp + 7768];         jmp   rax
.Lcall_proc_staged_α_521_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_521_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_521_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_521_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_521_3:
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_521_21
                        add              rsp, 32
.Lcall_proc_staged_α_521_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_521_2
.Lcall_proc_staged_α_521_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1728], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_521_2
.Lcall_proc_staged_α_521_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_521_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n239_call_proc_staged_β
.Lcall_proc_staged_α_521_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_521_29
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
.Lcall_proc_staged_α_521_29:
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              al, 104;                             je    n239_call_proc_staged_β
                                                                              jmp   d$2F3_ret2
n243_call_proc_staged_β:
                        mov              r11, 158
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_521_22
                        mov              rax, qword ptr [rbp + 1728]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_521_22
                        mov              rcx, qword ptr [rbp + 1736]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_521_22:
                                                                              jmp   n239_call_proc_staged_β
.Lcall_proc_staged_α_521_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              al, 104;                             je    n239_call_proc_staged_β
                                                                              jmp   d$2F3_ret2
.Lcall_proc_staged_α_521_0:
                        .quad            .Lcall_proc_staged_α_521_0_s
.Lcall_proc_staged_α_521_0_s:
                        .string          "d/3"
                        .size            n243_call_proc_staged_bx, .-n243_call_proc_staged_bx
                        .type            n244_var_ref_bx, @function
n244_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx;         jmp   n245_lit_string_α
                        .size            n244_var_ref_bx, .-n244_var_ref_bx
                        .type            n245_lit_string_bx, @function
n245_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:      mov              r11, 160
                        mov              qword ptr [rbp + 3920], 2            # result
                        mov              dword ptr [rbp + 3924], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_524_0]
                        mov              qword ptr [rbp + 3928], rax;         jmp   n246_var_ref_α
.Llit_string_α_524_0:   .quad            .Llit_string_α_524_0_s
.Llit_string_α_524_0_s: .string          "/"
                        .size            n245_lit_string_bx, .-n245_lit_string_bx
                        .type            n246_var_ref_bx, @function
n246_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_var_ref_α:         mov              r11, 161
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx;         jmp   n247_var_ref_α
                        .size            n246_var_ref_bx, .-n246_var_ref_bx
                        .type            n247_var_ref_bx, @function
n247_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx;         jmp   n248_call_α
                        .size            n247_var_ref_bx, .-n247_var_ref_bx
                        .type            n248_call_bx, @function
n248_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_call_α:            mov              r11, 163
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
                                                                              jmp   n249_call_α
n248_call_β:            mov              r11, 163;                            jmp   d$2F3_step
                        .size            n248_call_bx, .-n248_call_bx
                        .type            n249_call_bx, @function
n249_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:            mov              r11, 164
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
                                                                              jmp   n250_var_ref_α
n249_call_β:            mov              r11, 164;                            jmp   d$2F3_step
                        .size            n249_call_bx, .-n249_call_bx
                        .type            n250_var_ref_bx, @function
n250_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx;         jmp   n251_var_ref_α
                        .size            n250_var_ref_bx, .-n250_var_ref_bx
                        .type            n251_var_ref_bx, @function
n251_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:         mov              r11, 166
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx;         jmp   n252_call_α
                        .size            n251_var_ref_bx, .-n251_var_ref_bx
                        .type            n252_call_bx, @function
n252_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_call_α:            mov              r11, 167
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
                                                                              jmp   n253_var_ref_α
n252_call_β:            mov              r11, 167;                            jmp   d$2F3_step
                        .size            n252_call_bx, .-n252_call_bx
                        .type            n253_var_ref_bx, @function
n253_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:         mov              r11, 168
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx;         jmp   n254_lit_string_α
                        .size            n253_var_ref_bx, .-n253_var_ref_bx
                        .type            n254_lit_string_bx, @function
n254_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rbp + 3616], 2            # result
                        mov              dword ptr [rbp + 3620], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_538_0]
                        mov              qword ptr [rbp + 3624], rax;         jmp   n255_lit_string_α
.Llit_string_α_538_0:   .quad            .Llit_string_α_538_0_s
.Llit_string_α_538_0_s: .string          "/"
                        .size            n254_lit_string_bx, .-n254_lit_string_bx
                        .type            n255_lit_string_bx, @function
n255_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rbp + 3392], 2            # result
                        mov              dword ptr [rbp + 3396], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_539_0]
                        mov              qword ptr [rbp + 3400], rax;         jmp   n256_lit_string_α
.Llit_string_α_539_0:   .quad            .Llit_string_α_539_0_s
.Llit_string_α_539_0_s: .string          "-"
                        .size            n255_lit_string_bx, .-n255_lit_string_bx
                        .type            n256_lit_string_bx, @function
n256_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:      mov              r11, 171
                        mov              qword ptr [rbp + 3168], 2            # result
                        mov              dword ptr [rbp + 3172], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_540_0]
                        mov              qword ptr [rbp + 3176], rax;         jmp   n257_var_ref_α
.Llit_string_α_540_0:   .quad            .Llit_string_α_540_0_s
.Llit_string_α_540_0_s: .string          "*"
                        .size            n256_lit_string_bx, .-n256_lit_string_bx
                        .type            n257_var_ref_bx, @function
n257_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx;         jmp   n258_var_ref_α
                        .size            n257_var_ref_bx, .-n257_var_ref_bx
                        .type            n258_var_ref_bx, @function
n258_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx;         jmp   n259_call_α
                        .size            n258_var_ref_bx, .-n258_var_ref_bx
                        .type            n259_call_bx, @function
n259_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_call_α:            mov              r11, 174
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
                                                                              jmp   n260_lit_string_α
n259_call_β:            mov              r11, 174;                            jmp   d$2F3_ω
                        .size            n259_call_bx, .-n259_call_bx
                        .type            n260_lit_string_bx, @function
n260_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:      mov              r11, 175
                        mov              qword ptr [rbp + 3296], 2            # result
                        mov              dword ptr [rbp + 3300], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_546_0]
                        mov              qword ptr [rbp + 3304], rax;         jmp   n261_var_ref_α
.Llit_string_α_546_0:   .quad            .Llit_string_α_546_0_s
.Llit_string_α_546_0_s: .string          "*"
                        .size            n260_lit_string_bx, .-n260_lit_string_bx
                        .type            n261_var_ref_bx, @function
n261_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_var_ref_α:         mov              r11, 176
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n262_var_ref_α
                        .size            n261_var_ref_bx, .-n261_var_ref_bx
                        .type            n262_var_ref_bx, @function
n262_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_var_ref_α:         mov              r11, 177
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7632]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n263_call_α
                        .size            n262_var_ref_bx, .-n262_var_ref_bx
                        .type            n263_call_bx, @function
n263_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_call_α:            mov              r11, 178
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
                                                                              jmp   n264_call_α
n263_call_β:            mov              r11, 178;                            jmp   d$2F3_ω
                        .size            n263_call_bx, .-n263_call_bx
                        .type            n264_call_bx, @function
n264_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_call_α:            mov              r11, 179
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
                                                                              jmp   n265_lit_string_α
n264_call_β:            mov              r11, 179;                            jmp   d$2F3_ω
                        .size            n264_call_bx, .-n264_call_bx
                        .type            n265_lit_string_bx, @function
n265_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:      mov              r11, 180
                        mov              qword ptr [rbp + 3520], 2            # result
                        mov              dword ptr [rbp + 3524], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_553_0]
                        mov              qword ptr [rbp + 3528], rax;         jmp   n266_var_ref_α
.Llit_string_α_553_0:   .quad            .Llit_string_α_553_0_s
.Llit_string_α_553_0_s: .string          "^"
                        .size            n265_lit_string_bx, .-n265_lit_string_bx
                        .type            n266_var_ref_bx, @function
n266_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:         mov              r11, 181
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx;         jmp   n267_lit_integer_α
                        .size            n266_var_ref_bx, .-n266_var_ref_bx
                        .type            n267_lit_integer_bx, @function
n267_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_integer_α:     mov              r11, 182
                        mov              qword ptr [rbp + 3424], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_556_0]
                        mov              qword ptr [rbp + 3432], rax;         jmp   n268_call_α
.Llit_integer_α_556_0:  .quad            2
                        .size            n267_lit_integer_bx, .-n267_lit_integer_bx
                        .type            n268_call_bx, @function
n268_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_call_α:            mov              r11, 183
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
                                                                              jmp   n269_call_α
n268_call_β:            mov              r11, 183;                            jmp   d$2F3_ω
                        .size            n268_call_bx, .-n268_call_bx
                        .type            n269_call_bx, @function
n269_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_call_α:            mov              r11, 184
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
                                                                              jmp   n270_call_α
n269_call_β:            mov              r11, 184;                            jmp   d$2F3_step
                        .size            n269_call_bx, .-n269_call_bx
                        .type            n270_call_bx, @function
n270_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_call_α:            mov              r11, 185
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
                                                                              jmp   n271_cut_α
n270_call_β:            mov              r11, 185;                            jmp   d$2F3_step
                        .size            n270_call_bx, .-n270_call_bx
                        .type            n271_cut_bx, @function
n271_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_cut_α:             mov              r11, 186
                        mov              qword ptr [rbp + 7720], 0
                        mov              qword ptr [rbp + 7728], 0
                        lea              rdi, [rbp + 7712]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n272_var_ref_α
                        .size            n271_cut_bx, .-n271_cut_bx
                        .type            n272_var_ref_bx, @function
n272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx;         jmp   n273_var_ref_α
                        .size            n272_var_ref_bx, .-n272_var_ref_bx
                        .type            n273_var_ref_bx, @function
n273_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n274_var_ref_α
                        .size            n273_var_ref_bx, .-n273_var_ref_bx
                        .type            n274_var_ref_bx, @function
n274_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx;         jmp   n275_call_proc_staged_α
                        .size            n274_var_ref_bx, .-n274_var_ref_bx
                        .type            n275_call_proc_staged_bx, @function
n275_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_call_proc_staged_α:
                        mov              r11, 190
                        mov              qword ptr [rbp + 2896], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_569_200
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_569_201
.Lcall_proc_staged_α_569_200:
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
.Lcall_proc_staged_α_569_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_569_202
                        mov              rax, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_569_203
.Lcall_proc_staged_α_569_202:
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
.Lcall_proc_staged_α_569_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_569_204
                        mov              rax, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_569_205
.Lcall_proc_staged_α_569_204:
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
.Lcall_proc_staged_α_569_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_569_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_569_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_569_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_569_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_569_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_569_3:
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_569_21
                        add              rsp, 32
.Lcall_proc_staged_α_569_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_569_2
.Lcall_proc_staged_α_569_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2896], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_569_2
.Lcall_proc_staged_α_569_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_569_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_569_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_569_29
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
.Lcall_proc_staged_α_569_29:
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n276_var_ref_α
n275_call_proc_staged_β:
                        mov              r11, 190
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_569_22
                        mov              rax, qword ptr [rbp + 2896]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_569_22
                        mov              rcx, qword ptr [rbp + 2904]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_569_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_569_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n276_var_ref_α
.Lcall_proc_staged_α_569_0:
                        .quad            .Lcall_proc_staged_α_569_0_s
.Lcall_proc_staged_α_569_0_s:
                        .string          "d/3"
                        .size            n275_call_proc_staged_bx, .-n275_call_proc_staged_bx
                        .type            n276_var_ref_bx, @function
n276_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n277_var_ref_α
                        .size            n276_var_ref_bx, .-n276_var_ref_bx
                        .type            n277_var_ref_bx, @function
n277_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx;         jmp   n278_var_ref_α
                        .size            n277_var_ref_bx, .-n277_var_ref_bx
                        .type            n278_var_ref_bx, @function
n278_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7632]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx;         jmp   n279_call_proc_staged_α
                        .size            n278_var_ref_bx, .-n278_var_ref_bx
                        .type            n279_call_proc_staged_bx, @function
n279_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_call_proc_staged_α:
                        mov              r11, 194
                        mov              qword ptr [rbp + 2752], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_577_200
                        mov              rax, qword ptr [rbp + 2784]
                        mov              rdx, qword ptr [rbp + 2792]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_577_201
.Lcall_proc_staged_α_577_200:
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
.Lcall_proc_staged_α_577_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_577_202
                        mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_577_203
.Lcall_proc_staged_α_577_202:
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
.Lcall_proc_staged_α_577_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_577_204
                        mov              rax, qword ptr [rbp + 2816]
                        mov              rdx, qword ptr [rbp + 2824]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_577_205
.Lcall_proc_staged_α_577_204:
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
.Lcall_proc_staged_α_577_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_577_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_577_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7776]
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
                        mov              r10, qword ptr [rbp + 7736]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_577_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_577_99
                        mov              rcx, qword ptr [rbp + 7752]
                        mov              rdx, qword ptr [rbp + 7760]
                        lea              rsp, [rbp + 7776]
                        mov              rbp, qword ptr [rbp + 7768];         jmp   rax
.Lcall_proc_staged_α_577_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_577_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_577_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_577_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_577_3:
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_577_21
                        add              rsp, 32
.Lcall_proc_staged_α_577_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_577_2
.Lcall_proc_staged_α_577_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2752], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_577_2
.Lcall_proc_staged_α_577_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_577_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n275_call_proc_staged_β
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
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
.Lcall_proc_staged_α_577_29:
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              al, 104;                             je    n275_call_proc_staged_β
                                                                              jmp   d$2F3_ret3
n279_call_proc_staged_β:
                        mov              r11, 194
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_577_22
                        mov              rax, qword ptr [rbp + 2752]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_577_22
                        mov              rcx, qword ptr [rbp + 2760]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_577_22:
                                                                              jmp   n275_call_proc_staged_β
.Lcall_proc_staged_α_577_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              al, 104;                             je    n275_call_proc_staged_β
                                                                              jmp   d$2F3_ret3
.Lcall_proc_staged_α_577_0:
                        .quad            .Lcall_proc_staged_α_577_0_s
.Lcall_proc_staged_α_577_0_s:
                        .string          "d/3"
                        .size            n279_call_proc_staged_bx, .-n279_call_proc_staged_bx
                        .type            n280_var_ref_bx, @function
n280_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:         mov              r11, 195
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4960], rax
                        mov              qword ptr [rbp + 4968], rdx;         jmp   n281_lit_string_α
                        .size            n280_var_ref_bx, .-n280_var_ref_bx
                        .type            n281_lit_string_bx, @function
n281_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:      mov              r11, 196
                        mov              qword ptr [rbp + 5088], 2            # result
                        mov              dword ptr [rbp + 5092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_580_0]
                        mov              qword ptr [rbp + 5096], rax;         jmp   n282_var_ref_α
.Llit_string_α_580_0:   .quad            .Llit_string_α_580_0_s
.Llit_string_α_580_0_s: .string          "^"
                        .size            n281_lit_string_bx, .-n281_lit_string_bx
                        .type            n282_var_ref_bx, @function
n282_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx;         jmp   n283_var_ref_α
                        .size            n282_var_ref_bx, .-n282_var_ref_bx
                        .type            n283_var_ref_bx, @function
n283_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx;         jmp   n284_call_α
                        .size            n283_var_ref_bx, .-n283_var_ref_bx
                        .type            n284_call_bx, @function
n284_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_call_α:            mov              r11, 199
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 5064], rax
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 5040], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 5048], rax
                        mov              rax, qword ptr [rbp + 5088]
                        mov              qword ptr [rbp + 5024], rax
                        mov              rax, qword ptr [rbp + 5096]
                        mov              qword ptr [rbp + 5032], rax
                        lea              rdi, [rbp + 5024]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n285_call_α
n284_call_β:            mov              r11, 199;                            jmp   d$2F3_step
                        .size            n284_call_bx, .-n284_call_bx
                        .type            n285_call_bx, @function
n285_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_call_α:            mov              r11, 200
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 4936], rax
                        mov              rax, qword ptr [rbp + 4960]
                        mov              qword ptr [rbp + 4912], rax
                        mov              rax, qword ptr [rbp + 4968]
                        mov              qword ptr [rbp + 4920], rax
                        lea              rdi, [rbp + 4912]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n286_var_ref_α
n285_call_β:            mov              r11, 200;                            jmp   d$2F3_step
                        .size            n285_call_bx, .-n285_call_bx
                        .type            n286_var_ref_bx, @function
n286_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx;         jmp   n287_var_ref_α
                        .size            n286_var_ref_bx, .-n286_var_ref_bx
                        .type            n287_var_ref_bx, @function
n287_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 4880], rax
                        mov              qword ptr [rbp + 4888], rdx;         jmp   n288_call_α
                        .size            n287_var_ref_bx, .-n287_var_ref_bx
                        .type            n288_call_bx, @function
n288_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_call_α:            mov              r11, 203
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 4832], rax
                        mov              rax, qword ptr [rbp + 4888]
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
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n289_var_ref_α
n288_call_β:            mov              r11, 203;                            jmp   d$2F3_step
                        .size            n288_call_bx, .-n288_call_bx
                        .type            n289_var_ref_bx, @function
n289_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_var_ref_α:         mov              r11, 204
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx;         jmp   n290_lit_string_α
                        .size            n289_var_ref_bx, .-n289_var_ref_bx
                        .type            n290_lit_string_bx, @function
n290_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:      mov              r11, 205
                        mov              qword ptr [rbp + 4784], 2            # result
                        mov              dword ptr [rbp + 4788], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_594_0]
                        mov              qword ptr [rbp + 4792], rax;         jmp   n291_lit_string_α
.Llit_string_α_594_0:   .quad            .Llit_string_α_594_0_s
.Llit_string_α_594_0_s: .string          "*"
                        .size            n290_lit_string_bx, .-n290_lit_string_bx
                        .type            n291_lit_string_bx, @function
n291_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:      mov              r11, 206
                        mov              qword ptr [rbp + 4560], 2            # result
                        mov              dword ptr [rbp + 4564], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_595_0]
                        mov              qword ptr [rbp + 4568], rax;         jmp   n292_var_ref_α
.Llit_string_α_595_0:   .quad            .Llit_string_α_595_0_s
.Llit_string_α_595_0_s: .string          "*"
                        .size            n291_lit_string_bx, .-n291_lit_string_bx
                        .type            n292_var_ref_bx, @function
n292_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:         mov              r11, 207
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 4448], rax
                        mov              qword ptr [rbp + 4456], rdx;         jmp   n293_var_ref_α
                        .size            n292_var_ref_bx, .-n292_var_ref_bx
                        .type            n293_var_ref_bx, @function
n293_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_var_ref_α:         mov              r11, 208
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx;         jmp   n294_call_α
                        .size            n293_var_ref_bx, .-n293_var_ref_bx
                        .type            n294_call_bx, @function
n294_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_call_α:            mov              r11, 209
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4536], rax
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4456]
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
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n295_lit_string_α
n294_call_β:            mov              r11, 209;                            jmp   d$2F3_ω
                        .size            n294_call_bx, .-n294_call_bx
                        .type            n295_lit_string_bx, @function
n295_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:      mov              r11, 210
                        mov              qword ptr [rbp + 4688], 2            # result
                        mov              dword ptr [rbp + 4692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_601_0]
                        mov              qword ptr [rbp + 4696], rax;         jmp   n296_var_ref_α
.Llit_string_α_601_0:   .quad            .Llit_string_α_601_0_s
.Llit_string_α_601_0_s: .string          "^"
                        .size            n295_lit_string_bx, .-n295_lit_string_bx
                        .type            n296_var_ref_bx, @function
n296_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx;         jmp   n297_var_ref_α
                        .size            n296_var_ref_bx, .-n296_var_ref_bx
                        .type            n297_var_ref_bx, @function
n297_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7632]
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx;         jmp   n298_call_α
                        .size            n297_var_ref_bx, .-n297_var_ref_bx
                        .type            n298_call_bx, @function
n298_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_call_α:            mov              r11, 213
                        mov              rax, qword ptr [rbp + 4592]
                        mov              qword ptr [rbp + 4656], rax
                        mov              rax, qword ptr [rbp + 4600]
                        mov              qword ptr [rbp + 4664], rax
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 4640], rax
                        mov              rax, qword ptr [rbp + 4584]
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
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n299_call_α
n298_call_β:            mov              r11, 213;                            jmp   d$2F3_ω
                        .size            n298_call_bx, .-n298_call_bx
                        .type            n299_call_bx, @function
n299_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_call_α:            mov              r11, 214
                        mov              rax, qword ptr [rbp + 4608]
                        mov              qword ptr [rbp + 4752], rax
                        mov              rax, qword ptr [rbp + 4616]
                        mov              qword ptr [rbp + 4760], rax
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 4488]
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
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n300_call_α
n299_call_β:            mov              r11, 214;                            jmp   d$2F3_step
                        .size            n299_call_bx, .-n299_call_bx
                        .type            n300_call_bx, @function
n300_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_call_α:            mov              r11, 215
                        mov              rax, qword ptr [rbp + 4704]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4712]
                        mov              qword ptr [rbp + 4408], rax
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 4392], rax
                        lea              rdi, [rbp + 4384]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n301_cut_α
n300_call_β:            mov              r11, 215;                            jmp   d$2F3_step
                        .size            n300_call_bx, .-n300_call_bx
                        .type            n301_cut_bx, @function
n301_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_cut_α:             mov              r11, 216
                        mov              qword ptr [rbp + 7720], 0
                        mov              qword ptr [rbp + 7728], 0
                        lea              rdi, [rbp + 7712]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n302_var_ref_α
                        .size            n301_cut_bx, .-n301_cut_bx
                        .type            n302_var_ref_bx, @function
n302_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:         mov              r11, 217
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx;         jmp   n303_call_α
                        .size            n302_var_ref_bx, .-n302_var_ref_bx
                        .type            n303_call_bx, @function
n303_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_call_α:            mov              r11, 218
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4328], rax
                        lea              rdi, [rbp + 4320]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dop_pl_integer@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n304_var_ref_α
n303_call_β:            mov              r11, 218;                            jmp   d$2F3_ω
                        .size            n303_call_bx, .-n303_call_bx
                        .type            n304_var_ref_bx, @function
n304_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7632]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx;         jmp   n305_var_α
                        .size            n304_var_ref_bx, .-n304_var_ref_bx
                        .type            n305_var_bx, @function
n305_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:             mov              r11, 220
                        mov              rax, qword ptr [rbp + 7600]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 7608]
                        mov              qword ptr [rbp + 4232], rax;         jmp   n306_lit_integer_α
                        .size            n305_var_bx, .-n305_var_bx
                        .type            n306_lit_integer_bx, @function
n306_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_integer_α:     mov              r11, 221
                        mov              qword ptr [rbp + 4240], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_618_0]
                        mov              qword ptr [rbp + 4248], rax;         jmp   n307_call_α
.Llit_integer_α_618_0:  .quad            1
                        .size            n306_lit_integer_bx, .-n306_lit_integer_bx
                        .type            n307_call_bx, @function
n307_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_call_α:            mov              r11, 222
                        mov              rax, qword ptr [rbp + 4240]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4248]
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
                                                                              jmp   n308_call_α
n307_call_β:            mov              r11, 222;                            jmp   d$2F3_step
                        .size            n307_call_bx, .-n307_call_bx
                        .type            n308_call_bx, @function
n308_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_call_α:            mov              r11, 223
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 4272], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 4280], rax
                        lea              rdi, [rbp + 4272]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n309_call_α
n308_call_β:            mov              r11, 223;                            jmp   d$2F3_step
                        .size            n308_call_bx, .-n308_call_bx
                        .type            n309_call_bx, @function
n309_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_call_α:            mov              r11, 224
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
                                                                              jmp   n310_var_ref_α
n309_call_β:            mov              r11, 224;                            jmp   d$2F3_ω
                        .size            n309_call_bx, .-n309_call_bx
                        .type            n310_var_ref_bx, @function
n310_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx;         jmp   n311_var_ref_α
                        .size            n310_var_ref_bx, .-n310_var_ref_bx
                        .type            n311_var_ref_bx, @function
n311_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx;         jmp   n312_var_ref_α
                        .size            n311_var_ref_bx, .-n311_var_ref_bx
                        .type            n312_var_ref_bx, @function
n312_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx;         jmp   n313_call_proc_staged_α
                        .size            n312_var_ref_bx, .-n312_var_ref_bx
                        .type            n313_call_proc_staged_bx, @function
n313_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_call_proc_staged_α:
                        mov              r11, 228
                        mov              qword ptr [rbp + 4000], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_629_200
                        mov              rax, qword ptr [rbp + 4032]
                        mov              rdx, qword ptr [rbp + 4040]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_629_201
.Lcall_proc_staged_α_629_200:
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
.Lcall_proc_staged_α_629_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_629_202
                        mov              rax, qword ptr [rbp + 4048]
                        mov              rdx, qword ptr [rbp + 4056]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_629_203
.Lcall_proc_staged_α_629_202:
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
.Lcall_proc_staged_α_629_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_629_204
                        mov              rax, qword ptr [rbp + 4064]
                        mov              rdx, qword ptr [rbp + 4072]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_629_205
.Lcall_proc_staged_α_629_204:
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
.Lcall_proc_staged_α_629_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_629_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_629_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7776]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_629_99
                        mov              r10, qword ptr [rbp + 7736]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_629_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_629_99
                        mov              rcx, qword ptr [rbp + 7752]
                        mov              rdx, qword ptr [rbp + 7760]
                        lea              rsp, [rbp + 7776]
                        mov              rbp, qword ptr [rbp + 7768];         jmp   rax
.Lcall_proc_staged_α_629_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_629_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_629_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_629_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_629_3:
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_629_21
                        add              rsp, 32
.Lcall_proc_staged_α_629_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_629_2
.Lcall_proc_staged_α_629_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4000], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_629_2
.Lcall_proc_staged_α_629_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_629_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_629_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_629_29
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
.Lcall_proc_staged_α_629_29:
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret4
n313_call_proc_staged_β:
                        mov              r11, 228
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_629_22
                        mov              rax, qword ptr [rbp + 4000]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_629_22
                        mov              rcx, qword ptr [rbp + 4008]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_629_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_629_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret4
.Lcall_proc_staged_α_629_0:
                        .quad            .Lcall_proc_staged_α_629_0_s
.Lcall_proc_staged_α_629_0_s:
                        .string          "d/3"
                        .size            n313_call_proc_staged_bx, .-n313_call_proc_staged_bx
                        .type            n314_var_ref_bx, @function
n314_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:         mov              r11, 229
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx;         jmp   n315_lit_string_α
                        .size            n314_var_ref_bx, .-n314_var_ref_bx
                        .type            n315_lit_string_bx, @function
n315_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:      mov              r11, 230
                        mov              qword ptr [rbp + 5680], 2            # result
                        mov              dword ptr [rbp + 5684], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_632_0]
                        mov              qword ptr [rbp + 5688], rax;         jmp   n316_var_ref_α
.Llit_string_α_632_0:   .quad            .Llit_string_α_632_0_s
.Llit_string_α_632_0_s: .string          "-"
                        .size            n315_lit_string_bx, .-n315_lit_string_bx
                        .type            n316_var_ref_bx, @function
n316_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx;         jmp   n317_call_α
                        .size            n316_var_ref_bx, .-n316_var_ref_bx
                        .type            n317_call_bx, @function
n317_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_call_α:            mov              r11, 232
                        mov              rax, qword ptr [rbp + 5600]
                        mov              qword ptr [rbp + 5648], rax
                        mov              rax, qword ptr [rbp + 5608]
                        mov              qword ptr [rbp + 5656], rax
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 5632], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 5640], rax
                        lea              rdi, [rbp + 5632]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5616], rax
                        mov              qword ptr [rbp + 5624], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n318_call_α
n317_call_β:            mov              r11, 232;                            jmp   d$2F3_step
                        .size            n317_call_bx, .-n317_call_bx
                        .type            n318_call_bx, @function
n318_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_call_α:            mov              r11, 233
                        mov              rax, qword ptr [rbp + 5616]
                        mov              qword ptr [rbp + 5552], rax
                        mov              rax, qword ptr [rbp + 5624]
                        mov              qword ptr [rbp + 5560], rax
                        mov              rax, qword ptr [rbp + 5584]
                        mov              qword ptr [rbp + 5536], rax
                        mov              rax, qword ptr [rbp + 5592]
                        mov              qword ptr [rbp + 5544], rax
                        lea              rdi, [rbp + 5536]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5520], rax
                        mov              qword ptr [rbp + 5528], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n319_var_ref_α
n318_call_β:            mov              r11, 233;                            jmp   d$2F3_step
                        .size            n318_call_bx, .-n318_call_bx
                        .type            n319_var_ref_bx, @function
n319_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:         mov              r11, 234
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx;         jmp   n320_var_ref_α
                        .size            n319_var_ref_bx, .-n319_var_ref_bx
                        .type            n320_var_ref_bx, @function
n320_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 5504], rax
                        mov              qword ptr [rbp + 5512], rdx;         jmp   n321_call_α
                        .size            n320_var_ref_bx, .-n320_var_ref_bx
                        .type            n321_call_bx, @function
n321_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_call_α:            mov              r11, 236
                        mov              rax, qword ptr [rbp + 5504]
                        mov              qword ptr [rbp + 5456], rax
                        mov              rax, qword ptr [rbp + 5512]
                        mov              qword ptr [rbp + 5464], rax
                        mov              rax, qword ptr [rbp + 5488]
                        mov              qword ptr [rbp + 5440], rax
                        mov              rax, qword ptr [rbp + 5496]
                        mov              qword ptr [rbp + 5448], rax
                        lea              rdi, [rbp + 5440]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n322_var_ref_α
n321_call_β:            mov              r11, 236;                            jmp   d$2F3_step
                        .size            n321_call_bx, .-n321_call_bx
                        .type            n322_var_ref_bx, @function
n322_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:         mov              r11, 237
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5312], rax
                        mov              qword ptr [rbp + 5320], rdx;         jmp   n323_lit_string_α
                        .size            n322_var_ref_bx, .-n322_var_ref_bx
                        .type            n323_lit_string_bx, @function
n323_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      mov              r11, 238
                        mov              qword ptr [rbp + 5408], 2            # result
                        mov              dword ptr [rbp + 5412], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_644_0]
                        mov              qword ptr [rbp + 5416], rax;         jmp   n324_var_ref_α
.Llit_string_α_644_0:   .quad            .Llit_string_α_644_0_s
.Llit_string_α_644_0_s: .string          "-"
                        .size            n323_lit_string_bx, .-n323_lit_string_bx
                        .type            n324_var_ref_bx, @function
n324_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:         mov              r11, 239
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 5328], rax
                        mov              qword ptr [rbp + 5336], rdx;         jmp   n325_call_α
                        .size            n324_var_ref_bx, .-n324_var_ref_bx
                        .type            n325_call_bx, @function
n325_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_call_α:            mov              r11, 240
                        mov              rax, qword ptr [rbp + 5328]
                        mov              qword ptr [rbp + 5376], rax
                        mov              rax, qword ptr [rbp + 5336]
                        mov              qword ptr [rbp + 5384], rax
                        mov              rax, qword ptr [rbp + 5408]
                        mov              qword ptr [rbp + 5360], rax
                        mov              rax, qword ptr [rbp + 5416]
                        mov              qword ptr [rbp + 5368], rax
                        lea              rdi, [rbp + 5360]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n326_call_α
n325_call_β:            mov              r11, 240;                            jmp   d$2F3_step
                        .size            n325_call_bx, .-n325_call_bx
                        .type            n326_call_bx, @function
n326_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_call_α:            mov              r11, 241
                        mov              rax, qword ptr [rbp + 5344]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 5352]
                        mov              qword ptr [rbp + 5288], rax
                        mov              rax, qword ptr [rbp + 5312]
                        mov              qword ptr [rbp + 5264], rax
                        mov              rax, qword ptr [rbp + 5320]
                        mov              qword ptr [rbp + 5272], rax
                        lea              rdi, [rbp + 5264]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n327_cut_α
n326_call_β:            mov              r11, 241;                            jmp   d$2F3_step
                        .size            n326_call_bx, .-n326_call_bx
                        .type            n327_cut_bx, @function
n327_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_cut_α:             mov              r11, 242
                        mov              qword ptr [rbp + 7720], 0
                        mov              qword ptr [rbp + 7728], 0
                        lea              rdi, [rbp + 7712]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n328_var_ref_α
                        .size            n327_cut_bx, .-n327_cut_bx
                        .type            n328_var_ref_bx, @function
n328_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:         mov              r11, 243
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx;         jmp   n329_var_ref_α
                        .size            n328_var_ref_bx, .-n328_var_ref_bx
                        .type            n329_var_ref_bx, @function
n329_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:         mov              r11, 244
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 5216], rax
                        mov              qword ptr [rbp + 5224], rdx;         jmp   n330_var_ref_α
                        .size            n329_var_ref_bx, .-n329_var_ref_bx
                        .type            n330_var_ref_bx, @function
n330_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:         mov              r11, 245
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 5232], rax
                        mov              qword ptr [rbp + 5240], rdx;         jmp   n331_call_proc_staged_α
                        .size            n330_var_ref_bx, .-n330_var_ref_bx
                        .type            n331_call_proc_staged_bx, @function
n331_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_call_proc_staged_α:
                        mov              r11, 246
                        mov              qword ptr [rbp + 5168], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_658_200
                        mov              rax, qword ptr [rbp + 5200]
                        mov              rdx, qword ptr [rbp + 5208]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_658_201
.Lcall_proc_staged_α_658_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 5200]
                        mov              rdx, qword ptr [rbp + 5208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_658_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_658_202
                        mov              rax, qword ptr [rbp + 5216]
                        mov              rdx, qword ptr [rbp + 5224]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_658_203
.Lcall_proc_staged_α_658_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 5216]
                        mov              rdx, qword ptr [rbp + 5224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_658_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_658_204
                        mov              rax, qword ptr [rbp + 5232]
                        mov              rdx, qword ptr [rbp + 5240]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_658_205
.Lcall_proc_staged_α_658_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 5232]
                        mov              rdx, qword ptr [rbp + 5240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_658_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_658_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_658_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7776]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_658_99
                        mov              r10, qword ptr [rbp + 7736]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_658_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_658_99
                        mov              rcx, qword ptr [rbp + 7752]
                        mov              rdx, qword ptr [rbp + 7760]
                        lea              rsp, [rbp + 7776]
                        mov              rbp, qword ptr [rbp + 7768];         jmp   rax
.Lcall_proc_staged_α_658_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_658_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_658_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_658_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_658_3:
                        mov              qword ptr [rbp + 5168], rax
                        mov              qword ptr [rbp + 5176], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_658_21
                        add              rsp, 32
.Lcall_proc_staged_α_658_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_658_2
.Lcall_proc_staged_α_658_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 5168], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_658_2
.Lcall_proc_staged_α_658_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_658_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_658_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_658_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 5104]
                        mov              rdx, qword ptr [rbp + 5112]
.Lcall_proc_staged_α_658_29:
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret5
n331_call_proc_staged_β:
                        mov              r11, 246
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_658_22
                        mov              rax, qword ptr [rbp + 5168]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_658_22
                        mov              rcx, qword ptr [rbp + 5176]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_658_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_658_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret5
.Lcall_proc_staged_α_658_0:
                        .quad            .Lcall_proc_staged_α_658_0_s
.Lcall_proc_staged_α_658_0_s:
                        .string          "d/3"
                        .size            n331_call_proc_staged_bx, .-n331_call_proc_staged_bx
                        .type            n332_var_ref_bx, @function
n332_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:         mov              r11, 247
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6288], rax
                        mov              qword ptr [rbp + 6296], rdx;         jmp   n333_lit_string_α
                        .size            n332_var_ref_bx, .-n332_var_ref_bx
                        .type            n333_lit_string_bx, @function
n333_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:      mov              r11, 248
                        mov              qword ptr [rbp + 6384], 2            # result
                        mov              dword ptr [rbp + 6388], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_661_0]
                        mov              qword ptr [rbp + 6392], rax;         jmp   n334_var_ref_α
.Llit_string_α_661_0:   .quad            .Llit_string_α_661_0_s
.Llit_string_α_661_0_s: .string          "exp"
                        .size            n333_lit_string_bx, .-n333_lit_string_bx
                        .type            n334_var_ref_bx, @function
n334_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:         mov              r11, 249
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 6304], rax
                        mov              qword ptr [rbp + 6312], rdx;         jmp   n335_call_α
                        .size            n334_var_ref_bx, .-n334_var_ref_bx
                        .type            n335_call_bx, @function
n335_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_call_α:            mov              r11, 250
                        mov              rax, qword ptr [rbp + 6304]
                        mov              qword ptr [rbp + 6352], rax
                        mov              rax, qword ptr [rbp + 6312]
                        mov              qword ptr [rbp + 6360], rax
                        mov              rax, qword ptr [rbp + 6384]
                        mov              qword ptr [rbp + 6336], rax
                        mov              rax, qword ptr [rbp + 6392]
                        mov              qword ptr [rbp + 6344], rax
                        lea              rdi, [rbp + 6336]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6320], rax
                        mov              qword ptr [rbp + 6328], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n336_call_α
n335_call_β:            mov              r11, 250;                            jmp   d$2F3_step
                        .size            n335_call_bx, .-n335_call_bx
                        .type            n336_call_bx, @function
n336_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_call_α:            mov              r11, 251
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 6256], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 6264], rax
                        mov              rax, qword ptr [rbp + 6288]
                        mov              qword ptr [rbp + 6240], rax
                        mov              rax, qword ptr [rbp + 6296]
                        mov              qword ptr [rbp + 6248], rax
                        lea              rdi, [rbp + 6240]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6224], rax
                        mov              qword ptr [rbp + 6232], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n337_var_ref_α
n336_call_β:            mov              r11, 251;                            jmp   d$2F3_step
                        .size            n336_call_bx, .-n336_call_bx
                        .type            n337_var_ref_bx, @function
n337_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_var_ref_α:         mov              r11, 252
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6192], rax
                        mov              qword ptr [rbp + 6200], rdx;         jmp   n338_var_ref_α
                        .size            n337_var_ref_bx, .-n337_var_ref_bx
                        .type            n338_var_ref_bx, @function
n338_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:         mov              r11, 253
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 6208], rax
                        mov              qword ptr [rbp + 6216], rdx;         jmp   n339_call_α
                        .size            n338_var_ref_bx, .-n338_var_ref_bx
                        .type            n339_call_bx, @function
n339_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_call_α:            mov              r11, 254
                        mov              rax, qword ptr [rbp + 6208]
                        mov              qword ptr [rbp + 6160], rax
                        mov              rax, qword ptr [rbp + 6216]
                        mov              qword ptr [rbp + 6168], rax
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 6144], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 6152], rax
                        lea              rdi, [rbp + 6144]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6128], rax
                        mov              qword ptr [rbp + 6136], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n340_var_ref_α
n339_call_β:            mov              r11, 254;                            jmp   d$2F3_step
                        .size            n339_call_bx, .-n339_call_bx
                        .type            n340_var_ref_bx, @function
n340_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5904], rax
                        mov              qword ptr [rbp + 5912], rdx;         jmp   n341_lit_string_α
                        .size            n340_var_ref_bx, .-n340_var_ref_bx
                        .type            n341_lit_string_bx, @function
n341_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:      mov              r11, 256
                        mov              qword ptr [rbp + 6112], 2            # result
                        mov              dword ptr [rbp + 6116], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_673_0]
                        mov              qword ptr [rbp + 6120], rax;         jmp   n342_lit_string_α
.Llit_string_α_673_0:   .quad            .Llit_string_α_673_0_s
.Llit_string_α_673_0_s: .string          "*"
                        .size            n341_lit_string_bx, .-n341_lit_string_bx
                        .type            n342_lit_string_bx, @function
n342_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:      mov              r11, 257
                        mov              qword ptr [rbp + 6000], 2            # result
                        mov              dword ptr [rbp + 6004], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_674_0]
                        mov              qword ptr [rbp + 6008], rax;         jmp   n343_var_ref_α
.Llit_string_α_674_0:   .quad            .Llit_string_α_674_0_s
.Llit_string_α_674_0_s: .string          "exp"
                        .size            n342_lit_string_bx, .-n342_lit_string_bx
                        .type            n343_var_ref_bx, @function
n343_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_var_ref_α:         mov              r11, 258
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx;         jmp   n344_call_α
                        .size            n343_var_ref_bx, .-n343_var_ref_bx
                        .type            n344_call_bx, @function
n344_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_call_α:            mov              r11, 259
                        mov              rax, qword ptr [rbp + 5920]
                        mov              qword ptr [rbp + 5968], rax
                        mov              rax, qword ptr [rbp + 5928]
                        mov              qword ptr [rbp + 5976], rax
                        mov              rax, qword ptr [rbp + 6000]
                        mov              qword ptr [rbp + 5952], rax
                        mov              rax, qword ptr [rbp + 6008]
                        mov              qword ptr [rbp + 5960], rax
                        lea              rdi, [rbp + 5952]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5936], rax
                        mov              qword ptr [rbp + 5944], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n345_var_ref_α
n344_call_β:            mov              r11, 259;                            jmp   d$2F3_ω
                        .size            n344_call_bx, .-n344_call_bx
                        .type            n345_var_ref_bx, @function
n345_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:         mov              r11, 260
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx;         jmp   n346_call_α
                        .size            n345_var_ref_bx, .-n345_var_ref_bx
                        .type            n346_call_bx, @function
n346_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_call_α:            mov              r11, 261
                        mov              rax, qword ptr [rbp + 6016]
                        mov              qword ptr [rbp + 6080], rax
                        mov              rax, qword ptr [rbp + 6024]
                        mov              qword ptr [rbp + 6088], rax
                        mov              rax, qword ptr [rbp + 5936]
                        mov              qword ptr [rbp + 6064], rax
                        mov              rax, qword ptr [rbp + 5944]
                        mov              qword ptr [rbp + 6072], rax
                        mov              rax, qword ptr [rbp + 6112]
                        mov              qword ptr [rbp + 6048], rax
                        mov              rax, qword ptr [rbp + 6120]
                        mov              qword ptr [rbp + 6056], rax
                        lea              rdi, [rbp + 6048]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6032], rax
                        mov              qword ptr [rbp + 6040], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n347_call_α
n346_call_β:            mov              r11, 261;                            jmp   d$2F3_step
                        .size            n346_call_bx, .-n346_call_bx
                        .type            n347_call_bx, @function
n347_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_call_α:            mov              r11, 262
                        mov              rax, qword ptr [rbp + 6032]
                        mov              qword ptr [rbp + 5872], rax
                        mov              rax, qword ptr [rbp + 6040]
                        mov              qword ptr [rbp + 5880], rax
                        mov              rax, qword ptr [rbp + 5904]
                        mov              qword ptr [rbp + 5856], rax
                        mov              rax, qword ptr [rbp + 5912]
                        mov              qword ptr [rbp + 5864], rax
                        lea              rdi, [rbp + 5856]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5840], rax
                        mov              qword ptr [rbp + 5848], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n348_cut_α
n347_call_β:            mov              r11, 262;                            jmp   d$2F3_step
                        .size            n347_call_bx, .-n347_call_bx
                        .type            n348_cut_bx, @function
n348_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_cut_α:             mov              r11, 263
                        mov              qword ptr [rbp + 7720], 0
                        mov              qword ptr [rbp + 7728], 0
                        lea              rdi, [rbp + 7712]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n349_var_ref_α
                        .size            n348_cut_bx, .-n348_cut_bx
                        .type            n349_var_ref_bx, @function
n349_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:         mov              r11, 264
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx;         jmp   n350_var_ref_α
                        .size            n349_var_ref_bx, .-n349_var_ref_bx
                        .type            n350_var_ref_bx, @function
n350_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:         mov              r11, 265
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 5808], rax
                        mov              qword ptr [rbp + 5816], rdx;         jmp   n351_var_ref_α
                        .size            n350_var_ref_bx, .-n350_var_ref_bx
                        .type            n351_var_ref_bx, @function
n351_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:         mov              r11, 266
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 5824], rax
                        mov              qword ptr [rbp + 5832], rdx;         jmp   n352_call_proc_staged_α
                        .size            n351_var_ref_bx, .-n351_var_ref_bx
                        .type            n352_call_proc_staged_bx, @function
n352_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_call_proc_staged_α:
                        mov              r11, 267
                        mov              qword ptr [rbp + 5760], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_691_200
                        mov              rax, qword ptr [rbp + 5792]
                        mov              rdx, qword ptr [rbp + 5800]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_691_201
.Lcall_proc_staged_α_691_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 5792]
                        mov              rdx, qword ptr [rbp + 5800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_691_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_691_202
                        mov              rax, qword ptr [rbp + 5808]
                        mov              rdx, qword ptr [rbp + 5816]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_691_203
.Lcall_proc_staged_α_691_202:
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
.Lcall_proc_staged_α_691_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_691_204
                        mov              rax, qword ptr [rbp + 5824]
                        mov              rdx, qword ptr [rbp + 5832]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_691_205
.Lcall_proc_staged_α_691_204:
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
.Lcall_proc_staged_α_691_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_691_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_691_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7776]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_691_99
                        mov              r10, qword ptr [rbp + 7736]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_691_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_691_99
                        mov              rcx, qword ptr [rbp + 7752]
                        mov              rdx, qword ptr [rbp + 7760]
                        lea              rsp, [rbp + 7776]
                        mov              rbp, qword ptr [rbp + 7768];         jmp   rax
.Lcall_proc_staged_α_691_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_691_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_691_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_691_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_691_3:
                        mov              qword ptr [rbp + 5760], rax
                        mov              qword ptr [rbp + 5768], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_691_21
                        add              rsp, 32
.Lcall_proc_staged_α_691_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_691_2
.Lcall_proc_staged_α_691_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 5760], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_691_2
.Lcall_proc_staged_α_691_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_691_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_691_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_691_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 5696], rax
                        mov              qword ptr [rbp + 5704], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 5696]
                        mov              rdx, qword ptr [rbp + 5704]
.Lcall_proc_staged_α_691_29:
                        mov              qword ptr [rbp + 5696], rax
                        mov              qword ptr [rbp + 5704], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret6
n352_call_proc_staged_β:
                        mov              r11, 267
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_691_22
                        mov              rax, qword ptr [rbp + 5760]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_691_22
                        mov              rcx, qword ptr [rbp + 5768]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_691_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_691_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5696], rax
                        mov              qword ptr [rbp + 5704], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret6
.Lcall_proc_staged_α_691_0:
                        .quad            .Lcall_proc_staged_α_691_0_s
.Lcall_proc_staged_α_691_0_s:
                        .string          "d/3"
                        .size            n352_call_proc_staged_bx, .-n352_call_proc_staged_bx
                        .type            n353_var_ref_bx, @function
n353_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:         mov              r11, 268
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6912], rax
                        mov              qword ptr [rbp + 6920], rdx;         jmp   n354_lit_string_α
                        .size            n353_var_ref_bx, .-n353_var_ref_bx
                        .type            n354_lit_string_bx, @function
n354_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:      mov              r11, 269
                        mov              qword ptr [rbp + 7008], 2            # result
                        mov              dword ptr [rbp + 7012], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_694_0]
                        mov              qword ptr [rbp + 7016], rax;         jmp   n355_var_ref_α
.Llit_string_α_694_0:   .quad            .Llit_string_α_694_0_s
.Llit_string_α_694_0_s: .string          "log"
                        .size            n354_lit_string_bx, .-n354_lit_string_bx
                        .type            n355_var_ref_bx, @function
n355_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 6928], rax
                        mov              qword ptr [rbp + 6936], rdx;         jmp   n356_call_α
                        .size            n355_var_ref_bx, .-n355_var_ref_bx
                        .type            n356_call_bx, @function
n356_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_call_α:            mov              r11, 271
                        mov              rax, qword ptr [rbp + 6928]
                        mov              qword ptr [rbp + 6976], rax
                        mov              rax, qword ptr [rbp + 6936]
                        mov              qword ptr [rbp + 6984], rax
                        mov              rax, qword ptr [rbp + 7008]
                        mov              qword ptr [rbp + 6960], rax
                        mov              rax, qword ptr [rbp + 7016]
                        mov              qword ptr [rbp + 6968], rax
                        lea              rdi, [rbp + 6960]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n357_call_α
n356_call_β:            mov              r11, 271;                            jmp   d$2F3_step
                        .size            n356_call_bx, .-n356_call_bx
                        .type            n357_call_bx, @function
n357_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_call_α:            mov              r11, 272
                        mov              rax, qword ptr [rbp + 6944]
                        mov              qword ptr [rbp + 6880], rax
                        mov              rax, qword ptr [rbp + 6952]
                        mov              qword ptr [rbp + 6888], rax
                        mov              rax, qword ptr [rbp + 6912]
                        mov              qword ptr [rbp + 6864], rax
                        mov              rax, qword ptr [rbp + 6920]
                        mov              qword ptr [rbp + 6872], rax
                        lea              rdi, [rbp + 6864]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6848], rax
                        mov              qword ptr [rbp + 6856], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n358_var_ref_α
n357_call_β:            mov              r11, 272;                            jmp   d$2F3_step
                        .size            n357_call_bx, .-n357_call_bx
                        .type            n358_var_ref_bx, @function
n358_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6816], rax
                        mov              qword ptr [rbp + 6824], rdx;         jmp   n359_var_ref_α
                        .size            n358_var_ref_bx, .-n358_var_ref_bx
                        .type            n359_var_ref_bx, @function
n359_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:         mov              r11, 274
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 6832], rax
                        mov              qword ptr [rbp + 6840], rdx;         jmp   n360_call_α
                        .size            n359_var_ref_bx, .-n359_var_ref_bx
                        .type            n360_call_bx, @function
n360_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_call_α:            mov              r11, 275
                        mov              rax, qword ptr [rbp + 6832]
                        mov              qword ptr [rbp + 6784], rax
                        mov              rax, qword ptr [rbp + 6840]
                        mov              qword ptr [rbp + 6792], rax
                        mov              rax, qword ptr [rbp + 6816]
                        mov              qword ptr [rbp + 6768], rax
                        mov              rax, qword ptr [rbp + 6824]
                        mov              qword ptr [rbp + 6776], rax
                        lea              rdi, [rbp + 6768]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n361_var_ref_α
n360_call_β:            mov              r11, 275;                            jmp   d$2F3_step
                        .size            n360_call_bx, .-n360_call_bx
                        .type            n361_var_ref_bx, @function
n361_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:         mov              r11, 276
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6608], rax
                        mov              qword ptr [rbp + 6616], rdx;         jmp   n362_lit_string_α
                        .size            n361_var_ref_bx, .-n361_var_ref_bx
                        .type            n362_lit_string_bx, @function
n362_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:      mov              r11, 277
                        mov              qword ptr [rbp + 6736], 2            # result
                        mov              dword ptr [rbp + 6740], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_706_0]
                        mov              qword ptr [rbp + 6744], rax;         jmp   n363_var_ref_α
.Llit_string_α_706_0:   .quad            .Llit_string_α_706_0_s
.Llit_string_α_706_0_s: .string          "/"
                        .size            n362_lit_string_bx, .-n362_lit_string_bx
                        .type            n363_var_ref_bx, @function
n363_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 6624], rax
                        mov              qword ptr [rbp + 6632], rdx;         jmp   n364_var_ref_α
                        .size            n363_var_ref_bx, .-n363_var_ref_bx
                        .type            n364_var_ref_bx, @function
n364_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:         mov              r11, 279
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 6640], rax
                        mov              qword ptr [rbp + 6648], rdx;         jmp   n365_call_α
                        .size            n364_var_ref_bx, .-n364_var_ref_bx
                        .type            n365_call_bx, @function
n365_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_call_α:            mov              r11, 280
                        mov              rax, qword ptr [rbp + 6640]
                        mov              qword ptr [rbp + 6704], rax
                        mov              rax, qword ptr [rbp + 6648]
                        mov              qword ptr [rbp + 6712], rax
                        mov              rax, qword ptr [rbp + 6624]
                        mov              qword ptr [rbp + 6688], rax
                        mov              rax, qword ptr [rbp + 6632]
                        mov              qword ptr [rbp + 6696], rax
                        mov              rax, qword ptr [rbp + 6736]
                        mov              qword ptr [rbp + 6672], rax
                        mov              rax, qword ptr [rbp + 6744]
                        mov              qword ptr [rbp + 6680], rax
                        lea              rdi, [rbp + 6672]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6656], rax
                        mov              qword ptr [rbp + 6664], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n366_call_α
n365_call_β:            mov              r11, 280;                            jmp   d$2F3_step
                        .size            n365_call_bx, .-n365_call_bx
                        .type            n366_call_bx, @function
n366_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_call_α:            mov              r11, 281
                        mov              rax, qword ptr [rbp + 6656]
                        mov              qword ptr [rbp + 6576], rax
                        mov              rax, qword ptr [rbp + 6664]
                        mov              qword ptr [rbp + 6584], rax
                        mov              rax, qword ptr [rbp + 6608]
                        mov              qword ptr [rbp + 6560], rax
                        mov              rax, qword ptr [rbp + 6616]
                        mov              qword ptr [rbp + 6568], rax
                        lea              rdi, [rbp + 6560]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n367_cut_α
n366_call_β:            mov              r11, 281;                            jmp   d$2F3_step
                        .size            n366_call_bx, .-n366_call_bx
                        .type            n367_cut_bx, @function
n367_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_cut_α:             mov              r11, 282
                        mov              qword ptr [rbp + 7720], 0
                        mov              qword ptr [rbp + 7728], 0
                        lea              rdi, [rbp + 7712]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n368_var_ref_α
                        .size            n367_cut_bx, .-n367_cut_bx
                        .type            n368_var_ref_bx, @function
n368_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_var_ref_α:         mov              r11, 283
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 6496], rax
                        mov              qword ptr [rbp + 6504], rdx;         jmp   n369_var_ref_α
                        .size            n368_var_ref_bx, .-n368_var_ref_bx
                        .type            n369_var_ref_bx, @function
n369_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_var_ref_α:         mov              r11, 284
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx;         jmp   n370_var_ref_α
                        .size            n369_var_ref_bx, .-n369_var_ref_bx
                        .type            n370_var_ref_bx, @function
n370_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_var_ref_α:         mov              r11, 285
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx;         jmp   n371_call_proc_staged_α
                        .size            n370_var_ref_bx, .-n370_var_ref_bx
                        .type            n371_call_proc_staged_bx, @function
n371_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_call_proc_staged_α:
                        mov              r11, 286
                        mov              qword ptr [rbp + 6464], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_722_200
                        mov              rax, qword ptr [rbp + 6496]
                        mov              rdx, qword ptr [rbp + 6504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_722_201
.Lcall_proc_staged_α_722_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 6496]
                        mov              rdx, qword ptr [rbp + 6504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_722_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_722_202
                        mov              rax, qword ptr [rbp + 6512]
                        mov              rdx, qword ptr [rbp + 6520]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_722_203
.Lcall_proc_staged_α_722_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 6512]
                        mov              rdx, qword ptr [rbp + 6520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_722_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_722_204
                        mov              rax, qword ptr [rbp + 6528]
                        mov              rdx, qword ptr [rbp + 6536]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_722_205
.Lcall_proc_staged_α_722_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 6528]
                        mov              rdx, qword ptr [rbp + 6536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_722_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_722_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_722_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7776]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_722_99
                        mov              r10, qword ptr [rbp + 7736]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_722_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_722_99
                        mov              rcx, qword ptr [rbp + 7752]
                        mov              rdx, qword ptr [rbp + 7760]
                        lea              rsp, [rbp + 7776]
                        mov              rbp, qword ptr [rbp + 7768];         jmp   rax
.Lcall_proc_staged_α_722_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_722_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_722_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_722_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_722_3:
                        mov              qword ptr [rbp + 6464], rax
                        mov              qword ptr [rbp + 6472], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_722_21
                        add              rsp, 32
.Lcall_proc_staged_α_722_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_722_2
.Lcall_proc_staged_α_722_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 6464], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_722_2
.Lcall_proc_staged_α_722_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_722_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_722_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_722_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 6400]
                        mov              rdx, qword ptr [rbp + 6408]
.Lcall_proc_staged_α_722_29:
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret7
n371_call_proc_staged_β:
                        mov              r11, 286
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_722_22
                        mov              rax, qword ptr [rbp + 6464]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_722_22
                        mov              rcx, qword ptr [rbp + 6472]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_722_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_722_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret7
.Lcall_proc_staged_α_722_0:
                        .quad            .Lcall_proc_staged_α_722_0_s
.Lcall_proc_staged_α_722_0_s:
                        .string          "d/3"
                        .size            n371_call_proc_staged_bx, .-n371_call_proc_staged_bx
                        .type            n372_var_ref_bx, @function
n372_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_var_ref_α:         mov              r11, 287
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7280], rax
                        mov              qword ptr [rbp + 7288], rdx;         jmp   n373_var_ref_α
                        .size            n372_var_ref_bx, .-n372_var_ref_bx
                        .type            n373_var_ref_bx, @function
n373_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_var_ref_α:         mov              r11, 288
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 7296], rax
                        mov              qword ptr [rbp + 7304], rdx;         jmp   n374_call_α
                        .size            n373_var_ref_bx, .-n373_var_ref_bx
                        .type            n374_call_bx, @function
n374_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:            mov              r11, 289
                        mov              rax, qword ptr [rbp + 7296]
                        mov              qword ptr [rbp + 7248], rax
                        mov              rax, qword ptr [rbp + 7304]
                        mov              qword ptr [rbp + 7256], rax
                        mov              rax, qword ptr [rbp + 7280]
                        mov              qword ptr [rbp + 7232], rax
                        mov              rax, qword ptr [rbp + 7288]
                        mov              qword ptr [rbp + 7240], rax
                        lea              rdi, [rbp + 7232]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7216], rax
                        mov              qword ptr [rbp + 7224], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n375_var_ref_α
n374_call_β:            mov              r11, 289;                            jmp   d$2F3_step
                        .size            n374_call_bx, .-n374_call_bx
                        .type            n375_var_ref_bx, @function
n375_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_var_ref_α:         mov              r11, 290
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7184], rax
                        mov              qword ptr [rbp + 7192], rdx;         jmp   n376_var_ref_α
                        .size            n375_var_ref_bx, .-n375_var_ref_bx
                        .type            n376_var_ref_bx, @function
n376_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_var_ref_α:         mov              r11, 291
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 7200], rax
                        mov              qword ptr [rbp + 7208], rdx;         jmp   n377_call_α
                        .size            n376_var_ref_bx, .-n376_var_ref_bx
                        .type            n377_call_bx, @function
n377_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_call_α:            mov              r11, 292
                        mov              rax, qword ptr [rbp + 7200]
                        mov              qword ptr [rbp + 7152], rax
                        mov              rax, qword ptr [rbp + 7208]
                        mov              qword ptr [rbp + 7160], rax
                        mov              rax, qword ptr [rbp + 7184]
                        mov              qword ptr [rbp + 7136], rax
                        mov              rax, qword ptr [rbp + 7192]
                        mov              qword ptr [rbp + 7144], rax
                        lea              rdi, [rbp + 7136]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7120], rax
                        mov              qword ptr [rbp + 7128], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n378_var_ref_α
n377_call_β:            mov              r11, 292;                            jmp   d$2F3_step
                        .size            n377_call_bx, .-n377_call_bx
                        .type            n378_var_ref_bx, @function
n378_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_var_ref_α:         mov              r11, 293
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7088], rax
                        mov              qword ptr [rbp + 7096], rdx;         jmp   n379_lit_integer_α
                        .size            n378_var_ref_bx, .-n378_var_ref_bx
                        .type            n379_lit_integer_bx, @function
n379_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_integer_α:     mov              r11, 294
                        mov              qword ptr [rbp + 7104], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_735_0]
                        mov              qword ptr [rbp + 7112], rax;         jmp   n380_call_α
.Llit_integer_α_735_0:  .quad            1
                        .size            n379_lit_integer_bx, .-n379_lit_integer_bx
                        .type            n380_call_bx, @function
n380_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_call_α:            mov              r11, 295
                        mov              rax, qword ptr [rbp + 7088]
                        mov              qword ptr [rbp + 7040], rax
                        mov              rax, qword ptr [rbp + 7096]
                        mov              qword ptr [rbp + 7048], rax
                        lea              rdi, [rbp + 7040]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7024], rax
                        mov              qword ptr [rbp + 7032], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n381_cut_α
n380_call_β:            mov              r11, 295;                            jmp   d$2F3_step
                        .size            n380_call_bx, .-n380_call_bx
                        .type            n381_cut_bx, @function
n381_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_cut_α:             mov              r11, 296
                        mov              qword ptr [rbp + 7720], 0
                        mov              qword ptr [rbp + 7728], 0
                        lea              rdi, [rbp + 7712]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   d$2F3_γ
                        .size            n381_cut_bx, .-n381_cut_bx
                        .type            n382_var_ref_bx, @function
n382_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_var_ref_α:         mov              r11, 297
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7568], rax
                        mov              qword ptr [rbp + 7576], rdx;         jmp   n383_var_ref_α
                        .size            n382_var_ref_bx, .-n382_var_ref_bx
                        .type            n383_var_ref_bx, @function
n383_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:         mov              r11, 298
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 7584], rax
                        mov              qword ptr [rbp + 7592], rdx;         jmp   n384_call_α
                        .size            n383_var_ref_bx, .-n383_var_ref_bx
                        .type            n384_call_bx, @function
n384_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_call_α:            mov              r11, 299
                        mov              rax, qword ptr [rbp + 7584]
                        mov              qword ptr [rbp + 7536], rax
                        mov              rax, qword ptr [rbp + 7592]
                        mov              qword ptr [rbp + 7544], rax
                        mov              rax, qword ptr [rbp + 7568]
                        mov              qword ptr [rbp + 7520], rax
                        mov              rax, qword ptr [rbp + 7576]
                        mov              qword ptr [rbp + 7528], rax
                        lea              rdi, [rbp + 7520]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7504], rax
                        mov              qword ptr [rbp + 7512], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n385_var_ref_α
n384_call_β:            mov              r11, 299;                            jmp   d$2F3_step
                        .size            n384_call_bx, .-n384_call_bx
                        .type            n385_var_ref_bx, @function
n385_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_var_ref_α:         mov              r11, 300
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7472], rax
                        mov              qword ptr [rbp + 7480], rdx;         jmp   n386_var_ref_α
                        .size            n385_var_ref_bx, .-n385_var_ref_bx
                        .type            n386_var_ref_bx, @function
n386_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:         mov              r11, 301
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 7488], rax
                        mov              qword ptr [rbp + 7496], rdx;         jmp   n387_call_α
                        .size            n386_var_ref_bx, .-n386_var_ref_bx
                        .type            n387_call_bx, @function
n387_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_call_α:            mov              r11, 302
                        mov              rax, qword ptr [rbp + 7488]
                        mov              qword ptr [rbp + 7440], rax
                        mov              rax, qword ptr [rbp + 7496]
                        mov              qword ptr [rbp + 7448], rax
                        mov              rax, qword ptr [rbp + 7472]
                        mov              qword ptr [rbp + 7424], rax
                        mov              rax, qword ptr [rbp + 7480]
                        mov              qword ptr [rbp + 7432], rax
                        lea              rdi, [rbp + 7424]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7408], rax
                        mov              qword ptr [rbp + 7416], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n388_var_ref_α
n387_call_β:            mov              r11, 302;                            jmp   d$2F3_step
                        .size            n387_call_bx, .-n387_call_bx
                        .type            n388_var_ref_bx, @function
n388_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_var_ref_α:         mov              r11, 303
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7376], rax
                        mov              qword ptr [rbp + 7384], rdx;         jmp   n389_lit_integer_α
                        .size            n388_var_ref_bx, .-n388_var_ref_bx
                        .type            n389_lit_integer_bx, @function
n389_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_integer_α:     mov              r11, 304
                        mov              qword ptr [rbp + 7392], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_751_0]
                        mov              qword ptr [rbp + 7400], rax;         jmp   n390_call_α
.Llit_integer_α_751_0:  .quad            0
                        .size            n389_lit_integer_bx, .-n389_lit_integer_bx
                        .type            n390_call_bx, @function
n390_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_call_α:            mov              r11, 305
                        mov              rax, qword ptr [rbp + 7376]
                        mov              qword ptr [rbp + 7328], rax
                        mov              rax, qword ptr [rbp + 7384]
                        mov              qword ptr [rbp + 7336], rax
                        lea              rdi, [rbp + 7328]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7312], rax
                        mov              qword ptr [rbp + 7320], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   d$2F3_γ
n390_call_β:            mov              r11, 305;                            jmp   d$2F3_step
                        .size            n390_call_bx, .-n390_call_bx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret0:
                        lea              rax, [rip + n189_call_proc_staged_β]
                        mov              qword ptr [rbp + 7728], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret1:
                        lea              rax, [rip + n213_call_proc_staged_β]
                        mov              qword ptr [rbp + 7728], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret2:
                        lea              rax, [rip + n243_call_proc_staged_β]
                        mov              qword ptr [rbp + 7728], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret3:
                        lea              rax, [rip + n279_call_proc_staged_β]
                        mov              qword ptr [rbp + 7728], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret4:
                        lea              rax, [rip + n313_call_proc_staged_β]
                        mov              qword ptr [rbp + 7728], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret5:
                        lea              rax, [rip + n331_call_proc_staged_β]
                        mov              qword ptr [rbp + 7728], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret6:
                        lea              rax, [rip + n352_call_proc_staged_β]
                        mov              qword ptr [rbp + 7728], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret7:
                        lea              rax, [rip + n371_call_proc_staged_β]
                        mov              qword ptr [rbp + 7728], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_step:
                        mov              rdi, qword ptr [rbp + 7712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7728], 0
                        mov              qword ptr [rbp + 7680], 0
                        mov              qword ptr [rbp + 7688], 0
                        mov              qword ptr [rbp + 7616], 0
                        mov              qword ptr [rbp + 7624], 0
                        mov              qword ptr [rbp + 7648], 0
                        mov              qword ptr [rbp + 7656], 0
                        mov              qword ptr [rbp + 7600], 0
                        mov              qword ptr [rbp + 7608], 0
                        mov              qword ptr [rbp + 7664], 0
                        mov              qword ptr [rbp + 7672], 0
                        mov              qword ptr [rbp + 7632], 0
                        mov              qword ptr [rbp + 7640], 0
                        mov              rax, qword ptr [rbp + 7720]
                        test             rax, rax
                                                                              je    d$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt1:
                        lea              rax, [rip + d$2F3_alt2]
                        mov              qword ptr [rbp + 7720], rax
                                                                              jmp   n190_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt2:
                        lea              rax, [rip + d$2F3_alt3]
                        mov              qword ptr [rbp + 7720], rax
                                                                              jmp   n214_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt3:
                        lea              rax, [rip + d$2F3_alt4]
                        mov              qword ptr [rbp + 7720], rax
                                                                              jmp   n244_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt4:
                        lea              rax, [rip + d$2F3_alt5]
                        mov              qword ptr [rbp + 7720], rax
                                                                              jmp   n280_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt5:
                        lea              rax, [rip + d$2F3_alt6]
                        mov              qword ptr [rbp + 7720], rax
                                                                              jmp   n314_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt6:
                        lea              rax, [rip + d$2F3_alt7]
                        mov              qword ptr [rbp + 7720], rax
                                                                              jmp   n332_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt7:
                        lea              rax, [rip + d$2F3_alt8]
                        mov              qword ptr [rbp + 7720], rax
                                                                              jmp   n353_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt8:
                        lea              rax, [rip + d$2F3_alt9]
                        mov              qword ptr [rbp + 7720], rax
                                                                              jmp   n372_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt9:
                        xor              eax, eax
                        mov              qword ptr [rbp + 7720], rax
                        mov              r13, qword ptr [rbp + 7736]
                                                                              jmp   n382_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_β:
                        test             r15, r15
                                                                              jne   d$2F3_ω
                        mov              rax, qword ptr [rbp + 7728]
                        mov              qword ptr [rbp + 7728], 0
                        test             rax, rax
                                                                              jne   d$2F3_βres
                                                                              jmp   d$2F3_step
d$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 7752]
                        mov              rax, qword ptr [rbp + 7736]
                        cmp              r13, rax;                            je    d$2F3_altdet
                        lea              rdx, [rip + d$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 7768];         jmp   rcx
d$2F3_altdet:           xor              eax, eax
                        lea              rsp, [rbp + 7776]
                        mov              rbp, qword ptr [rbp + 7768];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ω:
                        mov              rcx, qword ptr [rbp + 7760]
                        mov              r13, qword ptr [rbp + 7736]
                        lea              rsp, [rbp + 7776]
                        mov              rbp, qword ptr [rbp + 7768];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__top$2F0:
                        sub              rsp, 224
                        mov              qword ptr [rsp + 200], rcx
                        mov              qword ptr [rsp + 208], rdx
                        mov              qword ptr [rsp + 216], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 184], r13
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 160], r12
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
top$2F0_α_body:
                        .type            n753_call_proc_staged_bx, @function
n753_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n753_call_proc_staged_α:
                        mov              r11, 306
                        mov              qword ptr [rbp + 112], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_757_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_757_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_757_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_757_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_757_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_757_3:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_757_21
                        add              rsp, 32
.Lcall_proc_staged_α_757_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_757_2
.Lcall_proc_staged_α_757_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 112], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_757_2
.Lcall_proc_staged_α_757_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_757_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   top$2F0_step
.Lcall_proc_staged_α_757_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_757_29
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
.Lcall_proc_staged_α_757_29:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    top$2F0_step
                                                                              jmp   n754_call_proc_staged_α
n753_call_proc_staged_β:
                        mov              r11, 306
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_757_22
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_757_22
                        mov              rcx, qword ptr [rbp + 120]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_757_22:
                                                                              jmp   top$2F0_step
.Lcall_proc_staged_α_757_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    top$2F0_step
                                                                              jmp   n754_call_proc_staged_α
.Lcall_proc_staged_α_757_0:
                        .quad            .Lcall_proc_staged_α_757_0_s
.Lcall_proc_staged_α_757_0_s:
                        .string          "ops8/0"
                        .size            n753_call_proc_staged_bx, .-n753_call_proc_staged_bx
                        .type            n754_call_proc_staged_bx, @function
n754_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n754_call_proc_staged_α:
                        mov              r11, 307
                        mov              qword ptr [rbp + 64], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_759_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_759_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_759_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_759_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_759_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_759_3:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_759_21
                        add              rsp, 32
.Lcall_proc_staged_α_759_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_759_2
.Lcall_proc_staged_α_759_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 64], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_759_2
.Lcall_proc_staged_α_759_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_759_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n753_call_proc_staged_β
.Lcall_proc_staged_α_759_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_759_29
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
.Lcall_proc_staged_α_759_29:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n753_call_proc_staged_β
                                                                              jmp   n755_call_proc_staged_α
n754_call_proc_staged_β:
                        mov              r11, 307
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_759_22
                        mov              rax, qword ptr [rbp + 64]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_759_22
                        mov              rcx, qword ptr [rbp + 72]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_759_22:
                                                                              jmp   n753_call_proc_staged_β
.Lcall_proc_staged_α_759_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n753_call_proc_staged_β
                                                                              jmp   n755_call_proc_staged_α
.Lcall_proc_staged_α_759_0:
                        .quad            .Lcall_proc_staged_α_759_0_s
.Lcall_proc_staged_α_759_0_s:
                        .string          "log10/0"
                        .size            n754_call_proc_staged_bx, .-n754_call_proc_staged_bx
                        .type            n755_call_proc_staged_bx, @function
n755_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n755_call_proc_staged_α:
                        mov              r11, 308
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_761_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_761_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 0
                        mov              rsi, rbp
                        lea              rdx, [rbp + 224]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_761_99
                        mov              r10, qword ptr [rbp + 184]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_761_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_761_99
                        mov              rcx, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, qword ptr [rbp + 216];          jmp   rax
.Lcall_proc_staged_α_761_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_761_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_761_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_761_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_761_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_761_21
                        add              rsp, 32
.Lcall_proc_staged_α_761_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_761_2
.Lcall_proc_staged_α_761_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_761_2
.Lcall_proc_staged_α_761_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_761_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n754_call_proc_staged_β
.Lcall_proc_staged_α_761_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_761_29
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
.Lcall_proc_staged_α_761_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    n754_call_proc_staged_β
                                                                              jmp   top$2F0_ret0
n755_call_proc_staged_β:
                        mov              r11, 308
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_761_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_761_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_761_22:
                                                                              jmp   n754_call_proc_staged_β
.Lcall_proc_staged_α_761_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    n754_call_proc_staged_β
                                                                              jmp   top$2F0_ret0
.Lcall_proc_staged_α_761_0:
                        .quad            .Lcall_proc_staged_α_761_0_s
.Lcall_proc_staged_α_761_0_s:
                        .string          "divide10/0"
                        .size            n755_call_proc_staged_bx, .-n755_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_ret0:
                        lea              rax, [rip + n755_call_proc_staged_β]
                        mov              qword ptr [rbp + 176], rax
                                                                              jmp   top$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_step:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 176], 0
                        mov              rax, qword ptr [rbp + 168]
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
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 176], 0
                        test             rax, rax
                                                                              jne   top$2F0_βres
                                                                              jmp   top$2F0_step
top$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 200]
                        mov              rax, qword ptr [rbp + 184]
                        cmp              r13, rax;                            je    top$2F0_altdet
                        lea              rdx, [rip + top$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 216];          jmp   rcx
top$2F0_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 224]
                        mov              rbp, qword ptr [rbp + 216];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_ω:
                        mov              rcx, qword ptr [rbp + 208]
                        mov              r13, qword ptr [rbp + 184]
                        lea              rsp, [rbp + 224]
                        mov              rbp, qword ptr [rbp + 216];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__main$2F0:
                        sub              rsp, 1680
                        mov              qword ptr [rsp + 1656], rcx
                        mov              qword ptr [rsp + 1664], rdx
                        mov              qword ptr [rsp + 1672], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1680]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1640], r13
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1616], r12
                        mov              rdi, rsp
                        mov              esi, 1488
                        mov              edx, 1616
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                        .type            n762_lit_string_bx, @function
n762_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n762_lit_string_α:      mov              r11, 309
                        mov              qword ptr [rbp + 1472], 2            # result
                        mov              dword ptr [rbp + 1476], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_764_0]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n763_call_α
.Llit_string_α_764_0:   .quad            .Llit_string_α_764_0_s
.Llit_string_α_764_0_s: .string          "wall_us/1"
                        .size            n762_lit_string_bx, .-n762_lit_string_bx
                        .type            n763_call_bx, @function
n763_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n763_call_α:            mov              r11, 310
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1440]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   main$2F0_step
n763_call_β:            mov              r11, 310;                            jmp   main$2F0_step
                        .size            n763_call_bx, .-n763_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 1616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1632], 0
                        mov              qword ptr [rbp + 1568], 0
                        mov              qword ptr [rbp + 1576], 0
                        mov              qword ptr [rbp + 1536], 0
                        mov              qword ptr [rbp + 1544], 0
                        mov              qword ptr [rbp + 1584], 0
                        mov              qword ptr [rbp + 1592], 0
                        mov              qword ptr [rbp + 1552], 0
                        mov              qword ptr [rbp + 1560], 0
                        mov              qword ptr [rbp + 1520], 0
                        mov              qword ptr [rbp + 1528], 0
                        mov              qword ptr [rbp + 1504], 0
                        mov              qword ptr [rbp + 1512], 0
                        mov              qword ptr [rbp + 1488], 0
                        mov              qword ptr [rbp + 1496], 0
                        mov              rax, qword ptr [rbp + 1624]
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
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1632], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1656]
                        mov              rax, qword ptr [rbp + 1640]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1672];         jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 1680]
                        mov              rbp, qword ptr [rbp + 1672];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 1664]
                        mov              r13, qword ptr [rbp + 1640]
                        lea              rsp, [rbp + 1680]
                        mov              rbp, qword ptr [rbp + 1672];         jmp   rcx
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
                        .type            n766_call_proc_staged_bx, @function
n766_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n766_call_proc_staged_α:
                        mov              r11, 311
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_768_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_768_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_768_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_768_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_768_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_768_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_768_21
                        add              rsp, 32
.Lcall_proc_staged_α_768_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_768_2
.Lcall_proc_staged_α_768_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_768_2
.Lcall_proc_staged_α_768_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_768_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_768_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_768_29
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
.Lcall_proc_staged_α_768_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n766_call_proc_staged_β:
                        mov              r11, 311
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_768_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_768_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_768_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_768_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_768_0:
                        .quad            .Lcall_proc_staged_α_768_0_s
.Lcall_proc_staged_α_768_0_s:
                        .string          "main/0"
                        .size            n766_call_proc_staged_bx, .-n766_call_proc_staged_bx
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
.Lstartup_pname0:       .string          "divide10/0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__divide10$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1168
                        .long            24
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
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "ops8/0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__ops8$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            944
                        .long            24
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
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            7696
                        .long            24
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
                        .long            144
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "main/0"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__main$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1600
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
