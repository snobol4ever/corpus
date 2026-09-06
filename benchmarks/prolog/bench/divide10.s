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
                        mov              edi, 1
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
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n65_lit_string_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_lit_string_bx, @function
n65_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rbp + 848], 2             # result
                        mov              dword ptr [rbp + 852], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_292_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n66_var_ref_α
.Llit_string_α_292_0:   .quad            .Llit_string_α_292_0_s
.Llit_string_α_292_0_s: .string          "+"
                        .size            n65_lit_string_bx, .-n65_lit_string_bx
                        .type            n66_var_ref_bx, @function
n66_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n67_var_ref_α
                        .size            n66_var_ref_bx, .-n66_var_ref_bx
                        .type            n67_var_ref_bx, @function
n67_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n68_call_α
                        .size            n67_var_ref_bx, .-n67_var_ref_bx
                        .type            n68_call_bx, @function
n68_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:             mov              r11, 36
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
                                                                              jmp   n69_call_α
n68_call_β:             mov              r11, 36;                             jmp   d$2F3_step
                        .size            n68_call_bx, .-n68_call_bx
                        .type            n69_call_bx, @function
n69_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:             mov              r11, 37
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
                                                                              jmp   n70_var_ref_α
n69_call_β:             mov              r11, 37;                             jmp   d$2F3_step
                        .size            n69_call_bx, .-n69_call_bx
                        .type            n70_var_ref_bx, @function
n70_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n71_var_ref_α
                        .size            n70_var_ref_bx, .-n70_var_ref_bx
                        .type            n71_var_ref_bx, @function
n71_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n72_call_α
                        .size            n71_var_ref_bx, .-n71_var_ref_bx
                        .type            n72_call_bx, @function
n72_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_call_α:             mov              r11, 40
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
                                                                              jmp   n73_var_ref_α
n72_call_β:             mov              r11, 40;                             jmp   d$2F3_step
                        .size            n72_call_bx, .-n72_call_bx
                        .type            n73_var_ref_bx, @function
n73_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n74_lit_string_α
                        .size            n73_var_ref_bx, .-n73_var_ref_bx
                        .type            n74_lit_string_bx, @function
n74_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       mov              r11, 42
                        mov              qword ptr [rbp + 544], 2             # result
                        mov              dword ptr [rbp + 548], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_306_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n75_var_ref_α
.Llit_string_α_306_0:   .quad            .Llit_string_α_306_0_s
.Llit_string_α_306_0_s: .string          "+"
                        .size            n74_lit_string_bx, .-n74_lit_string_bx
                        .type            n75_var_ref_bx, @function
n75_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n76_var_ref_α
                        .size            n75_var_ref_bx, .-n75_var_ref_bx
                        .type            n76_var_ref_bx, @function
n76_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n77_call_α
                        .size            n76_var_ref_bx, .-n76_var_ref_bx
                        .type            n77_call_bx, @function
n77_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_call_α:             mov              r11, 45
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
                                                                              jmp   n78_call_α
n77_call_β:             mov              r11, 45;                             jmp   d$2F3_step
                        .size            n77_call_bx, .-n77_call_bx
                        .type            n78_call_bx, @function
n78_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:             mov              r11, 46
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
                                                                              jmp   n79_cut_α
n78_call_β:             mov              r11, 46;                             jmp   d$2F3_step
                        .size            n78_call_bx, .-n78_call_bx
                        .type            n79_cut_bx, @function
n79_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_cut_α:              mov              r11, 47
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n80_var_ref_α
                        .size            n79_cut_bx, .-n79_cut_bx
                        .type            n80_var_ref_bx, @function
n80_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n81_var_ref_α
                        .size            n80_var_ref_bx, .-n80_var_ref_bx
                        .type            n81_var_ref_bx, @function
n81_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n82_var_ref_α
                        .size            n81_var_ref_bx, .-n81_var_ref_bx
                        .type            n82_var_ref_bx, @function
n82_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n83_call_proc_staged_α
                        .size            n82_var_ref_bx, .-n82_var_ref_bx
                        .type            n83_call_proc_staged_bx, @function
n83_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_proc_staged_α: mov              r11, 51
                        mov              qword ptr [rbp + 272], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_322_200
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_322_201
.Lcall_proc_staged_α_322_200:
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
.Lcall_proc_staged_α_322_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_322_202
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_322_203
.Lcall_proc_staged_α_322_202:
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
.Lcall_proc_staged_α_322_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_322_204
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_322_205
.Lcall_proc_staged_α_322_204:
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
.Lcall_proc_staged_α_322_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_322_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_322_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_322_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_322_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_322_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_322_3:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_322_21
                        add              rsp, 32
.Lcall_proc_staged_α_322_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_322_2
.Lcall_proc_staged_α_322_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 272], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_322_2
.Lcall_proc_staged_α_322_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_322_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_322_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_322_29
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
.Lcall_proc_staged_α_322_29:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n84_var_ref_α
n83_call_proc_staged_β: mov              r11, 51
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_322_22
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_322_22
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_322_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_322_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n84_var_ref_α
.Lcall_proc_staged_α_322_0:
                        .quad            .Lcall_proc_staged_α_322_0_s
.Lcall_proc_staged_α_322_0_s:
                        .string          "d/3"
                        .size            n83_call_proc_staged_bx, .-n83_call_proc_staged_bx
                        .type            n84_var_ref_bx, @function
n84_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n85_var_ref_α
                        .size            n84_var_ref_bx, .-n84_var_ref_bx
                        .type            n85_var_ref_bx, @function
n85_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n86_var_ref_α
                        .size            n85_var_ref_bx, .-n85_var_ref_bx
                        .type            n86_var_ref_bx, @function
n86_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n87_call_proc_staged_α
                        .size            n86_var_ref_bx, .-n86_var_ref_bx
                        .type            n87_call_proc_staged_bx, @function
n87_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_call_proc_staged_α: mov              r11, 55
                        mov              qword ptr [rbp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_330_200
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_330_201
.Lcall_proc_staged_α_330_200:
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
.Lcall_proc_staged_α_330_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_330_202
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_330_203
.Lcall_proc_staged_α_330_202:
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
.Lcall_proc_staged_α_330_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_330_204
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_330_205
.Lcall_proc_staged_α_330_204:
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
.Lcall_proc_staged_α_330_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_330_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_330_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_330_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_330_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_330_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_330_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_330_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_330_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_330_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_330_3:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_330_21
                        add              rsp, 32
.Lcall_proc_staged_α_330_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_330_2
.Lcall_proc_staged_α_330_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 128], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_330_2
.Lcall_proc_staged_α_330_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_330_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n83_call_proc_staged_β
.Lcall_proc_staged_α_330_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_330_29
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
.Lcall_proc_staged_α_330_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n83_call_proc_staged_β
                                                                              jmp   d$2F3_ret0
n87_call_proc_staged_β: mov              r11, 55
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_330_22
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_330_22
                        mov              rcx, qword ptr [rbp + 136]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_330_22:
                                                                              jmp   n83_call_proc_staged_β
.Lcall_proc_staged_α_330_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n83_call_proc_staged_β
                                                                              jmp   d$2F3_ret0
.Lcall_proc_staged_α_330_0:
                        .quad            .Lcall_proc_staged_α_330_0_s
.Lcall_proc_staged_α_330_0_s:
                        .string          "d/3"
                        .size            n87_call_proc_staged_bx, .-n87_call_proc_staged_bx
                        .type            n88_var_ref_bx, @function
n88_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n89_lit_string_α
                        .size            n88_var_ref_bx, .-n88_var_ref_bx
                        .type            n89_lit_string_bx, @function
n89_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       mov              r11, 57
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_333_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n90_var_ref_α
.Llit_string_α_333_0:   .quad            .Llit_string_α_333_0_s
.Llit_string_α_333_0_s: .string          "-"
                        .size            n89_lit_string_bx, .-n89_lit_string_bx
                        .type            n90_var_ref_bx, @function
n90_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx;         jmp   n91_var_ref_α
                        .size            n90_var_ref_bx, .-n90_var_ref_bx
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n92_call_α
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_call_bx, @function
n92_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_call_α:             mov              r11, 60
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
                                                                              jmp   n93_call_α
n92_call_β:             mov              r11, 60;                             jmp   d$2F3_step
                        .size            n92_call_bx, .-n92_call_bx
                        .type            n93_call_bx, @function
n93_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:             mov              r11, 61
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
                                                                              jmp   n94_var_ref_α
n93_call_β:             mov              r11, 61;                             jmp   d$2F3_step
                        .size            n93_call_bx, .-n93_call_bx
                        .type            n94_var_ref_bx, @function
n94_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n95_var_ref_α
                        .size            n94_var_ref_bx, .-n94_var_ref_bx
                        .type            n95_var_ref_bx, @function
n95_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n96_call_α
                        .size            n95_var_ref_bx, .-n95_var_ref_bx
                        .type            n96_call_bx, @function
n96_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_call_α:             mov              r11, 64
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
                                                                              jmp   n97_var_ref_α
n96_call_β:             mov              r11, 64;                             jmp   d$2F3_step
                        .size            n96_call_bx, .-n96_call_bx
                        .type            n97_var_ref_bx, @function
n97_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n98_lit_string_α
                        .size            n97_var_ref_bx, .-n97_var_ref_bx
                        .type            n98_lit_string_bx, @function
n98_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              r11, 66
                        mov              qword ptr [rbp + 1344], 2            # result
                        mov              dword ptr [rbp + 1348], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_347_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n99_var_ref_α
