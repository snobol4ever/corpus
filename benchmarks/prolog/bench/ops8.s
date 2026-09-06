                        .intel_syntax    noprefix
                        .text
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
                        .type            n0_lit_string_bx, @function
n0_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              r11, 1
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_25_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n1_lit_string_α
.Llit_string_α_25_0:    .quad            .Llit_string_α_25_0_s
.Llit_string_α_25_0_s:  .string          "*"
                        .size            n0_lit_string_bx, .-n0_lit_string_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rbp + 208], 2             # result
                        mov              dword ptr [rbp + 212], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_26_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n2_lit_string_α
.Llit_string_α_26_0:    .quad            .Llit_string_α_26_0_s
.Llit_string_α_26_0_s:  .string          "+"
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rbp + 96], 2              # result
                        mov              dword ptr [rbp + 100], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_27_0]
                        mov              qword ptr [rbp + 104], rax;          jmp   n3_lit_integer_α
.Llit_string_α_27_0:    .quad            .Llit_string_α_27_0_s
.Llit_string_α_27_0_s:  .string          "x"
                        .size            n2_lit_string_bx, .-n2_lit_string_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_28_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n4_call_α
.Llit_integer_α_28_0:   .quad            1
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_call_bx, @function
n4_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:              mov              r11, 5
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
                                                                              jmp   n5_lit_string_α
n4_call_β:              mov              r11, 5;                              jmp   ops8$2F0_ω
                        .size            n4_call_bx, .-n4_call_bx
                        .type            n5_lit_string_bx, @function
n5_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_30_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n6_lit_string_α
.Llit_string_α_30_0:    .quad            .Llit_string_α_30_0_s
.Llit_string_α_30_0_s:  .string          "*"
                        .size            n5_lit_string_bx, .-n5_lit_string_bx
                        .type            n6_lit_string_bx, @function
n6_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_31_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n7_lit_string_α
.Llit_string_α_31_0:    .quad            .Llit_string_α_31_0_s
.Llit_string_α_31_0_s:  .string          "+"
                        .size            n6_lit_string_bx, .-n6_lit_string_bx
                        .type            n7_lit_string_bx, @function
n7_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_32_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n8_lit_string_α
.Llit_string_α_32_0:    .quad            .Llit_string_α_32_0_s
.Llit_string_α_32_0_s:  .string          "^"
                        .size            n7_lit_string_bx, .-n7_lit_string_bx
                        .type            n8_lit_string_bx, @function
n8_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rbp + 224], 2             # result
                        mov              dword ptr [rbp + 228], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_33_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n9_lit_integer_α
.Llit_string_α_33_0:    .quad            .Llit_string_α_33_0_s
.Llit_string_α_33_0_s:  .string          "x"
                        .size            n8_lit_string_bx, .-n8_lit_string_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              r11, 10
                        mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_34_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n10_call_α
.Llit_integer_α_34_0:   .quad            2
                        .size            n9_lit_integer_bx, .-n9_lit_integer_bx
                        .type            n10_call_bx, @function
n10_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:             mov              r11, 11
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
                                                                              jmp   n11_lit_integer_α
n10_call_β:             mov              r11, 11;                             jmp   ops8$2F0_ω
                        .size            n10_call_bx, .-n10_call_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rbp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_36_0]
                        mov              qword ptr [rbp + 360], rax;          jmp   n12_call_α
.Llit_integer_α_36_0:   .quad            2
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_call_bx, @function
n12_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:             mov              r11, 13
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
                                                                              jmp   n13_lit_string_α
n12_call_β:             mov              r11, 13;                             jmp   ops8$2F0_ω
                        .size            n12_call_bx, .-n12_call_bx
                        .type            n13_lit_string_bx, @function
n13_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rbp + 688], 2             # result
                        mov              dword ptr [rbp + 692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_38_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n14_lit_string_α
.Llit_string_α_38_0:    .quad            .Llit_string_α_38_0_s
.Llit_string_α_38_0_s:  .string          "+"
                        .size            n13_lit_string_bx, .-n13_lit_string_bx
                        .type            n14_lit_string_bx, @function
n14_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rbp + 576], 2             # result
                        mov              dword ptr [rbp + 580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_39_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n15_lit_string_α
.Llit_string_α_39_0:    .quad            .Llit_string_α_39_0_s
.Llit_string_α_39_0_s:  .string          "^"
                        .size            n14_lit_string_bx, .-n14_lit_string_bx
                        .type            n15_lit_string_bx, @function
n15_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_40_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n16_lit_integer_α
.Llit_string_α_40_0:    .quad            .Llit_string_α_40_0_s
.Llit_string_α_40_0_s:  .string          "x"
                        .size            n15_lit_string_bx, .-n15_lit_string_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rbp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_41_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n17_call_α
.Llit_integer_α_41_0:   .quad            3
                        .size            n16_lit_integer_bx, .-n16_lit_integer_bx
                        .type            n17_call_bx, @function
n17_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:             mov              r11, 18
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
                                                                              jmp   n18_lit_integer_α
n17_call_β:             mov              r11, 18;                             jmp   ops8$2F0_ω
                        .size            n17_call_bx, .-n17_call_bx
                        .type            n18_lit_integer_bx, @function
n18_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      mov              r11, 19
                        mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_43_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n19_call_α
.Llit_integer_α_43_0:   .quad            3
                        .size            n18_lit_integer_bx, .-n18_lit_integer_bx
                        .type            n19_call_bx, @function
n19_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_α:             mov              r11, 20
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
                                                                              jmp   n20_call_α
n19_call_β:             mov              r11, 20;                             jmp   ops8$2F0_ω
                        .size            n19_call_bx, .-n19_call_bx
                        .type            n20_call_bx, @function
n20_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             mov              r11, 21
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
                                                                              jmp   n21_call_α
n20_call_β:             mov              r11, 21;                             jmp   ops8$2F0_ω
                        .size            n20_call_bx, .-n20_call_bx
                        .type            n21_call_bx, @function
n21_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:             mov              r11, 22
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
                                                                              jmp   n22_lit_string_α
n21_call_β:             mov              r11, 22;                             jmp   ops8$2F0_step
                        .size            n21_call_bx, .-n21_call_bx
                        .type            n22_lit_string_bx, @function
n22_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_47_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n23_var_ref_α
.Llit_string_α_47_0:    .quad            .Llit_string_α_47_0_s
.Llit_string_α_47_0_s:  .string          "x"
                        .size            n22_lit_string_bx, .-n22_lit_string_bx
                        .type            n23_var_ref_bx, @function
n23_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n24_call_proc_staged_α
                        .size            n23_var_ref_bx, .-n23_var_ref_bx
                        .type            n24_call_proc_staged_bx, @function
n24_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_call_proc_staged_α: mov              r11, 25
                        mov              qword ptr [rbp + 64], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_51_200
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_51_201
.Lcall_proc_staged_α_51_200:
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
.Lcall_proc_staged_α_51_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_51_202
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_51_203
.Lcall_proc_staged_α_51_202:
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
.Lcall_proc_staged_α_51_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_51_204
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_51_205
.Lcall_proc_staged_α_51_204:
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
.Lcall_proc_staged_α_51_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_51_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_51_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_51_99
                        mov              r10, qword ptr [rbp + 984]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_51_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_51_99
                        mov              rcx, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 1008]
                        lea              rsp, [rbp + 1024]
                        mov              rbp, qword ptr [rbp + 1016];         jmp   rax
.Lcall_proc_staged_α_51_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_51_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_51_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_51_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_51_3:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_51_21
                        add              rsp, 32
.Lcall_proc_staged_α_51_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_51_2
.Lcall_proc_staged_α_51_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 64], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_51_2
.Lcall_proc_staged_α_51_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_51_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   ops8$2F0_step
.Lcall_proc_staged_α_51_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_51_29
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
.Lcall_proc_staged_α_51_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    ops8$2F0_step
                                                                              jmp   ops8$2F0_ret0
n24_call_proc_staged_β: mov              r11, 25
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_51_22
                        mov              rax, qword ptr [rbp + 64]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_51_22
                        mov              rcx, qword ptr [rbp + 72]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_51_22:
                                                                              jmp   ops8$2F0_step
.Lcall_proc_staged_α_51_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    ops8$2F0_step
                                                                              jmp   ops8$2F0_ret0
.Lcall_proc_staged_α_51_0:
                        .quad            .Lcall_proc_staged_α_51_0_s
.Lcall_proc_staged_α_51_0_s:
                        .string          "d/3"
                        .size            n24_call_proc_staged_bx, .-n24_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_ret0:
                        lea              rax, [rip + n24_call_proc_staged_β]
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
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n53_lit_string_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_lit_string_bx, @function
n53_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              r11, 27
                        mov              qword ptr [rbp + 848], 2             # result
                        mov              dword ptr [rbp + 852], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_280_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n54_var_ref_α
.Llit_string_α_280_0:   .quad            .Llit_string_α_280_0_s
.Llit_string_α_280_0_s: .string          "+"
                        .size            n53_lit_string_bx, .-n53_lit_string_bx
                        .type            n54_var_ref_bx, @function
n54_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n55_var_ref_α
                        .size            n54_var_ref_bx, .-n54_var_ref_bx
                        .type            n55_var_ref_bx, @function
n55_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n56_call_α
                        .size            n55_var_ref_bx, .-n55_var_ref_bx
                        .type            n56_call_bx, @function
n56_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_call_α:             mov              r11, 30
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
                                                                              jmp   n57_call_α
n56_call_β:             mov              r11, 30;                             jmp   d$2F3_step
                        .size            n56_call_bx, .-n56_call_bx
                        .type            n57_call_bx, @function
n57_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_call_α:             mov              r11, 31
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
                                                                              jmp   n58_var_ref_α
n57_call_β:             mov              r11, 31;                             jmp   d$2F3_step
                        .size            n57_call_bx, .-n57_call_bx
                        .type            n58_var_ref_bx, @function
n58_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n59_var_ref_α
                        .size            n58_var_ref_bx, .-n58_var_ref_bx
                        .type            n59_var_ref_bx, @function
n59_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n60_call_α
                        .size            n59_var_ref_bx, .-n59_var_ref_bx
                        .type            n60_call_bx, @function
n60_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_call_α:             mov              r11, 34
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
                                                                              jmp   n61_var_ref_α
n60_call_β:             mov              r11, 34;                             jmp   d$2F3_step
                        .size            n60_call_bx, .-n60_call_bx
                        .type            n61_var_ref_bx, @function
n61_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n62_lit_string_α
                        .size            n61_var_ref_bx, .-n61_var_ref_bx
                        .type            n62_lit_string_bx, @function
n62_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rbp + 544], 2             # result
                        mov              dword ptr [rbp + 548], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_294_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n63_var_ref_α
.Llit_string_α_294_0:   .quad            .Llit_string_α_294_0_s
.Llit_string_α_294_0_s: .string          "+"
                        .size            n62_lit_string_bx, .-n62_lit_string_bx
                        .type            n63_var_ref_bx, @function
n63_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n64_var_ref_α
                        .size            n63_var_ref_bx, .-n63_var_ref_bx
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n65_call_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_call_bx, @function
n65_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_call_α:             mov              r11, 39
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
                                                                              jmp   n66_call_α
n65_call_β:             mov              r11, 39;                             jmp   d$2F3_step
                        .size            n65_call_bx, .-n65_call_bx
                        .type            n66_call_bx, @function
n66_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             mov              r11, 40
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
                                                                              jmp   n67_cut_α
n66_call_β:             mov              r11, 40;                             jmp   d$2F3_step
                        .size            n66_call_bx, .-n66_call_bx
                        .type            n67_cut_bx, @function
n67_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_cut_α:              mov              r11, 41
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n68_var_ref_α
                        .size            n67_cut_bx, .-n67_cut_bx
                        .type            n68_var_ref_bx, @function
n68_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n69_var_ref_α
                        .size            n68_var_ref_bx, .-n68_var_ref_bx
                        .type            n69_var_ref_bx, @function
n69_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n70_var_ref_α
                        .size            n69_var_ref_bx, .-n69_var_ref_bx
                        .type            n70_var_ref_bx, @function
n70_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n71_call_proc_staged_α
                        .size            n70_var_ref_bx, .-n70_var_ref_bx
                        .type            n71_call_proc_staged_bx, @function
n71_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_call_proc_staged_α: mov              r11, 45
                        mov              qword ptr [rbp + 272], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_310_200
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_310_201
.Lcall_proc_staged_α_310_200:
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
.Lcall_proc_staged_α_310_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_310_202
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_310_203
.Lcall_proc_staged_α_310_202:
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
.Lcall_proc_staged_α_310_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_310_204
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_310_205
.Lcall_proc_staged_α_310_204:
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
.Lcall_proc_staged_α_310_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_310_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_310_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_310_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_310_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_310_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_310_3:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_310_21
                        add              rsp, 32
.Lcall_proc_staged_α_310_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_310_2
.Lcall_proc_staged_α_310_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 272], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_310_2
.Lcall_proc_staged_α_310_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_310_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_310_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_310_29
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
.Lcall_proc_staged_α_310_29:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n72_var_ref_α
n71_call_proc_staged_β: mov              r11, 45
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_310_22
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_310_22
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_310_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_310_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n72_var_ref_α
.Lcall_proc_staged_α_310_0:
                        .quad            .Lcall_proc_staged_α_310_0_s
.Lcall_proc_staged_α_310_0_s:
                        .string          "d/3"
                        .size            n71_call_proc_staged_bx, .-n71_call_proc_staged_bx
                        .type            n72_var_ref_bx, @function
n72_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n73_var_ref_α
                        .size            n72_var_ref_bx, .-n72_var_ref_bx
                        .type            n73_var_ref_bx, @function
n73_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n74_var_ref_α
                        .size            n73_var_ref_bx, .-n73_var_ref_bx
                        .type            n74_var_ref_bx, @function
n74_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:          mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n75_call_proc_staged_α
                        .size            n74_var_ref_bx, .-n74_var_ref_bx
                        .type            n75_call_proc_staged_bx, @function
n75_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_call_proc_staged_α: mov              r11, 49
                        mov              qword ptr [rbp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_318_200
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_318_201
.Lcall_proc_staged_α_318_200:
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
.Lcall_proc_staged_α_318_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_318_202
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_318_203
.Lcall_proc_staged_α_318_202:
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
.Lcall_proc_staged_α_318_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_318_204
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_318_205
.Lcall_proc_staged_α_318_204:
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
.Lcall_proc_staged_α_318_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_318_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_318_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_318_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_318_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_318_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_318_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_318_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_318_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_318_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_318_3:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_318_21
                        add              rsp, 32
.Lcall_proc_staged_α_318_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_318_2
.Lcall_proc_staged_α_318_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 128], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_318_2
.Lcall_proc_staged_α_318_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_318_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n71_call_proc_staged_β
.Lcall_proc_staged_α_318_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_318_29
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
.Lcall_proc_staged_α_318_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n71_call_proc_staged_β
                                                                              jmp   d$2F3_ret0
n75_call_proc_staged_β: mov              r11, 49
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_318_22
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_318_22
                        mov              rcx, qword ptr [rbp + 136]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_318_22:
                                                                              jmp   n71_call_proc_staged_β
.Lcall_proc_staged_α_318_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n71_call_proc_staged_β
                                                                              jmp   d$2F3_ret0
.Lcall_proc_staged_α_318_0:
                        .quad            .Lcall_proc_staged_α_318_0_s
.Lcall_proc_staged_α_318_0_s:
                        .string          "d/3"
                        .size            n75_call_proc_staged_bx, .-n75_call_proc_staged_bx
                        .type            n76_var_ref_bx, @function
n76_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n77_lit_string_α
                        .size            n76_var_ref_bx, .-n76_var_ref_bx
                        .type            n77_lit_string_bx, @function
n77_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       mov              r11, 51
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_321_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n78_var_ref_α
.Llit_string_α_321_0:   .quad            .Llit_string_α_321_0_s
.Llit_string_α_321_0_s: .string          "-"
                        .size            n77_lit_string_bx, .-n77_lit_string_bx
                        .type            n78_var_ref_bx, @function
n78_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx;         jmp   n79_var_ref_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_var_ref_bx, @function
n79_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n80_call_α
                        .size            n79_var_ref_bx, .-n79_var_ref_bx
                        .type            n80_call_bx, @function
n80_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_call_α:             mov              r11, 54
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
                                                                              jmp   n81_call_α
n80_call_β:             mov              r11, 54;                             jmp   d$2F3_step
                        .size            n80_call_bx, .-n80_call_bx
                        .type            n81_call_bx, @function
n81_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_call_α:             mov              r11, 55
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
                                                                              jmp   n82_var_ref_α
n81_call_β:             mov              r11, 55;                             jmp   d$2F3_step
                        .size            n81_call_bx, .-n81_call_bx
                        .type            n82_var_ref_bx, @function
n82_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n83_var_ref_α
                        .size            n82_var_ref_bx, .-n82_var_ref_bx
                        .type            n83_var_ref_bx, @function
n83_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n84_call_α
                        .size            n83_var_ref_bx, .-n83_var_ref_bx
                        .type            n84_call_bx, @function
n84_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_call_α:             mov              r11, 58
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
                                                                              jmp   n85_var_ref_α
n84_call_β:             mov              r11, 58;                             jmp   d$2F3_step
                        .size            n84_call_bx, .-n84_call_bx
                        .type            n85_var_ref_bx, @function
n85_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n86_lit_string_α
                        .size            n85_var_ref_bx, .-n85_var_ref_bx
                        .type            n86_lit_string_bx, @function
n86_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              r11, 60
                        mov              qword ptr [rbp + 1344], 2            # result
                        mov              dword ptr [rbp + 1348], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_335_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n87_var_ref_α
.Llit_string_α_335_0:   .quad            .Llit_string_α_335_0_s
.Llit_string_α_335_0_s: .string          "-"
                        .size            n86_lit_string_bx, .-n86_lit_string_bx
                        .type            n87_var_ref_bx, @function
n87_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n88_var_ref_α
                        .size            n87_var_ref_bx, .-n87_var_ref_bx
                        .type            n88_var_ref_bx, @function
n88_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n89_call_α
                        .size            n88_var_ref_bx, .-n88_var_ref_bx
                        .type            n89_call_bx, @function
n89_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_call_α:             mov              r11, 63
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
                                                                              jmp   n90_call_α
n89_call_β:             mov              r11, 63;                             jmp   d$2F3_step
                        .size            n89_call_bx, .-n89_call_bx
                        .type            n90_call_bx, @function
n90_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_call_α:             mov              r11, 64
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
                                                                              jmp   n91_cut_α
n90_call_β:             mov              r11, 64;                             jmp   d$2F3_step
                        .size            n90_call_bx, .-n90_call_bx
                        .type            n91_cut_bx, @function
n91_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_cut_α:              mov              r11, 65
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n92_var_ref_α
                        .size            n91_cut_bx, .-n91_cut_bx
                        .type            n92_var_ref_bx, @function
n92_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n93_var_ref_α
                        .size            n92_var_ref_bx, .-n92_var_ref_bx
                        .type            n93_var_ref_bx, @function
n93_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n94_var_ref_α
                        .size            n93_var_ref_bx, .-n93_var_ref_bx
                        .type            n94_var_ref_bx, @function
n94_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n95_call_proc_staged_α
                        .size            n94_var_ref_bx, .-n94_var_ref_bx
                        .type            n95_call_proc_staged_bx, @function
n95_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_call_proc_staged_α: mov              r11, 69
                        mov              qword ptr [rbp + 1072], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_351_200
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_351_201
.Lcall_proc_staged_α_351_200:
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
.Lcall_proc_staged_α_351_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_351_202
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_351_203
.Lcall_proc_staged_α_351_202:
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
.Lcall_proc_staged_α_351_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_351_204
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_351_205
.Lcall_proc_staged_α_351_204:
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
.Lcall_proc_staged_α_351_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_351_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_351_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_351_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_351_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_351_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_351_3:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_351_21
                        add              rsp, 32
.Lcall_proc_staged_α_351_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_351_2
.Lcall_proc_staged_α_351_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1072], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_351_2
.Lcall_proc_staged_α_351_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_351_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_351_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_351_29
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
.Lcall_proc_staged_α_351_29:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n96_var_ref_α
n95_call_proc_staged_β: mov              r11, 69
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_351_22
                        mov              rax, qword ptr [rbp + 1072]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_351_22
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_351_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_351_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n96_var_ref_α
.Lcall_proc_staged_α_351_0:
                        .quad            .Lcall_proc_staged_α_351_0_s
.Lcall_proc_staged_α_351_0_s:
                        .string          "d/3"
                        .size            n95_call_proc_staged_bx, .-n95_call_proc_staged_bx
                        .type            n96_var_ref_bx, @function
n96_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n97_var_ref_α
                        .size            n96_var_ref_bx, .-n96_var_ref_bx
                        .type            n97_var_ref_bx, @function
n97_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:          mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n98_var_ref_α
                        .size            n97_var_ref_bx, .-n97_var_ref_bx
                        .type            n98_var_ref_bx, @function