.Llit_string_α_347_0:   .quad            .Llit_string_α_347_0_s
.Llit_string_α_347_0_s: .string          "-"
                        .size            n98_lit_string_bx, .-n98_lit_string_bx
                        .type            n99_var_ref_bx, @function
n99_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n100_var_ref_α
                        .size            n99_var_ref_bx, .-n99_var_ref_bx
                        .type            n100_var_ref_bx, @function
n100_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n101_call_α
                        .size            n100_var_ref_bx, .-n100_var_ref_bx
                        .type            n101_call_bx, @function
n101_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_call_α:            mov              r11, 69
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
                                                                              jmp   n102_call_α
n101_call_β:            mov              r11, 69;                             jmp   d$2F3_step
                        .size            n101_call_bx, .-n101_call_bx
                        .type            n102_call_bx, @function
n102_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_call_α:            mov              r11, 70
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
                                                                              jmp   n103_cut_α
n102_call_β:            mov              r11, 70;                             jmp   d$2F3_step
                        .size            n102_call_bx, .-n102_call_bx
                        .type            n103_cut_bx, @function
n103_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_cut_α:             mov              r11, 71
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n104_var_ref_α
                        .size            n103_cut_bx, .-n103_cut_bx
                        .type            n104_var_ref_bx, @function
n104_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:         mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n105_var_ref_α
                        .size            n104_var_ref_bx, .-n104_var_ref_bx
                        .type            n105_var_ref_bx, @function
n105_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:         mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n106_var_ref_α
                        .size            n105_var_ref_bx, .-n105_var_ref_bx
                        .type            n106_var_ref_bx, @function
n106_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n107_call_proc_staged_α
                        .size            n106_var_ref_bx, .-n106_var_ref_bx
                        .type            n107_call_proc_staged_bx, @function
n107_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_call_proc_staged_α:
                        mov              r11, 75
                        mov              qword ptr [rbp + 1072], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_363_200
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_363_201
.Lcall_proc_staged_α_363_200:
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
.Lcall_proc_staged_α_363_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_363_202
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_363_203
.Lcall_proc_staged_α_363_202:
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
.Lcall_proc_staged_α_363_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_363_204
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_363_205
.Lcall_proc_staged_α_363_204:
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
.Lcall_proc_staged_α_363_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_363_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_363_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_363_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_363_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_363_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_363_3:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_363_21
                        add              rsp, 32
.Lcall_proc_staged_α_363_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_363_2
.Lcall_proc_staged_α_363_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1072], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_363_2
.Lcall_proc_staged_α_363_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_363_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_363_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_363_29
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
.Lcall_proc_staged_α_363_29:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n108_var_ref_α
n107_call_proc_staged_β:
                        mov              r11, 75
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_363_22
                        mov              rax, qword ptr [rbp + 1072]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_363_22
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_363_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_363_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n108_var_ref_α
.Lcall_proc_staged_α_363_0:
                        .quad            .Lcall_proc_staged_α_363_0_s
.Lcall_proc_staged_α_363_0_s:
                        .string          "d/3"
                        .size            n107_call_proc_staged_bx, .-n107_call_proc_staged_bx
                        .type            n108_var_ref_bx, @function
n108_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n109_var_ref_α
                        .size            n108_var_ref_bx, .-n108_var_ref_bx
                        .type            n109_var_ref_bx, @function
n109_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n110_var_ref_α
                        .size            n109_var_ref_bx, .-n109_var_ref_bx
                        .type            n110_var_ref_bx, @function
n110_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n111_call_proc_staged_α
                        .size            n110_var_ref_bx, .-n110_var_ref_bx
                        .type            n111_call_proc_staged_bx, @function
n111_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_call_proc_staged_α:
                        mov              r11, 79
                        mov              qword ptr [rbp + 928], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_371_200
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_371_201
.Lcall_proc_staged_α_371_200:
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
.Lcall_proc_staged_α_371_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_371_202
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_371_203
.Lcall_proc_staged_α_371_202:
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
.Lcall_proc_staged_α_371_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_371_204
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_371_205
.Lcall_proc_staged_α_371_204:
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
.Lcall_proc_staged_α_371_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_371_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_371_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_371_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_371_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_371_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_371_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_371_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_371_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_371_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_371_3:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_371_21
                        add              rsp, 32
.Lcall_proc_staged_α_371_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_371_2
.Lcall_proc_staged_α_371_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 928], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_371_2
.Lcall_proc_staged_α_371_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_371_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n107_call_proc_staged_β
.Lcall_proc_staged_α_371_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_371_29
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
.Lcall_proc_staged_α_371_29:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    n107_call_proc_staged_β
                                                                              jmp   d$2F3_ret1
n111_call_proc_staged_β:
                        mov              r11, 79
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_371_22
                        mov              rax, qword ptr [rbp + 928]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_371_22
                        mov              rcx, qword ptr [rbp + 936]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_371_22:
                                                                              jmp   n107_call_proc_staged_β
.Lcall_proc_staged_α_371_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    n107_call_proc_staged_β
                                                                              jmp   d$2F3_ret1
.Lcall_proc_staged_α_371_0:
                        .quad            .Lcall_proc_staged_α_371_0_s
.Lcall_proc_staged_α_371_0_s:
                        .string          "d/3"
                        .size            n111_call_proc_staged_bx, .-n111_call_proc_staged_bx
                        .type            n112_var_ref_bx, @function
n112_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n113_lit_string_α
                        .size            n112_var_ref_bx, .-n112_var_ref_bx
                        .type            n113_lit_string_bx, @function
n113_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      mov              r11, 81
                        mov              qword ptr [rbp + 2672], 2            # result
                        mov              dword ptr [rbp + 2676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_374_0]
                        mov              qword ptr [rbp + 2680], rax;         jmp   n114_var_ref_α
.Llit_string_α_374_0:   .quad            .Llit_string_α_374_0_s
.Llit_string_α_374_0_s: .string          "*"
                        .size            n113_lit_string_bx, .-n113_lit_string_bx
                        .type            n114_var_ref_bx, @function
n114_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx;         jmp   n115_var_ref_α
                        .size            n114_var_ref_bx, .-n114_var_ref_bx
                        .type            n115_var_ref_bx, @function
n115_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx;         jmp   n116_call_α
                        .size            n115_var_ref_bx, .-n115_var_ref_bx
                        .type            n116_call_bx, @function
n116_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_call_α:            mov              r11, 84
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
                                                                              jmp   n117_call_α
n116_call_β:            mov              r11, 84;                             jmp   d$2F3_step
                        .size            n116_call_bx, .-n116_call_bx
                        .type            n117_call_bx, @function
n117_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_call_α:            mov              r11, 85
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
                                                                              jmp   n118_var_ref_α
n117_call_β:            mov              r11, 85;                             jmp   d$2F3_step
                        .size            n117_call_bx, .-n117_call_bx
                        .type            n118_var_ref_bx, @function
n118_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx;         jmp   n119_var_ref_α
                        .size            n118_var_ref_bx, .-n118_var_ref_bx
                        .type            n119_var_ref_bx, @function
n119_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx;         jmp   n120_call_α
                        .size            n119_var_ref_bx, .-n119_var_ref_bx
                        .type            n120_call_bx, @function
n120_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_call_α:            mov              r11, 88
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
                                                                              jmp   n121_var_ref_α
n120_call_β:            mov              r11, 88;                             jmp   d$2F3_step
                        .size            n120_call_bx, .-n120_call_bx
                        .type            n121_var_ref_bx, @function
n121_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx;         jmp   n122_lit_string_α
                        .size            n121_var_ref_bx, .-n121_var_ref_bx
                        .type            n122_lit_string_bx, @function
n122_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:      mov              r11, 90
                        mov              qword ptr [rbp + 2368], 2            # result
                        mov              dword ptr [rbp + 2372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_388_0]
                        mov              qword ptr [rbp + 2376], rax;         jmp   n123_lit_string_α
.Llit_string_α_388_0:   .quad            .Llit_string_α_388_0_s
.Llit_string_α_388_0_s: .string          "+"
                        .size            n122_lit_string_bx, .-n122_lit_string_bx
                        .type            n123_lit_string_bx, @function
n123_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      mov              r11, 91
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_389_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n124_var_ref_α
.Llit_string_α_389_0:   .quad            .Llit_string_α_389_0_s
.Llit_string_α_389_0_s: .string          "*"
                        .size            n123_lit_string_bx, .-n123_lit_string_bx
                        .type            n124_var_ref_bx, @function
n124_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n125_var_ref_α
                        .size            n124_var_ref_bx, .-n124_var_ref_bx
                        .type            n125_var_ref_bx, @function
n125_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n126_call_α
                        .size            n125_var_ref_bx, .-n125_var_ref_bx
                        .type            n126_call_bx, @function
n126_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_call_α:            mov              r11, 94
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
                                                                              jmp   n127_lit_string_α
n126_call_β:            mov              r11, 94;                             jmp   d$2F3_ω
                        .size            n126_call_bx, .-n126_call_bx
                        .type            n127_lit_string_bx, @function
n127_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              r11, 95
                        mov              qword ptr [rbp + 2272], 2            # result
                        mov              dword ptr [rbp + 2276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_395_0]
                        mov              qword ptr [rbp + 2280], rax;         jmp   n128_var_ref_α
.Llit_string_α_395_0:   .quad            .Llit_string_α_395_0_s
.Llit_string_α_395_0_s: .string          "*"
                        .size            n127_lit_string_bx, .-n127_lit_string_bx
                        .type            n128_var_ref_bx, @function
n128_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 96
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx;         jmp   n129_var_ref_α
                        .size            n128_var_ref_bx, .-n128_var_ref_bx
                        .type            n129_var_ref_bx, @function
n129_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx;         jmp   n130_call_α
                        .size            n129_var_ref_bx, .-n129_var_ref_bx
                        .type            n130_call_bx, @function
n130_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_call_α:            mov              r11, 98
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
                                                                              jmp   n131_call_α
n130_call_β:            mov              r11, 98;                             jmp   d$2F3_ω
                        .size            n130_call_bx, .-n130_call_bx
                        .type            n131_call_bx, @function
n131_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_call_α:            mov              r11, 99
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
                                                                              jmp   n132_call_α
n131_call_β:            mov              r11, 99;                             jmp   d$2F3_step
                        .size            n131_call_bx, .-n131_call_bx
                        .type            n132_call_bx, @function
n132_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_call_α:            mov              r11, 100
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
                                                                              jmp   n133_cut_α
n132_call_β:            mov              r11, 100;                            jmp   d$2F3_step
                        .size            n132_call_bx, .-n132_call_bx
                        .type            n133_cut_bx, @function
n133_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_cut_α:             mov              r11, 101
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n134_var_ref_α
                        .size            n133_cut_bx, .-n133_cut_bx
                        .type            n134_var_ref_bx, @function
n134_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n135_var_ref_α
                        .size            n134_var_ref_bx, .-n134_var_ref_bx
                        .type            n135_var_ref_bx, @function
n135_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx;         jmp   n136_var_ref_α
                        .size            n135_var_ref_bx, .-n135_var_ref_bx
                        .type            n136_var_ref_bx, @function
n136_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n137_call_proc_staged_α
                        .size            n136_var_ref_bx, .-n136_var_ref_bx
                        .type            n137_call_proc_staged_bx, @function
n137_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_call_proc_staged_α:
                        mov              r11, 105
                        mov              qword ptr [rbp + 1872], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_412_200
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_412_201
.Lcall_proc_staged_α_412_200:
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
.Lcall_proc_staged_α_412_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_412_202
                        mov              rax, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_412_203
.Lcall_proc_staged_α_412_202:
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
.Lcall_proc_staged_α_412_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_412_204
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_412_205
.Lcall_proc_staged_α_412_204:
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
.Lcall_proc_staged_α_412_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_412_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_412_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_412_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_412_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_412_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_412_3:
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_412_21
                        add              rsp, 32
.Lcall_proc_staged_α_412_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_412_2
.Lcall_proc_staged_α_412_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1872], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_412_2
.Lcall_proc_staged_α_412_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_412_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
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
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
.Lcall_proc_staged_α_412_29:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n138_var_ref_α
n137_call_proc_staged_β:
                        mov              r11, 105
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_412_22
                        mov              rax, qword ptr [rbp + 1872]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_412_22
                        mov              rcx, qword ptr [rbp + 1880]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_412_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_412_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n138_var_ref_α
.Lcall_proc_staged_α_412_0:
                        .quad            .Lcall_proc_staged_α_412_0_s
.Lcall_proc_staged_α_412_0_s:
                        .string          "d/3"
                        .size            n137_call_proc_staged_bx, .-n137_call_proc_staged_bx
                        .type            n138_var_ref_bx, @function
n138_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n139_var_ref_α
                        .size            n138_var_ref_bx, .-n138_var_ref_bx
                        .type            n139_var_ref_bx, @function
n139_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n140_var_ref_α
                        .size            n139_var_ref_bx, .-n139_var_ref_bx
                        .type            n140_var_ref_bx, @function
n140_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n141_call_proc_staged_α
                        .size            n140_var_ref_bx, .-n140_var_ref_bx
                        .type            n141_call_proc_staged_bx, @function
n141_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_call_proc_staged_α:
                        mov              r11, 109
                        mov              qword ptr [rbp + 1728], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_420_200
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_420_201
.Lcall_proc_staged_α_420_200:
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
.Lcall_proc_staged_α_420_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_420_202
                        mov              rax, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_420_203
.Lcall_proc_staged_α_420_202:
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
.Lcall_proc_staged_α_420_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_420_204
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_420_205
.Lcall_proc_staged_α_420_204:
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
.Lcall_proc_staged_α_420_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_420_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_420_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_420_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_420_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_420_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_420_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_420_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_420_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_420_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_420_3:
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_420_21
                        add              rsp, 32
.Lcall_proc_staged_α_420_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_420_2
.Lcall_proc_staged_α_420_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1728], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_420_2
.Lcall_proc_staged_α_420_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_420_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n137_call_proc_staged_β
.Lcall_proc_staged_α_420_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_420_29
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
.Lcall_proc_staged_α_420_29:
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              al, 104;                             je    n137_call_proc_staged_β
                                                                              jmp   d$2F3_ret2
n141_call_proc_staged_β:
                        mov              r11, 109
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_420_22
                        mov              rax, qword ptr [rbp + 1728]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_420_22
                        mov              rcx, qword ptr [rbp + 1736]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_420_22:
                                                                              jmp   n137_call_proc_staged_β
.Lcall_proc_staged_α_420_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              al, 104;                             je    n137_call_proc_staged_β
                                                                              jmp   d$2F3_ret2
.Lcall_proc_staged_α_420_0:
                        .quad            .Lcall_proc_staged_α_420_0_s
.Lcall_proc_staged_α_420_0_s:
                        .string          "d/3"
                        .size            n141_call_proc_staged_bx, .-n141_call_proc_staged_bx
                        .type            n142_var_ref_bx, @function
n142_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx;         jmp   n143_lit_string_α
                        .size            n142_var_ref_bx, .-n142_var_ref_bx
                        .type            n143_lit_string_bx, @function
n143_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:      mov              r11, 111
                        mov              qword ptr [rbp + 3920], 2            # result
                        mov              dword ptr [rbp + 3924], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_423_0]
                        mov              qword ptr [rbp + 3928], rax;         jmp   n144_var_ref_α
.Llit_string_α_423_0:   .quad            .Llit_string_α_423_0_s
.Llit_string_α_423_0_s: .string          "/"
                        .size            n143_lit_string_bx, .-n143_lit_string_bx
                        .type            n144_var_ref_bx, @function
n144_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx;         jmp   n145_var_ref_α
                        .size            n144_var_ref_bx, .-n144_var_ref_bx
                        .type            n145_var_ref_bx, @function
n145_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx;         jmp   n146_call_α
                        .size            n145_var_ref_bx, .-n145_var_ref_bx
                        .type            n146_call_bx, @function
n146_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_call_α:            mov              r11, 114
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
                                                                              jmp   n147_call_α
n146_call_β:            mov              r11, 114;                            jmp   d$2F3_step
                        .size            n146_call_bx, .-n146_call_bx
                        .type            n147_call_bx, @function
n147_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_call_α:            mov              r11, 115
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
                                                                              jmp   n148_var_ref_α
n147_call_β:            mov              r11, 115;                            jmp   d$2F3_step
                        .size            n147_call_bx, .-n147_call_bx
                        .type            n148_var_ref_bx, @function
n148_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx;         jmp   n149_var_ref_α
                        .size            n148_var_ref_bx, .-n148_var_ref_bx
                        .type            n149_var_ref_bx, @function
n149_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx;         jmp   n150_call_α
                        .size            n149_var_ref_bx, .-n149_var_ref_bx
                        .type            n150_call_bx, @function
n150_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_call_α:            mov              r11, 118
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
                                                                              jmp   n151_var_ref_α
n150_call_β:            mov              r11, 118;                            jmp   d$2F3_step
                        .size            n150_call_bx, .-n150_call_bx
                        .type            n151_var_ref_bx, @function
n151_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx;         jmp   n152_lit_string_α
                        .size            n151_var_ref_bx, .-n151_var_ref_bx
                        .type            n152_lit_string_bx, @function
n152_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      mov              r11, 120
                        mov              qword ptr [rbp + 3616], 2            # result
                        mov              dword ptr [rbp + 3620], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_437_0]
                        mov              qword ptr [rbp + 3624], rax;         jmp   n153_lit_string_α
.Llit_string_α_437_0:   .quad            .Llit_string_α_437_0_s
.Llit_string_α_437_0_s: .string          "/"
                        .size            n152_lit_string_bx, .-n152_lit_string_bx
                        .type            n153_lit_string_bx, @function
n153_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:      mov              r11, 121
                        mov              qword ptr [rbp + 3392], 2            # result
                        mov              dword ptr [rbp + 3396], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_438_0]
                        mov              qword ptr [rbp + 3400], rax;         jmp   n154_lit_string_α
.Llit_string_α_438_0:   .quad            .Llit_string_α_438_0_s
.Llit_string_α_438_0_s: .string          "-"
                        .size            n153_lit_string_bx, .-n153_lit_string_bx
                        .type            n154_lit_string_bx, @function
n154_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rbp + 3168], 2            # result
                        mov              dword ptr [rbp + 3172], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_439_0]
                        mov              qword ptr [rbp + 3176], rax;         jmp   n155_var_ref_α
.Llit_string_α_439_0:   .quad            .Llit_string_α_439_0_s
.Llit_string_α_439_0_s: .string          "*"
                        .size            n154_lit_string_bx, .-n154_lit_string_bx
                        .type            n155_var_ref_bx, @function
n155_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx;         jmp   n156_var_ref_α
                        .size            n155_var_ref_bx, .-n155_var_ref_bx
                        .type            n156_var_ref_bx, @function