n98_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n99_call_proc_staged_α
                        .size            n98_var_ref_bx, .-n98_var_ref_bx
                        .type            n99_call_proc_staged_bx, @function
n99_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_call_proc_staged_α: mov              r11, 73
                        mov              qword ptr [rbp + 928], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_359_200
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_359_201
.Lcall_proc_staged_α_359_200:
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
.Lcall_proc_staged_α_359_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_359_202
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_359_203
.Lcall_proc_staged_α_359_202:
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
.Lcall_proc_staged_α_359_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_359_204
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_359_205
.Lcall_proc_staged_α_359_204:
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
.Lcall_proc_staged_α_359_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_359_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_359_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_359_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_359_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_359_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_359_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_359_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_359_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_359_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_359_3:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_359_21
                        add              rsp, 32
.Lcall_proc_staged_α_359_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_359_2
.Lcall_proc_staged_α_359_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 928], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_359_2
.Lcall_proc_staged_α_359_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_359_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n95_call_proc_staged_β
.Lcall_proc_staged_α_359_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_359_29
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
.Lcall_proc_staged_α_359_29:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    n95_call_proc_staged_β
                                                                              jmp   d$2F3_ret1
n99_call_proc_staged_β: mov              r11, 73
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_359_22
                        mov              rax, qword ptr [rbp + 928]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_359_22
                        mov              rcx, qword ptr [rbp + 936]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_359_22:
                                                                              jmp   n95_call_proc_staged_β
.Lcall_proc_staged_α_359_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    n95_call_proc_staged_β
                                                                              jmp   d$2F3_ret1
.Lcall_proc_staged_α_359_0:
                        .quad            .Lcall_proc_staged_α_359_0_s
.Lcall_proc_staged_α_359_0_s:
                        .string          "d/3"
                        .size            n99_call_proc_staged_bx, .-n99_call_proc_staged_bx
                        .type            n100_var_ref_bx, @function
n100_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n101_lit_string_α
                        .size            n100_var_ref_bx, .-n100_var_ref_bx
                        .type            n101_lit_string_bx, @function
n101_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              r11, 75
                        mov              qword ptr [rbp + 2672], 2            # result
                        mov              dword ptr [rbp + 2676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_362_0]
                        mov              qword ptr [rbp + 2680], rax;         jmp   n102_var_ref_α
.Llit_string_α_362_0:   .quad            .Llit_string_α_362_0_s
.Llit_string_α_362_0_s: .string          "*"
                        .size            n101_lit_string_bx, .-n101_lit_string_bx
                        .type            n102_var_ref_bx, @function
n102_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx;         jmp   n103_var_ref_α
                        .size            n102_var_ref_bx, .-n102_var_ref_bx
                        .type            n103_var_ref_bx, @function
n103_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx;         jmp   n104_call_α
                        .size            n103_var_ref_bx, .-n103_var_ref_bx
                        .type            n104_call_bx, @function
n104_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_call_α:            mov              r11, 78
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
                                                                              jmp   n105_call_α
n104_call_β:            mov              r11, 78;                             jmp   d$2F3_step
                        .size            n104_call_bx, .-n104_call_bx
                        .type            n105_call_bx, @function
n105_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:            mov              r11, 79
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
                                                                              jmp   n106_var_ref_α
n105_call_β:            mov              r11, 79;                             jmp   d$2F3_step
                        .size            n105_call_bx, .-n105_call_bx
                        .type            n106_var_ref_bx, @function
n106_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx;         jmp   n107_var_ref_α
                        .size            n106_var_ref_bx, .-n106_var_ref_bx
                        .type            n107_var_ref_bx, @function
n107_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx;         jmp   n108_call_α
                        .size            n107_var_ref_bx, .-n107_var_ref_bx
                        .type            n108_call_bx, @function
n108_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:            mov              r11, 82
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
                                                                              jmp   n109_var_ref_α
n108_call_β:            mov              r11, 82;                             jmp   d$2F3_step
                        .size            n108_call_bx, .-n108_call_bx
                        .type            n109_var_ref_bx, @function
n109_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx;         jmp   n110_lit_string_α
                        .size            n109_var_ref_bx, .-n109_var_ref_bx
                        .type            n110_lit_string_bx, @function
n110_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              r11, 84
                        mov              qword ptr [rbp + 2368], 2            # result
                        mov              dword ptr [rbp + 2372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_376_0]
                        mov              qword ptr [rbp + 2376], rax;         jmp   n111_lit_string_α
.Llit_string_α_376_0:   .quad            .Llit_string_α_376_0_s
.Llit_string_α_376_0_s: .string          "+"
                        .size            n110_lit_string_bx, .-n110_lit_string_bx
                        .type            n111_lit_string_bx, @function
n111_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:      mov              r11, 85
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_377_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n112_var_ref_α
.Llit_string_α_377_0:   .quad            .Llit_string_α_377_0_s
.Llit_string_α_377_0_s: .string          "*"
                        .size            n111_lit_string_bx, .-n111_lit_string_bx
                        .type            n112_var_ref_bx, @function
n112_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n113_var_ref_α
                        .size            n112_var_ref_bx, .-n112_var_ref_bx
                        .type            n113_var_ref_bx, @function
n113_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n114_call_α
                        .size            n113_var_ref_bx, .-n113_var_ref_bx
                        .type            n114_call_bx, @function
n114_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_call_α:            mov              r11, 88
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
                                                                              jmp   n115_lit_string_α
n114_call_β:            mov              r11, 88;                             jmp   d$2F3_ω
                        .size            n114_call_bx, .-n114_call_bx
                        .type            n115_lit_string_bx, @function
n115_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      mov              r11, 89
                        mov              qword ptr [rbp + 2272], 2            # result
                        mov              dword ptr [rbp + 2276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_383_0]
                        mov              qword ptr [rbp + 2280], rax;         jmp   n116_var_ref_α
.Llit_string_α_383_0:   .quad            .Llit_string_α_383_0_s
.Llit_string_α_383_0_s: .string          "*"
                        .size            n115_lit_string_bx, .-n115_lit_string_bx
                        .type            n116_var_ref_bx, @function
n116_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx;         jmp   n117_var_ref_α
                        .size            n116_var_ref_bx, .-n116_var_ref_bx
                        .type            n117_var_ref_bx, @function
n117_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx;         jmp   n118_call_α
                        .size            n117_var_ref_bx, .-n117_var_ref_bx
                        .type            n118_call_bx, @function
n118_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:            mov              r11, 92
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
                                                                              jmp   n119_call_α
n118_call_β:            mov              r11, 92;                             jmp   d$2F3_ω
                        .size            n118_call_bx, .-n118_call_bx
                        .type            n119_call_bx, @function
n119_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_call_α:            mov              r11, 93
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
                                                                              jmp   n120_call_α
n119_call_β:            mov              r11, 93;                             jmp   d$2F3_step
                        .size            n119_call_bx, .-n119_call_bx
                        .type            n120_call_bx, @function
n120_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_call_α:            mov              r11, 94
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
                                                                              jmp   n121_cut_α
n120_call_β:            mov              r11, 94;                             jmp   d$2F3_step
                        .size            n120_call_bx, .-n120_call_bx
                        .type            n121_cut_bx, @function
n121_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_cut_α:             mov              r11, 95
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n122_var_ref_α
                        .size            n121_cut_bx, .-n121_cut_bx
                        .type            n122_var_ref_bx, @function
n122_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              r11, 96
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n123_var_ref_α
                        .size            n122_var_ref_bx, .-n122_var_ref_bx
                        .type            n123_var_ref_bx, @function
n123_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx;         jmp   n124_var_ref_α
                        .size            n123_var_ref_bx, .-n123_var_ref_bx
                        .type            n124_var_ref_bx, @function
n124_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n125_call_proc_staged_α
                        .size            n124_var_ref_bx, .-n124_var_ref_bx
                        .type            n125_call_proc_staged_bx, @function
n125_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        mov              r11, 99
                        mov              qword ptr [rbp + 1872], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_400_200
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_400_201
.Lcall_proc_staged_α_400_200:
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
.Lcall_proc_staged_α_400_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_400_202
                        mov              rax, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_400_203
.Lcall_proc_staged_α_400_202:
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
.Lcall_proc_staged_α_400_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_400_204
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_400_205
.Lcall_proc_staged_α_400_204:
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
.Lcall_proc_staged_α_400_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_400_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_400_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_400_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_400_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_400_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_400_3:
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_400_21
                        add              rsp, 32
.Lcall_proc_staged_α_400_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_400_2
.Lcall_proc_staged_α_400_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1872], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_400_2
.Lcall_proc_staged_α_400_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_400_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_400_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_400_29
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
.Lcall_proc_staged_α_400_29:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n126_var_ref_α
n125_call_proc_staged_β:
                        mov              r11, 99
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_400_22
                        mov              rax, qword ptr [rbp + 1872]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_400_22
                        mov              rcx, qword ptr [rbp + 1880]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_400_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_400_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n126_var_ref_α
.Lcall_proc_staged_α_400_0:
                        .quad            .Lcall_proc_staged_α_400_0_s
.Lcall_proc_staged_α_400_0_s:
                        .string          "d/3"
                        .size            n125_call_proc_staged_bx, .-n125_call_proc_staged_bx
                        .type            n126_var_ref_bx, @function
n126_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              r11, 100
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n127_var_ref_α
                        .size            n126_var_ref_bx, .-n126_var_ref_bx
                        .type            n127_var_ref_bx, @function
n127_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n128_var_ref_α
                        .size            n127_var_ref_bx, .-n127_var_ref_bx
                        .type            n128_var_ref_bx, @function
n128_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n129_call_proc_staged_α
                        .size            n128_var_ref_bx, .-n128_var_ref_bx
                        .type            n129_call_proc_staged_bx, @function
n129_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_call_proc_staged_α:
                        mov              r11, 103
                        mov              qword ptr [rbp + 1728], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_408_200
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_408_201
.Lcall_proc_staged_α_408_200:
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
.Lcall_proc_staged_α_408_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_408_202
                        mov              rax, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_408_203
.Lcall_proc_staged_α_408_202:
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
.Lcall_proc_staged_α_408_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_408_204
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_408_205
.Lcall_proc_staged_α_408_204:
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
.Lcall_proc_staged_α_408_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_408_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_408_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_408_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_408_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_408_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_408_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_408_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_408_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_408_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_408_3:
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_408_21
                        add              rsp, 32
.Lcall_proc_staged_α_408_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_408_2
.Lcall_proc_staged_α_408_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1728], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_408_2
.Lcall_proc_staged_α_408_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_408_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n125_call_proc_staged_β
.Lcall_proc_staged_α_408_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_408_29
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
.Lcall_proc_staged_α_408_29:
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              al, 104;                             je    n125_call_proc_staged_β
                                                                              jmp   d$2F3_ret2