n156_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx;         jmp   n157_call_α
                        .size            n156_var_ref_bx, .-n156_var_ref_bx
                        .type            n157_call_bx, @function
n157_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_call_α:            mov              r11, 125
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
                                                                              jmp   n158_lit_string_α
n157_call_β:            mov              r11, 125;                            jmp   d$2F3_ω
                        .size            n157_call_bx, .-n157_call_bx
                        .type            n158_lit_string_bx, @function
n158_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rbp + 3296], 2            # result
                        mov              dword ptr [rbp + 3300], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_445_0]
                        mov              qword ptr [rbp + 3304], rax;         jmp   n159_var_ref_α
.Llit_string_α_445_0:   .quad            .Llit_string_α_445_0_s
.Llit_string_α_445_0_s: .string          "*"
                        .size            n158_lit_string_bx, .-n158_lit_string_bx
                        .type            n159_var_ref_bx, @function
n159_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n160_var_ref_α
                        .size            n159_var_ref_bx, .-n159_var_ref_bx
                        .type            n160_var_ref_bx, @function
n160_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n161_call_α
                        .size            n160_var_ref_bx, .-n160_var_ref_bx
                        .type            n161_call_bx, @function
n161_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_call_α:            mov              r11, 129
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
                                                                              jmp   n162_call_α
n161_call_β:            mov              r11, 129;                            jmp   d$2F3_ω
                        .size            n161_call_bx, .-n161_call_bx
                        .type            n162_call_bx, @function
n162_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_call_α:            mov              r11, 130
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
                                                                              jmp   n163_lit_string_α
n162_call_β:            mov              r11, 130;                            jmp   d$2F3_ω
                        .size            n162_call_bx, .-n162_call_bx
                        .type            n163_lit_string_bx, @function
n163_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:      mov              r11, 131
                        mov              qword ptr [rbp + 3520], 2            # result
                        mov              dword ptr [rbp + 3524], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_452_0]
                        mov              qword ptr [rbp + 3528], rax;         jmp   n164_var_ref_α
.Llit_string_α_452_0:   .quad            .Llit_string_α_452_0_s
.Llit_string_α_452_0_s: .string          "^"
                        .size            n163_lit_string_bx, .-n163_lit_string_bx
                        .type            n164_var_ref_bx, @function
n164_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx;         jmp   n165_lit_integer_α
                        .size            n164_var_ref_bx, .-n164_var_ref_bx
                        .type            n165_lit_integer_bx, @function
n165_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     mov              r11, 133
                        mov              qword ptr [rbp + 3424], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_455_0]
                        mov              qword ptr [rbp + 3432], rax;         jmp   n166_call_α
.Llit_integer_α_455_0:  .quad            2
                        .size            n165_lit_integer_bx, .-n165_lit_integer_bx
                        .type            n166_call_bx, @function
n166_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_call_α:            mov              r11, 134
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
                                                                              jmp   n167_call_α
n166_call_β:            mov              r11, 134;                            jmp   d$2F3_ω
                        .size            n166_call_bx, .-n166_call_bx
                        .type            n167_call_bx, @function
n167_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_call_α:            mov              r11, 135
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
                                                                              jmp   n168_call_α
n167_call_β:            mov              r11, 135;                            jmp   d$2F3_step
                        .size            n167_call_bx, .-n167_call_bx
                        .type            n168_call_bx, @function
n168_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:            mov              r11, 136
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
                                                                              jmp   n169_cut_α
n168_call_β:            mov              r11, 136;                            jmp   d$2F3_step
                        .size            n168_call_bx, .-n168_call_bx
                        .type            n169_cut_bx, @function
n169_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_cut_α:             mov              r11, 137
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n170_var_ref_α
                        .size            n169_cut_bx, .-n169_cut_bx
                        .type            n170_var_ref_bx, @function
n170_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx;         jmp   n171_var_ref_α
                        .size            n170_var_ref_bx, .-n170_var_ref_bx
                        .type            n171_var_ref_bx, @function
n171_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n172_var_ref_α
                        .size            n171_var_ref_bx, .-n171_var_ref_bx
                        .type            n172_var_ref_bx, @function
n172_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx;         jmp   n173_call_proc_staged_α
                        .size            n172_var_ref_bx, .-n172_var_ref_bx
                        .type            n173_call_proc_staged_bx, @function
n173_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_call_proc_staged_α:
                        mov              r11, 141
                        mov              qword ptr [rbp + 2896], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_468_200
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_468_201
.Lcall_proc_staged_α_468_200:
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
.Lcall_proc_staged_α_468_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_468_202
                        mov              rax, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_468_203
.Lcall_proc_staged_α_468_202:
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
.Lcall_proc_staged_α_468_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_468_204
                        mov              rax, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_468_205
.Lcall_proc_staged_α_468_204:
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
.Lcall_proc_staged_α_468_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_468_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_468_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_468_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_468_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_468_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_468_3:
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_468_21
                        add              rsp, 32
.Lcall_proc_staged_α_468_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_468_2
.Lcall_proc_staged_α_468_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2896], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_468_2
.Lcall_proc_staged_α_468_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_468_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_468_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_468_29
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
.Lcall_proc_staged_α_468_29:
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n174_var_ref_α
n173_call_proc_staged_β:
                        mov              r11, 141
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_468_22
                        mov              rax, qword ptr [rbp + 2896]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_468_22
                        mov              rcx, qword ptr [rbp + 2904]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_468_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_468_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n174_var_ref_α
.Lcall_proc_staged_α_468_0:
                        .quad            .Lcall_proc_staged_α_468_0_s
.Lcall_proc_staged_α_468_0_s:
                        .string          "d/3"
                        .size            n173_call_proc_staged_bx, .-n173_call_proc_staged_bx
                        .type            n174_var_ref_bx, @function
n174_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n175_var_ref_α
                        .size            n174_var_ref_bx, .-n174_var_ref_bx
                        .type            n175_var_ref_bx, @function
n175_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx;         jmp   n176_var_ref_α
                        .size            n175_var_ref_bx, .-n175_var_ref_bx
                        .type            n176_var_ref_bx, @function
n176_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx;         jmp   n177_call_proc_staged_α
                        .size            n176_var_ref_bx, .-n176_var_ref_bx
                        .type            n177_call_proc_staged_bx, @function
n177_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_call_proc_staged_α:
                        mov              r11, 145
                        mov              qword ptr [rbp + 2752], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_476_200
                        mov              rax, qword ptr [rbp + 2784]
                        mov              rdx, qword ptr [rbp + 2792]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_476_201
.Lcall_proc_staged_α_476_200:
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
.Lcall_proc_staged_α_476_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_476_202
                        mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_476_203
.Lcall_proc_staged_α_476_202:
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
.Lcall_proc_staged_α_476_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_476_204
                        mov              rax, qword ptr [rbp + 2816]
                        mov              rdx, qword ptr [rbp + 2824]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_476_205
.Lcall_proc_staged_α_476_204:
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
.Lcall_proc_staged_α_476_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_476_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_476_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_476_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_476_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_476_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_476_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_476_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_476_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_476_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_476_3:
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_476_21
                        add              rsp, 32
.Lcall_proc_staged_α_476_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_476_2
.Lcall_proc_staged_α_476_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2752], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_476_2
.Lcall_proc_staged_α_476_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_476_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n173_call_proc_staged_β
.Lcall_proc_staged_α_476_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_476_29
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
.Lcall_proc_staged_α_476_29:
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              al, 104;                             je    n173_call_proc_staged_β
                                                                              jmp   d$2F3_ret3
n177_call_proc_staged_β:
                        mov              r11, 145
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_476_22
                        mov              rax, qword ptr [rbp + 2752]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_476_22
                        mov              rcx, qword ptr [rbp + 2760]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_476_22:
                                                                              jmp   n173_call_proc_staged_β
.Lcall_proc_staged_α_476_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              al, 104;                             je    n173_call_proc_staged_β
                                                                              jmp   d$2F3_ret3
.Lcall_proc_staged_α_476_0:
                        .quad            .Lcall_proc_staged_α_476_0_s
.Lcall_proc_staged_α_476_0_s:
                        .string          "d/3"
                        .size            n177_call_proc_staged_bx, .-n177_call_proc_staged_bx
                        .type            n178_var_ref_bx, @function
n178_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx;         jmp   n179_lit_string_α
                        .size            n178_var_ref_bx, .-n178_var_ref_bx
                        .type            n179_lit_string_bx, @function
n179_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rbp + 5136], 2            # result
                        mov              dword ptr [rbp + 5140], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_479_0]
                        mov              qword ptr [rbp + 5144], rax;         jmp   n180_var_ref_α
.Llit_string_α_479_0:   .quad            .Llit_string_α_479_0_s
.Llit_string_α_479_0_s: .string          "^"
                        .size            n179_lit_string_bx, .-n179_lit_string_bx
                        .type            n180_var_ref_bx, @function
n180_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx;         jmp   n181_var_ref_α
                        .size            n180_var_ref_bx, .-n180_var_ref_bx
                        .type            n181_var_ref_bx, @function
n181_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx;         jmp   n182_call_α
                        .size            n181_var_ref_bx, .-n181_var_ref_bx
                        .type            n182_call_bx, @function
n182_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_call_α:            mov              r11, 150
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
                                                                              jmp   n183_call_α
n182_call_β:            mov              r11, 150;                            jmp   d$2F3_step
                        .size            n182_call_bx, .-n182_call_bx
                        .type            n183_call_bx, @function
n183_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_call_α:            mov              r11, 151
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
                                                                              jmp   n184_var_ref_α
n183_call_β:            mov              r11, 151;                            jmp   d$2F3_step
                        .size            n183_call_bx, .-n183_call_bx
                        .type            n184_var_ref_bx, @function
n184_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx;         jmp   n185_var_ref_α
                        .size            n184_var_ref_bx, .-n184_var_ref_bx
                        .type            n185_var_ref_bx, @function
n185_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx;         jmp   n186_call_α
                        .size            n185_var_ref_bx, .-n185_var_ref_bx
                        .type            n186_call_bx, @function
n186_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_call_α:            mov              r11, 154
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
                                                                              jmp   n187_var_ref_α
n186_call_β:            mov              r11, 154;                            jmp   d$2F3_step
                        .size            n186_call_bx, .-n186_call_bx
                        .type            n187_var_ref_bx, @function
n187_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:         mov              r11, 155
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx;         jmp   n188_lit_string_α
                        .size            n187_var_ref_bx, .-n187_var_ref_bx
                        .type            n188_lit_string_bx, @function
n188_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:      mov              r11, 156
                        mov              qword ptr [rbp + 4832], 2            # result
                        mov              dword ptr [rbp + 4836], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_493_0]
                        mov              qword ptr [rbp + 4840], rax;         jmp   n189_lit_string_α
.Llit_string_α_493_0:   .quad            .Llit_string_α_493_0_s
.Llit_string_α_493_0_s: .string          "*"
                        .size            n188_lit_string_bx, .-n188_lit_string_bx
                        .type            n189_lit_string_bx, @function
n189_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:      mov              r11, 157
                        mov              qword ptr [rbp + 4608], 2            # result
                        mov              dword ptr [rbp + 4612], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_494_0]
                        mov              qword ptr [rbp + 4616], rax;         jmp   n190_var_ref_α
.Llit_string_α_494_0:   .quad            .Llit_string_α_494_0_s
.Llit_string_α_494_0_s: .string          "*"
                        .size            n189_lit_string_bx, .-n189_lit_string_bx
                        .type            n190_var_ref_bx, @function
n190_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              r11, 158
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx;         jmp   n191_var_ref_α
                        .size            n190_var_ref_bx, .-n190_var_ref_bx
                        .type            n191_var_ref_bx, @function
n191_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx;         jmp   n192_call_α
                        .size            n191_var_ref_bx, .-n191_var_ref_bx
                        .type            n192_call_bx, @function
n192_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_call_α:            mov              r11, 160
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
                                                                              jmp   n193_lit_string_α
n192_call_β:            mov              r11, 160;                            jmp   d$2F3_ω
                        .size            n192_call_bx, .-n192_call_bx
                        .type            n193_lit_string_bx, @function
n193_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rbp + 4736], 2            # result
                        mov              dword ptr [rbp + 4740], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_500_0]
                        mov              qword ptr [rbp + 4744], rax;         jmp   n194_var_ref_α
.Llit_string_α_500_0:   .quad            .Llit_string_α_500_0_s
.Llit_string_α_500_0_s: .string          "^"
                        .size            n193_lit_string_bx, .-n193_lit_string_bx
                        .type            n194_var_ref_bx, @function
n194_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx;         jmp   n195_var_ref_α
                        .size            n194_var_ref_bx, .-n194_var_ref_bx
                        .type            n195_var_ref_bx, @function
n195_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx;         jmp   n196_call_α
                        .size            n195_var_ref_bx, .-n195_var_ref_bx
                        .type            n196_call_bx, @function
n196_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_call_α:            mov              r11, 164
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
                                                                              jmp   n197_call_α
n196_call_β:            mov              r11, 164;                            jmp   d$2F3_ω
                        .size            n196_call_bx, .-n196_call_bx
                        .type            n197_call_bx, @function
n197_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_call_α:            mov              r11, 165
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
                                                                              jmp   n198_call_α
n197_call_β:            mov              r11, 165;                            jmp   d$2F3_step
                        .size            n197_call_bx, .-n197_call_bx
                        .type            n198_call_bx, @function
n198_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_call_α:            mov              r11, 166
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
                                                                              jmp   n199_cut_α
n198_call_β:            mov              r11, 166;                            jmp   d$2F3_step
                        .size            n198_call_bx, .-n198_call_bx
                        .type            n199_cut_bx, @function
n199_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_cut_α:             mov              r11, 167
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n200_var_ref_α
                        .size            n199_cut_bx, .-n199_cut_bx
                        .type            n200_var_ref_bx, @function
n200_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:         mov              r11, 168
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx;         jmp   n201_call_α
                        .size            n200_var_ref_bx, .-n200_var_ref_bx
                        .type            n201_call_bx, @function
n201_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_call_α:            mov              r11, 169
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
                                                                              jmp   n202_var_ref_α
n201_call_β:            mov              r11, 169;                            jmp   d$2F3_ω
                        .size            n201_call_bx, .-n201_call_bx
                        .type            n202_var_ref_bx, @function
n202_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx;         jmp   n203_var_α
                        .size            n202_var_ref_bx, .-n202_var_ref_bx
                        .type            n203_var_bx, @function
n203_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:             mov              r11, 171
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 4232], rax;         jmp   n204_call_α
                        .size            n203_var_bx, .-n203_var_bx
                        .type            n204_call_bx, @function
n204_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_call_α:            mov              r11, 172
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
                                                                              jmp   n205_lit_integer_α
n204_call_β:            mov              r11, 172;                            jmp   d$2F3_step
                        .size            n204_call_bx, .-n204_call_bx
                        .type            n205_lit_integer_bx, @function
n205_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_integer_α:     mov              r11, 173
                        mov              qword ptr [rbp + 4288], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_518_0]
                        mov              qword ptr [rbp + 4296], rax;         jmp   n206_call_α
.Llit_integer_α_518_0:  .quad            1
                        .size            n205_lit_integer_bx, .-n205_lit_integer_bx
                        .type            n206_call_bx, @function
n206_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_call_α:            mov              r11, 174
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
                                                                              jmp   n207_call_α
n206_call_β:            mov              r11, 174;                            jmp   d$2F3_step
                        .size            n206_call_bx, .-n206_call_bx
                        .type            n207_call_bx, @function
n207_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_call_α:            mov              r11, 175
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
                                                                              jmp   n208_call_α
n207_call_β:            mov              r11, 175;                            jmp   d$2F3_step
                        .size            n207_call_bx, .-n207_call_bx
                        .type            n208_call_bx, @function
n208_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_call_α:            mov              r11, 176
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
                                                                              jmp   n209_var_ref_α
n208_call_β:            mov              r11, 176;                            jmp   d$2F3_ω
                        .size            n208_call_bx, .-n208_call_bx
                        .type            n209_var_ref_bx, @function
n209_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 177
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx;         jmp   n210_var_ref_α
                        .size            n209_var_ref_bx, .-n209_var_ref_bx
                        .type            n210_var_ref_bx, @function
n210_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx;         jmp   n211_var_ref_α
                        .size            n210_var_ref_bx, .-n210_var_ref_bx
                        .type            n211_var_ref_bx, @function
n211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx;         jmp   n212_call_proc_staged_α
                        .size            n211_var_ref_bx, .-n211_var_ref_bx
                        .type            n212_call_proc_staged_bx, @function
n212_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_call_proc_staged_α:
                        mov              r11, 180
                        mov              qword ptr [rbp + 4000], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_529_200
                        mov              rax, qword ptr [rbp + 4032]
                        mov              rdx, qword ptr [rbp + 4040]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_529_201
.Lcall_proc_staged_α_529_200:
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
.Lcall_proc_staged_α_529_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_529_202
                        mov              rax, qword ptr [rbp + 4048]
                        mov              rdx, qword ptr [rbp + 4056]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_529_203
.Lcall_proc_staged_α_529_202:
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
.Lcall_proc_staged_α_529_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_529_204
                        mov              rax, qword ptr [rbp + 4064]
                        mov              rdx, qword ptr [rbp + 4072]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_529_205
.Lcall_proc_staged_α_529_204:
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
.Lcall_proc_staged_α_529_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_529_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_529_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_529_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_529_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_529_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_529_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_529_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_529_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_529_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_529_3:
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_529_21
                        add              rsp, 32
.Lcall_proc_staged_α_529_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_529_2
.Lcall_proc_staged_α_529_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4000], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_529_2
.Lcall_proc_staged_α_529_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_529_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_529_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_529_29
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
.Lcall_proc_staged_α_529_29:
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret4
n212_call_proc_staged_β:
                        mov              r11, 180
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_529_22
                        mov              rax, qword ptr [rbp + 4000]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_529_22
                        mov              rcx, qword ptr [rbp + 4008]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_529_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_529_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret4
.Lcall_proc_staged_α_529_0:
                        .quad            .Lcall_proc_staged_α_529_0_s
.Lcall_proc_staged_α_529_0_s:
                        .string          "d/3"
                        .size            n212_call_proc_staged_bx, .-n212_call_proc_staged_bx
                        .type            n213_var_ref_bx, @function
n213_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:         mov              r11, 181
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5632], rax
                        mov              qword ptr [rbp + 5640], rdx;         jmp   n214_lit_string_α
                        .size            n213_var_ref_bx, .-n213_var_ref_bx
                        .type            n214_lit_string_bx, @function
n214_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:      mov              r11, 182
                        mov              qword ptr [rbp + 5728], 2            # result
                        mov              dword ptr [rbp + 5732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_532_0]
                        mov              qword ptr [rbp + 5736], rax;         jmp   n215_var_ref_α