n129_call_proc_staged_β:
                        mov              r11, 103
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_408_22
                        mov              rax, qword ptr [rbp + 1728]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_408_22
                        mov              rcx, qword ptr [rbp + 1736]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_408_22:
                                                                              jmp   n125_call_proc_staged_β
.Lcall_proc_staged_α_408_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              al, 104;                             je    n125_call_proc_staged_β
                                                                              jmp   d$2F3_ret2
.Lcall_proc_staged_α_408_0:
                        .quad            .Lcall_proc_staged_α_408_0_s
.Lcall_proc_staged_α_408_0_s:
                        .string          "d/3"
                        .size            n129_call_proc_staged_bx, .-n129_call_proc_staged_bx
                        .type            n130_var_ref_bx, @function
n130_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx;         jmp   n131_lit_string_α
                        .size            n130_var_ref_bx, .-n130_var_ref_bx
                        .type            n131_lit_string_bx, @function
n131_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rbp + 3920], 2            # result
                        mov              dword ptr [rbp + 3924], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_411_0]
                        mov              qword ptr [rbp + 3928], rax;         jmp   n132_var_ref_α
.Llit_string_α_411_0:   .quad            .Llit_string_α_411_0_s
.Llit_string_α_411_0_s: .string          "/"
                        .size            n131_lit_string_bx, .-n131_lit_string_bx
                        .type            n132_var_ref_bx, @function
n132_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx;         jmp   n133_var_ref_α
                        .size            n132_var_ref_bx, .-n132_var_ref_bx
                        .type            n133_var_ref_bx, @function
n133_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx;         jmp   n134_call_α
                        .size            n133_var_ref_bx, .-n133_var_ref_bx
                        .type            n134_call_bx, @function
n134_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_call_α:            mov              r11, 108
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
                                                                              jmp   n135_call_α
n134_call_β:            mov              r11, 108;                            jmp   d$2F3_step
                        .size            n134_call_bx, .-n134_call_bx
                        .type            n135_call_bx, @function
n135_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_call_α:            mov              r11, 109
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
                                                                              jmp   n136_var_ref_α
n135_call_β:            mov              r11, 109;                            jmp   d$2F3_step
                        .size            n135_call_bx, .-n135_call_bx
                        .type            n136_var_ref_bx, @function
n136_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx;         jmp   n137_var_ref_α
                        .size            n136_var_ref_bx, .-n136_var_ref_bx
                        .type            n137_var_ref_bx, @function
n137_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx;         jmp   n138_call_α
                        .size            n137_var_ref_bx, .-n137_var_ref_bx
                        .type            n138_call_bx, @function
n138_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_call_α:            mov              r11, 112
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
                                                                              jmp   n139_var_ref_α
n138_call_β:            mov              r11, 112;                            jmp   d$2F3_step
                        .size            n138_call_bx, .-n138_call_bx
                        .type            n139_var_ref_bx, @function
n139_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx;         jmp   n140_lit_string_α
                        .size            n139_var_ref_bx, .-n139_var_ref_bx
                        .type            n140_lit_string_bx, @function
n140_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:      mov              r11, 114
                        mov              qword ptr [rbp + 3616], 2            # result
                        mov              dword ptr [rbp + 3620], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_425_0]
                        mov              qword ptr [rbp + 3624], rax;         jmp   n141_lit_string_α
.Llit_string_α_425_0:   .quad            .Llit_string_α_425_0_s
.Llit_string_α_425_0_s: .string          "/"
                        .size            n140_lit_string_bx, .-n140_lit_string_bx
                        .type            n141_lit_string_bx, @function
n141_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      mov              r11, 115
                        mov              qword ptr [rbp + 3392], 2            # result
                        mov              dword ptr [rbp + 3396], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_426_0]
                        mov              qword ptr [rbp + 3400], rax;         jmp   n142_lit_string_α
.Llit_string_α_426_0:   .quad            .Llit_string_α_426_0_s
.Llit_string_α_426_0_s: .string          "-"
                        .size            n141_lit_string_bx, .-n141_lit_string_bx
                        .type            n142_lit_string_bx, @function
n142_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rbp + 3168], 2            # result
                        mov              dword ptr [rbp + 3172], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_427_0]
                        mov              qword ptr [rbp + 3176], rax;         jmp   n143_var_ref_α
.Llit_string_α_427_0:   .quad            .Llit_string_α_427_0_s
.Llit_string_α_427_0_s: .string          "*"
                        .size            n142_lit_string_bx, .-n142_lit_string_bx
                        .type            n143_var_ref_bx, @function
n143_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx;         jmp   n144_var_ref_α
                        .size            n143_var_ref_bx, .-n143_var_ref_bx
                        .type            n144_var_ref_bx, @function
n144_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx;         jmp   n145_call_α
                        .size            n144_var_ref_bx, .-n144_var_ref_bx
                        .type            n145_call_bx, @function
n145_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_call_α:            mov              r11, 119
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
                                                                              jmp   n146_lit_string_α
n145_call_β:            mov              r11, 119;                            jmp   d$2F3_ω
                        .size            n145_call_bx, .-n145_call_bx
                        .type            n146_lit_string_bx, @function
n146_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:      mov              r11, 120
                        mov              qword ptr [rbp + 3296], 2            # result
                        mov              dword ptr [rbp + 3300], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_433_0]
                        mov              qword ptr [rbp + 3304], rax;         jmp   n147_var_ref_α
.Llit_string_α_433_0:   .quad            .Llit_string_α_433_0_s
.Llit_string_α_433_0_s: .string          "*"
                        .size            n146_lit_string_bx, .-n146_lit_string_bx
                        .type            n147_var_ref_bx, @function
n147_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n148_var_ref_α
                        .size            n147_var_ref_bx, .-n147_var_ref_bx
                        .type            n148_var_ref_bx, @function
n148_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n149_call_α
                        .size            n148_var_ref_bx, .-n148_var_ref_bx
                        .type            n149_call_bx, @function
n149_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_call_α:            mov              r11, 123
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
                                                                              jmp   n150_call_α
n149_call_β:            mov              r11, 123;                            jmp   d$2F3_ω
                        .size            n149_call_bx, .-n149_call_bx
                        .type            n150_call_bx, @function
n150_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_call_α:            mov              r11, 124
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
                                                                              jmp   n151_lit_string_α
n150_call_β:            mov              r11, 124;                            jmp   d$2F3_ω
                        .size            n150_call_bx, .-n150_call_bx
                        .type            n151_lit_string_bx, @function
n151_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:      mov              r11, 125
                        mov              qword ptr [rbp + 3520], 2            # result
                        mov              dword ptr [rbp + 3524], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_440_0]
                        mov              qword ptr [rbp + 3528], rax;         jmp   n152_var_ref_α
.Llit_string_α_440_0:   .quad            .Llit_string_α_440_0_s
.Llit_string_α_440_0_s: .string          "^"
                        .size            n151_lit_string_bx, .-n151_lit_string_bx
                        .type            n152_var_ref_bx, @function
n152_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              r11, 126
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx;         jmp   n153_lit_integer_α
                        .size            n152_var_ref_bx, .-n152_var_ref_bx
                        .type            n153_lit_integer_bx, @function
n153_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              r11, 127
                        mov              qword ptr [rbp + 3424], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_443_0]
                        mov              qword ptr [rbp + 3432], rax;         jmp   n154_call_α
.Llit_integer_α_443_0:  .quad            2
                        .size            n153_lit_integer_bx, .-n153_lit_integer_bx
                        .type            n154_call_bx, @function
n154_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_call_α:            mov              r11, 128
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
                                                                              jmp   n155_call_α
n154_call_β:            mov              r11, 128;                            jmp   d$2F3_ω
                        .size            n154_call_bx, .-n154_call_bx
                        .type            n155_call_bx, @function
n155_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_call_α:            mov              r11, 129
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
                                                                              jmp   n156_call_α
n155_call_β:            mov              r11, 129;                            jmp   d$2F3_step
                        .size            n155_call_bx, .-n155_call_bx
                        .type            n156_call_bx, @function
n156_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_call_α:            mov              r11, 130
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
                                                                              jmp   n157_cut_α
n156_call_β:            mov              r11, 130;                            jmp   d$2F3_step
                        .size            n156_call_bx, .-n156_call_bx
                        .type            n157_cut_bx, @function
n157_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_cut_α:             mov              r11, 131
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n158_var_ref_α
                        .size            n157_cut_bx, .-n157_cut_bx
                        .type            n158_var_ref_bx, @function
n158_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx;         jmp   n159_var_ref_α
                        .size            n158_var_ref_bx, .-n158_var_ref_bx
                        .type            n159_var_ref_bx, @function
n159_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n160_var_ref_α
                        .size            n159_var_ref_bx, .-n159_var_ref_bx
                        .type            n160_var_ref_bx, @function
n160_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx;         jmp   n161_call_proc_staged_α
                        .size            n160_var_ref_bx, .-n160_var_ref_bx
                        .type            n161_call_proc_staged_bx, @function
n161_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_call_proc_staged_α:
                        mov              r11, 135
                        mov              qword ptr [rbp + 2896], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_456_200
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_456_201
.Lcall_proc_staged_α_456_200:
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
.Lcall_proc_staged_α_456_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_456_202
                        mov              rax, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_456_203
.Lcall_proc_staged_α_456_202:
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
.Lcall_proc_staged_α_456_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_456_204
                        mov              rax, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_456_205
.Lcall_proc_staged_α_456_204:
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
.Lcall_proc_staged_α_456_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_456_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_456_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_456_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_456_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_456_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_456_3:
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_456_21
                        add              rsp, 32
.Lcall_proc_staged_α_456_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_456_2
.Lcall_proc_staged_α_456_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2896], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_456_2
.Lcall_proc_staged_α_456_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_456_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_456_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_456_29
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
.Lcall_proc_staged_α_456_29:
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n162_var_ref_α
n161_call_proc_staged_β:
                        mov              r11, 135
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_456_22
                        mov              rax, qword ptr [rbp + 2896]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_456_22
                        mov              rcx, qword ptr [rbp + 2904]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_456_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_456_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n162_var_ref_α
.Lcall_proc_staged_α_456_0:
                        .quad            .Lcall_proc_staged_α_456_0_s
.Lcall_proc_staged_α_456_0_s:
                        .string          "d/3"
                        .size            n161_call_proc_staged_bx, .-n161_call_proc_staged_bx
                        .type            n162_var_ref_bx, @function