.Llit_string_α_532_0:   .quad            .Llit_string_α_532_0_s
.Llit_string_α_532_0_s: .string          "-"
                        .size            n214_lit_string_bx, .-n214_lit_string_bx
                        .type            n215_var_ref_bx, @function
n215_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx;         jmp   n216_call_α
                        .size            n215_var_ref_bx, .-n215_var_ref_bx
                        .type            n216_call_bx, @function
n216_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_call_α:            mov              r11, 184
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
                                                                              jmp   n217_call_α
n216_call_β:            mov              r11, 184;                            jmp   d$2F3_step
                        .size            n216_call_bx, .-n216_call_bx
                        .type            n217_call_bx, @function
n217_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_call_α:            mov              r11, 185
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
                                                                              jmp   n218_var_ref_α
n217_call_β:            mov              r11, 185;                            jmp   d$2F3_step
                        .size            n217_call_bx, .-n217_call_bx
                        .type            n218_var_ref_bx, @function
n218_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 5536], rax
                        mov              qword ptr [rbp + 5544], rdx;         jmp   n219_var_ref_α
                        .size            n218_var_ref_bx, .-n218_var_ref_bx
                        .type            n219_var_ref_bx, @function
n219_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx;         jmp   n220_call_α
                        .size            n219_var_ref_bx, .-n219_var_ref_bx
                        .type            n220_call_bx, @function
n220_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_call_α:            mov              r11, 188
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
                                                                              jmp   n221_var_ref_α
n220_call_β:            mov              r11, 188;                            jmp   d$2F3_step
                        .size            n220_call_bx, .-n220_call_bx
                        .type            n221_var_ref_bx, @function
n221_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5360], rax
                        mov              qword ptr [rbp + 5368], rdx;         jmp   n222_lit_string_α
                        .size            n221_var_ref_bx, .-n221_var_ref_bx
                        .type            n222_lit_string_bx, @function
n222_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:      mov              r11, 190
                        mov              qword ptr [rbp + 5456], 2            # result
                        mov              dword ptr [rbp + 5460], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_544_0]
                        mov              qword ptr [rbp + 5464], rax;         jmp   n223_var_ref_α
.Llit_string_α_544_0:   .quad            .Llit_string_α_544_0_s
.Llit_string_α_544_0_s: .string          "-"
                        .size            n222_lit_string_bx, .-n222_lit_string_bx
                        .type            n223_var_ref_bx, @function
n223_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx;         jmp   n224_call_α
                        .size            n223_var_ref_bx, .-n223_var_ref_bx
                        .type            n224_call_bx, @function
n224_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_call_α:            mov              r11, 192
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
                                                                              jmp   n225_call_α
n224_call_β:            mov              r11, 192;                            jmp   d$2F3_step
                        .size            n224_call_bx, .-n224_call_bx
                        .type            n225_call_bx, @function
n225_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_call_α:            mov              r11, 193
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
                                                                              jmp   n226_cut_α
n225_call_β:            mov              r11, 193;                            jmp   d$2F3_step
                        .size            n225_call_bx, .-n225_call_bx
                        .type            n226_cut_bx, @function
n226_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_cut_α:             mov              r11, 194
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n227_var_ref_α
                        .size            n226_cut_bx, .-n226_cut_bx
                        .type            n227_var_ref_bx, @function
n227_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_var_ref_α:         mov              r11, 195
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx;         jmp   n228_var_ref_α
                        .size            n227_var_ref_bx, .-n227_var_ref_bx
                        .type            n228_var_ref_bx, @function
n228_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx;         jmp   n229_var_ref_α
                        .size            n228_var_ref_bx, .-n228_var_ref_bx
                        .type            n229_var_ref_bx, @function
n229_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx;         jmp   n230_call_proc_staged_α
                        .size            n229_var_ref_bx, .-n229_var_ref_bx
                        .type            n230_call_proc_staged_bx, @function
n230_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_call_proc_staged_α:
                        mov              r11, 198
                        mov              qword ptr [rbp + 5216], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_558_200
                        mov              rax, qword ptr [rbp + 5248]
                        mov              rdx, qword ptr [rbp + 5256]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_558_201
.Lcall_proc_staged_α_558_200:
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
.Lcall_proc_staged_α_558_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_558_202
                        mov              rax, qword ptr [rbp + 5264]
                        mov              rdx, qword ptr [rbp + 5272]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_558_203
.Lcall_proc_staged_α_558_202:
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
.Lcall_proc_staged_α_558_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_558_204
                        mov              rax, qword ptr [rbp + 5280]
                        mov              rdx, qword ptr [rbp + 5288]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_558_205
.Lcall_proc_staged_α_558_204:
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
.Lcall_proc_staged_α_558_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_558_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_558_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_558_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_558_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_558_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_558_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_558_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_558_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_558_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_558_3:
                        mov              qword ptr [rbp + 5216], rax
                        mov              qword ptr [rbp + 5224], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_558_21
                        add              rsp, 32
.Lcall_proc_staged_α_558_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_558_2
.Lcall_proc_staged_α_558_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 5216], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_558_2
.Lcall_proc_staged_α_558_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_558_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_558_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_558_29
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
.Lcall_proc_staged_α_558_29:
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret5
n230_call_proc_staged_β:
                        mov              r11, 198
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_558_22
                        mov              rax, qword ptr [rbp + 5216]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_558_22
                        mov              rcx, qword ptr [rbp + 5224]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_558_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_558_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret5
.Lcall_proc_staged_α_558_0:
                        .quad            .Lcall_proc_staged_α_558_0_s
.Lcall_proc_staged_α_558_0_s:
                        .string          "d/3"
                        .size            n230_call_proc_staged_bx, .-n230_call_proc_staged_bx
                        .type            n231_var_ref_bx, @function
n231_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx;         jmp   n232_lit_string_α
                        .size            n231_var_ref_bx, .-n231_var_ref_bx
                        .type            n232_lit_string_bx, @function
n232_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_string_α:      mov              r11, 200
                        mov              qword ptr [rbp + 6432], 2            # result
                        mov              dword ptr [rbp + 6436], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_561_0]
                        mov              qword ptr [rbp + 6440], rax;         jmp   n233_var_ref_α
.Llit_string_α_561_0:   .quad            .Llit_string_α_561_0_s
.Llit_string_α_561_0_s: .string          "exp"
                        .size            n232_lit_string_bx, .-n232_lit_string_bx
                        .type            n233_var_ref_bx, @function
n233_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx;         jmp   n234_call_α
                        .size            n233_var_ref_bx, .-n233_var_ref_bx
                        .type            n234_call_bx, @function
n234_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_call_α:            mov              r11, 202
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
                                                                              jmp   n235_call_α
n234_call_β:            mov              r11, 202;                            jmp   d$2F3_step
                        .size            n234_call_bx, .-n234_call_bx
                        .type            n235_call_bx, @function
n235_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_call_α:            mov              r11, 203
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
                                                                              jmp   n236_var_ref_α
n235_call_β:            mov              r11, 203;                            jmp   d$2F3_step
                        .size            n235_call_bx, .-n235_call_bx
                        .type            n236_var_ref_bx, @function
n236_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:         mov              r11, 204
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx;         jmp   n237_var_ref_α
                        .size            n236_var_ref_bx, .-n236_var_ref_bx
                        .type            n237_var_ref_bx, @function
n237_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:         mov              r11, 205
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx;         jmp   n238_call_α
                        .size            n237_var_ref_bx, .-n237_var_ref_bx
                        .type            n238_call_bx, @function
n238_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_call_α:            mov              r11, 206
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
                                                                              jmp   n239_var_ref_α
n238_call_β:            mov              r11, 206;                            jmp   d$2F3_step
                        .size            n238_call_bx, .-n238_call_bx
                        .type            n239_var_ref_bx, @function
n239_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:         mov              r11, 207
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5952], rax
                        mov              qword ptr [rbp + 5960], rdx;         jmp   n240_lit_string_α
                        .size            n239_var_ref_bx, .-n239_var_ref_bx
                        .type            n240_lit_string_bx, @function
n240_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:      mov              r11, 208
                        mov              qword ptr [rbp + 6160], 2            # result
                        mov              dword ptr [rbp + 6164], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_573_0]
                        mov              qword ptr [rbp + 6168], rax;         jmp   n241_lit_string_α
.Llit_string_α_573_0:   .quad            .Llit_string_α_573_0_s
.Llit_string_α_573_0_s: .string          "*"
                        .size            n240_lit_string_bx, .-n240_lit_string_bx
                        .type            n241_lit_string_bx, @function
n241_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:      mov              r11, 209
                        mov              qword ptr [rbp + 6048], 2            # result
                        mov              dword ptr [rbp + 6052], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_574_0]
                        mov              qword ptr [rbp + 6056], rax;         jmp   n242_var_ref_α
.Llit_string_α_574_0:   .quad            .Llit_string_α_574_0_s
.Llit_string_α_574_0_s: .string          "exp"
                        .size            n241_lit_string_bx, .-n241_lit_string_bx
                        .type            n242_var_ref_bx, @function
n242_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_var_ref_α:         mov              r11, 210
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 5968], rax
                        mov              qword ptr [rbp + 5976], rdx;         jmp   n243_call_α
                        .size            n242_var_ref_bx, .-n242_var_ref_bx
                        .type            n243_call_bx, @function
n243_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_call_α:            mov              r11, 211
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
                                                                              jmp   n244_var_ref_α