n162_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n163_var_ref_α
                        .size            n162_var_ref_bx, .-n162_var_ref_bx
                        .type            n163_var_ref_bx, @function
n163_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx;         jmp   n164_var_ref_α
                        .size            n163_var_ref_bx, .-n163_var_ref_bx
                        .type            n164_var_ref_bx, @function
n164_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx;         jmp   n165_call_proc_staged_α
                        .size            n164_var_ref_bx, .-n164_var_ref_bx
                        .type            n165_call_proc_staged_bx, @function
n165_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_call_proc_staged_α:
                        mov              r11, 139
                        mov              qword ptr [rbp + 2752], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_464_200
                        mov              rax, qword ptr [rbp + 2784]
                        mov              rdx, qword ptr [rbp + 2792]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_464_201
.Lcall_proc_staged_α_464_200:
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
.Lcall_proc_staged_α_464_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_464_202
                        mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_464_203
.Lcall_proc_staged_α_464_202:
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
.Lcall_proc_staged_α_464_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_464_204
                        mov              rax, qword ptr [rbp + 2816]
                        mov              rdx, qword ptr [rbp + 2824]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_464_205
.Lcall_proc_staged_α_464_204:
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
.Lcall_proc_staged_α_464_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_464_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_464_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_464_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_464_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_464_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_464_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_464_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_464_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_464_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_464_3:
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_464_21
                        add              rsp, 32
.Lcall_proc_staged_α_464_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_464_2
.Lcall_proc_staged_α_464_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2752], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_464_2
.Lcall_proc_staged_α_464_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_464_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n161_call_proc_staged_β
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
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
.Lcall_proc_staged_α_464_29:
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              al, 104;                             je    n161_call_proc_staged_β
                                                                              jmp   d$2F3_ret3
n165_call_proc_staged_β:
                        mov              r11, 139
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_464_22
                        mov              rax, qword ptr [rbp + 2752]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_464_22
                        mov              rcx, qword ptr [rbp + 2760]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_464_22:
                                                                              jmp   n161_call_proc_staged_β
.Lcall_proc_staged_α_464_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              al, 104;                             je    n161_call_proc_staged_β
                                                                              jmp   d$2F3_ret3
.Lcall_proc_staged_α_464_0:
                        .quad            .Lcall_proc_staged_α_464_0_s
.Lcall_proc_staged_α_464_0_s:
                        .string          "d/3"
                        .size            n165_call_proc_staged_bx, .-n165_call_proc_staged_bx
                        .type            n166_var_ref_bx, @function
n166_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx;         jmp   n167_lit_string_α
                        .size            n166_var_ref_bx, .-n166_var_ref_bx
                        .type            n167_lit_string_bx, @function
n167_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:      mov              r11, 141
                        mov              qword ptr [rbp + 5136], 2            # result
                        mov              dword ptr [rbp + 5140], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_467_0]
                        mov              qword ptr [rbp + 5144], rax;         jmp   n168_var_ref_α
.Llit_string_α_467_0:   .quad            .Llit_string_α_467_0_s
.Llit_string_α_467_0_s: .string          "^"
                        .size            n167_lit_string_bx, .-n167_lit_string_bx
                        .type            n168_var_ref_bx, @function
n168_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx;         jmp   n169_var_ref_α
                        .size            n168_var_ref_bx, .-n168_var_ref_bx
                        .type            n169_var_ref_bx, @function
n169_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx;         jmp   n170_call_α
                        .size            n169_var_ref_bx, .-n169_var_ref_bx
                        .type            n170_call_bx, @function
n170_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_call_α:            mov              r11, 144
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
                                                                              jmp   n171_call_α
n170_call_β:            mov              r11, 144;                            jmp   d$2F3_step
                        .size            n170_call_bx, .-n170_call_bx
                        .type            n171_call_bx, @function
n171_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_call_α:            mov              r11, 145
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
                                                                              jmp   n172_var_ref_α
n171_call_β:            mov              r11, 145;                            jmp   d$2F3_step
                        .size            n171_call_bx, .-n171_call_bx
                        .type            n172_var_ref_bx, @function
n172_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx;         jmp   n173_var_ref_α
                        .size            n172_var_ref_bx, .-n172_var_ref_bx
                        .type            n173_var_ref_bx, @function
n173_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:         mov              r11, 147
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx;         jmp   n174_call_α
                        .size            n173_var_ref_bx, .-n173_var_ref_bx
                        .type            n174_call_bx, @function
n174_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_call_α:            mov              r11, 148
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
                                                                              jmp   n175_var_ref_α
n174_call_β:            mov              r11, 148;                            jmp   d$2F3_step
                        .size            n174_call_bx, .-n174_call_bx
                        .type            n175_var_ref_bx, @function
n175_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx;         jmp   n176_lit_string_α
                        .size            n175_var_ref_bx, .-n175_var_ref_bx
                        .type            n176_lit_string_bx, @function
n176_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:      mov              r11, 150
                        mov              qword ptr [rbp + 4832], 2            # result
                        mov              dword ptr [rbp + 4836], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_481_0]
                        mov              qword ptr [rbp + 4840], rax;         jmp   n177_lit_string_α
.Llit_string_α_481_0:   .quad            .Llit_string_α_481_0_s
.Llit_string_α_481_0_s: .string          "*"
                        .size            n176_lit_string_bx, .-n176_lit_string_bx
                        .type            n177_lit_string_bx, @function
n177_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:      mov              r11, 151
                        mov              qword ptr [rbp + 4608], 2            # result
                        mov              dword ptr [rbp + 4612], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_482_0]
                        mov              qword ptr [rbp + 4616], rax;         jmp   n178_var_ref_α
.Llit_string_α_482_0:   .quad            .Llit_string_α_482_0_s
.Llit_string_α_482_0_s: .string          "*"
                        .size            n177_lit_string_bx, .-n177_lit_string_bx
                        .type            n178_var_ref_bx, @function
n178_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx;         jmp   n179_var_ref_α
                        .size            n178_var_ref_bx, .-n178_var_ref_bx
                        .type            n179_var_ref_bx, @function
n179_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx;         jmp   n180_call_α
                        .size            n179_var_ref_bx, .-n179_var_ref_bx
                        .type            n180_call_bx, @function
n180_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_call_α:            mov              r11, 154
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
                                                                              jmp   n181_lit_string_α
n180_call_β:            mov              r11, 154;                            jmp   d$2F3_ω
                        .size            n180_call_bx, .-n180_call_bx
                        .type            n181_lit_string_bx, @function
n181_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:      mov              r11, 155
                        mov              qword ptr [rbp + 4736], 2            # result
                        mov              dword ptr [rbp + 4740], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_488_0]
                        mov              qword ptr [rbp + 4744], rax;         jmp   n182_var_ref_α
.Llit_string_α_488_0:   .quad            .Llit_string_α_488_0_s
.Llit_string_α_488_0_s: .string          "^"
                        .size            n181_lit_string_bx, .-n181_lit_string_bx
                        .type            n182_var_ref_bx, @function
n182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx;         jmp   n183_var_ref_α
                        .size            n182_var_ref_bx, .-n182_var_ref_bx
                        .type            n183_var_ref_bx, @function
n183_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:         mov              r11, 157
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx;         jmp   n184_call_α
                        .size            n183_var_ref_bx, .-n183_var_ref_bx
                        .type            n184_call_bx, @function
n184_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_call_α:            mov              r11, 158
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
                                                                              jmp   n185_call_α
n184_call_β:            mov              r11, 158;                            jmp   d$2F3_ω
                        .size            n184_call_bx, .-n184_call_bx
                        .type            n185_call_bx, @function
n185_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_call_α:            mov              r11, 159
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
                                                                              jmp   n186_call_α
n185_call_β:            mov              r11, 159;                            jmp   d$2F3_step
                        .size            n185_call_bx, .-n185_call_bx
                        .type            n186_call_bx, @function
n186_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_call_α:            mov              r11, 160
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
                                                                              jmp   n187_cut_α
n186_call_β:            mov              r11, 160;                            jmp   d$2F3_step
                        .size            n186_call_bx, .-n186_call_bx
                        .type            n187_cut_bx, @function
n187_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_cut_α:             mov              r11, 161
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n188_var_ref_α
                        .size            n187_cut_bx, .-n187_cut_bx
                        .type            n188_var_ref_bx, @function
n188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx;         jmp   n189_call_α
                        .size            n188_var_ref_bx, .-n188_var_ref_bx
                        .type            n189_call_bx, @function
n189_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_call_α:            mov              r11, 163
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
                                                                              jmp   n190_var_ref_α
n189_call_β:            mov              r11, 163;                            jmp   d$2F3_ω
                        .size            n189_call_bx, .-n189_call_bx
                        .type            n190_var_ref_bx, @function
n190_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              r11, 164
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx;         jmp   n191_var_α
                        .size            n190_var_ref_bx, .-n190_var_ref_bx
                        .type            n191_var_bx, @function
n191_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:             mov              r11, 165
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 4232], rax;         jmp   n192_call_α
                        .size            n191_var_bx, .-n191_var_bx
                        .type            n192_call_bx, @function
n192_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_call_α:            mov              r11, 166
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
                                                                              jmp   n193_lit_integer_α
n192_call_β:            mov              r11, 166;                            jmp   d$2F3_step
                        .size            n192_call_bx, .-n192_call_bx
                        .type            n193_lit_integer_bx, @function
n193_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_integer_α:     mov              r11, 167
                        mov              qword ptr [rbp + 4288], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_506_0]
                        mov              qword ptr [rbp + 4296], rax;         jmp   n194_call_α
.Llit_integer_α_506_0:  .quad            1
                        .size            n193_lit_integer_bx, .-n193_lit_integer_bx
                        .type            n194_call_bx, @function
n194_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_call_α:            mov              r11, 168
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
                                                                              jmp   n195_call_α
n194_call_β:            mov              r11, 168;                            jmp   d$2F3_step
                        .size            n194_call_bx, .-n194_call_bx
                        .type            n195_call_bx, @function
n195_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_call_α:            mov              r11, 169
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
                                                                              jmp   n196_call_α
n195_call_β:            mov              r11, 169;                            jmp   d$2F3_step
                        .size            n195_call_bx, .-n195_call_bx
                        .type            n196_call_bx, @function
n196_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_call_α:            mov              r11, 170
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
                                                                              jmp   n197_var_ref_α
n196_call_β:            mov              r11, 170;                            jmp   d$2F3_ω
                        .size            n196_call_bx, .-n196_call_bx
                        .type            n197_var_ref_bx, @function
n197_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx;         jmp   n198_var_ref_α
                        .size            n197_var_ref_bx, .-n197_var_ref_bx
                        .type            n198_var_ref_bx, @function