n243_call_β:            mov              r11, 211;                            jmp   d$2F3_ω
                        .size            n243_call_bx, .-n243_call_bx
                        .type            n244_var_ref_bx, @function
n244_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx;         jmp   n245_call_α
                        .size            n244_var_ref_bx, .-n244_var_ref_bx
                        .type            n245_call_bx, @function
n245_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_call_α:            mov              r11, 213
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
                                                                              jmp   n246_call_α
n245_call_β:            mov              r11, 213;                            jmp   d$2F3_step
                        .size            n245_call_bx, .-n245_call_bx
                        .type            n246_call_bx, @function
n246_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_call_α:            mov              r11, 214
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
                                                                              jmp   n247_cut_α
n246_call_β:            mov              r11, 214;                            jmp   d$2F3_step
                        .size            n246_call_bx, .-n246_call_bx
                        .type            n247_cut_bx, @function
n247_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_cut_α:             mov              r11, 215
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n248_var_ref_α
                        .size            n247_cut_bx, .-n247_cut_bx
                        .type            n248_var_ref_bx, @function
n248_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 5840], rax
                        mov              qword ptr [rbp + 5848], rdx;         jmp   n249_var_ref_α
                        .size            n248_var_ref_bx, .-n248_var_ref_bx
                        .type            n249_var_ref_bx, @function
n249_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:         mov              r11, 217
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx;         jmp   n250_var_ref_α
                        .size            n249_var_ref_bx, .-n249_var_ref_bx
                        .type            n250_var_ref_bx, @function
n250_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx;         jmp   n251_call_proc_staged_α
                        .size            n250_var_ref_bx, .-n250_var_ref_bx
                        .type            n251_call_proc_staged_bx, @function
n251_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_call_proc_staged_α:
                        mov              r11, 219
                        mov              qword ptr [rbp + 5808], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_591_200
                        mov              rax, qword ptr [rbp + 5840]
                        mov              rdx, qword ptr [rbp + 5848]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_591_201
.Lcall_proc_staged_α_591_200:
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
.Lcall_proc_staged_α_591_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_591_202
                        mov              rax, qword ptr [rbp + 5856]
                        mov              rdx, qword ptr [rbp + 5864]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_591_203
.Lcall_proc_staged_α_591_202:
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
.Lcall_proc_staged_α_591_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_591_204
                        mov              rax, qword ptr [rbp + 5872]
                        mov              rdx, qword ptr [rbp + 5880]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_591_205
.Lcall_proc_staged_α_591_204:
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
.Lcall_proc_staged_α_591_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_591_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_591_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_591_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_591_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_591_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_591_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_591_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_591_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_591_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_591_3:
                        mov              qword ptr [rbp + 5808], rax
                        mov              qword ptr [rbp + 5816], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_591_21
                        add              rsp, 32
.Lcall_proc_staged_α_591_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_591_2
.Lcall_proc_staged_α_591_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 5808], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_591_2
.Lcall_proc_staged_α_591_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_591_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_591_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_591_29
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
.Lcall_proc_staged_α_591_29:
                        mov              qword ptr [rbp + 5744], rax
                        mov              qword ptr [rbp + 5752], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret6
n251_call_proc_staged_β:
                        mov              r11, 219
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_591_22
                        mov              rax, qword ptr [rbp + 5808]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_591_22
                        mov              rcx, qword ptr [rbp + 5816]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_591_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_591_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5744], rax
                        mov              qword ptr [rbp + 5752], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret6
.Lcall_proc_staged_α_591_0:
                        .quad            .Lcall_proc_staged_α_591_0_s
.Lcall_proc_staged_α_591_0_s:
                        .string          "d/3"
                        .size            n251_call_proc_staged_bx, .-n251_call_proc_staged_bx
                        .type            n252_var_ref_bx, @function
n252_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6960], rax
                        mov              qword ptr [rbp + 6968], rdx;         jmp   n253_lit_string_α
                        .size            n252_var_ref_bx, .-n252_var_ref_bx
                        .type            n253_lit_string_bx, @function
n253_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:      mov              r11, 221
                        mov              qword ptr [rbp + 7056], 2            # result
                        mov              dword ptr [rbp + 7060], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_594_0]
                        mov              qword ptr [rbp + 7064], rax;         jmp   n254_var_ref_α
.Llit_string_α_594_0:   .quad            .Llit_string_α_594_0_s
.Llit_string_α_594_0_s: .string          "log"
                        .size            n253_lit_string_bx, .-n253_lit_string_bx
                        .type            n254_var_ref_bx, @function
n254_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 6976], rax
                        mov              qword ptr [rbp + 6984], rdx;         jmp   n255_call_α
                        .size            n254_var_ref_bx, .-n254_var_ref_bx
                        .type            n255_call_bx, @function
n255_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_call_α:            mov              r11, 223
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
                                                                              jmp   n256_call_α
n255_call_β:            mov              r11, 223;                            jmp   d$2F3_step
                        .size            n255_call_bx, .-n255_call_bx
                        .type            n256_call_bx, @function
n256_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_call_α:            mov              r11, 224
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
                                                                              jmp   n257_var_ref_α
n256_call_β:            mov              r11, 224;                            jmp   d$2F3_step
                        .size            n256_call_bx, .-n256_call_bx
                        .type            n257_var_ref_bx, @function
n257_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6864], rax
                        mov              qword ptr [rbp + 6872], rdx;         jmp   n258_var_ref_α
                        .size            n257_var_ref_bx, .-n257_var_ref_bx
                        .type            n258_var_ref_bx, @function
n258_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx;         jmp   n259_call_α
                        .size            n258_var_ref_bx, .-n258_var_ref_bx
                        .type            n259_call_bx, @function
n259_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_call_α:            mov              r11, 227
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
                                                                              jmp   n260_var_ref_α
n259_call_β:            mov              r11, 227;                            jmp   d$2F3_step
                        .size            n259_call_bx, .-n259_call_bx
                        .type            n260_var_ref_bx, @function
n260_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6656], rax
                        mov              qword ptr [rbp + 6664], rdx;         jmp   n261_lit_string_α
                        .size            n260_var_ref_bx, .-n260_var_ref_bx
                        .type            n261_lit_string_bx, @function
n261_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rbp + 6784], 2            # result
                        mov              dword ptr [rbp + 6788], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_606_0]
                        mov              qword ptr [rbp + 6792], rax;         jmp   n262_var_ref_α
.Llit_string_α_606_0:   .quad            .Llit_string_α_606_0_s
.Llit_string_α_606_0_s: .string          "/"
                        .size            n261_lit_string_bx, .-n261_lit_string_bx
                        .type            n262_var_ref_bx, @function
n262_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 6672], rax
                        mov              qword ptr [rbp + 6680], rdx;         jmp   n263_var_ref_α
                        .size            n262_var_ref_bx, .-n262_var_ref_bx
                        .type            n263_var_ref_bx, @function
n263_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx;         jmp   n264_call_α
                        .size            n263_var_ref_bx, .-n263_var_ref_bx
                        .type            n264_call_bx, @function
n264_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_call_α:            mov              r11, 232
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
                                                                              jmp   n265_call_α
n264_call_β:            mov              r11, 232;                            jmp   d$2F3_step
                        .size            n264_call_bx, .-n264_call_bx
                        .type            n265_call_bx, @function
n265_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_call_α:            mov              r11, 233
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
                                                                              jmp   n266_cut_α
n265_call_β:            mov              r11, 233;                            jmp   d$2F3_step
                        .size            n265_call_bx, .-n265_call_bx
                        .type            n266_cut_bx, @function
n266_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_cut_α:             mov              r11, 234
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n267_var_ref_α
                        .size            n266_cut_bx, .-n266_cut_bx
                        .type            n267_var_ref_bx, @function
n267_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx;         jmp   n268_var_ref_α
                        .size            n267_var_ref_bx, .-n267_var_ref_bx
                        .type            n268_var_ref_bx, @function
n268_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_var_ref_α:         mov              r11, 236
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx;         jmp   n269_var_ref_α
                        .size            n268_var_ref_bx, .-n268_var_ref_bx
                        .type            n269_var_ref_bx, @function
n269_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:         mov              r11, 237
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 6576], rax
                        mov              qword ptr [rbp + 6584], rdx;         jmp   n270_call_proc_staged_α
                        .size            n269_var_ref_bx, .-n269_var_ref_bx
                        .type            n270_call_proc_staged_bx, @function
n270_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_call_proc_staged_α:
                        mov              r11, 238
                        mov              qword ptr [rbp + 6512], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_622_200
                        mov              rax, qword ptr [rbp + 6544]
                        mov              rdx, qword ptr [rbp + 6552]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_622_201
.Lcall_proc_staged_α_622_200:
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
.Lcall_proc_staged_α_622_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_622_202
                        mov              rax, qword ptr [rbp + 6560]
                        mov              rdx, qword ptr [rbp + 6568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_622_203
.Lcall_proc_staged_α_622_202:
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
.Lcall_proc_staged_α_622_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_622_204
                        mov              rax, qword ptr [rbp + 6576]
                        mov              rdx, qword ptr [rbp + 6584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_622_205
.Lcall_proc_staged_α_622_204:
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
.Lcall_proc_staged_α_622_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_622_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_622_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_622_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_622_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_622_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_622_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_622_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_622_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_622_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_622_3:
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_622_21
                        add              rsp, 32
.Lcall_proc_staged_α_622_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_622_2
.Lcall_proc_staged_α_622_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 6512], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_622_2
.Lcall_proc_staged_α_622_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_622_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_622_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_622_29
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
.Lcall_proc_staged_α_622_29:
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret7
n270_call_proc_staged_β:
                        mov              r11, 238
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_622_22
                        mov              rax, qword ptr [rbp + 6512]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_622_22
                        mov              rcx, qword ptr [rbp + 6520]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_622_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_622_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret7
.Lcall_proc_staged_α_622_0:
                        .quad            .Lcall_proc_staged_α_622_0_s
.Lcall_proc_staged_α_622_0_s:
                        .string          "d/3"
                        .size            n270_call_proc_staged_bx, .-n270_call_proc_staged_bx
                        .type            n271_var_ref_bx, @function
n271_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              r11, 239
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7328], rax
                        mov              qword ptr [rbp + 7336], rdx;         jmp   n272_var_ref_α
                        .size            n271_var_ref_bx, .-n271_var_ref_bx
                        .type            n272_var_ref_bx, @function