n198_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx;         jmp   n199_var_ref_α
                        .size            n198_var_ref_bx, .-n198_var_ref_bx
                        .type            n199_var_ref_bx, @function
n199_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx;         jmp   n200_call_proc_staged_α
                        .size            n199_var_ref_bx, .-n199_var_ref_bx
                        .type            n200_call_proc_staged_bx, @function
n200_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_call_proc_staged_α:
                        mov              r11, 174
                        mov              qword ptr [rbp + 4000], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_517_200
                        mov              rax, qword ptr [rbp + 4032]
                        mov              rdx, qword ptr [rbp + 4040]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_517_201
.Lcall_proc_staged_α_517_200:
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
.Lcall_proc_staged_α_517_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_517_202
                        mov              rax, qword ptr [rbp + 4048]
                        mov              rdx, qword ptr [rbp + 4056]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_517_203
.Lcall_proc_staged_α_517_202:
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
.Lcall_proc_staged_α_517_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_517_204
                        mov              rax, qword ptr [rbp + 4064]
                        mov              rdx, qword ptr [rbp + 4072]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_517_205
.Lcall_proc_staged_α_517_204:
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
.Lcall_proc_staged_α_517_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_517_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_517_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_517_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_517_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_517_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_517_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_517_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_517_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_517_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_517_3:
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_517_21
                        add              rsp, 32
.Lcall_proc_staged_α_517_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_517_2
.Lcall_proc_staged_α_517_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4000], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_517_2
.Lcall_proc_staged_α_517_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_517_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_517_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_517_29
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
.Lcall_proc_staged_α_517_29:
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret4
n200_call_proc_staged_β:
                        mov              r11, 174
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_517_22
                        mov              rax, qword ptr [rbp + 4000]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_517_22
                        mov              rcx, qword ptr [rbp + 4008]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_517_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_517_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret4
.Lcall_proc_staged_α_517_0:
                        .quad            .Lcall_proc_staged_α_517_0_s
.Lcall_proc_staged_α_517_0_s:
                        .string          "d/3"
                        .size            n200_call_proc_staged_bx, .-n200_call_proc_staged_bx
                        .type            n201_var_ref_bx, @function
n201_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:         mov              r11, 175
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5632], rax
                        mov              qword ptr [rbp + 5640], rdx;         jmp   n202_lit_string_α
                        .size            n201_var_ref_bx, .-n201_var_ref_bx
                        .type            n202_lit_string_bx, @function
n202_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:      mov              r11, 176
                        mov              qword ptr [rbp + 5728], 2            # result
                        mov              dword ptr [rbp + 5732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_520_0]
                        mov              qword ptr [rbp + 5736], rax;         jmp   n203_var_ref_α
.Llit_string_α_520_0:   .quad            .Llit_string_α_520_0_s
.Llit_string_α_520_0_s: .string          "-"
                        .size            n202_lit_string_bx, .-n202_lit_string_bx
                        .type            n203_var_ref_bx, @function
n203_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_var_ref_α:         mov              r11, 177
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx;         jmp   n204_call_α
                        .size            n203_var_ref_bx, .-n203_var_ref_bx
                        .type            n204_call_bx, @function
n204_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_call_α:            mov              r11, 178
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
                                                                              jmp   n205_call_α
n204_call_β:            mov              r11, 178;                            jmp   d$2F3_step
                        .size            n204_call_bx, .-n204_call_bx
                        .type            n205_call_bx, @function
n205_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_call_α:            mov              r11, 179
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
                                                                              jmp   n206_var_ref_α
n205_call_β:            mov              r11, 179;                            jmp   d$2F3_step
                        .size            n205_call_bx, .-n205_call_bx
                        .type            n206_var_ref_bx, @function
n206_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 180
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 5536], rax
                        mov              qword ptr [rbp + 5544], rdx;         jmp   n207_var_ref_α
                        .size            n206_var_ref_bx, .-n206_var_ref_bx
                        .type            n207_var_ref_bx, @function
n207_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:         mov              r11, 181
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx;         jmp   n208_call_α
                        .size            n207_var_ref_bx, .-n207_var_ref_bx
                        .type            n208_call_bx, @function
n208_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_call_α:            mov              r11, 182
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
                                                                              jmp   n209_var_ref_α
n208_call_β:            mov              r11, 182;                            jmp   d$2F3_step
                        .size            n208_call_bx, .-n208_call_bx
                        .type            n209_var_ref_bx, @function
n209_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5360], rax
                        mov              qword ptr [rbp + 5368], rdx;         jmp   n210_lit_string_α
                        .size            n209_var_ref_bx, .-n209_var_ref_bx
                        .type            n210_lit_string_bx, @function
n210_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:      mov              r11, 184
                        mov              qword ptr [rbp + 5456], 2            # result
                        mov              dword ptr [rbp + 5460], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_532_0]
                        mov              qword ptr [rbp + 5464], rax;         jmp   n211_var_ref_α
.Llit_string_α_532_0:   .quad            .Llit_string_α_532_0_s
.Llit_string_α_532_0_s: .string          "-"
                        .size            n210_lit_string_bx, .-n210_lit_string_bx
                        .type            n211_var_ref_bx, @function
n211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx;         jmp   n212_call_α
                        .size            n211_var_ref_bx, .-n211_var_ref_bx
                        .type            n212_call_bx, @function
n212_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_call_α:            mov              r11, 186
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
                                                                              jmp   n213_call_α
n212_call_β:            mov              r11, 186;                            jmp   d$2F3_step
                        .size            n212_call_bx, .-n212_call_bx
                        .type            n213_call_bx, @function
n213_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_call_α:            mov              r11, 187
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
                                                                              jmp   n214_cut_α
n213_call_β:            mov              r11, 187;                            jmp   d$2F3_step
                        .size            n213_call_bx, .-n213_call_bx
                        .type            n214_cut_bx, @function
n214_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_cut_α:             mov              r11, 188
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n215_var_ref_α
                        .size            n214_cut_bx, .-n214_cut_bx
                        .type            n215_var_ref_bx, @function
n215_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx;         jmp   n216_var_ref_α
                        .size            n215_var_ref_bx, .-n215_var_ref_bx
                        .type            n216_var_ref_bx, @function
n216_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:         mov              r11, 190
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx;         jmp   n217_var_ref_α
                        .size            n216_var_ref_bx, .-n216_var_ref_bx
                        .type            n217_var_ref_bx, @function
n217_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx;         jmp   n218_call_proc_staged_α
                        .size            n217_var_ref_bx, .-n217_var_ref_bx
                        .type            n218_call_proc_staged_bx, @function
n218_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_call_proc_staged_α:
                        mov              r11, 192
                        mov              qword ptr [rbp + 5216], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_546_200
                        mov              rax, qword ptr [rbp + 5248]
                        mov              rdx, qword ptr [rbp + 5256]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_546_201
.Lcall_proc_staged_α_546_200:
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
.Lcall_proc_staged_α_546_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_546_202
                        mov              rax, qword ptr [rbp + 5264]
                        mov              rdx, qword ptr [rbp + 5272]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_546_203
.Lcall_proc_staged_α_546_202:
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
.Lcall_proc_staged_α_546_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_546_204
                        mov              rax, qword ptr [rbp + 5280]
                        mov              rdx, qword ptr [rbp + 5288]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_546_205
.Lcall_proc_staged_α_546_204:
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
.Lcall_proc_staged_α_546_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_546_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_546_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_546_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_546_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_546_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_546_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_546_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_546_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_546_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_546_3:
                        mov              qword ptr [rbp + 5216], rax
                        mov              qword ptr [rbp + 5224], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_546_21
                        add              rsp, 32
.Lcall_proc_staged_α_546_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_546_2
.Lcall_proc_staged_α_546_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 5216], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_546_2
.Lcall_proc_staged_α_546_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_546_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_546_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_546_29
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
.Lcall_proc_staged_α_546_29:
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret5
n218_call_proc_staged_β:
                        mov              r11, 192
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_546_22
                        mov              rax, qword ptr [rbp + 5216]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_546_22
                        mov              rcx, qword ptr [rbp + 5224]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_546_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_546_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret5
.Lcall_proc_staged_α_546_0:
                        .quad            .Lcall_proc_staged_α_546_0_s
.Lcall_proc_staged_α_546_0_s:
                        .string          "d/3"
                        .size            n218_call_proc_staged_bx, .-n218_call_proc_staged_bx
                        .type            n219_var_ref_bx, @function
n219_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx;         jmp   n220_lit_string_α
                        .size            n219_var_ref_bx, .-n219_var_ref_bx
                        .type            n220_lit_string_bx, @function
n220_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:      mov              r11, 194
                        mov              qword ptr [rbp + 6432], 2            # result
                        mov              dword ptr [rbp + 6436], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_549_0]
                        mov              qword ptr [rbp + 6440], rax;         jmp   n221_var_ref_α
.Llit_string_α_549_0:   .quad            .Llit_string_α_549_0_s
.Llit_string_α_549_0_s: .string          "exp"
                        .size            n220_lit_string_bx, .-n220_lit_string_bx
                        .type            n221_var_ref_bx, @function
n221_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:         mov              r11, 195
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx;         jmp   n222_call_α
                        .size            n221_var_ref_bx, .-n221_var_ref_bx
                        .type            n222_call_bx, @function
n222_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_call_α:            mov              r11, 196
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
                                                                              jmp   n223_call_α
n222_call_β:            mov              r11, 196;                            jmp   d$2F3_step
                        .size            n222_call_bx, .-n222_call_bx
                        .type            n223_call_bx, @function
n223_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:            mov              r11, 197
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
                                                                              jmp   n224_var_ref_α
n223_call_β:            mov              r11, 197;                            jmp   d$2F3_step
                        .size            n223_call_bx, .-n223_call_bx
                        .type            n224_var_ref_bx, @function
n224_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx;         jmp   n225_var_ref_α
                        .size            n224_var_ref_bx, .-n224_var_ref_bx
                        .type            n225_var_ref_bx, @function
n225_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx;         jmp   n226_call_α
                        .size            n225_var_ref_bx, .-n225_var_ref_bx
                        .type            n226_call_bx, @function
n226_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_call_α:            mov              r11, 200
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
                                                                              jmp   n227_var_ref_α
n226_call_β:            mov              r11, 200;                            jmp   d$2F3_step
                        .size            n226_call_bx, .-n226_call_bx
                        .type            n227_var_ref_bx, @function
n227_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5952], rax
                        mov              qword ptr [rbp + 5960], rdx;         jmp   n228_lit_string_α
                        .size            n227_var_ref_bx, .-n227_var_ref_bx
                        .type            n228_lit_string_bx, @function
n228_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:      mov              r11, 202
                        mov              qword ptr [rbp + 6160], 2            # result
                        mov              dword ptr [rbp + 6164], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_561_0]
                        mov              qword ptr [rbp + 6168], rax;         jmp   n229_lit_string_α
.Llit_string_α_561_0:   .quad            .Llit_string_α_561_0_s
.Llit_string_α_561_0_s: .string          "*"
                        .size            n228_lit_string_bx, .-n228_lit_string_bx
                        .type            n229_lit_string_bx, @function
n229_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:      mov              r11, 203
                        mov              qword ptr [rbp + 6048], 2            # result
                        mov              dword ptr [rbp + 6052], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_562_0]
                        mov              qword ptr [rbp + 6056], rax;         jmp   n230_var_ref_α
.Llit_string_α_562_0:   .quad            .Llit_string_α_562_0_s
.Llit_string_α_562_0_s: .string          "exp"
                        .size            n229_lit_string_bx, .-n229_lit_string_bx
                        .type            n230_var_ref_bx, @function
n230_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:         mov              r11, 204
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 5968], rax
                        mov              qword ptr [rbp + 5976], rdx;         jmp   n231_call_α
                        .size            n230_var_ref_bx, .-n230_var_ref_bx
                        .type            n231_call_bx, @function
n231_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_call_α:            mov              r11, 205
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
                                                                              jmp   n232_var_ref_α
n231_call_β:            mov              r11, 205;                            jmp   d$2F3_ω
                        .size            n231_call_bx, .-n231_call_bx
                        .type            n232_var_ref_bx, @function
n232_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:         mov              r11, 206
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx;         jmp   n233_call_α
                        .size            n232_var_ref_bx, .-n232_var_ref_bx
                        .type            n233_call_bx, @function
n233_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_call_α:            mov              r11, 207
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
                                                                              jmp   n234_call_α
n233_call_β:            mov              r11, 207;                            jmp   d$2F3_step
                        .size            n233_call_bx, .-n233_call_bx
                        .type            n234_call_bx, @function
n234_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_call_α:            mov              r11, 208
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
                                                                              jmp   n235_cut_α
n234_call_β:            mov              r11, 208;                            jmp   d$2F3_step
                        .size            n234_call_bx, .-n234_call_bx
                        .type            n235_cut_bx, @function
n235_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_cut_α:             mov              r11, 209
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n236_var_ref_α
                        .size            n235_cut_bx, .-n235_cut_bx
                        .type            n236_var_ref_bx, @function
n236_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:         mov              r11, 210
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 5840], rax
                        mov              qword ptr [rbp + 5848], rdx;         jmp   n237_var_ref_α
                        .size            n236_var_ref_bx, .-n236_var_ref_bx
                        .type            n237_var_ref_bx, @function
n237_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx;         jmp   n238_var_ref_α
                        .size            n237_var_ref_bx, .-n237_var_ref_bx
                        .type            n238_var_ref_bx, @function
n238_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx;         jmp   n239_call_proc_staged_α
                        .size            n238_var_ref_bx, .-n238_var_ref_bx
                        .type            n239_call_proc_staged_bx, @function
n239_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_call_proc_staged_α:
                        mov              r11, 213
                        mov              qword ptr [rbp + 5808], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_579_200
                        mov              rax, qword ptr [rbp + 5840]
                        mov              rdx, qword ptr [rbp + 5848]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_579_201
.Lcall_proc_staged_α_579_200:
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
.Lcall_proc_staged_α_579_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_579_202
                        mov              rax, qword ptr [rbp + 5856]
                        mov              rdx, qword ptr [rbp + 5864]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_579_203
.Lcall_proc_staged_α_579_202:
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
.Lcall_proc_staged_α_579_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_579_204
                        mov              rax, qword ptr [rbp + 5872]
                        mov              rdx, qword ptr [rbp + 5880]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_579_205
.Lcall_proc_staged_α_579_204:
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
.Lcall_proc_staged_α_579_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_579_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_579_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_579_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_579_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_579_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_579_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_579_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_579_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_579_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_579_3:
                        mov              qword ptr [rbp + 5808], rax
                        mov              qword ptr [rbp + 5816], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_579_21
                        add              rsp, 32
.Lcall_proc_staged_α_579_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_579_2
.Lcall_proc_staged_α_579_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 5808], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_579_2
.Lcall_proc_staged_α_579_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_579_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_579_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_579_29
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
.Lcall_proc_staged_α_579_29:
                        mov              qword ptr [rbp + 5744], rax
                        mov              qword ptr [rbp + 5752], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret6
n239_call_proc_staged_β:
                        mov              r11, 213
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_579_22
                        mov              rax, qword ptr [rbp + 5808]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_579_22
                        mov              rcx, qword ptr [rbp + 5816]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_579_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_579_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5744], rax
                        mov              qword ptr [rbp + 5752], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret6
.Lcall_proc_staged_α_579_0:
                        .quad            .Lcall_proc_staged_α_579_0_s
.Lcall_proc_staged_α_579_0_s:
                        .string          "d/3"
                        .size            n239_call_proc_staged_bx, .-n239_call_proc_staged_bx
                        .type            n240_var_ref_bx, @function
n240_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_var_ref_α:         mov              r11, 214
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6960], rax
                        mov              qword ptr [rbp + 6968], rdx;         jmp   n241_lit_string_α
                        .size            n240_var_ref_bx, .-n240_var_ref_bx
                        .type            n241_lit_string_bx, @function
n241_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:      mov              r11, 215
                        mov              qword ptr [rbp + 7056], 2            # result
                        mov              dword ptr [rbp + 7060], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_582_0]
                        mov              qword ptr [rbp + 7064], rax;         jmp   n242_var_ref_α
.Llit_string_α_582_0:   .quad            .Llit_string_α_582_0_s
.Llit_string_α_582_0_s: .string          "log"
                        .size            n241_lit_string_bx, .-n241_lit_string_bx
                        .type            n242_var_ref_bx, @function
n242_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 6976], rax
                        mov              qword ptr [rbp + 6984], rdx;         jmp   n243_call_α
                        .size            n242_var_ref_bx, .-n242_var_ref_bx
                        .type            n243_call_bx, @function
n243_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_call_α:            mov              r11, 217
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
                                                                              jmp   n244_call_α
n243_call_β:            mov              r11, 217;                            jmp   d$2F3_step
                        .size            n243_call_bx, .-n243_call_bx
                        .type            n244_call_bx, @function
n244_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_call_α:            mov              r11, 218
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
                                                                              jmp   n245_var_ref_α
n244_call_β:            mov              r11, 218;                            jmp   d$2F3_step
                        .size            n244_call_bx, .-n244_call_bx
                        .type            n245_var_ref_bx, @function
n245_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6864], rax
                        mov              qword ptr [rbp + 6872], rdx;         jmp   n246_var_ref_α
                        .size            n245_var_ref_bx, .-n245_var_ref_bx
                        .type            n246_var_ref_bx, @function
n246_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx;         jmp   n247_call_α
                        .size            n246_var_ref_bx, .-n246_var_ref_bx
                        .type            n247_call_bx, @function
n247_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_call_α:            mov              r11, 221
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
                                                                              jmp   n248_var_ref_α
n247_call_β:            mov              r11, 221;                            jmp   d$2F3_step
                        .size            n247_call_bx, .-n247_call_bx
                        .type            n248_var_ref_bx, @function
n248_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6656], rax
                        mov              qword ptr [rbp + 6664], rdx;         jmp   n249_lit_string_α
                        .size            n248_var_ref_bx, .-n248_var_ref_bx
                        .type            n249_lit_string_bx, @function
n249_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:      mov              r11, 223
                        mov              qword ptr [rbp + 6784], 2            # result
                        mov              dword ptr [rbp + 6788], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_594_0]
                        mov              qword ptr [rbp + 6792], rax;         jmp   n250_var_ref_α
.Llit_string_α_594_0:   .quad            .Llit_string_α_594_0_s
.Llit_string_α_594_0_s: .string          "/"
                        .size            n249_lit_string_bx, .-n249_lit_string_bx
                        .type            n250_var_ref_bx, @function
n250_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:         mov              r11, 224
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 6672], rax
                        mov              qword ptr [rbp + 6680], rdx;         jmp   n251_var_ref_α
                        .size            n250_var_ref_bx, .-n250_var_ref_bx
                        .type            n251_var_ref_bx, @function
n251_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx;         jmp   n252_call_α
                        .size            n251_var_ref_bx, .-n251_var_ref_bx
                        .type            n252_call_bx, @function
n252_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_call_α:            mov              r11, 226
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
                                                                              jmp   n253_call_α
n252_call_β:            mov              r11, 226;                            jmp   d$2F3_step
                        .size            n252_call_bx, .-n252_call_bx
                        .type            n253_call_bx, @function
n253_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_call_α:            mov              r11, 227
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
                                                                              jmp   n254_cut_α
n253_call_β:            mov              r11, 227;                            jmp   d$2F3_step
                        .size            n253_call_bx, .-n253_call_bx
                        .type            n254_cut_bx, @function
n254_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_cut_α:             mov              r11, 228
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n255_var_ref_α
                        .size            n254_cut_bx, .-n254_cut_bx
                        .type            n255_var_ref_bx, @function
n255_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:         mov              r11, 229
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx;         jmp   n256_var_ref_α
                        .size            n255_var_ref_bx, .-n255_var_ref_bx
                        .type            n256_var_ref_bx, @function
n256_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx;         jmp   n257_var_ref_α
                        .size            n256_var_ref_bx, .-n256_var_ref_bx
                        .type            n257_var_ref_bx, @function
n257_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 6576], rax
                        mov              qword ptr [rbp + 6584], rdx;         jmp   n258_call_proc_staged_α
                        .size            n257_var_ref_bx, .-n257_var_ref_bx
                        .type            n258_call_proc_staged_bx, @function
n258_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_call_proc_staged_α:
                        mov              r11, 232
                        mov              qword ptr [rbp + 6512], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_610_200
                        mov              rax, qword ptr [rbp + 6544]
                        mov              rdx, qword ptr [rbp + 6552]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_610_201