n272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:         mov              r11, 240
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7728]
                        mov              qword ptr [rbp + 7344], rax
                        mov              qword ptr [rbp + 7352], rdx;         jmp   n273_call_α
                        .size            n272_var_ref_bx, .-n272_var_ref_bx
                        .type            n273_call_bx, @function
n273_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_call_α:            mov              r11, 241
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
                                                                              jmp   n274_var_ref_α
n273_call_β:            mov              r11, 241;                            jmp   d$2F3_step
                        .size            n273_call_bx, .-n273_call_bx
                        .type            n274_var_ref_bx, @function
n274_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:         mov              r11, 242
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7232], rax
                        mov              qword ptr [rbp + 7240], rdx;         jmp   n275_var_ref_α
                        .size            n274_var_ref_bx, .-n274_var_ref_bx
                        .type            n275_var_ref_bx, @function
n275_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_var_ref_α:         mov              r11, 243
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7728]
                        mov              qword ptr [rbp + 7248], rax
                        mov              qword ptr [rbp + 7256], rdx;         jmp   n276_call_α
                        .size            n275_var_ref_bx, .-n275_var_ref_bx
                        .type            n276_call_bx, @function
n276_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_call_α:            mov              r11, 244
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
                                                                              jmp   n277_var_ref_α
n276_call_β:            mov              r11, 244;                            jmp   d$2F3_step
                        .size            n276_call_bx, .-n276_call_bx
                        .type            n277_var_ref_bx, @function
n277_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:         mov              r11, 245
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7136], rax
                        mov              qword ptr [rbp + 7144], rdx;         jmp   n278_lit_integer_α
                        .size            n277_var_ref_bx, .-n277_var_ref_bx
                        .type            n278_lit_integer_bx, @function
n278_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:     mov              r11, 246
                        mov              qword ptr [rbp + 7152], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_635_0]
                        mov              qword ptr [rbp + 7160], rax;         jmp   n279_call_α
.Llit_integer_α_635_0:  .quad            1
                        .size            n278_lit_integer_bx, .-n278_lit_integer_bx
                        .type            n279_call_bx, @function
n279_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_call_α:            mov              r11, 247
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
                                                                              jmp   n280_cut_α
n279_call_β:            mov              r11, 247;                            jmp   d$2F3_step
                        .size            n279_call_bx, .-n279_call_bx
                        .type            n280_cut_bx, @function
n280_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_cut_α:             mov              r11, 248
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   d$2F3_γ
                        .size            n280_cut_bx, .-n280_cut_bx
                        .type            n281_var_ref_bx, @function
n281_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:         mov              r11, 249
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7616], rax
                        mov              qword ptr [rbp + 7624], rdx;         jmp   n282_var_ref_α
                        .size            n281_var_ref_bx, .-n281_var_ref_bx
                        .type            n282_var_ref_bx, @function
n282_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_var_ref_α:         mov              r11, 250
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx;         jmp   n283_call_α
                        .size            n282_var_ref_bx, .-n282_var_ref_bx
                        .type            n283_call_bx, @function
n283_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_call_α:            mov              r11, 251
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
                                                                              jmp   n284_var_ref_α
n283_call_β:            mov              r11, 251;                            jmp   d$2F3_step
                        .size            n283_call_bx, .-n283_call_bx
                        .type            n284_var_ref_bx, @function
n284_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_var_ref_α:         mov              r11, 252
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx;         jmp   n285_var_ref_α
                        .size            n284_var_ref_bx, .-n284_var_ref_bx
                        .type            n285_var_ref_bx, @function
n285_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_var_ref_α:         mov              r11, 253
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx;         jmp   n286_call_α
                        .size            n285_var_ref_bx, .-n285_var_ref_bx
                        .type            n286_call_bx, @function
n286_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_call_α:            mov              r11, 254
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
                                                                              jmp   n287_var_ref_α
n286_call_β:            mov              r11, 254;                            jmp   d$2F3_step
                        .size            n286_call_bx, .-n286_call_bx
                        .type            n287_var_ref_bx, @function
n287_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx;         jmp   n288_lit_integer_α
                        .size            n287_var_ref_bx, .-n287_var_ref_bx
                        .type            n288_lit_integer_bx, @function
n288_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_integer_α:     mov              r11, 256
                        mov              qword ptr [rbp + 7440], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_651_0]
                        mov              qword ptr [rbp + 7448], rax;         jmp   n289_call_α
.Llit_integer_α_651_0:  .quad            0
                        .size            n288_lit_integer_bx, .-n288_lit_integer_bx
                        .type            n289_call_bx, @function
n289_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_call_α:            mov              r11, 257
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
n289_call_β:            mov              r11, 257;                            jmp   d$2F3_step
                        .size            n289_call_bx, .-n289_call_bx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret0:
                        lea              rax, [rip + n87_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret1:
                        lea              rax, [rip + n111_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret2:
                        lea              rax, [rip + n141_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret3:
                        lea              rax, [rip + n177_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret4:
                        lea              rax, [rip + n212_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret5:
                        lea              rax, [rip + n230_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret6:
                        lea              rax, [rip + n251_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret7:
                        lea              rax, [rip + n270_call_proc_staged_β]
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
                                                                              jmp   n88_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt2:
                        lea              rax, [rip + d$2F3_alt3]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n112_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt3:
                        lea              rax, [rip + d$2F3_alt4]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n142_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt4:
                        lea              rax, [rip + d$2F3_alt5]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n178_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt5:
                        lea              rax, [rip + d$2F3_alt6]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n213_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt6:
                        lea              rax, [rip + d$2F3_alt7]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n231_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt7:
                        lea              rax, [rip + d$2F3_alt8]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n252_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt8:
                        lea              rax, [rip + d$2F3_alt9]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n271_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt9:
                        xor              eax, eax
                        mov              qword ptr [rbp + 7768], rax
                        mov              r13, qword ptr [rbp + 7784]
                                                                              jmp   n281_var_ref_α
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
                        .type            n653_call_proc_staged_bx, @function
n653_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n653_call_proc_staged_α:
                        mov              r11, 258
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_655_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_655_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_655_99
                        mov              r10, qword ptr [rbp + 88]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_655_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_655_99
                        mov              rcx, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120];          jmp   rax
.Lcall_proc_staged_α_655_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_655_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_655_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_655_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_655_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_655_21
                        add              rsp, 32
.Lcall_proc_staged_α_655_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_655_2
.Lcall_proc_staged_α_655_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_655_2
.Lcall_proc_staged_α_655_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_655_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   top$2F0_step
.Lcall_proc_staged_α_655_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_655_29
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
.Lcall_proc_staged_α_655_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    top$2F0_step
                                                                              jmp   top$2F0_ret0
n653_call_proc_staged_β:
                        mov              r11, 258
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_655_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_655_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_655_22:
                                                                              jmp   top$2F0_step
.Lcall_proc_staged_α_655_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    top$2F0_step
                                                                              jmp   top$2F0_ret0
.Lcall_proc_staged_α_655_0:
                        .quad            .Lcall_proc_staged_α_655_0_s
.Lcall_proc_staged_α_655_0_s:
                        .string          "divide10/0"
                        .size            n653_call_proc_staged_bx, .-n653_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_ret0:
                        lea              rax, [rip + n653_call_proc_staged_β]
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
                        .type            n656_lit_string_bx, @function
n656_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n656_lit_string_α:      mov              r11, 259
                        mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_658_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n657_call_α
.Llit_string_α_658_0:   .quad            .Llit_string_α_658_0_s
.Llit_string_α_658_0_s: .string          "wall_us/1"
                        .size            n656_lit_string_bx, .-n656_lit_string_bx
                        .type            n657_call_bx, @function
n657_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n657_call_α:            mov              r11, 260
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
n657_call_β:            mov              r11, 260;                            jmp   main$2F0_step
                        .size            n657_call_bx, .-n657_call_bx
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
                        .type            n660_call_proc_staged_bx, @function
n660_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n660_call_proc_staged_α:
                        mov              r11, 261
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_662_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_662_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_662_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_662_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_662_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_662_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_662_21
                        add              rsp, 32
.Lcall_proc_staged_α_662_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_662_2
.Lcall_proc_staged_α_662_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_662_2
.Lcall_proc_staged_α_662_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_662_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_662_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_662_29
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
.Lcall_proc_staged_α_662_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n660_call_proc_staged_β:
                        mov              r11, 261
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_662_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_662_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_662_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_662_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_662_0:
                        .quad            .Lcall_proc_staged_α_662_0_s
.Lcall_proc_staged_α_662_0_s:
                        .string          "main/0"
                        .size            n660_call_proc_staged_bx, .-n660_call_proc_staged_bx
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