.Lcall_proc_staged_α_610_200:
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
.Lcall_proc_staged_α_610_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_610_202
                        mov              rax, qword ptr [rbp + 6560]
                        mov              rdx, qword ptr [rbp + 6568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_610_203
.Lcall_proc_staged_α_610_202:
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
.Lcall_proc_staged_α_610_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_610_204
                        mov              rax, qword ptr [rbp + 6576]
                        mov              rdx, qword ptr [rbp + 6584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_610_205
.Lcall_proc_staged_α_610_204:
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
.Lcall_proc_staged_α_610_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_610_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_610_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_610_99
                        mov              r10, qword ptr [rbp + 7784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_610_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_610_99
                        mov              rcx, qword ptr [rbp + 7800]
                        mov              rdx, qword ptr [rbp + 7808]
                        lea              rsp, [rbp + 7824]
                        mov              rbp, qword ptr [rbp + 7816];         jmp   rax
.Lcall_proc_staged_α_610_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_610_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_610_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_610_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_610_3:
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_610_21
                        add              rsp, 32
.Lcall_proc_staged_α_610_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_610_2
.Lcall_proc_staged_α_610_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 6512], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_610_2
.Lcall_proc_staged_α_610_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_610_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
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
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 6448]
                        mov              rdx, qword ptr [rbp + 6456]
.Lcall_proc_staged_α_610_29:
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret7
n258_call_proc_staged_β:
                        mov              r11, 232
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_610_22
                        mov              rax, qword ptr [rbp + 6512]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_610_22
                        mov              rcx, qword ptr [rbp + 6520]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_610_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_610_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret7
.Lcall_proc_staged_α_610_0:
                        .quad            .Lcall_proc_staged_α_610_0_s
.Lcall_proc_staged_α_610_0_s:
                        .string          "d/3"
                        .size            n258_call_proc_staged_bx, .-n258_call_proc_staged_bx
                        .type            n259_var_ref_bx, @function
n259_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7328], rax
                        mov              qword ptr [rbp + 7336], rdx;         jmp   n260_var_ref_α
                        .size            n259_var_ref_bx, .-n259_var_ref_bx
                        .type            n260_var_ref_bx, @function
n260_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:         mov              r11, 234
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7728]
                        mov              qword ptr [rbp + 7344], rax
                        mov              qword ptr [rbp + 7352], rdx;         jmp   n261_call_α
                        .size            n260_var_ref_bx, .-n260_var_ref_bx
                        .type            n261_call_bx, @function
n261_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:            mov              r11, 235
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
                                                                              jmp   n262_var_ref_α
n261_call_β:            mov              r11, 235;                            jmp   d$2F3_step
                        .size            n261_call_bx, .-n261_call_bx
                        .type            n262_var_ref_bx, @function
n262_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_var_ref_α:         mov              r11, 236
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7232], rax
                        mov              qword ptr [rbp + 7240], rdx;         jmp   n263_var_ref_α
                        .size            n262_var_ref_bx, .-n262_var_ref_bx
                        .type            n263_var_ref_bx, @function
n263_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:         mov              r11, 237
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7728]
                        mov              qword ptr [rbp + 7248], rax
                        mov              qword ptr [rbp + 7256], rdx;         jmp   n264_call_α
                        .size            n263_var_ref_bx, .-n263_var_ref_bx
                        .type            n264_call_bx, @function
n264_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_call_α:            mov              r11, 238
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
                                                                              jmp   n265_var_ref_α
n264_call_β:            mov              r11, 238;                            jmp   d$2F3_step
                        .size            n264_call_bx, .-n264_call_bx
                        .type            n265_var_ref_bx, @function
n265_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_var_ref_α:         mov              r11, 239
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7136], rax
                        mov              qword ptr [rbp + 7144], rdx;         jmp   n266_lit_integer_α
                        .size            n265_var_ref_bx, .-n265_var_ref_bx
                        .type            n266_lit_integer_bx, @function
n266_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_integer_α:     mov              r11, 240
                        mov              qword ptr [rbp + 7152], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_623_0]
                        mov              qword ptr [rbp + 7160], rax;         jmp   n267_call_α
.Llit_integer_α_623_0:  .quad            1
                        .size            n266_lit_integer_bx, .-n266_lit_integer_bx
                        .type            n267_call_bx, @function
n267_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:            mov              r11, 241
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
                                                                              jmp   n268_cut_α
n267_call_β:            mov              r11, 241;                            jmp   d$2F3_step
                        .size            n267_call_bx, .-n267_call_bx
                        .type            n268_cut_bx, @function
n268_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_cut_α:             mov              r11, 242
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        lea              rdi, [rbp + 7760]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   d$2F3_γ
                        .size            n268_cut_bx, .-n268_cut_bx
                        .type            n269_var_ref_bx, @function
n269_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:         mov              r11, 243
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7616], rax
                        mov              qword ptr [rbp + 7624], rdx;         jmp   n270_var_ref_α
                        .size            n269_var_ref_bx, .-n269_var_ref_bx
                        .type            n270_var_ref_bx, @function
n270_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_var_ref_α:         mov              r11, 244
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx;         jmp   n271_call_α
                        .size            n270_var_ref_bx, .-n270_var_ref_bx
                        .type            n271_call_bx, @function
n271_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_call_α:            mov              r11, 245
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
                                                                              jmp   n272_var_ref_α
n271_call_β:            mov              r11, 245;                            jmp   d$2F3_step
                        .size            n271_call_bx, .-n271_call_bx
                        .type            n272_var_ref_bx, @function
n272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx;         jmp   n273_var_ref_α
                        .size            n272_var_ref_bx, .-n272_var_ref_bx
                        .type            n273_var_ref_bx, @function
n273_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:         mov              r11, 247
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx;         jmp   n274_call_α
                        .size            n273_var_ref_bx, .-n273_var_ref_bx
                        .type            n274_call_bx, @function
n274_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_call_α:            mov              r11, 248
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
                                                                              jmp   n275_var_ref_α
n274_call_β:            mov              r11, 248;                            jmp   d$2F3_step
                        .size            n274_call_bx, .-n274_call_bx
                        .type            n275_var_ref_bx, @function
n275_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_var_ref_α:         mov              r11, 249
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx;         jmp   n276_lit_integer_α
                        .size            n275_var_ref_bx, .-n275_var_ref_bx
                        .type            n276_lit_integer_bx, @function
n276_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_integer_α:     mov              r11, 250
                        mov              qword ptr [rbp + 7440], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_639_0]
                        mov              qword ptr [rbp + 7448], rax;         jmp   n277_call_α
.Llit_integer_α_639_0:  .quad            0
                        .size            n276_lit_integer_bx, .-n276_lit_integer_bx
                        .type            n277_call_bx, @function
n277_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_call_α:            mov              r11, 251
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
n277_call_β:            mov              r11, 251;                            jmp   d$2F3_step
                        .size            n277_call_bx, .-n277_call_bx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret0:
                        lea              rax, [rip + n75_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret1:
                        lea              rax, [rip + n99_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret2:
                        lea              rax, [rip + n129_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret3:
                        lea              rax, [rip + n165_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret4:
                        lea              rax, [rip + n200_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret5:
                        lea              rax, [rip + n218_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret6:
                        lea              rax, [rip + n239_call_proc_staged_β]
                        mov              qword ptr [rbp + 7776], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret7:
                        lea              rax, [rip + n258_call_proc_staged_β]
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
                                                                              jmp   n76_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt2:
                        lea              rax, [rip + d$2F3_alt3]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n100_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt3:
                        lea              rax, [rip + d$2F3_alt4]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n130_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt4:
                        lea              rax, [rip + d$2F3_alt5]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n166_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt5:
                        lea              rax, [rip + d$2F3_alt6]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n201_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt6:
                        lea              rax, [rip + d$2F3_alt7]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n219_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt7:
                        lea              rax, [rip + d$2F3_alt8]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n240_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt8:
                        lea              rax, [rip + d$2F3_alt9]
                        mov              qword ptr [rbp + 7768], rax
                                                                              jmp   n259_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt9:
                        xor              eax, eax
                        mov              qword ptr [rbp + 7768], rax
                        mov              r13, qword ptr [rbp + 7784]
                                                                              jmp   n269_var_ref_α
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
                        .type            n641_call_proc_staged_bx, @function
n641_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n641_call_proc_staged_α:
                        mov              r11, 252
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_643_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_643_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_643_99
                        mov              r10, qword ptr [rbp + 88]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_643_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_643_99
                        mov              rcx, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120];          jmp   rax
.Lcall_proc_staged_α_643_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_643_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_643_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_643_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_643_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_643_21
                        add              rsp, 32
.Lcall_proc_staged_α_643_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_643_2
.Lcall_proc_staged_α_643_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_643_2
.Lcall_proc_staged_α_643_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_643_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   top$2F0_step
.Lcall_proc_staged_α_643_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_643_29
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
.Lcall_proc_staged_α_643_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    top$2F0_step
                                                                              jmp   top$2F0_ret0
n641_call_proc_staged_β:
                        mov              r11, 252
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_643_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_643_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_643_22:
                                                                              jmp   top$2F0_step
.Lcall_proc_staged_α_643_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    top$2F0_step
                                                                              jmp   top$2F0_ret0
.Lcall_proc_staged_α_643_0:
                        .quad            .Lcall_proc_staged_α_643_0_s
.Lcall_proc_staged_α_643_0_s:
                        .string          "ops8/0"
                        .size            n641_call_proc_staged_bx, .-n641_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_ret0:
                        lea              rax, [rip + n641_call_proc_staged_β]
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
                        .type            n644_lit_string_bx, @function
n644_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n644_lit_string_α:      mov              r11, 253
                        mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_646_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n645_call_α
.Llit_string_α_646_0:   .quad            .Llit_string_α_646_0_s
.Llit_string_α_646_0_s: .string          "wall_us/1"
                        .size            n644_lit_string_bx, .-n644_lit_string_bx
                        .type            n645_call_bx, @function
n645_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n645_call_α:            mov              r11, 254
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
n645_call_β:            mov              r11, 254;                            jmp   main$2F0_step
                        .size            n645_call_bx, .-n645_call_bx
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
                        .type            n648_call_proc_staged_bx, @function
n648_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n648_call_proc_staged_α:
                        mov              r11, 255
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_650_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_650_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_650_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_650_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_650_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_650_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_650_21
                        add              rsp, 32
.Lcall_proc_staged_α_650_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_650_2
.Lcall_proc_staged_α_650_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_650_2
.Lcall_proc_staged_α_650_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_650_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_650_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_650_29
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
.Lcall_proc_staged_α_650_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n648_call_proc_staged_β:
                        mov              r11, 255
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_650_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_650_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_650_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_650_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_650_0:
                        .quad            .Lcall_proc_staged_α_650_0_s
.Lcall_proc_staged_α_650_0_s:
                        .string          "main/0"
                        .size            n648_call_proc_staged_bx, .-n648_call_proc_staged_bx
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
.Lstartup_pname0:       .string          "ops8/0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
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
