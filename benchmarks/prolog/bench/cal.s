                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__dow$2F2:
                        sub              rsp, 1472
                        mov              qword ptr [rsp + 1448], rcx
                        mov              qword ptr [rsp + 1456], rdx
                        mov              qword ptr [rsp + 1464], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1472]
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1432], r13
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1408], r12
                        lea              rax, [rip + dow$2F2_alt1]
                        mov              qword ptr [rsp + 1416], rax
                        lea              rdi, [rsp + 1408]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 1392
                        mov              edx, 1408
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
dow$2F2_α_body:
                        .type            n0_var_ref_bx, @function
n0_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n1_lit_integer_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rbp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_44_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n2_call_α
.Llit_integer_α_44_0:   .quad            0
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    dow$2F2_step
                                                                              jmp   n3_var_ref_α
n2_call_β:              mov              r11, 3;                              jmp   dow$2F2_step
                        .size            n2_call_bx, .-n2_call_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n4_lit_string_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_lit_string_bx, @function
n4_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rbp + 128], 2             # result
                        mov              dword ptr [rbp + 132], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_48_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n5_call_α
.Llit_string_α_48_0:    .quad            .Llit_string_α_48_0_s
.Llit_string_α_48_0_s:  .string          "sun"
                        .size            n4_lit_string_bx, .-n4_lit_string_bx
                        .type            n5_call_bx, @function
n5_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:              mov              r11, 6
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              rsi, qword ptr [rip + .Lcall_α_49_2]
                                                                              jmp   .Lcall_α_49_3
.Lcall_α_49_2:          .quad            .Lcall_α_49_2_s
.Lcall_α_49_2_s:        .string          "sun"
.Lcall_α_49_3:          mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    dow$2F2_step
                                                                              jmp   dow$2F2_γ
n5_call_β:              mov              r11, 6;                              jmp   dow$2F2_step
                        .size            n5_call_bx, .-n5_call_bx
                        .type            n6_var_ref_bx, @function
n6_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n7_lit_integer_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_52_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n8_call_α
.Llit_integer_α_52_0:   .quad            1
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_call_bx, @function
n8_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:              mov              r11, 9
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    dow$2F2_step
                                                                              jmp   n9_var_ref_α
n8_call_β:              mov              r11, 9;                              jmp   dow$2F2_step
                        .size            n8_call_bx, .-n8_call_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n10_lit_string_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_lit_string_bx, @function
n10_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rbp + 320], 2             # result
                        mov              dword ptr [rbp + 324], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_56_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n11_call_α
.Llit_string_α_56_0:    .quad            .Llit_string_α_56_0_s
.Llit_string_α_56_0_s:  .string          "mon"
                        .size            n10_lit_string_bx, .-n10_lit_string_bx
                        .type            n11_call_bx, @function
n11_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:             mov              r11, 12
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              rsi, qword ptr [rip + .Lcall_α_57_2]
                                                                              jmp   .Lcall_α_57_3
.Lcall_α_57_2:          .quad            .Lcall_α_57_2_s
.Lcall_α_57_2_s:        .string          "mon"
.Lcall_α_57_3:          mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    dow$2F2_step
                                                                              jmp   dow$2F2_γ
n11_call_β:             mov              r11, 12;                             jmp   dow$2F2_step
                        .size            n11_call_bx, .-n11_call_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n13_lit_integer_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_lit_integer_bx, @function
n13_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              r11, 14
                        mov              qword ptr [rbp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_60_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n14_call_α
.Llit_integer_α_60_0:   .quad            2
                        .size            n13_lit_integer_bx, .-n13_lit_integer_bx
                        .type            n14_call_bx, @function
n14_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             mov              r11, 15
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    dow$2F2_step
                                                                              jmp   n15_var_ref_α
n14_call_β:             mov              r11, 15;                             jmp   dow$2F2_step
                        .size            n14_call_bx, .-n14_call_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n16_lit_string_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_lit_string_bx, @function
n16_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rbp + 512], 2             # result
                        mov              dword ptr [rbp + 516], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_64_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n17_call_α
.Llit_string_α_64_0:    .quad            .Llit_string_α_64_0_s
.Llit_string_α_64_0_s:  .string          "tue"
                        .size            n16_lit_string_bx, .-n16_lit_string_bx
                        .type            n17_call_bx, @function
n17_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:             mov              r11, 18
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        mov              rsi, qword ptr [rip + .Lcall_α_65_2]
                                                                              jmp   .Lcall_α_65_3
.Lcall_α_65_2:          .quad            .Lcall_α_65_2_s
.Lcall_α_65_2_s:        .string          "tue"
.Lcall_α_65_3:          mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    dow$2F2_step
                                                                              jmp   dow$2F2_γ
n17_call_β:             mov              r11, 18;                             jmp   dow$2F2_step
                        .size            n17_call_bx, .-n17_call_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n19_lit_integer_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_lit_integer_bx, @function
n19_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              r11, 20
                        mov              qword ptr [rbp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_68_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n20_call_α
.Llit_integer_α_68_0:   .quad            3
                        .size            n19_lit_integer_bx, .-n19_lit_integer_bx
                        .type            n20_call_bx, @function
n20_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             mov              r11, 21
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        movabs           rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    dow$2F2_step
                                                                              jmp   n21_var_ref_α
n20_call_β:             mov              r11, 21;                             jmp   dow$2F2_step
                        .size            n20_call_bx, .-n20_call_bx
                        .type            n21_var_ref_bx, @function
n21_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n22_lit_string_α
                        .size            n21_var_ref_bx, .-n21_var_ref_bx
                        .type            n22_lit_string_bx, @function
n22_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rbp + 704], 2             # result
                        mov              dword ptr [rbp + 708], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_72_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n23_call_α
.Llit_string_α_72_0:    .quad            .Llit_string_α_72_0_s
.Llit_string_α_72_0_s:  .string          "wed"
                        .size            n22_lit_string_bx, .-n22_lit_string_bx
                        .type            n23_call_bx, @function
n23_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_call_α:             mov              r11, 24
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              rsi, qword ptr [rip + .Lcall_α_73_2]
                                                                              jmp   .Lcall_α_73_3
.Lcall_α_73_2:          .quad            .Lcall_α_73_2_s
.Lcall_α_73_2_s:        .string          "wed"
.Lcall_α_73_3:          mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    dow$2F2_step
                                                                              jmp   dow$2F2_γ
n23_call_β:             mov              r11, 24;                             jmp   dow$2F2_step
                        .size            n23_call_bx, .-n23_call_bx
                        .type            n24_var_ref_bx, @function
n24_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n25_lit_integer_α
                        .size            n24_var_ref_bx, .-n24_var_ref_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      mov              r11, 26
                        mov              qword ptr [rbp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_76_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n26_call_α
.Llit_integer_α_76_0:   .quad            4
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_call_bx, @function
n26_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_call_α:             mov              r11, 27
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        movabs           rsi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    dow$2F2_step
                                                                              jmp   n27_var_ref_α
n26_call_β:             mov              r11, 27;                             jmp   dow$2F2_step
                        .size            n26_call_bx, .-n26_call_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n28_lit_string_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_lit_string_bx, @function
n28_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       mov              r11, 29
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_80_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n29_call_α
.Llit_string_α_80_0:    .quad            .Llit_string_α_80_0_s
.Llit_string_α_80_0_s:  .string          "thu"
                        .size            n28_lit_string_bx, .-n28_lit_string_bx
                        .type            n29_call_bx, @function
n29_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_α:             mov              r11, 30
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              rsi, qword ptr [rip + .Lcall_α_81_2]
                                                                              jmp   .Lcall_α_81_3
.Lcall_α_81_2:          .quad            .Lcall_α_81_2_s
.Lcall_α_81_2_s:        .string          "thu"
.Lcall_α_81_3:          mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    dow$2F2_step
                                                                              jmp   dow$2F2_γ
n29_call_β:             mov              r11, 30;                             jmp   dow$2F2_step
                        .size            n29_call_bx, .-n29_call_bx
                        .type            n30_var_ref_bx, @function
n30_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n31_lit_integer_α
                        .size            n30_var_ref_bx, .-n30_var_ref_bx
                        .type            n31_lit_integer_bx, @function
n31_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      mov              r11, 32
                        mov              qword ptr [rbp + 1184], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_84_0]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n32_call_α
.Llit_integer_α_84_0:   .quad            5
                        .size            n31_lit_integer_bx, .-n31_lit_integer_bx
                        .type            n32_call_bx, @function
n32_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:             mov              r11, 33
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        movabs           rsi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    dow$2F2_step
                                                                              jmp   n33_var_ref_α
n32_call_β:             mov              r11, 33;                             jmp   dow$2F2_step
                        .size            n32_call_bx, .-n32_call_bx
                        .type            n33_var_ref_bx, @function
n33_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n34_lit_string_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_lit_string_bx, @function
n34_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rbp + 1088], 2            # result
                        mov              dword ptr [rbp + 1092], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_88_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n35_call_α
.Llit_string_α_88_0:    .quad            .Llit_string_α_88_0_s
.Llit_string_α_88_0_s:  .string          "fri"
                        .size            n34_lit_string_bx, .-n34_lit_string_bx
                        .type            n35_call_bx, @function
n35_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_call_α:             mov              r11, 36
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              rsi, qword ptr [rip + .Lcall_α_89_2]
                                                                              jmp   .Lcall_α_89_3
.Lcall_α_89_2:          .quad            .Lcall_α_89_2_s
.Lcall_α_89_2_s:        .string          "fri"
.Lcall_α_89_3:          mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    dow$2F2_step
                                                                              jmp   dow$2F2_γ
n35_call_β:             mov              r11, 36;                             jmp   dow$2F2_step
                        .size            n35_call_bx, .-n35_call_bx
                        .type            n36_var_ref_bx, @function
n36_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n37_lit_integer_α
                        .size            n36_var_ref_bx, .-n36_var_ref_bx
                        .type            n37_lit_integer_bx, @function
n37_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      mov              r11, 38
                        mov              qword ptr [rbp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_92_0]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n38_call_α
.Llit_integer_α_92_0:   .quad            6
                        .size            n37_lit_integer_bx, .-n37_lit_integer_bx
                        .type            n38_call_bx, @function
n38_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             mov              r11, 39
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1312]
                        movabs           rsi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              al, 104;                             je    dow$2F2_step
                                                                              jmp   n39_var_ref_α
n38_call_β:             mov              r11, 39;                             jmp   dow$2F2_step
                        .size            n38_call_bx, .-n38_call_bx
                        .type            n39_var_ref_bx, @function
n39_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n40_lit_string_α
                        .size            n39_var_ref_bx, .-n39_var_ref_bx
                        .type            n40_lit_string_bx, @function
n40_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rbp + 1280], 2            # result
                        mov              dword ptr [rbp + 1284], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_96_0]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n41_call_α
.Llit_string_α_96_0:    .quad            .Llit_string_α_96_0_s
.Llit_string_α_96_0_s:  .string          "sat"
                        .size            n40_lit_string_bx, .-n40_lit_string_bx
                        .type            n41_call_bx, @function
n41_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:             mov              r11, 42
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1216]
                        mov              rsi, qword ptr [rip + .Lcall_α_97_2]
                                                                              jmp   .Lcall_α_97_3
.Lcall_α_97_2:          .quad            .Lcall_α_97_2_s
.Lcall_α_97_2_s:        .string          "sat"
.Lcall_α_97_3:          mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    dow$2F2_step
                                                                              jmp   dow$2F2_γ
n41_call_β:             mov              r11, 42;                             jmp   dow$2F2_step
                        .size            n41_call_bx, .-n41_call_bx
#-----------------------------------------------------------------------------------------------------------------------
dow$2F2_step:
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1424], 0
                        mov              rax, qword ptr [rbp + 1416]
                        test             rax, rax
                                                                              je    dow$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
dow$2F2_alt1:
                        lea              rax, [rip + dow$2F2_alt2]
                        mov              qword ptr [rbp + 1416], rax
                                                                              jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
dow$2F2_alt2:
                        lea              rax, [rip + dow$2F2_alt3]
                        mov              qword ptr [rbp + 1416], rax
                                                                              jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
dow$2F2_alt3:
                        lea              rax, [rip + dow$2F2_alt4]
                        mov              qword ptr [rbp + 1416], rax
                                                                              jmp   n18_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
dow$2F2_alt4:
                        lea              rax, [rip + dow$2F2_alt5]
                        mov              qword ptr [rbp + 1416], rax
                                                                              jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
dow$2F2_alt5:
                        lea              rax, [rip + dow$2F2_alt6]
                        mov              qword ptr [rbp + 1416], rax
                                                                              jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
dow$2F2_alt6:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1416], rax
                        mov              r13, qword ptr [rbp + 1432]
                                                                              jmp   n36_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
dow$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
dow$2F2_β:
                        test             r15, r15
                                                                              jne   dow$2F2_ω
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1424], 0
                        test             rax, rax
                                                                              jne   dow$2F2_βres
                                                                              jmp   dow$2F2_step
dow$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
dow$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1448]
                        mov              rax, qword ptr [rbp + 1432]
                        cmp              r13, rax;                            je    dow$2F2_altdet
                        lea              rdx, [rip + dow$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1464];         jmp   rcx
dow$2F2_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 1472]
                        mov              rbp, qword ptr [rbp + 1464];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
dow$2F2_ω:
                        mov              rcx, qword ptr [rbp + 1456]
                        mov              r13, qword ptr [rbp + 1432]
                        lea              rsp, [rbp + 1472]
                        mov              rbp, qword ptr [rbp + 1464];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__day_of_week$2F4:
                        sub              rsp, 992
                        mov              qword ptr [rsp + 968], rcx
                        mov              qword ptr [rsp + 976], rdx
                        mov              qword ptr [rsp + 984], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 952], r13
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 928], r12
                        mov              rdi, rsp
                        mov              esi, 816
                        mov              edx, 928
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
day_of_week$2F4_α_body:
                        .type            n98_var_ref_bx, @function
n98_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n99_var_ref_α
                        .size            n98_var_ref_bx, .-n98_var_ref_bx
                        .type            n99_var_ref_bx, @function
n99_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n100_call_α
                        .size            n99_var_ref_bx, .-n99_var_ref_bx
                        .type            n100_call_bx, @function
n100_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_call_α:            mov              r11, 45
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    day_of_week$2F4_step
                                                                              jmp   n101_var_ref_α
n100_call_β:            mov              r11, 45;                             jmp   day_of_week$2F4_step
                        .size            n100_call_bx, .-n100_call_bx
                        .type            n101_var_ref_bx, @function
n101_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n102_var_ref_α
                        .size            n101_var_ref_bx, .-n101_var_ref_bx
                        .type            n102_var_ref_bx, @function
n102_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n103_call_α
                        .size            n102_var_ref_bx, .-n102_var_ref_bx
                        .type            n103_call_bx, @function
n103_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_call_α:            mov              r11, 48
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    day_of_week$2F4_step
                                                                              jmp   n104_var_ref_α
n103_call_β:            mov              r11, 48;                             jmp   day_of_week$2F4_step
                        .size            n103_call_bx, .-n103_call_bx
                        .type            n104_var_ref_bx, @function
n104_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:         mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n105_var_ref_α
                        .size            n104_var_ref_bx, .-n104_var_ref_bx
                        .type            n105_var_ref_bx, @function
n105_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:         mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n106_call_α
                        .size            n105_var_ref_bx, .-n105_var_ref_bx
                        .type            n106_call_bx, @function
n106_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_call_α:            mov              r11, 51
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    day_of_week$2F4_step
                                                                              jmp   n107_var_ref_α
n106_call_β:            mov              r11, 51;                             jmp   day_of_week$2F4_step
                        .size            n106_call_bx, .-n106_call_bx
                        .type            n107_var_ref_bx, @function
n107_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n108_var_ref_α
                        .size            n107_var_ref_bx, .-n107_var_ref_bx
                        .type            n108_var_ref_bx, @function
n108_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n109_call_α
                        .size            n108_var_ref_bx, .-n108_var_ref_bx
                        .type            n109_call_bx, @function
n109_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_α:            mov              r11, 54
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
                        cmp              al, 104;                             je    day_of_week$2F4_step
                                                                              jmp   n110_var_ref_α
n109_call_β:            mov              r11, 54;                             jmp   day_of_week$2F4_step
                        .size            n109_call_bx, .-n109_call_bx
                        .type            n110_var_ref_bx, @function
n110_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n111_var_ref_α
                        .size            n110_var_ref_bx, .-n110_var_ref_bx
                        .type            n111_var_ref_bx, @function
n111_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n112_var_ref_α
                        .size            n111_var_ref_bx, .-n111_var_ref_bx
                        .type            n112_var_ref_bx, @function
n112_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:         mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n113_call_proc_staged_α
                        .size            n112_var_ref_bx, .-n112_var_ref_bx
                        .type            n113_call_proc_staged_bx, @function
n113_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_call_proc_staged_α:
                        mov              r11, 58
                        mov              qword ptr [rbp + 352], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_147_200
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_147_201
.Lcall_proc_staged_α_147_200:
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
.Lcall_proc_staged_α_147_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_147_202
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_147_203
.Lcall_proc_staged_α_147_202:
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
.Lcall_proc_staged_α_147_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_147_204
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_147_205
.Lcall_proc_staged_α_147_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_147_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_147_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_147_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_147_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_147_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_147_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_147_3:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_147_21
                        add              rsp, 32
.Lcall_proc_staged_α_147_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_147_2
.Lcall_proc_staged_α_147_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 352], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_147_2
.Lcall_proc_staged_α_147_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_147_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   day_of_week$2F4_step
.Lcall_proc_staged_α_147_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_147_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
.Lcall_proc_staged_α_147_29:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    day_of_week$2F4_step
                                                                              jmp   n114_var_ref_α
n113_call_proc_staged_β:
                        mov              r11, 58
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_147_22
                        mov              rax, qword ptr [rbp + 352]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_147_22
                        mov              rcx, qword ptr [rbp + 360]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_147_22:
                                                                              jmp   day_of_week$2F4_step
.Lcall_proc_staged_α_147_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    day_of_week$2F4_step
                                                                              jmp   n114_var_ref_α
.Lcall_proc_staged_α_147_0:
                        .quad            .Lcall_proc_staged_α_147_0_s
.Lcall_proc_staged_α_147_0_s:
                        .string          "cal_key/3"
                        .size            n113_call_proc_staged_bx, .-n113_call_proc_staged_bx
                        .type            n114_var_ref_bx, @function
n114_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n115_var_ref_α
                        .size            n114_var_ref_bx, .-n114_var_ref_bx
                        .type            n115_var_ref_bx, @function
n115_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:         mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n116_var_ref_α
                        .size            n115_var_ref_bx, .-n115_var_ref_bx
                        .type            n116_var_ref_bx, @function
n116_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n117_var_ref_α
                        .size            n116_var_ref_bx, .-n116_var_ref_bx
                        .type            n117_var_ref_bx, @function
n117_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n118_var_ref_α
                        .size            n117_var_ref_bx, .-n117_var_ref_bx
                        .type            n118_var_ref_bx, @function
n118_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:         mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n119_call_proc_staged_α
                        .size            n118_var_ref_bx, .-n118_var_ref_bx
                        .type            n119_call_proc_staged_bx, @function
n119_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_call_proc_staged_α:
                        mov              r11, 64
                        mov              qword ptr [rbp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_159_200
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_159_201
.Lcall_proc_staged_α_159_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_159_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_159_202
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_159_203
.Lcall_proc_staged_α_159_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_159_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_159_204
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_159_205
.Lcall_proc_staged_α_159_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_159_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_159_206
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_159_207
.Lcall_proc_staged_α_159_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_159_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_159_208
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_159_209
.Lcall_proc_staged_α_159_208:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_159_209:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_159_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_159_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 5
                        mov              rsi, rbp
                        lea              rdx, [rbp + 992]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_159_99
                        mov              r10, qword ptr [rbp + 952]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_159_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_159_99
                        mov              rcx, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        lea              rsp, [rbp + 992]
                        mov              rbp, qword ptr [rbp + 984];          jmp   rax
.Lcall_proc_staged_α_159_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_159_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_159_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_159_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_159_3:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_159_21
                        add              rsp, 32
.Lcall_proc_staged_α_159_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_159_2
.Lcall_proc_staged_α_159_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 176], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_159_2
.Lcall_proc_staged_α_159_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_159_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n113_call_proc_staged_β
.Lcall_proc_staged_α_159_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_159_29
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
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
.Lcall_proc_staged_α_159_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n113_call_proc_staged_β
                                                                              jmp   day_of_week$2F4_ret0
n119_call_proc_staged_β:
                        mov              r11, 64
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_159_22
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_159_22
                        mov              rcx, qword ptr [rbp + 184]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_159_22:
                                                                              jmp   n113_call_proc_staged_β
.Lcall_proc_staged_α_159_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n113_call_proc_staged_β
                                                                              jmp   day_of_week$2F4_ret0
.Lcall_proc_staged_α_159_0:
                        .quad            .Lcall_proc_staged_α_159_0_s
.Lcall_proc_staged_α_159_0_s:
                        .string          "compute_it/5"
                        .size            n119_call_proc_staged_bx, .-n119_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
day_of_week$2F4_ret0:
                        lea              rax, [rip + n119_call_proc_staged_β]
                        mov              qword ptr [rbp + 944], rax
                                                                              jmp   day_of_week$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
day_of_week$2F4_step:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 816], 0
                        mov              qword ptr [rbp + 824], 0
                        mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                        mov              qword ptr [rbp + 864], 0
                        mov              qword ptr [rbp + 872], 0
                        mov              rax, qword ptr [rbp + 936]
                        test             rax, rax
                                                                              je    day_of_week$2F4_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
day_of_week$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
day_of_week$2F4_β:
                        test             r15, r15
                                                                              jne   day_of_week$2F4_ω
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 944], 0
                        test             rax, rax
                                                                              jne   day_of_week$2F4_βres
                                                                              jmp   day_of_week$2F4_step
day_of_week$2F4_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
day_of_week$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 968]
                        mov              rax, qword ptr [rbp + 952]
                        cmp              r13, rax;                            je    day_of_week$2F4_altdet
                        lea              rdx, [rip + day_of_week$2F4_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 984];          jmp   rcx
day_of_week$2F4_altdet: xor              eax, eax
                        lea              rsp, [rbp + 992]
                        mov              rbp, qword ptr [rbp + 984];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
day_of_week$2F4_ω:
                        mov              rcx, qword ptr [rbp + 976]
                        mov              r13, qword ptr [rbp + 952]
                        lea              rsp, [rbp + 992]
                        mov              rbp, qword ptr [rbp + 984];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__cal_key$2F3:
                        sub              rsp, 10512
                        mov              qword ptr [rsp + 10488], rcx
                        mov              qword ptr [rsp + 10496], rdx
                        mov              qword ptr [rsp + 10504], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 10512]
                        mov              qword ptr [rsp + 10480], rax
                        mov              qword ptr [rsp + 10472], r13
                        mov              qword ptr [rsp + 10464], 0
                        mov              qword ptr [rsp + 10456], 0
                        mov              qword ptr [rsp + 10448], r12
                        lea              rax, [rip + cal_key$2F3_alt1]
                        mov              qword ptr [rsp + 10456], rax
                        lea              rdi, [rsp + 10448]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 10432
                        mov              edx, 10448
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
cal_key$2F3_α_body:
                        .type            n160_var_ref_bx, @function
n160_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:         mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n161_lit_integer_α
                        .size            n160_var_ref_bx, .-n160_var_ref_bx
                        .type            n161_lit_integer_bx, @function
n161_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:     mov              r11, 66
                        mov              qword ptr [rbp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_486_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n162_call_α
.Llit_integer_α_486_0:  .quad            1
                        .size            n161_lit_integer_bx, .-n161_lit_integer_bx
                        .type            n162_call_bx, @function
n162_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_call_α:            mov              r11, 67
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n163_var_ref_α
n162_call_β:            mov              r11, 67;                             jmp   cal_key$2F3_step
                        .size            n162_call_bx, .-n162_call_bx
                        .type            n163_var_ref_bx, @function
n163_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:         mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n164_lit_integer_α
                        .size            n163_var_ref_bx, .-n163_var_ref_bx
                        .type            n164_lit_integer_bx, @function
n164_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_integer_α:     mov              r11, 69
                        mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_490_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n165_call_α
.Llit_integer_α_490_0:  .quad            6
                        .size            n164_lit_integer_bx, .-n164_lit_integer_bx
                        .type            n165_call_bx, @function
n165_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_call_α:            mov              r11, 70
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        movabs           rsi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n166_var_ref_α
n165_call_β:            mov              r11, 70;                             jmp   cal_key$2F3_step
                        .size            n165_call_bx, .-n165_call_bx
                        .type            n166_var_ref_bx, @function
n166_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n167_lit_integer_α
                        .size            n166_var_ref_bx, .-n166_var_ref_bx
                        .type            n167_lit_integer_bx, @function
n167_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:     mov              r11, 72
                        mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_494_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n168_call_α
.Llit_integer_α_494_0:  .quad            1
                        .size            n167_lit_integer_bx, .-n167_lit_integer_bx
                        .type            n168_call_bx, @function
n168_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:            mov              r11, 73
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n168_call_β:            mov              r11, 73;                             jmp   cal_key$2F3_step
                        .size            n168_call_bx, .-n168_call_bx
                        .type            n169_var_ref_bx, @function
n169_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n170_lit_integer_α
                        .size            n169_var_ref_bx, .-n169_var_ref_bx
                        .type            n170_lit_integer_bx, @function
n170_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_integer_α:     mov              r11, 75
                        mov              qword ptr [rbp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_498_0]
                        mov              qword ptr [rbp + 632], rax;          jmp   n171_call_α
.Llit_integer_α_498_0:  .quad            2
                        .size            n170_lit_integer_bx, .-n170_lit_integer_bx
                        .type            n171_call_bx, @function
n171_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_call_α:            mov              r11, 76
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n172_var_ref_α
n171_call_β:            mov              r11, 76;                             jmp   cal_key$2F3_step
                        .size            n171_call_bx, .-n171_call_bx
                        .type            n172_var_ref_bx, @function
n172_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n173_lit_integer_α
                        .size            n172_var_ref_bx, .-n172_var_ref_bx
                        .type            n173_lit_integer_bx, @function
n173_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     mov              r11, 78
                        mov              qword ptr [rbp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_502_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n174_call_α
.Llit_integer_α_502_0:  .quad            2
                        .size            n173_lit_integer_bx, .-n173_lit_integer_bx
                        .type            n174_call_bx, @function
n174_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_call_α:            mov              r11, 79
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n175_var_ref_α
n174_call_β:            mov              r11, 79;                             jmp   cal_key$2F3_step
                        .size            n174_call_bx, .-n174_call_bx
                        .type            n175_var_ref_bx, @function
n175_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n176_lit_integer_α
                        .size            n175_var_ref_bx, .-n175_var_ref_bx
                        .type            n176_lit_integer_bx, @function
n176_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_integer_α:     mov              r11, 81
                        mov              qword ptr [rbp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_506_0]
                        mov              qword ptr [rbp + 440], rax;          jmp   n177_call_α
.Llit_integer_α_506_0:  .quad            1
                        .size            n176_lit_integer_bx, .-n176_lit_integer_bx
                        .type            n177_call_bx, @function
n177_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_call_α:            mov              r11, 82
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n177_call_β:            mov              r11, 82;                             jmp   cal_key$2F3_step
                        .size            n177_call_bx, .-n177_call_bx
                        .type            n178_var_ref_bx, @function
n178_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n179_lit_integer_α
                        .size            n178_var_ref_bx, .-n178_var_ref_bx
                        .type            n179_lit_integer_bx, @function
n179_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:     mov              r11, 84
                        mov              qword ptr [rbp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_510_0]
                        mov              qword ptr [rbp + 920], rax;          jmp   n180_call_α
.Llit_integer_α_510_0:  .quad            3
                        .size            n179_lit_integer_bx, .-n179_lit_integer_bx
                        .type            n180_call_bx, @function
n180_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_call_α:            mov              r11, 85
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        movabs           rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n181_var_ref_α
n180_call_β:            mov              r11, 85;                             jmp   cal_key$2F3_step
                        .size            n180_call_bx, .-n180_call_bx
                        .type            n181_var_ref_bx, @function
n181_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n182_lit_integer_α
                        .size            n181_var_ref_bx, .-n181_var_ref_bx
                        .type            n182_lit_integer_bx, @function
n182_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:     mov              r11, 87
                        mov              qword ptr [rbp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_514_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n183_call_α
.Llit_integer_α_514_0:  .quad            2
                        .size            n182_lit_integer_bx, .-n182_lit_integer_bx
                        .type            n183_call_bx, @function
n183_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_call_α:            mov              r11, 88
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n184_var_ref_α
n183_call_β:            mov              r11, 88;                             jmp   cal_key$2F3_step
                        .size            n183_call_bx, .-n183_call_bx
                        .type            n184_var_ref_bx, @function
n184_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n185_lit_integer_α
                        .size            n184_var_ref_bx, .-n184_var_ref_bx
                        .type            n185_lit_integer_bx, @function
n185_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_integer_α:     mov              r11, 90
                        mov              qword ptr [rbp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_518_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n186_call_α
.Llit_integer_α_518_0:  .quad            0
                        .size            n185_lit_integer_bx, .-n185_lit_integer_bx
                        .type            n186_call_bx, @function
n186_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_call_α:            mov              r11, 91
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 656]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n186_call_β:            mov              r11, 91;                             jmp   cal_key$2F3_step
                        .size            n186_call_bx, .-n186_call_bx
                        .type            n187_var_ref_bx, @function
n187_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n188_lit_integer_α
                        .size            n187_var_ref_bx, .-n187_var_ref_bx
                        .type            n188_lit_integer_bx, @function
n188_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_integer_α:     mov              r11, 93
                        mov              qword ptr [rbp + 1200], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_522_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n189_call_α
.Llit_integer_α_522_0:  .quad            4
                        .size            n188_lit_integer_bx, .-n188_lit_integer_bx
                        .type            n189_call_bx, @function
n189_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_call_α:            mov              r11, 94
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        movabs           rsi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n190_var_ref_α
n189_call_β:            mov              r11, 94;                             jmp   cal_key$2F3_step
                        .size            n189_call_bx, .-n189_call_bx
                        .type            n190_var_ref_bx, @function
n190_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n191_lit_integer_α
                        .size            n190_var_ref_bx, .-n190_var_ref_bx
                        .type            n191_lit_integer_bx, @function
n191_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:     mov              r11, 96
                        mov              qword ptr [rbp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_526_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n192_call_α
.Llit_integer_α_526_0:  .quad            5
                        .size            n191_lit_integer_bx, .-n191_lit_integer_bx
                        .type            n192_call_bx, @function
n192_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_call_α:            mov              r11, 97
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        movabs           rsi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n193_var_ref_α
n192_call_β:            mov              r11, 97;                             jmp   cal_key$2F3_step
                        .size            n192_call_bx, .-n192_call_bx
                        .type            n193_var_ref_bx, @function
n193_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n194_lit_integer_α
                        .size            n193_var_ref_bx, .-n193_var_ref_bx
                        .type            n194_lit_integer_bx, @function
n194_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:     mov              r11, 99
                        mov              qword ptr [rbp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_530_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n195_call_α
.Llit_integer_α_530_0:  .quad            0
                        .size            n194_lit_integer_bx, .-n194_lit_integer_bx
                        .type            n195_call_bx, @function
n195_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_call_α:            mov              r11, 100
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n195_call_β:            mov              r11, 100;                            jmp   cal_key$2F3_step
                        .size            n195_call_bx, .-n195_call_bx
                        .type            n196_var_ref_bx, @function
n196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n197_lit_integer_α
                        .size            n196_var_ref_bx, .-n196_var_ref_bx
                        .type            n197_lit_integer_bx, @function
n197_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:     mov              r11, 102
                        mov              qword ptr [rbp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_534_0]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n198_call_α
.Llit_integer_α_534_0:  .quad            5
                        .size            n197_lit_integer_bx, .-n197_lit_integer_bx
                        .type            n198_call_bx, @function
n198_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_call_α:            mov              r11, 103
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1424]
                        movabs           rsi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n199_var_ref_α
n198_call_β:            mov              r11, 103;                            jmp   cal_key$2F3_step
                        .size            n198_call_bx, .-n198_call_bx
                        .type            n199_var_ref_bx, @function
n199_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx;         jmp   n200_lit_integer_α
                        .size            n199_var_ref_bx, .-n199_var_ref_bx
                        .type            n200_lit_integer_bx, @function
n200_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:     mov              r11, 105
                        mov              qword ptr [rbp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_538_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n201_call_α
.Llit_integer_α_538_0:  .quad            0
                        .size            n200_lit_integer_bx, .-n200_lit_integer_bx
                        .type            n201_call_bx, @function
n201_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_call_α:            mov              r11, 106
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1328]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n202_var_ref_α
n201_call_β:            mov              r11, 106;                            jmp   cal_key$2F3_step
                        .size            n201_call_bx, .-n201_call_bx
                        .type            n202_var_ref_bx, @function
n202_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n203_lit_integer_α
                        .size            n202_var_ref_bx, .-n202_var_ref_bx
                        .type            n203_lit_integer_bx, @function
n203_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:     mov              r11, 108
                        mov              qword ptr [rbp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_542_0]
                        mov              qword ptr [rbp + 1304], rax;         jmp   n204_call_α
.Llit_integer_α_542_0:  .quad            0
                        .size            n203_lit_integer_bx, .-n203_lit_integer_bx
                        .type            n204_call_bx, @function
n204_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_call_α:            mov              r11, 109
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1232]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n204_call_β:            mov              r11, 109;                            jmp   cal_key$2F3_step
                        .size            n204_call_bx, .-n204_call_bx
                        .type            n205_var_ref_bx, @function
n205_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n206_lit_integer_α
                        .size            n205_var_ref_bx, .-n205_var_ref_bx
                        .type            n206_lit_integer_bx, @function
n206_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_integer_α:     mov              r11, 111
                        mov              qword ptr [rbp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_546_0]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n207_call_α
.Llit_integer_α_546_0:  .quad            6
                        .size            n206_lit_integer_bx, .-n206_lit_integer_bx
                        .type            n207_call_bx, @function
n207_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_call_α:            mov              r11, 112
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1720], rax
                        lea              rdi, [rbp + 1712]
                        movabs           rsi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n208_var_ref_α
n207_call_β:            mov              r11, 112;                            jmp   cal_key$2F3_step
                        .size            n207_call_bx, .-n207_call_bx
                        .type            n208_var_ref_bx, @function
n208_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx;         jmp   n209_lit_integer_α
                        .size            n208_var_ref_bx, .-n208_var_ref_bx
                        .type            n209_lit_integer_bx, @function
n209_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_integer_α:     mov              r11, 114
                        mov              qword ptr [rbp + 1680], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_550_0]
                        mov              qword ptr [rbp + 1688], rax;         jmp   n210_call_α
.Llit_integer_α_550_0:  .quad            3
                        .size            n209_lit_integer_bx, .-n209_lit_integer_bx
                        .type            n210_call_bx, @function
n210_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_call_α:            mov              r11, 115
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                        lea              rdi, [rbp + 1616]
                        movabs           rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n211_var_ref_α
n210_call_β:            mov              r11, 115;                            jmp   cal_key$2F3_step
                        .size            n210_call_bx, .-n210_call_bx
                        .type            n211_var_ref_bx, @function
n211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx;         jmp   n212_lit_integer_α
                        .size            n211_var_ref_bx, .-n211_var_ref_bx
                        .type            n212_lit_integer_bx, @function
n212_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_integer_α:     mov              r11, 117
                        mov              qword ptr [rbp + 1584], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_554_0]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n213_call_α
.Llit_integer_α_554_0:  .quad            0
                        .size            n212_lit_integer_bx, .-n212_lit_integer_bx
                        .type            n213_call_bx, @function
n213_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_call_α:            mov              r11, 118
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n213_call_β:            mov              r11, 118;                            jmp   cal_key$2F3_step
                        .size            n213_call_bx, .-n213_call_bx
                        .type            n214_var_ref_bx, @function
n214_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n215_lit_integer_α
                        .size            n214_var_ref_bx, .-n214_var_ref_bx
                        .type            n215_lit_integer_bx, @function
n215_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_integer_α:     mov              r11, 120
                        mov              qword ptr [rbp + 2064], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_558_0]
                        mov              qword ptr [rbp + 2072], rax;         jmp   n216_call_α
.Llit_integer_α_558_0:  .quad            7
                        .size            n215_lit_integer_bx, .-n215_lit_integer_bx
                        .type            n216_call_bx, @function
n216_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_call_α:            mov              r11, 121
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2008], rax
                        lea              rdi, [rbp + 2000]
                        movabs           rsi, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n217_var_ref_α
n216_call_β:            mov              r11, 121;                            jmp   cal_key$2F3_step
                        .size            n216_call_bx, .-n216_call_bx
                        .type            n217_var_ref_bx, @function
n217_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n218_lit_integer_α
                        .size            n217_var_ref_bx, .-n217_var_ref_bx
                        .type            n218_lit_integer_bx, @function
n218_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_integer_α:     mov              r11, 123
                        mov              qword ptr [rbp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_562_0]
                        mov              qword ptr [rbp + 1976], rax;         jmp   n219_call_α
.Llit_integer_α_562_0:  .quad            5
                        .size            n218_lit_integer_bx, .-n218_lit_integer_bx
                        .type            n219_call_bx, @function
n219_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_call_α:            mov              r11, 124
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1912], rax
                        lea              rdi, [rbp + 1904]
                        movabs           rsi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n220_var_ref_α
n219_call_β:            mov              r11, 124;                            jmp   cal_key$2F3_step
                        .size            n219_call_bx, .-n219_call_bx
                        .type            n220_var_ref_bx, @function
n220_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n221_lit_integer_α
                        .size            n220_var_ref_bx, .-n220_var_ref_bx
                        .type            n221_lit_integer_bx, @function
n221_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_integer_α:     mov              r11, 126
                        mov              qword ptr [rbp + 1872], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_566_0]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n222_call_α
.Llit_integer_α_566_0:  .quad            0
                        .size            n221_lit_integer_bx, .-n221_lit_integer_bx
                        .type            n222_call_bx, @function
n222_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_call_α:            mov              r11, 127
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1808]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n222_call_β:            mov              r11, 127;                            jmp   cal_key$2F3_step
                        .size            n222_call_bx, .-n222_call_bx
                        .type            n223_var_ref_bx, @function
n223_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n224_lit_integer_α
                        .size            n223_var_ref_bx, .-n223_var_ref_bx
                        .type            n224_lit_integer_bx, @function
n224_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_integer_α:     mov              r11, 129
                        mov              qword ptr [rbp + 2352], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_570_0]
                        mov              qword ptr [rbp + 2360], rax;         jmp   n225_call_α
.Llit_integer_α_570_0:  .quad            8
                        .size            n224_lit_integer_bx, .-n224_lit_integer_bx
                        .type            n225_call_bx, @function
n225_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_call_α:            mov              r11, 130
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2288]
                        movabs           rsi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n226_var_ref_α
n225_call_β:            mov              r11, 130;                            jmp   cal_key$2F3_step
                        .size            n225_call_bx, .-n225_call_bx
                        .type            n226_var_ref_bx, @function
n226_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n227_lit_integer_α
                        .size            n226_var_ref_bx, .-n226_var_ref_bx
                        .type            n227_lit_integer_bx, @function
n227_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:     mov              r11, 132
                        mov              qword ptr [rbp + 2256], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_574_0]
                        mov              qword ptr [rbp + 2264], rax;         jmp   n228_call_α
.Llit_integer_α_574_0:  .quad            1
                        .size            n227_lit_integer_bx, .-n227_lit_integer_bx
                        .type            n228_call_bx, @function
n228_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_call_α:            mov              r11, 133
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2192]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n229_var_ref_α
n228_call_β:            mov              r11, 133;                            jmp   cal_key$2F3_step
                        .size            n228_call_bx, .-n228_call_bx
                        .type            n229_var_ref_bx, @function
n229_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n230_lit_integer_α
                        .size            n229_var_ref_bx, .-n229_var_ref_bx
                        .type            n230_lit_integer_bx, @function
n230_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:     mov              r11, 135
                        mov              qword ptr [rbp + 2160], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_578_0]
                        mov              qword ptr [rbp + 2168], rax;         jmp   n231_call_α
.Llit_integer_α_578_0:  .quad            0
                        .size            n230_lit_integer_bx, .-n230_lit_integer_bx
                        .type            n231_call_bx, @function
n231_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_call_α:            mov              r11, 136
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2104], rax
                        lea              rdi, [rbp + 2096]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n231_call_β:            mov              r11, 136;                            jmp   cal_key$2F3_step
                        .size            n231_call_bx, .-n231_call_bx
                        .type            n232_var_ref_bx, @function
n232_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx;         jmp   n233_lit_integer_α
                        .size            n232_var_ref_bx, .-n232_var_ref_bx
                        .type            n233_lit_integer_bx, @function
n233_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_integer_α:     mov              r11, 138
                        mov              qword ptr [rbp + 2640], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_582_0]
                        mov              qword ptr [rbp + 2648], rax;         jmp   n234_call_α
.Llit_integer_α_582_0:  .quad            9
                        .size            n233_lit_integer_bx, .-n233_lit_integer_bx
                        .type            n234_call_bx, @function
n234_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_call_α:            mov              r11, 139
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2584], rax
                        lea              rdi, [rbp + 2576]
                        movabs           rsi, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n235_var_ref_α
n234_call_β:            mov              r11, 139;                            jmp   cal_key$2F3_step
                        .size            n234_call_bx, .-n234_call_bx
                        .type            n235_var_ref_bx, @function
n235_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx;         jmp   n236_lit_integer_α
                        .size            n235_var_ref_bx, .-n235_var_ref_bx
                        .type            n236_lit_integer_bx, @function
n236_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:     mov              r11, 141
                        mov              qword ptr [rbp + 2544], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_586_0]
                        mov              qword ptr [rbp + 2552], rax;         jmp   n237_call_α
.Llit_integer_α_586_0:  .quad            4
                        .size            n236_lit_integer_bx, .-n236_lit_integer_bx
                        .type            n237_call_bx, @function
n237_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_call_α:            mov              r11, 142
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2488], rax
                        lea              rdi, [rbp + 2480]
                        movabs           rsi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n238_var_ref_α
n237_call_β:            mov              r11, 142;                            jmp   cal_key$2F3_step
                        .size            n237_call_bx, .-n237_call_bx
                        .type            n238_var_ref_bx, @function
n238_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx;         jmp   n239_lit_integer_α
                        .size            n238_var_ref_bx, .-n238_var_ref_bx
                        .type            n239_lit_integer_bx, @function
n239_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_integer_α:     mov              r11, 144
                        mov              qword ptr [rbp + 2448], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_590_0]
                        mov              qword ptr [rbp + 2456], rax;         jmp   n240_call_α
.Llit_integer_α_590_0:  .quad            0
                        .size            n239_lit_integer_bx, .-n239_lit_integer_bx
                        .type            n240_call_bx, @function
n240_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_call_α:            mov              r11, 145
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2384]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n240_call_β:            mov              r11, 145;                            jmp   cal_key$2F3_step
                        .size            n240_call_bx, .-n240_call_bx
                        .type            n241_var_ref_bx, @function
n241_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx;         jmp   n242_lit_integer_α
                        .size            n241_var_ref_bx, .-n241_var_ref_bx
                        .type            n242_lit_integer_bx, @function
n242_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:     mov              r11, 147
                        mov              qword ptr [rbp + 2928], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_594_0]
                        mov              qword ptr [rbp + 2936], rax;         jmp   n243_call_α
.Llit_integer_α_594_0:  .quad            10
                        .size            n242_lit_integer_bx, .-n242_lit_integer_bx
                        .type            n243_call_bx, @function
n243_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_call_α:            mov              r11, 148
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2872], rax
                        lea              rdi, [rbp + 2864]
                        movabs           rsi, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n244_var_ref_α
n243_call_β:            mov              r11, 148;                            jmp   cal_key$2F3_step
                        .size            n243_call_bx, .-n243_call_bx
                        .type            n244_var_ref_bx, @function
n244_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx;         jmp   n245_lit_integer_α
                        .size            n244_var_ref_bx, .-n244_var_ref_bx
                        .type            n245_lit_integer_bx, @function
n245_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_integer_α:     mov              r11, 150
                        mov              qword ptr [rbp + 2832], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_598_0]
                        mov              qword ptr [rbp + 2840], rax;         jmp   n246_call_α
.Llit_integer_α_598_0:  .quad            6
                        .size            n245_lit_integer_bx, .-n245_lit_integer_bx
                        .type            n246_call_bx, @function
n246_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_call_α:            mov              r11, 151
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2776], rax
                        lea              rdi, [rbp + 2768]
                        movabs           rsi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n247_var_ref_α
n246_call_β:            mov              r11, 151;                            jmp   cal_key$2F3_step
                        .size            n246_call_bx, .-n246_call_bx
                        .type            n247_var_ref_bx, @function
n247_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx;         jmp   n248_lit_integer_α
                        .size            n247_var_ref_bx, .-n247_var_ref_bx
                        .type            n248_lit_integer_bx, @function
n248_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:     mov              r11, 153
                        mov              qword ptr [rbp + 2736], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_602_0]
                        mov              qword ptr [rbp + 2744], rax;         jmp   n249_call_α
.Llit_integer_α_602_0:  .quad            0
                        .size            n248_lit_integer_bx, .-n248_lit_integer_bx
                        .type            n249_call_bx, @function
n249_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:            mov              r11, 154
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2680], rax
                        lea              rdi, [rbp + 2672]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n249_call_β:            mov              r11, 154;                            jmp   cal_key$2F3_step
                        .size            n249_call_bx, .-n249_call_bx
                        .type            n250_var_ref_bx, @function
n250_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:         mov              r11, 155
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n251_lit_integer_α
                        .size            n250_var_ref_bx, .-n250_var_ref_bx
                        .type            n251_lit_integer_bx, @function
n251_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_integer_α:     mov              r11, 156
                        mov              qword ptr [rbp + 3216], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_606_0]
                        mov              qword ptr [rbp + 3224], rax;         jmp   n252_call_α
.Llit_integer_α_606_0:  .quad            11
                        .size            n251_lit_integer_bx, .-n251_lit_integer_bx
                        .type            n252_call_bx, @function
n252_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_call_α:            mov              r11, 157
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3160], rax
                        lea              rdi, [rbp + 3152]
                        movabs           rsi, 11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n253_var_ref_α
n252_call_β:            mov              r11, 157;                            jmp   cal_key$2F3_step
                        .size            n252_call_bx, .-n252_call_bx
                        .type            n253_var_ref_bx, @function
n253_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:         mov              r11, 158
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx;         jmp   n254_lit_integer_α
                        .size            n253_var_ref_bx, .-n253_var_ref_bx
                        .type            n254_lit_integer_bx, @function
n254_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:     mov              r11, 159
                        mov              qword ptr [rbp + 3120], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_610_0]
                        mov              qword ptr [rbp + 3128], rax;         jmp   n255_call_α
.Llit_integer_α_610_0:  .quad            2
                        .size            n254_lit_integer_bx, .-n254_lit_integer_bx
                        .type            n255_call_bx, @function
n255_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_call_α:            mov              r11, 160
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3064], rax
                        lea              rdi, [rbp + 3056]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n256_var_ref_α
n255_call_β:            mov              r11, 160;                            jmp   cal_key$2F3_step
                        .size            n255_call_bx, .-n255_call_bx
                        .type            n256_var_ref_bx, @function
n256_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:         mov              r11, 161
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx;         jmp   n257_lit_integer_α
                        .size            n256_var_ref_bx, .-n256_var_ref_bx
                        .type            n257_lit_integer_bx, @function
n257_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_integer_α:     mov              r11, 162
                        mov              qword ptr [rbp + 3024], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_614_0]
                        mov              qword ptr [rbp + 3032], rax;         jmp   n258_call_α
.Llit_integer_α_614_0:  .quad            0
                        .size            n257_lit_integer_bx, .-n257_lit_integer_bx
                        .type            n258_call_bx, @function
n258_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_call_α:            mov              r11, 163
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2968], rax
                        lea              rdi, [rbp + 2960]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n258_call_β:            mov              r11, 163;                            jmp   cal_key$2F3_step
                        .size            n258_call_bx, .-n258_call_bx
                        .type            n259_var_ref_bx, @function
n259_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:         mov              r11, 164
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx;         jmp   n260_lit_integer_α
                        .size            n259_var_ref_bx, .-n259_var_ref_bx
                        .type            n260_lit_integer_bx, @function
n260_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_integer_α:     mov              r11, 165
                        mov              qword ptr [rbp + 3504], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_618_0]
                        mov              qword ptr [rbp + 3512], rax;         jmp   n261_call_α
.Llit_integer_α_618_0:  .quad            12
                        .size            n260_lit_integer_bx, .-n260_lit_integer_bx
                        .type            n261_call_bx, @function
n261_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:            mov              r11, 166
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3448], rax
                        lea              rdi, [rbp + 3440]
                        movabs           rsi, 12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n262_var_ref_α
n261_call_β:            mov              r11, 166;                            jmp   cal_key$2F3_step
                        .size            n261_call_bx, .-n261_call_bx
                        .type            n262_var_ref_bx, @function
n262_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx;         jmp   n263_lit_integer_α
                        .size            n262_var_ref_bx, .-n262_var_ref_bx
                        .type            n263_lit_integer_bx, @function
n263_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rbp + 3408], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_622_0]
                        mov              qword ptr [rbp + 3416], rax;         jmp   n264_call_α
.Llit_integer_α_622_0:  .quad            4
                        .size            n263_lit_integer_bx, .-n263_lit_integer_bx
                        .type            n264_call_bx, @function
n264_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_call_α:            mov              r11, 169
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3352], rax
                        lea              rdi, [rbp + 3344]
                        movabs           rsi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n265_var_ref_α
n264_call_β:            mov              r11, 169;                            jmp   cal_key$2F3_step
                        .size            n264_call_bx, .-n264_call_bx
                        .type            n265_var_ref_bx, @function
n265_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx;         jmp   n266_lit_integer_α
                        .size            n265_var_ref_bx, .-n265_var_ref_bx
                        .type            n266_lit_integer_bx, @function
n266_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_integer_α:     mov              r11, 171
                        mov              qword ptr [rbp + 3312], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_626_0]
                        mov              qword ptr [rbp + 3320], rax;         jmp   n267_call_α
.Llit_integer_α_626_0:  .quad            0
                        .size            n266_lit_integer_bx, .-n266_lit_integer_bx
                        .type            n267_call_bx, @function
n267_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:            mov              r11, 172
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3256], rax
                        lea              rdi, [rbp + 3248]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n267_call_β:            mov              r11, 172;                            jmp   cal_key$2F3_step
                        .size            n267_call_bx, .-n267_call_bx
                        .type            n268_var_ref_bx, @function
n268_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx;         jmp   n269_lit_string_α
                        .size            n268_var_ref_bx, .-n268_var_ref_bx
                        .type            n269_lit_string_bx, @function
n269_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:      mov              r11, 174
                        mov              qword ptr [rbp + 3792], 2            # result
                        mov              dword ptr [rbp + 3796], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_630_0]
                        mov              qword ptr [rbp + 3800], rax;         jmp   n270_call_α
.Llit_string_α_630_0:   .quad            .Llit_string_α_630_0_s
.Llit_string_α_630_0_s: .string          "jan"
                        .size            n269_lit_string_bx, .-n269_lit_string_bx
                        .type            n270_call_bx, @function
n270_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_call_α:            mov              r11, 175
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3736], rax
                        lea              rdi, [rbp + 3728]
                        mov              rsi, qword ptr [rip + .Lcall_α_631_2]
                                                                              jmp   .Lcall_α_631_3
.Lcall_α_631_2:         .quad            .Lcall_α_631_2_s
.Lcall_α_631_2_s:       .string          "jan"
.Lcall_α_631_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n271_var_ref_α
n270_call_β:            mov              r11, 175;                            jmp   cal_key$2F3_step
                        .size            n270_call_bx, .-n270_call_bx
                        .type            n271_var_ref_bx, @function
n271_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              r11, 176
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx;         jmp   n272_lit_integer_α
                        .size            n271_var_ref_bx, .-n271_var_ref_bx
                        .type            n272_lit_integer_bx, @function
n272_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_integer_α:     mov              r11, 177
                        mov              qword ptr [rbp + 3696], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_634_0]
                        mov              qword ptr [rbp + 3704], rax;         jmp   n273_call_α
.Llit_integer_α_634_0:  .quad            6
                        .size            n272_lit_integer_bx, .-n272_lit_integer_bx
                        .type            n273_call_bx, @function
n273_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_call_α:            mov              r11, 178
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3640], rax
                        lea              rdi, [rbp + 3632]
                        movabs           rsi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n274_var_ref_α
n273_call_β:            mov              r11, 178;                            jmp   cal_key$2F3_step
                        .size            n273_call_bx, .-n273_call_bx
                        .type            n274_var_ref_bx, @function
n274_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx;         jmp   n275_lit_integer_α
                        .size            n274_var_ref_bx, .-n274_var_ref_bx
                        .type            n275_lit_integer_bx, @function
n275_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_integer_α:     mov              r11, 180
                        mov              qword ptr [rbp + 3600], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_638_0]
                        mov              qword ptr [rbp + 3608], rax;         jmp   n276_call_α
.Llit_integer_α_638_0:  .quad            1
                        .size            n275_lit_integer_bx, .-n275_lit_integer_bx
                        .type            n276_call_bx, @function
n276_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_call_α:            mov              r11, 181
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3544], rax
                        lea              rdi, [rbp + 3536]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n276_call_β:            mov              r11, 181;                            jmp   cal_key$2F3_step
                        .size            n276_call_bx, .-n276_call_bx
                        .type            n277_var_ref_bx, @function
n277_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:         mov              r11, 182
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx;         jmp   n278_lit_string_α
                        .size            n277_var_ref_bx, .-n277_var_ref_bx
                        .type            n278_lit_string_bx, @function
n278_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:      mov              r11, 183
                        mov              qword ptr [rbp + 4080], 2            # result
                        mov              dword ptr [rbp + 4084], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_642_0]
                        mov              qword ptr [rbp + 4088], rax;         jmp   n279_call_α
.Llit_string_α_642_0:   .quad            .Llit_string_α_642_0_s
.Llit_string_α_642_0_s: .string          "feb"
                        .size            n278_lit_string_bx, .-n278_lit_string_bx
                        .type            n279_call_bx, @function
n279_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_call_α:            mov              r11, 184
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4024], rax
                        lea              rdi, [rbp + 4016]
                        mov              rsi, qword ptr [rip + .Lcall_α_643_2]
                                                                              jmp   .Lcall_α_643_3
.Lcall_α_643_2:         .quad            .Lcall_α_643_2_s
.Lcall_α_643_2_s:       .string          "feb"
.Lcall_α_643_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n280_var_ref_α
n279_call_β:            mov              r11, 184;                            jmp   cal_key$2F3_step
                        .size            n279_call_bx, .-n279_call_bx
                        .type            n280_var_ref_bx, @function
n280_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx;         jmp   n281_lit_integer_α
                        .size            n280_var_ref_bx, .-n280_var_ref_bx
                        .type            n281_lit_integer_bx, @function
n281_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_integer_α:     mov              r11, 186
                        mov              qword ptr [rbp + 3984], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_646_0]
                        mov              qword ptr [rbp + 3992], rax;         jmp   n282_call_α
.Llit_integer_α_646_0:  .quad            2
                        .size            n281_lit_integer_bx, .-n281_lit_integer_bx
                        .type            n282_call_bx, @function
n282_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_call_α:            mov              r11, 187
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3928], rax
                        lea              rdi, [rbp + 3920]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n283_var_ref_α
n282_call_β:            mov              r11, 187;                            jmp   cal_key$2F3_step
                        .size            n282_call_bx, .-n282_call_bx
                        .type            n283_var_ref_bx, @function
n283_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx;         jmp   n284_lit_integer_α
                        .size            n283_var_ref_bx, .-n283_var_ref_bx
                        .type            n284_lit_integer_bx, @function
n284_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_integer_α:     mov              r11, 189
                        mov              qword ptr [rbp + 3888], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_650_0]
                        mov              qword ptr [rbp + 3896], rax;         jmp   n285_call_α
.Llit_integer_α_650_0:  .quad            1
                        .size            n284_lit_integer_bx, .-n284_lit_integer_bx
                        .type            n285_call_bx, @function
n285_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_call_α:            mov              r11, 190
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3832], rax
                        lea              rdi, [rbp + 3824]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n285_call_β:            mov              r11, 190;                            jmp   cal_key$2F3_step
                        .size            n285_call_bx, .-n285_call_bx
                        .type            n286_var_ref_bx, @function
n286_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx;         jmp   n287_lit_string_α
                        .size            n286_var_ref_bx, .-n286_var_ref_bx
                        .type            n287_lit_string_bx, @function
n287_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:      mov              r11, 192
                        mov              qword ptr [rbp + 4368], 2            # result
                        mov              dword ptr [rbp + 4372], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_654_0]
                        mov              qword ptr [rbp + 4376], rax;         jmp   n288_call_α
.Llit_string_α_654_0:   .quad            .Llit_string_α_654_0_s
.Llit_string_α_654_0_s: .string          "mar"
                        .size            n287_lit_string_bx, .-n287_lit_string_bx
                        .type            n288_call_bx, @function
n288_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_call_α:            mov              r11, 193
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4312], rax
                        lea              rdi, [rbp + 4304]
                        mov              rsi, qword ptr [rip + .Lcall_α_655_2]
                                                                              jmp   .Lcall_α_655_3
.Lcall_α_655_2:         .quad            .Lcall_α_655_2_s
.Lcall_α_655_2_s:       .string          "mar"
.Lcall_α_655_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n289_var_ref_α
n288_call_β:            mov              r11, 193;                            jmp   cal_key$2F3_step
                        .size            n288_call_bx, .-n288_call_bx
                        .type            n289_var_ref_bx, @function
n289_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx;         jmp   n290_lit_integer_α
                        .size            n289_var_ref_bx, .-n289_var_ref_bx
                        .type            n290_lit_integer_bx, @function
n290_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_integer_α:     mov              r11, 195
                        mov              qword ptr [rbp + 4272], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_658_0]
                        mov              qword ptr [rbp + 4280], rax;         jmp   n291_call_α
.Llit_integer_α_658_0:  .quad            2
                        .size            n290_lit_integer_bx, .-n290_lit_integer_bx
                        .type            n291_call_bx, @function
n291_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_call_α:            mov              r11, 196
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4208], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4216], rax
                        lea              rdi, [rbp + 4208]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n292_var_ref_α
n291_call_β:            mov              r11, 196;                            jmp   cal_key$2F3_step
                        .size            n291_call_bx, .-n291_call_bx
                        .type            n292_var_ref_bx, @function
n292_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx;         jmp   n293_lit_integer_α
                        .size            n292_var_ref_bx, .-n292_var_ref_bx
                        .type            n293_lit_integer_bx, @function
n293_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_integer_α:     mov              r11, 198
                        mov              qword ptr [rbp + 4176], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_662_0]
                        mov              qword ptr [rbp + 4184], rax;         jmp   n294_call_α
.Llit_integer_α_662_0:  .quad            0
                        .size            n293_lit_integer_bx, .-n293_lit_integer_bx
                        .type            n294_call_bx, @function
n294_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_call_α:            mov              r11, 199
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 4120], rax
                        lea              rdi, [rbp + 4112]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n294_call_β:            mov              r11, 199;                            jmp   cal_key$2F3_step
                        .size            n294_call_bx, .-n294_call_bx
                        .type            n295_var_ref_bx, @function
n295_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx;         jmp   n296_lit_string_α
                        .size            n295_var_ref_bx, .-n295_var_ref_bx
                        .type            n296_lit_string_bx, @function
n296_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:      mov              r11, 201
                        mov              qword ptr [rbp + 4656], 2            # result
                        mov              dword ptr [rbp + 4660], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_666_0]
                        mov              qword ptr [rbp + 4664], rax;         jmp   n297_call_α
.Llit_string_α_666_0:   .quad            .Llit_string_α_666_0_s
.Llit_string_α_666_0_s: .string          "apr"
                        .size            n296_lit_string_bx, .-n296_lit_string_bx
                        .type            n297_call_bx, @function
n297_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_call_α:            mov              r11, 202
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 4600], rax
                        lea              rdi, [rbp + 4592]
                        mov              rsi, qword ptr [rip + .Lcall_α_667_2]
                                                                              jmp   .Lcall_α_667_3
.Lcall_α_667_2:         .quad            .Lcall_α_667_2_s
.Lcall_α_667_2_s:       .string          "apr"
.Lcall_α_667_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n298_var_ref_α
n297_call_β:            mov              r11, 202;                            jmp   cal_key$2F3_step
                        .size            n297_call_bx, .-n297_call_bx
                        .type            n298_var_ref_bx, @function
n298_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4544], rax
                        mov              qword ptr [rbp + 4552], rdx;         jmp   n299_lit_integer_α
                        .size            n298_var_ref_bx, .-n298_var_ref_bx
                        .type            n299_lit_integer_bx, @function
n299_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:     mov              r11, 204
                        mov              qword ptr [rbp + 4560], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_670_0]
                        mov              qword ptr [rbp + 4568], rax;         jmp   n300_call_α
.Llit_integer_α_670_0:  .quad            5
                        .size            n299_lit_integer_bx, .-n299_lit_integer_bx
                        .type            n300_call_bx, @function
n300_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_call_α:            mov              r11, 205
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4504], rax
                        lea              rdi, [rbp + 4496]
                        movabs           rsi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n301_var_ref_α
n300_call_β:            mov              r11, 205;                            jmp   cal_key$2F3_step
                        .size            n300_call_bx, .-n300_call_bx
                        .type            n301_var_ref_bx, @function
n301_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:         mov              r11, 206
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4448], rax
                        mov              qword ptr [rbp + 4456], rdx;         jmp   n302_lit_integer_α
                        .size            n301_var_ref_bx, .-n301_var_ref_bx
                        .type            n302_lit_integer_bx, @function
n302_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_integer_α:     mov              r11, 207
                        mov              qword ptr [rbp + 4464], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_674_0]
                        mov              qword ptr [rbp + 4472], rax;         jmp   n303_call_α
.Llit_integer_α_674_0:  .quad            0
                        .size            n302_lit_integer_bx, .-n302_lit_integer_bx
                        .type            n303_call_bx, @function
n303_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_call_α:            mov              r11, 208
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 4408], rax
                        lea              rdi, [rbp + 4400]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n303_call_β:            mov              r11, 208;                            jmp   cal_key$2F3_step
                        .size            n303_call_bx, .-n303_call_bx
                        .type            n304_var_ref_bx, @function
n304_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx;         jmp   n305_lit_string_α
                        .size            n304_var_ref_bx, .-n304_var_ref_bx
                        .type            n305_lit_string_bx, @function
n305_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:      mov              r11, 210
                        mov              qword ptr [rbp + 4944], 2            # result
                        mov              dword ptr [rbp + 4948], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_678_0]
                        mov              qword ptr [rbp + 4952], rax;         jmp   n306_call_α
.Llit_string_α_678_0:   .quad            .Llit_string_α_678_0_s
.Llit_string_α_678_0_s: .string          "may"
                        .size            n305_lit_string_bx, .-n305_lit_string_bx
                        .type            n306_call_bx, @function
n306_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_call_α:            mov              r11, 211
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 4880], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 4888], rax
                        lea              rdi, [rbp + 4880]
                        mov              rsi, qword ptr [rip + .Lcall_α_679_2]
                                                                              jmp   .Lcall_α_679_3
.Lcall_α_679_2:         .quad            .Lcall_α_679_2_s
.Lcall_α_679_2_s:       .string          "may"
.Lcall_α_679_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n307_var_ref_α
n306_call_β:            mov              r11, 211;                            jmp   cal_key$2F3_step
                        .size            n306_call_bx, .-n306_call_bx
                        .type            n307_var_ref_bx, @function
n307_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4832], rax
                        mov              qword ptr [rbp + 4840], rdx;         jmp   n308_lit_integer_α
                        .size            n307_var_ref_bx, .-n307_var_ref_bx
                        .type            n308_lit_integer_bx, @function
n308_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_integer_α:     mov              r11, 213
                        mov              qword ptr [rbp + 4848], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_682_0]
                        mov              qword ptr [rbp + 4856], rax;         jmp   n309_call_α
.Llit_integer_α_682_0:  .quad            0
                        .size            n308_lit_integer_bx, .-n308_lit_integer_bx
                        .type            n309_call_bx, @function
n309_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_call_α:            mov              r11, 214
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 4792], rax
                        lea              rdi, [rbp + 4784]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n310_var_ref_α
n309_call_β:            mov              r11, 214;                            jmp   cal_key$2F3_step
                        .size            n309_call_bx, .-n309_call_bx
                        .type            n310_var_ref_bx, @function
n310_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              r11, 215
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4736], rax
                        mov              qword ptr [rbp + 4744], rdx;         jmp   n311_lit_integer_α
                        .size            n310_var_ref_bx, .-n310_var_ref_bx
                        .type            n311_lit_integer_bx, @function
n311_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_integer_α:     mov              r11, 216
                        mov              qword ptr [rbp + 4752], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_686_0]
                        mov              qword ptr [rbp + 4760], rax;         jmp   n312_call_α
.Llit_integer_α_686_0:  .quad            0
                        .size            n311_lit_integer_bx, .-n311_lit_integer_bx
                        .type            n312_call_bx, @function
n312_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:            mov              r11, 217
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4696], rax
                        lea              rdi, [rbp + 4688]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n312_call_β:            mov              r11, 217;                            jmp   cal_key$2F3_step
                        .size            n312_call_bx, .-n312_call_bx
                        .type            n313_var_ref_bx, @function
n313_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5216], rax
                        mov              qword ptr [rbp + 5224], rdx;         jmp   n314_lit_string_α
                        .size            n313_var_ref_bx, .-n313_var_ref_bx
                        .type            n314_lit_string_bx, @function
n314_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_string_α:      mov              r11, 219
                        mov              qword ptr [rbp + 5232], 2            # result
                        mov              dword ptr [rbp + 5236], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_690_0]
                        mov              qword ptr [rbp + 5240], rax;         jmp   n315_call_α
.Llit_string_α_690_0:   .quad            .Llit_string_α_690_0_s
.Llit_string_α_690_0_s: .string          "jun"
                        .size            n314_lit_string_bx, .-n314_lit_string_bx
                        .type            n315_call_bx, @function
n315_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_call_α:            mov              r11, 220
                        mov              rax, qword ptr [rbp + 5216]
                        mov              qword ptr [rbp + 5168], rax
                        mov              rax, qword ptr [rbp + 5224]
                        mov              qword ptr [rbp + 5176], rax
                        lea              rdi, [rbp + 5168]
                        mov              rsi, qword ptr [rip + .Lcall_α_691_2]
                                                                              jmp   .Lcall_α_691_3
.Lcall_α_691_2:         .quad            .Lcall_α_691_2_s
.Lcall_α_691_2_s:       .string          "jun"
.Lcall_α_691_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n316_var_ref_α
n315_call_β:            mov              r11, 220;                            jmp   cal_key$2F3_step
                        .size            n315_call_bx, .-n315_call_bx
                        .type            n316_var_ref_bx, @function
n316_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 5120], rax
                        mov              qword ptr [rbp + 5128], rdx;         jmp   n317_lit_integer_α
                        .size            n316_var_ref_bx, .-n316_var_ref_bx
                        .type            n317_lit_integer_bx, @function
n317_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_integer_α:     mov              r11, 222
                        mov              qword ptr [rbp + 5136], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_694_0]
                        mov              qword ptr [rbp + 5144], rax;         jmp   n318_call_α
.Llit_integer_α_694_0:  .quad            3
                        .size            n317_lit_integer_bx, .-n317_lit_integer_bx
                        .type            n318_call_bx, @function
n318_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_call_α:            mov              r11, 223
                        mov              rax, qword ptr [rbp + 5120]
                        mov              qword ptr [rbp + 5072], rax
                        mov              rax, qword ptr [rbp + 5128]
                        mov              qword ptr [rbp + 5080], rax
                        lea              rdi, [rbp + 5072]
                        movabs           rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n319_var_ref_α
n318_call_β:            mov              r11, 223;                            jmp   cal_key$2F3_step
                        .size            n318_call_bx, .-n318_call_bx
                        .type            n319_var_ref_bx, @function
n319_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:         mov              r11, 224
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx;         jmp   n320_lit_integer_α
                        .size            n319_var_ref_bx, .-n319_var_ref_bx
                        .type            n320_lit_integer_bx, @function
n320_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_integer_α:     mov              r11, 225
                        mov              qword ptr [rbp + 5040], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_698_0]
                        mov              qword ptr [rbp + 5048], rax;         jmp   n321_call_α
.Llit_integer_α_698_0:  .quad            0
                        .size            n320_lit_integer_bx, .-n320_lit_integer_bx
                        .type            n321_call_bx, @function
n321_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_call_α:            mov              r11, 226
                        mov              rax, qword ptr [rbp + 5024]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 5032]
                        mov              qword ptr [rbp + 4984], rax
                        lea              rdi, [rbp + 4976]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4960], rax
                        mov              qword ptr [rbp + 4968], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n321_call_β:            mov              r11, 226;                            jmp   cal_key$2F3_step
                        .size            n321_call_bx, .-n321_call_bx
                        .type            n322_var_ref_bx, @function
n322_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5504], rax
                        mov              qword ptr [rbp + 5512], rdx;         jmp   n323_lit_string_α
                        .size            n322_var_ref_bx, .-n322_var_ref_bx
                        .type            n323_lit_string_bx, @function
n323_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      mov              r11, 228
                        mov              qword ptr [rbp + 5520], 2            # result
                        mov              dword ptr [rbp + 5524], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_702_0]
                        mov              qword ptr [rbp + 5528], rax;         jmp   n324_call_α
.Llit_string_α_702_0:   .quad            .Llit_string_α_702_0_s
.Llit_string_α_702_0_s: .string          "jul"
                        .size            n323_lit_string_bx, .-n323_lit_string_bx
                        .type            n324_call_bx, @function
n324_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_call_α:            mov              r11, 229
                        mov              rax, qword ptr [rbp + 5504]
                        mov              qword ptr [rbp + 5456], rax
                        mov              rax, qword ptr [rbp + 5512]
                        mov              qword ptr [rbp + 5464], rax
                        lea              rdi, [rbp + 5456]
                        mov              rsi, qword ptr [rip + .Lcall_α_703_2]
                                                                              jmp   .Lcall_α_703_3
.Lcall_α_703_2:         .quad            .Lcall_α_703_2_s
.Lcall_α_703_2_s:       .string          "jul"
.Lcall_α_703_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5440], rax
                        mov              qword ptr [rbp + 5448], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n325_var_ref_α
n324_call_β:            mov              r11, 229;                            jmp   cal_key$2F3_step
                        .size            n324_call_bx, .-n324_call_bx
                        .type            n325_var_ref_bx, @function
n325_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 5408], rax
                        mov              qword ptr [rbp + 5416], rdx;         jmp   n326_lit_integer_α
                        .size            n325_var_ref_bx, .-n325_var_ref_bx
                        .type            n326_lit_integer_bx, @function
n326_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_integer_α:     mov              r11, 231
                        mov              qword ptr [rbp + 5424], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_706_0]
                        mov              qword ptr [rbp + 5432], rax;         jmp   n327_call_α
.Llit_integer_α_706_0:  .quad            5
                        .size            n326_lit_integer_bx, .-n326_lit_integer_bx
                        .type            n327_call_bx, @function
n327_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_call_α:            mov              r11, 232
                        mov              rax, qword ptr [rbp + 5408]
                        mov              qword ptr [rbp + 5360], rax
                        mov              rax, qword ptr [rbp + 5416]
                        mov              qword ptr [rbp + 5368], rax
                        lea              rdi, [rbp + 5360]
                        movabs           rsi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n328_var_ref_α
n327_call_β:            mov              r11, 232;                            jmp   cal_key$2F3_step
                        .size            n327_call_bx, .-n327_call_bx
                        .type            n328_var_ref_bx, @function
n328_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5312], rax
                        mov              qword ptr [rbp + 5320], rdx;         jmp   n329_lit_integer_α
                        .size            n328_var_ref_bx, .-n328_var_ref_bx
                        .type            n329_lit_integer_bx, @function
n329_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_integer_α:     mov              r11, 234
                        mov              qword ptr [rbp + 5328], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_710_0]
                        mov              qword ptr [rbp + 5336], rax;         jmp   n330_call_α
.Llit_integer_α_710_0:  .quad            0
                        .size            n329_lit_integer_bx, .-n329_lit_integer_bx
                        .type            n330_call_bx, @function
n330_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_call_α:            mov              r11, 235
                        mov              rax, qword ptr [rbp + 5312]
                        mov              qword ptr [rbp + 5264], rax
                        mov              rax, qword ptr [rbp + 5320]
                        mov              qword ptr [rbp + 5272], rax
                        lea              rdi, [rbp + 5264]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n330_call_β:            mov              r11, 235;                            jmp   cal_key$2F3_step
                        .size            n330_call_bx, .-n330_call_bx
                        .type            n331_var_ref_bx, @function
n331_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:         mov              r11, 236
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx;         jmp   n332_lit_string_α
                        .size            n331_var_ref_bx, .-n331_var_ref_bx
                        .type            n332_lit_string_bx, @function
n332_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:      mov              r11, 237
                        mov              qword ptr [rbp + 5808], 2            # result
                        mov              dword ptr [rbp + 5812], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_714_0]
                        mov              qword ptr [rbp + 5816], rax;         jmp   n333_call_α
.Llit_string_α_714_0:   .quad            .Llit_string_α_714_0_s
.Llit_string_α_714_0_s: .string          "aug"
                        .size            n332_lit_string_bx, .-n332_lit_string_bx
                        .type            n333_call_bx, @function
n333_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_call_α:            mov              r11, 238
                        mov              rax, qword ptr [rbp + 5792]
                        mov              qword ptr [rbp + 5744], rax
                        mov              rax, qword ptr [rbp + 5800]
                        mov              qword ptr [rbp + 5752], rax
                        lea              rdi, [rbp + 5744]
                        mov              rsi, qword ptr [rip + .Lcall_α_715_2]
                                                                              jmp   .Lcall_α_715_3
.Lcall_α_715_2:         .quad            .Lcall_α_715_2_s
.Lcall_α_715_2_s:       .string          "aug"
.Lcall_α_715_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5728], rax
                        mov              qword ptr [rbp + 5736], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n334_var_ref_α
n333_call_β:            mov              r11, 238;                            jmp   cal_key$2F3_step
                        .size            n333_call_bx, .-n333_call_bx
                        .type            n334_var_ref_bx, @function
n334_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:         mov              r11, 239
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 5696], rax
                        mov              qword ptr [rbp + 5704], rdx;         jmp   n335_lit_integer_α
                        .size            n334_var_ref_bx, .-n334_var_ref_bx
                        .type            n335_lit_integer_bx, @function
n335_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_integer_α:     mov              r11, 240
                        mov              qword ptr [rbp + 5712], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_718_0]
                        mov              qword ptr [rbp + 5720], rax;         jmp   n336_call_α
.Llit_integer_α_718_0:  .quad            1
                        .size            n335_lit_integer_bx, .-n335_lit_integer_bx
                        .type            n336_call_bx, @function
n336_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_call_α:            mov              r11, 241
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 5648], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 5656], rax
                        lea              rdi, [rbp + 5648]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5632], rax
                        mov              qword ptr [rbp + 5640], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n337_var_ref_α
n336_call_β:            mov              r11, 241;                            jmp   cal_key$2F3_step
                        .size            n336_call_bx, .-n336_call_bx
                        .type            n337_var_ref_bx, @function
n337_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_var_ref_α:         mov              r11, 242
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx;         jmp   n338_lit_integer_α
                        .size            n337_var_ref_bx, .-n337_var_ref_bx
                        .type            n338_lit_integer_bx, @function
n338_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_integer_α:     mov              r11, 243
                        mov              qword ptr [rbp + 5616], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_722_0]
                        mov              qword ptr [rbp + 5624], rax;         jmp   n339_call_α
.Llit_integer_α_722_0:  .quad            0
                        .size            n338_lit_integer_bx, .-n338_lit_integer_bx
                        .type            n339_call_bx, @function
n339_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_call_α:            mov              r11, 244
                        mov              rax, qword ptr [rbp + 5600]
                        mov              qword ptr [rbp + 5552], rax
                        mov              rax, qword ptr [rbp + 5608]
                        mov              qword ptr [rbp + 5560], rax
                        lea              rdi, [rbp + 5552]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5536], rax
                        mov              qword ptr [rbp + 5544], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n339_call_β:            mov              r11, 244;                            jmp   cal_key$2F3_step
                        .size            n339_call_bx, .-n339_call_bx
                        .type            n340_var_ref_bx, @function
n340_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:         mov              r11, 245
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6080], rax
                        mov              qword ptr [rbp + 6088], rdx;         jmp   n341_lit_string_α
                        .size            n340_var_ref_bx, .-n340_var_ref_bx
                        .type            n341_lit_string_bx, @function
n341_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:      mov              r11, 246
                        mov              qword ptr [rbp + 6096], 2            # result
                        mov              dword ptr [rbp + 6100], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_726_0]
                        mov              qword ptr [rbp + 6104], rax;         jmp   n342_call_α
.Llit_string_α_726_0:   .quad            .Llit_string_α_726_0_s
.Llit_string_α_726_0_s: .string          "sep"
                        .size            n341_lit_string_bx, .-n341_lit_string_bx
                        .type            n342_call_bx, @function
n342_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_call_α:            mov              r11, 247
                        mov              rax, qword ptr [rbp + 6080]
                        mov              qword ptr [rbp + 6032], rax
                        mov              rax, qword ptr [rbp + 6088]
                        mov              qword ptr [rbp + 6040], rax
                        lea              rdi, [rbp + 6032]
                        mov              rsi, qword ptr [rip + .Lcall_α_727_2]
                                                                              jmp   .Lcall_α_727_3
.Lcall_α_727_2:         .quad            .Lcall_α_727_2_s
.Lcall_α_727_2_s:       .string          "sep"
.Lcall_α_727_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n343_var_ref_α
n342_call_β:            mov              r11, 247;                            jmp   cal_key$2F3_step
                        .size            n342_call_bx, .-n342_call_bx
                        .type            n343_var_ref_bx, @function
n343_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_var_ref_α:         mov              r11, 248
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 5984], rax
                        mov              qword ptr [rbp + 5992], rdx;         jmp   n344_lit_integer_α
                        .size            n343_var_ref_bx, .-n343_var_ref_bx
                        .type            n344_lit_integer_bx, @function
n344_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_integer_α:     mov              r11, 249
                        mov              qword ptr [rbp + 6000], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_730_0]
                        mov              qword ptr [rbp + 6008], rax;         jmp   n345_call_α
.Llit_integer_α_730_0:  .quad            4
                        .size            n344_lit_integer_bx, .-n344_lit_integer_bx
                        .type            n345_call_bx, @function
n345_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_call_α:            mov              r11, 250
                        mov              rax, qword ptr [rbp + 5984]
                        mov              qword ptr [rbp + 5936], rax
                        mov              rax, qword ptr [rbp + 5992]
                        mov              qword ptr [rbp + 5944], rax
                        lea              rdi, [rbp + 5936]
                        movabs           rsi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n346_var_ref_α
n345_call_β:            mov              r11, 250;                            jmp   cal_key$2F3_step
                        .size            n345_call_bx, .-n345_call_bx
                        .type            n346_var_ref_bx, @function
n346_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:         mov              r11, 251
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5888], rax
                        mov              qword ptr [rbp + 5896], rdx;         jmp   n347_lit_integer_α
                        .size            n346_var_ref_bx, .-n346_var_ref_bx
                        .type            n347_lit_integer_bx, @function
n347_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_integer_α:     mov              r11, 252
                        mov              qword ptr [rbp + 5904], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_734_0]
                        mov              qword ptr [rbp + 5912], rax;         jmp   n348_call_α
.Llit_integer_α_734_0:  .quad            0
                        .size            n347_lit_integer_bx, .-n347_lit_integer_bx
                        .type            n348_call_bx, @function
n348_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_call_α:            mov              r11, 253
                        mov              rax, qword ptr [rbp + 5888]
                        mov              qword ptr [rbp + 5840], rax
                        mov              rax, qword ptr [rbp + 5896]
                        mov              qword ptr [rbp + 5848], rax
                        lea              rdi, [rbp + 5840]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5824], rax
                        mov              qword ptr [rbp + 5832], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n348_call_β:            mov              r11, 253;                            jmp   cal_key$2F3_step
                        .size            n348_call_bx, .-n348_call_bx
                        .type            n349_var_ref_bx, @function
n349_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:         mov              r11, 254
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6368], rax
                        mov              qword ptr [rbp + 6376], rdx;         jmp   n350_lit_string_α
                        .size            n349_var_ref_bx, .-n349_var_ref_bx
                        .type            n350_lit_string_bx, @function
n350_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:      mov              r11, 255
                        mov              qword ptr [rbp + 6384], 2            # result
                        mov              dword ptr [rbp + 6388], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_738_0]
                        mov              qword ptr [rbp + 6392], rax;         jmp   n351_call_α
.Llit_string_α_738_0:   .quad            .Llit_string_α_738_0_s
.Llit_string_α_738_0_s: .string          "oct"
                        .size            n350_lit_string_bx, .-n350_lit_string_bx
                        .type            n351_call_bx, @function
n351_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_call_α:            mov              r11, 256
                        mov              rax, qword ptr [rbp + 6368]
                        mov              qword ptr [rbp + 6320], rax
                        mov              rax, qword ptr [rbp + 6376]
                        mov              qword ptr [rbp + 6328], rax
                        lea              rdi, [rbp + 6320]
                        mov              rsi, qword ptr [rip + .Lcall_α_739_2]
                                                                              jmp   .Lcall_α_739_3
.Lcall_α_739_2:         .quad            .Lcall_α_739_2_s
.Lcall_α_739_2_s:       .string          "oct"
.Lcall_α_739_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6304], rax
                        mov              qword ptr [rbp + 6312], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n352_var_ref_α
n351_call_β:            mov              r11, 256;                            jmp   cal_key$2F3_step
                        .size            n351_call_bx, .-n351_call_bx
                        .type            n352_var_ref_bx, @function
n352_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:         mov              r11, 257
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6272], rax
                        mov              qword ptr [rbp + 6280], rdx;         jmp   n353_lit_integer_α
                        .size            n352_var_ref_bx, .-n352_var_ref_bx
                        .type            n353_lit_integer_bx, @function
n353_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_integer_α:     mov              r11, 258
                        mov              qword ptr [rbp + 6288], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_742_0]
                        mov              qword ptr [rbp + 6296], rax;         jmp   n354_call_α
.Llit_integer_α_742_0:  .quad            6
                        .size            n353_lit_integer_bx, .-n353_lit_integer_bx
                        .type            n354_call_bx, @function
n354_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_call_α:            mov              r11, 259
                        mov              rax, qword ptr [rbp + 6272]
                        mov              qword ptr [rbp + 6224], rax
                        mov              rax, qword ptr [rbp + 6280]
                        mov              qword ptr [rbp + 6232], rax
                        lea              rdi, [rbp + 6224]
                        movabs           rsi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6208], rax
                        mov              qword ptr [rbp + 6216], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n355_var_ref_α
n354_call_β:            mov              r11, 259;                            jmp   cal_key$2F3_step
                        .size            n354_call_bx, .-n354_call_bx
                        .type            n355_var_ref_bx, @function
n355_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:         mov              r11, 260
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6176], rax
                        mov              qword ptr [rbp + 6184], rdx;         jmp   n356_lit_integer_α
                        .size            n355_var_ref_bx, .-n355_var_ref_bx
                        .type            n356_lit_integer_bx, @function
n356_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_integer_α:     mov              r11, 261
                        mov              qword ptr [rbp + 6192], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_746_0]
                        mov              qword ptr [rbp + 6200], rax;         jmp   n357_call_α
.Llit_integer_α_746_0:  .quad            0
                        .size            n356_lit_integer_bx, .-n356_lit_integer_bx
                        .type            n357_call_bx, @function
n357_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_call_α:            mov              r11, 262
                        mov              rax, qword ptr [rbp + 6176]
                        mov              qword ptr [rbp + 6128], rax
                        mov              rax, qword ptr [rbp + 6184]
                        mov              qword ptr [rbp + 6136], rax
                        lea              rdi, [rbp + 6128]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6112], rax
                        mov              qword ptr [rbp + 6120], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n357_call_β:            mov              r11, 262;                            jmp   cal_key$2F3_step
                        .size            n357_call_bx, .-n357_call_bx
                        .type            n358_var_ref_bx, @function
n358_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:         mov              r11, 263
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6656], rax
                        mov              qword ptr [rbp + 6664], rdx;         jmp   n359_lit_string_α
                        .size            n358_var_ref_bx, .-n358_var_ref_bx
                        .type            n359_lit_string_bx, @function
n359_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:      mov              r11, 264
                        mov              qword ptr [rbp + 6672], 2            # result
                        mov              dword ptr [rbp + 6676], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_750_0]
                        mov              qword ptr [rbp + 6680], rax;         jmp   n360_call_α
.Llit_string_α_750_0:   .quad            .Llit_string_α_750_0_s
.Llit_string_α_750_0_s: .string          "nov"
                        .size            n359_lit_string_bx, .-n359_lit_string_bx
                        .type            n360_call_bx, @function
n360_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_call_α:            mov              r11, 265
                        mov              rax, qword ptr [rbp + 6656]
                        mov              qword ptr [rbp + 6608], rax
                        mov              rax, qword ptr [rbp + 6664]
                        mov              qword ptr [rbp + 6616], rax
                        lea              rdi, [rbp + 6608]
                        mov              rsi, qword ptr [rip + .Lcall_α_751_2]
                                                                              jmp   .Lcall_α_751_3
.Lcall_α_751_2:         .quad            .Lcall_α_751_2_s
.Lcall_α_751_2_s:       .string          "nov"
.Lcall_α_751_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6592], rax
                        mov              qword ptr [rbp + 6600], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n361_var_ref_α
n360_call_β:            mov              r11, 265;                            jmp   cal_key$2F3_step
                        .size            n360_call_bx, .-n360_call_bx
                        .type            n361_var_ref_bx, @function
n361_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:         mov              r11, 266
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx;         jmp   n362_lit_integer_α
                        .size            n361_var_ref_bx, .-n361_var_ref_bx
                        .type            n362_lit_integer_bx, @function
n362_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_integer_α:     mov              r11, 267
                        mov              qword ptr [rbp + 6576], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_754_0]
                        mov              qword ptr [rbp + 6584], rax;         jmp   n363_call_α
.Llit_integer_α_754_0:  .quad            2
                        .size            n362_lit_integer_bx, .-n362_lit_integer_bx
                        .type            n363_call_bx, @function
n363_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_call_α:            mov              r11, 268
                        mov              rax, qword ptr [rbp + 6560]
                        mov              qword ptr [rbp + 6512], rax
                        mov              rax, qword ptr [rbp + 6568]
                        mov              qword ptr [rbp + 6520], rax
                        lea              rdi, [rbp + 6512]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6496], rax
                        mov              qword ptr [rbp + 6504], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n364_var_ref_α
n363_call_β:            mov              r11, 268;                            jmp   cal_key$2F3_step
                        .size            n363_call_bx, .-n363_call_bx
                        .type            n364_var_ref_bx, @function
n364_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:         mov              r11, 269
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6464], rax
                        mov              qword ptr [rbp + 6472], rdx;         jmp   n365_lit_integer_α
                        .size            n364_var_ref_bx, .-n364_var_ref_bx
                        .type            n365_lit_integer_bx, @function
n365_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_integer_α:     mov              r11, 270
                        mov              qword ptr [rbp + 6480], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_758_0]
                        mov              qword ptr [rbp + 6488], rax;         jmp   n366_call_α
.Llit_integer_α_758_0:  .quad            0
                        .size            n365_lit_integer_bx, .-n365_lit_integer_bx
                        .type            n366_call_bx, @function
n366_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_call_α:            mov              r11, 271
                        mov              rax, qword ptr [rbp + 6464]
                        mov              qword ptr [rbp + 6416], rax
                        mov              rax, qword ptr [rbp + 6472]
                        mov              qword ptr [rbp + 6424], rax
                        lea              rdi, [rbp + 6416]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n366_call_β:            mov              r11, 271;                            jmp   cal_key$2F3_step
                        .size            n366_call_bx, .-n366_call_bx
                        .type            n367_var_ref_bx, @function
n367_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:         mov              r11, 272
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx;         jmp   n368_lit_string_α
                        .size            n367_var_ref_bx, .-n367_var_ref_bx
                        .type            n368_lit_string_bx, @function
n368_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:      mov              r11, 273
                        mov              qword ptr [rbp + 6960], 2            # result
                        mov              dword ptr [rbp + 6964], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_762_0]
                        mov              qword ptr [rbp + 6968], rax;         jmp   n369_call_α
.Llit_string_α_762_0:   .quad            .Llit_string_α_762_0_s
.Llit_string_α_762_0_s: .string          "dec"
                        .size            n368_lit_string_bx, .-n368_lit_string_bx
                        .type            n369_call_bx, @function
n369_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_call_α:            mov              r11, 274
                        mov              rax, qword ptr [rbp + 6944]
                        mov              qword ptr [rbp + 6896], rax
                        mov              rax, qword ptr [rbp + 6952]
                        mov              qword ptr [rbp + 6904], rax
                        lea              rdi, [rbp + 6896]
                        mov              rsi, qword ptr [rip + .Lcall_α_763_2]
                                                                              jmp   .Lcall_α_763_3
.Lcall_α_763_2:         .quad            .Lcall_α_763_2_s
.Lcall_α_763_2_s:       .string          "dec"
.Lcall_α_763_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n370_var_ref_α
n369_call_β:            mov              r11, 274;                            jmp   cal_key$2F3_step
                        .size            n369_call_bx, .-n369_call_bx
                        .type            n370_var_ref_bx, @function
n370_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_var_ref_α:         mov              r11, 275
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6848], rax
                        mov              qword ptr [rbp + 6856], rdx;         jmp   n371_lit_integer_α
                        .size            n370_var_ref_bx, .-n370_var_ref_bx
                        .type            n371_lit_integer_bx, @function
n371_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_integer_α:     mov              r11, 276
                        mov              qword ptr [rbp + 6864], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_766_0]
                        mov              qword ptr [rbp + 6872], rax;         jmp   n372_call_α
.Llit_integer_α_766_0:  .quad            4
                        .size            n371_lit_integer_bx, .-n371_lit_integer_bx
                        .type            n372_call_bx, @function
n372_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:            mov              r11, 277
                        mov              rax, qword ptr [rbp + 6848]
                        mov              qword ptr [rbp + 6800], rax
                        mov              rax, qword ptr [rbp + 6856]
                        mov              qword ptr [rbp + 6808], rax
                        lea              rdi, [rbp + 6800]
                        movabs           rsi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n373_var_ref_α
n372_call_β:            mov              r11, 277;                            jmp   cal_key$2F3_step
                        .size            n372_call_bx, .-n372_call_bx
                        .type            n373_var_ref_bx, @function
n373_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx;         jmp   n374_lit_integer_α
                        .size            n373_var_ref_bx, .-n373_var_ref_bx
                        .type            n374_lit_integer_bx, @function
n374_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_integer_α:     mov              r11, 279
                        mov              qword ptr [rbp + 6768], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_770_0]
                        mov              qword ptr [rbp + 6776], rax;         jmp   n375_call_α
.Llit_integer_α_770_0:  .quad            0
                        .size            n374_lit_integer_bx, .-n374_lit_integer_bx
                        .type            n375_call_bx, @function
n375_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_call_α:            mov              r11, 280
                        mov              rax, qword ptr [rbp + 6752]
                        mov              qword ptr [rbp + 6704], rax
                        mov              rax, qword ptr [rbp + 6760]
                        mov              qword ptr [rbp + 6712], rax
                        lea              rdi, [rbp + 6704]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n375_call_β:            mov              r11, 280;                            jmp   cal_key$2F3_step
                        .size            n375_call_bx, .-n375_call_bx
                        .type            n376_var_ref_bx, @function
n376_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_var_ref_α:         mov              r11, 281
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7232], rax
                        mov              qword ptr [rbp + 7240], rdx;         jmp   n377_lit_string_α
                        .size            n376_var_ref_bx, .-n376_var_ref_bx
                        .type            n377_lit_string_bx, @function
n377_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:      mov              r11, 282
                        mov              qword ptr [rbp + 7248], 2            # result
                        mov              dword ptr [rbp + 7252], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_774_0]
                        mov              qword ptr [rbp + 7256], rax;         jmp   n378_call_α
.Llit_string_α_774_0:   .quad            .Llit_string_α_774_0_s
.Llit_string_α_774_0_s: .string          "January"
                        .size            n377_lit_string_bx, .-n377_lit_string_bx
                        .type            n378_call_bx, @function
n378_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:            mov              r11, 283
                        mov              rax, qword ptr [rbp + 7232]
                        mov              qword ptr [rbp + 7184], rax
                        mov              rax, qword ptr [rbp + 7240]
                        mov              qword ptr [rbp + 7192], rax
                        lea              rdi, [rbp + 7184]
                        mov              rsi, qword ptr [rip + .Lcall_α_775_2]
                                                                              jmp   .Lcall_α_775_3
.Lcall_α_775_2:         .quad            .Lcall_α_775_2_s
.Lcall_α_775_2_s:       .string          "January"
.Lcall_α_775_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7168], rax
                        mov              qword ptr [rbp + 7176], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n379_var_ref_α
n378_call_β:            mov              r11, 283;                            jmp   cal_key$2F3_step
                        .size            n378_call_bx, .-n378_call_bx
                        .type            n379_var_ref_bx, @function
n379_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_var_ref_α:         mov              r11, 284
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7136], rax
                        mov              qword ptr [rbp + 7144], rdx;         jmp   n380_lit_integer_α
                        .size            n379_var_ref_bx, .-n379_var_ref_bx
                        .type            n380_lit_integer_bx, @function
n380_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_integer_α:     mov              r11, 285
                        mov              qword ptr [rbp + 7152], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_778_0]
                        mov              qword ptr [rbp + 7160], rax;         jmp   n381_call_α
.Llit_integer_α_778_0:  .quad            6
                        .size            n380_lit_integer_bx, .-n380_lit_integer_bx
                        .type            n381_call_bx, @function
n381_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_call_α:            mov              r11, 286
                        mov              rax, qword ptr [rbp + 7136]
                        mov              qword ptr [rbp + 7088], rax
                        mov              rax, qword ptr [rbp + 7144]
                        mov              qword ptr [rbp + 7096], rax
                        lea              rdi, [rbp + 7088]
                        movabs           rsi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7072], rax
                        mov              qword ptr [rbp + 7080], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n382_var_ref_α
n381_call_β:            mov              r11, 286;                            jmp   cal_key$2F3_step
                        .size            n381_call_bx, .-n381_call_bx
                        .type            n382_var_ref_bx, @function
n382_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_var_ref_α:         mov              r11, 287
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7040], rax
                        mov              qword ptr [rbp + 7048], rdx;         jmp   n383_lit_integer_α
                        .size            n382_var_ref_bx, .-n382_var_ref_bx
                        .type            n383_lit_integer_bx, @function
n383_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_integer_α:     mov              r11, 288
                        mov              qword ptr [rbp + 7056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_782_0]
                        mov              qword ptr [rbp + 7064], rax;         jmp   n384_call_α
.Llit_integer_α_782_0:  .quad            1
                        .size            n383_lit_integer_bx, .-n383_lit_integer_bx
                        .type            n384_call_bx, @function
n384_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_call_α:            mov              r11, 289
                        mov              rax, qword ptr [rbp + 7040]
                        mov              qword ptr [rbp + 6992], rax
                        mov              rax, qword ptr [rbp + 7048]
                        mov              qword ptr [rbp + 7000], rax
                        lea              rdi, [rbp + 6992]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6976], rax
                        mov              qword ptr [rbp + 6984], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n384_call_β:            mov              r11, 289;                            jmp   cal_key$2F3_step
                        .size            n384_call_bx, .-n384_call_bx
                        .type            n385_var_ref_bx, @function
n385_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_var_ref_α:         mov              r11, 290
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx;         jmp   n386_lit_string_α
                        .size            n385_var_ref_bx, .-n385_var_ref_bx
                        .type            n386_lit_string_bx, @function
n386_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:      mov              r11, 291
                        mov              qword ptr [rbp + 7536], 2            # result
                        mov              dword ptr [rbp + 7540], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_786_0]
                        mov              qword ptr [rbp + 7544], rax;         jmp   n387_call_α
.Llit_string_α_786_0:   .quad            .Llit_string_α_786_0_s
.Llit_string_α_786_0_s: .string          "February"
                        .size            n386_lit_string_bx, .-n386_lit_string_bx
                        .type            n387_call_bx, @function
n387_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_call_α:            mov              r11, 292
                        mov              rax, qword ptr [rbp + 7520]
                        mov              qword ptr [rbp + 7472], rax
                        mov              rax, qword ptr [rbp + 7528]
                        mov              qword ptr [rbp + 7480], rax
                        lea              rdi, [rbp + 7472]
                        mov              rsi, qword ptr [rip + .Lcall_α_787_2]
                                                                              jmp   .Lcall_α_787_3
.Lcall_α_787_2:         .quad            .Lcall_α_787_2_s
.Lcall_α_787_2_s:       .string          "February"
.Lcall_α_787_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7456], rax
                        mov              qword ptr [rbp + 7464], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n388_var_ref_α
n387_call_β:            mov              r11, 292;                            jmp   cal_key$2F3_step
                        .size            n387_call_bx, .-n387_call_bx
                        .type            n388_var_ref_bx, @function
n388_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_var_ref_α:         mov              r11, 293
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx;         jmp   n389_lit_integer_α
                        .size            n388_var_ref_bx, .-n388_var_ref_bx
                        .type            n389_lit_integer_bx, @function
n389_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_integer_α:     mov              r11, 294
                        mov              qword ptr [rbp + 7440], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_790_0]
                        mov              qword ptr [rbp + 7448], rax;         jmp   n390_call_α
.Llit_integer_α_790_0:  .quad            2
                        .size            n389_lit_integer_bx, .-n389_lit_integer_bx
                        .type            n390_call_bx, @function
n390_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_call_α:            mov              r11, 295
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 7376], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 7384], rax
                        lea              rdi, [rbp + 7376]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7360], rax
                        mov              qword ptr [rbp + 7368], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n391_var_ref_α
n390_call_β:            mov              r11, 295;                            jmp   cal_key$2F3_step
                        .size            n390_call_bx, .-n390_call_bx
                        .type            n391_var_ref_bx, @function
n391_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_var_ref_α:         mov              r11, 296
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7328], rax
                        mov              qword ptr [rbp + 7336], rdx;         jmp   n392_lit_integer_α
                        .size            n391_var_ref_bx, .-n391_var_ref_bx
                        .type            n392_lit_integer_bx, @function
n392_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_integer_α:     mov              r11, 297
                        mov              qword ptr [rbp + 7344], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_794_0]
                        mov              qword ptr [rbp + 7352], rax;         jmp   n393_call_α
.Llit_integer_α_794_0:  .quad            1
                        .size            n392_lit_integer_bx, .-n392_lit_integer_bx
                        .type            n393_call_bx, @function
n393_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_call_α:            mov              r11, 298
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 7280], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 7288], rax
                        lea              rdi, [rbp + 7280]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7264], rax
                        mov              qword ptr [rbp + 7272], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n393_call_β:            mov              r11, 298;                            jmp   cal_key$2F3_step
                        .size            n393_call_bx, .-n393_call_bx
                        .type            n394_var_ref_bx, @function
n394_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_var_ref_α:         mov              r11, 299
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7808], rax
                        mov              qword ptr [rbp + 7816], rdx;         jmp   n395_lit_string_α
                        .size            n394_var_ref_bx, .-n394_var_ref_bx
                        .type            n395_lit_string_bx, @function
n395_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_string_α:      mov              r11, 300
                        mov              qword ptr [rbp + 7824], 2            # result
                        mov              dword ptr [rbp + 7828], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_798_0]
                        mov              qword ptr [rbp + 7832], rax;         jmp   n396_call_α
.Llit_string_α_798_0:   .quad            .Llit_string_α_798_0_s
.Llit_string_α_798_0_s: .string          "March"
                        .size            n395_lit_string_bx, .-n395_lit_string_bx
                        .type            n396_call_bx, @function
n396_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_call_α:            mov              r11, 301
                        mov              rax, qword ptr [rbp + 7808]
                        mov              qword ptr [rbp + 7760], rax
                        mov              rax, qword ptr [rbp + 7816]
                        mov              qword ptr [rbp + 7768], rax
                        lea              rdi, [rbp + 7760]
                        mov              rsi, qword ptr [rip + .Lcall_α_799_2]
                                                                              jmp   .Lcall_α_799_3
.Lcall_α_799_2:         .quad            .Lcall_α_799_2_s
.Lcall_α_799_2_s:       .string          "March"
.Lcall_α_799_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7744], rax
                        mov              qword ptr [rbp + 7752], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n397_var_ref_α
n396_call_β:            mov              r11, 301;                            jmp   cal_key$2F3_step
                        .size            n396_call_bx, .-n396_call_bx
                        .type            n397_var_ref_bx, @function
n397_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_var_ref_α:         mov              r11, 302
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7712], rax
                        mov              qword ptr [rbp + 7720], rdx;         jmp   n398_lit_integer_α
                        .size            n397_var_ref_bx, .-n397_var_ref_bx
                        .type            n398_lit_integer_bx, @function
n398_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_integer_α:     mov              r11, 303
                        mov              qword ptr [rbp + 7728], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_802_0]
                        mov              qword ptr [rbp + 7736], rax;         jmp   n399_call_α
.Llit_integer_α_802_0:  .quad            2
                        .size            n398_lit_integer_bx, .-n398_lit_integer_bx
                        .type            n399_call_bx, @function
n399_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_call_α:            mov              r11, 304
                        mov              rax, qword ptr [rbp + 7712]
                        mov              qword ptr [rbp + 7664], rax
                        mov              rax, qword ptr [rbp + 7720]
                        mov              qword ptr [rbp + 7672], rax
                        lea              rdi, [rbp + 7664]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n400_var_ref_α
n399_call_β:            mov              r11, 304;                            jmp   cal_key$2F3_step
                        .size            n399_call_bx, .-n399_call_bx
                        .type            n400_var_ref_bx, @function
n400_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_var_ref_α:         mov              r11, 305
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7616], rax
                        mov              qword ptr [rbp + 7624], rdx;         jmp   n401_lit_integer_α
                        .size            n400_var_ref_bx, .-n400_var_ref_bx
                        .type            n401_lit_integer_bx, @function
n401_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_integer_α:     mov              r11, 306
                        mov              qword ptr [rbp + 7632], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_806_0]
                        mov              qword ptr [rbp + 7640], rax;         jmp   n402_call_α
.Llit_integer_α_806_0:  .quad            0
                        .size            n401_lit_integer_bx, .-n401_lit_integer_bx
                        .type            n402_call_bx, @function
n402_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_call_α:            mov              r11, 307
                        mov              rax, qword ptr [rbp + 7616]
                        mov              qword ptr [rbp + 7568], rax
                        mov              rax, qword ptr [rbp + 7624]
                        mov              qword ptr [rbp + 7576], rax
                        lea              rdi, [rbp + 7568]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n402_call_β:            mov              r11, 307;                            jmp   cal_key$2F3_step
                        .size            n402_call_bx, .-n402_call_bx
                        .type            n403_var_ref_bx, @function
n403_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_var_ref_α:         mov              r11, 308
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 8096], rax
                        mov              qword ptr [rbp + 8104], rdx;         jmp   n404_lit_string_α
                        .size            n403_var_ref_bx, .-n403_var_ref_bx
                        .type            n404_lit_string_bx, @function
n404_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_string_α:      mov              r11, 309
                        mov              qword ptr [rbp + 8112], 2            # result
                        mov              dword ptr [rbp + 8116], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_810_0]
                        mov              qword ptr [rbp + 8120], rax;         jmp   n405_call_α
.Llit_string_α_810_0:   .quad            .Llit_string_α_810_0_s
.Llit_string_α_810_0_s: .string          "April"
                        .size            n404_lit_string_bx, .-n404_lit_string_bx
                        .type            n405_call_bx, @function
n405_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_call_α:            mov              r11, 310
                        mov              rax, qword ptr [rbp + 8096]
                        mov              qword ptr [rbp + 8048], rax
                        mov              rax, qword ptr [rbp + 8104]
                        mov              qword ptr [rbp + 8056], rax
                        lea              rdi, [rbp + 8048]
                        mov              rsi, qword ptr [rip + .Lcall_α_811_2]
                                                                              jmp   .Lcall_α_811_3
.Lcall_α_811_2:         .quad            .Lcall_α_811_2_s
.Lcall_α_811_2_s:       .string          "April"
.Lcall_α_811_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8032], rax
                        mov              qword ptr [rbp + 8040], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n406_var_ref_α
n405_call_β:            mov              r11, 310;                            jmp   cal_key$2F3_step
                        .size            n405_call_bx, .-n405_call_bx
                        .type            n406_var_ref_bx, @function
n406_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_var_ref_α:         mov              r11, 311
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 8000], rax
                        mov              qword ptr [rbp + 8008], rdx;         jmp   n407_lit_integer_α
                        .size            n406_var_ref_bx, .-n406_var_ref_bx
                        .type            n407_lit_integer_bx, @function
n407_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_integer_α:     mov              r11, 312
                        mov              qword ptr [rbp + 8016], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_814_0]
                        mov              qword ptr [rbp + 8024], rax;         jmp   n408_call_α
.Llit_integer_α_814_0:  .quad            5
                        .size            n407_lit_integer_bx, .-n407_lit_integer_bx
                        .type            n408_call_bx, @function
n408_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_call_α:            mov              r11, 313
                        mov              rax, qword ptr [rbp + 8000]
                        mov              qword ptr [rbp + 7952], rax
                        mov              rax, qword ptr [rbp + 8008]
                        mov              qword ptr [rbp + 7960], rax
                        lea              rdi, [rbp + 7952]
                        movabs           rsi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7936], rax
                        mov              qword ptr [rbp + 7944], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n409_var_ref_α
n408_call_β:            mov              r11, 313;                            jmp   cal_key$2F3_step
                        .size            n408_call_bx, .-n408_call_bx
                        .type            n409_var_ref_bx, @function
n409_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_var_ref_α:         mov              r11, 314
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7904], rax
                        mov              qword ptr [rbp + 7912], rdx;         jmp   n410_lit_integer_α
                        .size            n409_var_ref_bx, .-n409_var_ref_bx
                        .type            n410_lit_integer_bx, @function
n410_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_integer_α:     mov              r11, 315
                        mov              qword ptr [rbp + 7920], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_818_0]
                        mov              qword ptr [rbp + 7928], rax;         jmp   n411_call_α
.Llit_integer_α_818_0:  .quad            0
                        .size            n410_lit_integer_bx, .-n410_lit_integer_bx
                        .type            n411_call_bx, @function
n411_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_call_α:            mov              r11, 316
                        mov              rax, qword ptr [rbp + 7904]
                        mov              qword ptr [rbp + 7856], rax
                        mov              rax, qword ptr [rbp + 7912]
                        mov              qword ptr [rbp + 7864], rax
                        lea              rdi, [rbp + 7856]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7840], rax
                        mov              qword ptr [rbp + 7848], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n411_call_β:            mov              r11, 316;                            jmp   cal_key$2F3_step
                        .size            n411_call_bx, .-n411_call_bx
                        .type            n412_var_ref_bx, @function
n412_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_var_ref_α:         mov              r11, 317
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 8384], rax
                        mov              qword ptr [rbp + 8392], rdx;         jmp   n413_lit_string_α
                        .size            n412_var_ref_bx, .-n412_var_ref_bx
                        .type            n413_lit_string_bx, @function
n413_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_string_α:      mov              r11, 318
                        mov              qword ptr [rbp + 8400], 2            # result
                        mov              dword ptr [rbp + 8404], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_822_0]
                        mov              qword ptr [rbp + 8408], rax;         jmp   n414_call_α
.Llit_string_α_822_0:   .quad            .Llit_string_α_822_0_s
.Llit_string_α_822_0_s: .string          "May"
                        .size            n413_lit_string_bx, .-n413_lit_string_bx
                        .type            n414_call_bx, @function
n414_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_call_α:            mov              r11, 319
                        mov              rax, qword ptr [rbp + 8384]
                        mov              qword ptr [rbp + 8336], rax
                        mov              rax, qword ptr [rbp + 8392]
                        mov              qword ptr [rbp + 8344], rax
                        lea              rdi, [rbp + 8336]
                        mov              rsi, qword ptr [rip + .Lcall_α_823_2]
                                                                              jmp   .Lcall_α_823_3
.Lcall_α_823_2:         .quad            .Lcall_α_823_2_s
.Lcall_α_823_2_s:       .string          "May"
.Lcall_α_823_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8320], rax
                        mov              qword ptr [rbp + 8328], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n415_var_ref_α
n414_call_β:            mov              r11, 319;                            jmp   cal_key$2F3_step
                        .size            n414_call_bx, .-n414_call_bx
                        .type            n415_var_ref_bx, @function
n415_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_var_ref_α:         mov              r11, 320
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 8288], rax
                        mov              qword ptr [rbp + 8296], rdx;         jmp   n416_lit_integer_α
                        .size            n415_var_ref_bx, .-n415_var_ref_bx
                        .type            n416_lit_integer_bx, @function
n416_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_integer_α:     mov              r11, 321
                        mov              qword ptr [rbp + 8304], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_826_0]
                        mov              qword ptr [rbp + 8312], rax;         jmp   n417_call_α
.Llit_integer_α_826_0:  .quad            0
                        .size            n416_lit_integer_bx, .-n416_lit_integer_bx
                        .type            n417_call_bx, @function
n417_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_call_α:            mov              r11, 322
                        mov              rax, qword ptr [rbp + 8288]
                        mov              qword ptr [rbp + 8240], rax
                        mov              rax, qword ptr [rbp + 8296]
                        mov              qword ptr [rbp + 8248], rax
                        lea              rdi, [rbp + 8240]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8224], rax
                        mov              qword ptr [rbp + 8232], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n418_var_ref_α
n417_call_β:            mov              r11, 322;                            jmp   cal_key$2F3_step
                        .size            n417_call_bx, .-n417_call_bx
                        .type            n418_var_ref_bx, @function
n418_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_var_ref_α:         mov              r11, 323
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 8192], rax
                        mov              qword ptr [rbp + 8200], rdx;         jmp   n419_lit_integer_α
                        .size            n418_var_ref_bx, .-n418_var_ref_bx
                        .type            n419_lit_integer_bx, @function
n419_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_integer_α:     mov              r11, 324
                        mov              qword ptr [rbp + 8208], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_830_0]
                        mov              qword ptr [rbp + 8216], rax;         jmp   n420_call_α
.Llit_integer_α_830_0:  .quad            0
                        .size            n419_lit_integer_bx, .-n419_lit_integer_bx
                        .type            n420_call_bx, @function
n420_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_call_α:            mov              r11, 325
                        mov              rax, qword ptr [rbp + 8192]
                        mov              qword ptr [rbp + 8144], rax
                        mov              rax, qword ptr [rbp + 8200]
                        mov              qword ptr [rbp + 8152], rax
                        lea              rdi, [rbp + 8144]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8128], rax
                        mov              qword ptr [rbp + 8136], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n420_call_β:            mov              r11, 325;                            jmp   cal_key$2F3_step
                        .size            n420_call_bx, .-n420_call_bx
                        .type            n421_var_ref_bx, @function
n421_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_var_ref_α:         mov              r11, 326
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 8672], rax
                        mov              qword ptr [rbp + 8680], rdx;         jmp   n422_lit_string_α
                        .size            n421_var_ref_bx, .-n421_var_ref_bx
                        .type            n422_lit_string_bx, @function
n422_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      mov              r11, 327
                        mov              qword ptr [rbp + 8688], 2            # result
                        mov              dword ptr [rbp + 8692], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_834_0]
                        mov              qword ptr [rbp + 8696], rax;         jmp   n423_call_α
.Llit_string_α_834_0:   .quad            .Llit_string_α_834_0_s
.Llit_string_α_834_0_s: .string          "June"
                        .size            n422_lit_string_bx, .-n422_lit_string_bx
                        .type            n423_call_bx, @function
n423_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_call_α:            mov              r11, 328
                        mov              rax, qword ptr [rbp + 8672]
                        mov              qword ptr [rbp + 8624], rax
                        mov              rax, qword ptr [rbp + 8680]
                        mov              qword ptr [rbp + 8632], rax
                        lea              rdi, [rbp + 8624]
                        mov              rsi, qword ptr [rip + .Lcall_α_835_2]
                                                                              jmp   .Lcall_α_835_3
.Lcall_α_835_2:         .quad            .Lcall_α_835_2_s
.Lcall_α_835_2_s:       .string          "June"
.Lcall_α_835_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8608], rax
                        mov              qword ptr [rbp + 8616], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n424_var_ref_α
n423_call_β:            mov              r11, 328;                            jmp   cal_key$2F3_step
                        .size            n423_call_bx, .-n423_call_bx
                        .type            n424_var_ref_bx, @function
n424_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_var_ref_α:         mov              r11, 329
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 8576], rax
                        mov              qword ptr [rbp + 8584], rdx;         jmp   n425_lit_integer_α
                        .size            n424_var_ref_bx, .-n424_var_ref_bx
                        .type            n425_lit_integer_bx, @function
n425_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_integer_α:     mov              r11, 330
                        mov              qword ptr [rbp + 8592], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_838_0]
                        mov              qword ptr [rbp + 8600], rax;         jmp   n426_call_α
.Llit_integer_α_838_0:  .quad            3
                        .size            n425_lit_integer_bx, .-n425_lit_integer_bx
                        .type            n426_call_bx, @function
n426_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_call_α:            mov              r11, 331
                        mov              rax, qword ptr [rbp + 8576]
                        mov              qword ptr [rbp + 8528], rax
                        mov              rax, qword ptr [rbp + 8584]
                        mov              qword ptr [rbp + 8536], rax
                        lea              rdi, [rbp + 8528]
                        movabs           rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8512], rax
                        mov              qword ptr [rbp + 8520], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n427_var_ref_α
n426_call_β:            mov              r11, 331;                            jmp   cal_key$2F3_step
                        .size            n426_call_bx, .-n426_call_bx
                        .type            n427_var_ref_bx, @function
n427_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_var_ref_α:         mov              r11, 332
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 8480], rax
                        mov              qword ptr [rbp + 8488], rdx;         jmp   n428_lit_integer_α
                        .size            n427_var_ref_bx, .-n427_var_ref_bx
                        .type            n428_lit_integer_bx, @function
n428_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_integer_α:     mov              r11, 333
                        mov              qword ptr [rbp + 8496], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_842_0]
                        mov              qword ptr [rbp + 8504], rax;         jmp   n429_call_α
.Llit_integer_α_842_0:  .quad            0
                        .size            n428_lit_integer_bx, .-n428_lit_integer_bx
                        .type            n429_call_bx, @function
n429_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_call_α:            mov              r11, 334
                        mov              rax, qword ptr [rbp + 8480]
                        mov              qword ptr [rbp + 8432], rax
                        mov              rax, qword ptr [rbp + 8488]
                        mov              qword ptr [rbp + 8440], rax
                        lea              rdi, [rbp + 8432]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8416], rax
                        mov              qword ptr [rbp + 8424], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n429_call_β:            mov              r11, 334;                            jmp   cal_key$2F3_step
                        .size            n429_call_bx, .-n429_call_bx
                        .type            n430_var_ref_bx, @function
n430_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:         mov              r11, 335
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 8960], rax
                        mov              qword ptr [rbp + 8968], rdx;         jmp   n431_lit_string_α
                        .size            n430_var_ref_bx, .-n430_var_ref_bx
                        .type            n431_lit_string_bx, @function
n431_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:      mov              r11, 336
                        mov              qword ptr [rbp + 8976], 2            # result
                        mov              dword ptr [rbp + 8980], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_846_0]
                        mov              qword ptr [rbp + 8984], rax;         jmp   n432_call_α
.Llit_string_α_846_0:   .quad            .Llit_string_α_846_0_s
.Llit_string_α_846_0_s: .string          "July"
                        .size            n431_lit_string_bx, .-n431_lit_string_bx
                        .type            n432_call_bx, @function
n432_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_call_α:            mov              r11, 337
                        mov              rax, qword ptr [rbp + 8960]
                        mov              qword ptr [rbp + 8912], rax
                        mov              rax, qword ptr [rbp + 8968]
                        mov              qword ptr [rbp + 8920], rax
                        lea              rdi, [rbp + 8912]
                        mov              rsi, qword ptr [rip + .Lcall_α_847_2]
                                                                              jmp   .Lcall_α_847_3
.Lcall_α_847_2:         .quad            .Lcall_α_847_2_s
.Lcall_α_847_2_s:       .string          "July"
.Lcall_α_847_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8896], rax
                        mov              qword ptr [rbp + 8904], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n433_var_ref_α
n432_call_β:            mov              r11, 337;                            jmp   cal_key$2F3_step
                        .size            n432_call_bx, .-n432_call_bx
                        .type            n433_var_ref_bx, @function
n433_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_var_ref_α:         mov              r11, 338
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 8864], rax
                        mov              qword ptr [rbp + 8872], rdx;         jmp   n434_lit_integer_α
                        .size            n433_var_ref_bx, .-n433_var_ref_bx
                        .type            n434_lit_integer_bx, @function
n434_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_integer_α:     mov              r11, 339
                        mov              qword ptr [rbp + 8880], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_850_0]
                        mov              qword ptr [rbp + 8888], rax;         jmp   n435_call_α
.Llit_integer_α_850_0:  .quad            5
                        .size            n434_lit_integer_bx, .-n434_lit_integer_bx
                        .type            n435_call_bx, @function
n435_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_call_α:            mov              r11, 340
                        mov              rax, qword ptr [rbp + 8864]
                        mov              qword ptr [rbp + 8816], rax
                        mov              rax, qword ptr [rbp + 8872]
                        mov              qword ptr [rbp + 8824], rax
                        lea              rdi, [rbp + 8816]
                        movabs           rsi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8800], rax
                        mov              qword ptr [rbp + 8808], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n436_var_ref_α
n435_call_β:            mov              r11, 340;                            jmp   cal_key$2F3_step
                        .size            n435_call_bx, .-n435_call_bx
                        .type            n436_var_ref_bx, @function
n436_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_var_ref_α:         mov              r11, 341
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 8768], rax
                        mov              qword ptr [rbp + 8776], rdx;         jmp   n437_lit_integer_α
                        .size            n436_var_ref_bx, .-n436_var_ref_bx
                        .type            n437_lit_integer_bx, @function
n437_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_integer_α:     mov              r11, 342
                        mov              qword ptr [rbp + 8784], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_854_0]
                        mov              qword ptr [rbp + 8792], rax;         jmp   n438_call_α
.Llit_integer_α_854_0:  .quad            0
                        .size            n437_lit_integer_bx, .-n437_lit_integer_bx
                        .type            n438_call_bx, @function
n438_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_call_α:            mov              r11, 343
                        mov              rax, qword ptr [rbp + 8768]
                        mov              qword ptr [rbp + 8720], rax
                        mov              rax, qword ptr [rbp + 8776]
                        mov              qword ptr [rbp + 8728], rax
                        lea              rdi, [rbp + 8720]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8704], rax
                        mov              qword ptr [rbp + 8712], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n438_call_β:            mov              r11, 343;                            jmp   cal_key$2F3_step
                        .size            n438_call_bx, .-n438_call_bx
                        .type            n439_var_ref_bx, @function
n439_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:         mov              r11, 344
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 9248], rax
                        mov              qword ptr [rbp + 9256], rdx;         jmp   n440_lit_string_α
                        .size            n439_var_ref_bx, .-n439_var_ref_bx
                        .type            n440_lit_string_bx, @function
n440_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_lit_string_α:      mov              r11, 345
                        mov              qword ptr [rbp + 9264], 2            # result
                        mov              dword ptr [rbp + 9268], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_858_0]
                        mov              qword ptr [rbp + 9272], rax;         jmp   n441_call_α
.Llit_string_α_858_0:   .quad            .Llit_string_α_858_0_s
.Llit_string_α_858_0_s: .string          "August"
                        .size            n440_lit_string_bx, .-n440_lit_string_bx
                        .type            n441_call_bx, @function
n441_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_call_α:            mov              r11, 346
                        mov              rax, qword ptr [rbp + 9248]
                        mov              qword ptr [rbp + 9200], rax
                        mov              rax, qword ptr [rbp + 9256]
                        mov              qword ptr [rbp + 9208], rax
                        lea              rdi, [rbp + 9200]
                        mov              rsi, qword ptr [rip + .Lcall_α_859_2]
                                                                              jmp   .Lcall_α_859_3
.Lcall_α_859_2:         .quad            .Lcall_α_859_2_s
.Lcall_α_859_2_s:       .string          "August"
.Lcall_α_859_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9184], rax
                        mov              qword ptr [rbp + 9192], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n442_var_ref_α
n441_call_β:            mov              r11, 346;                            jmp   cal_key$2F3_step
                        .size            n441_call_bx, .-n441_call_bx
                        .type            n442_var_ref_bx, @function
n442_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:         mov              r11, 347
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 9152], rax
                        mov              qword ptr [rbp + 9160], rdx;         jmp   n443_lit_integer_α
                        .size            n442_var_ref_bx, .-n442_var_ref_bx
                        .type            n443_lit_integer_bx, @function
n443_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_lit_integer_α:     mov              r11, 348
                        mov              qword ptr [rbp + 9168], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_862_0]
                        mov              qword ptr [rbp + 9176], rax;         jmp   n444_call_α
.Llit_integer_α_862_0:  .quad            1
                        .size            n443_lit_integer_bx, .-n443_lit_integer_bx
                        .type            n444_call_bx, @function
n444_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_call_α:            mov              r11, 349
                        mov              rax, qword ptr [rbp + 9152]
                        mov              qword ptr [rbp + 9104], rax
                        mov              rax, qword ptr [rbp + 9160]
                        mov              qword ptr [rbp + 9112], rax
                        lea              rdi, [rbp + 9104]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9088], rax
                        mov              qword ptr [rbp + 9096], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n445_var_ref_α
n444_call_β:            mov              r11, 349;                            jmp   cal_key$2F3_step
                        .size            n444_call_bx, .-n444_call_bx
                        .type            n445_var_ref_bx, @function
n445_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:         mov              r11, 350
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 9056], rax
                        mov              qword ptr [rbp + 9064], rdx;         jmp   n446_lit_integer_α
                        .size            n445_var_ref_bx, .-n445_var_ref_bx
                        .type            n446_lit_integer_bx, @function
n446_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_integer_α:     mov              r11, 351
                        mov              qword ptr [rbp + 9072], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_866_0]
                        mov              qword ptr [rbp + 9080], rax;         jmp   n447_call_α
.Llit_integer_α_866_0:  .quad            0
                        .size            n446_lit_integer_bx, .-n446_lit_integer_bx
                        .type            n447_call_bx, @function
n447_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_call_α:            mov              r11, 352
                        mov              rax, qword ptr [rbp + 9056]
                        mov              qword ptr [rbp + 9008], rax
                        mov              rax, qword ptr [rbp + 9064]
                        mov              qword ptr [rbp + 9016], rax
                        lea              rdi, [rbp + 9008]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8992], rax
                        mov              qword ptr [rbp + 9000], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n447_call_β:            mov              r11, 352;                            jmp   cal_key$2F3_step
                        .size            n447_call_bx, .-n447_call_bx
                        .type            n448_var_ref_bx, @function
n448_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_var_ref_α:         mov              r11, 353
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 9536], rax
                        mov              qword ptr [rbp + 9544], rdx;         jmp   n449_lit_string_α
                        .size            n448_var_ref_bx, .-n448_var_ref_bx
                        .type            n449_lit_string_bx, @function
n449_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_string_α:      mov              r11, 354
                        mov              qword ptr [rbp + 9552], 2            # result
                        mov              dword ptr [rbp + 9556], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_870_0]
                        mov              qword ptr [rbp + 9560], rax;         jmp   n450_call_α
.Llit_string_α_870_0:   .quad            .Llit_string_α_870_0_s
.Llit_string_α_870_0_s: .string          "September"
                        .size            n449_lit_string_bx, .-n449_lit_string_bx
                        .type            n450_call_bx, @function
n450_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_call_α:            mov              r11, 355
                        mov              rax, qword ptr [rbp + 9536]
                        mov              qword ptr [rbp + 9488], rax
                        mov              rax, qword ptr [rbp + 9544]
                        mov              qword ptr [rbp + 9496], rax
                        lea              rdi, [rbp + 9488]
                        mov              rsi, qword ptr [rip + .Lcall_α_871_2]
                                                                              jmp   .Lcall_α_871_3
.Lcall_α_871_2:         .quad            .Lcall_α_871_2_s
.Lcall_α_871_2_s:       .string          "September"
.Lcall_α_871_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9472], rax
                        mov              qword ptr [rbp + 9480], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n451_var_ref_α
n450_call_β:            mov              r11, 355;                            jmp   cal_key$2F3_step
                        .size            n450_call_bx, .-n450_call_bx
                        .type            n451_var_ref_bx, @function
n451_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_var_ref_α:         mov              r11, 356
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 9440], rax
                        mov              qword ptr [rbp + 9448], rdx;         jmp   n452_lit_integer_α
                        .size            n451_var_ref_bx, .-n451_var_ref_bx
                        .type            n452_lit_integer_bx, @function
n452_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_integer_α:     mov              r11, 357
                        mov              qword ptr [rbp + 9456], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_874_0]
                        mov              qword ptr [rbp + 9464], rax;         jmp   n453_call_α
.Llit_integer_α_874_0:  .quad            4
                        .size            n452_lit_integer_bx, .-n452_lit_integer_bx
                        .type            n453_call_bx, @function
n453_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_call_α:            mov              r11, 358
                        mov              rax, qword ptr [rbp + 9440]
                        mov              qword ptr [rbp + 9392], rax
                        mov              rax, qword ptr [rbp + 9448]
                        mov              qword ptr [rbp + 9400], rax
                        lea              rdi, [rbp + 9392]
                        movabs           rsi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9376], rax
                        mov              qword ptr [rbp + 9384], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n454_var_ref_α
n453_call_β:            mov              r11, 358;                            jmp   cal_key$2F3_step
                        .size            n453_call_bx, .-n453_call_bx
                        .type            n454_var_ref_bx, @function
n454_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_var_ref_α:         mov              r11, 359
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 9344], rax
                        mov              qword ptr [rbp + 9352], rdx;         jmp   n455_lit_integer_α
                        .size            n454_var_ref_bx, .-n454_var_ref_bx
                        .type            n455_lit_integer_bx, @function
n455_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_lit_integer_α:     mov              r11, 360
                        mov              qword ptr [rbp + 9360], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_878_0]
                        mov              qword ptr [rbp + 9368], rax;         jmp   n456_call_α
.Llit_integer_α_878_0:  .quad            0
                        .size            n455_lit_integer_bx, .-n455_lit_integer_bx
                        .type            n456_call_bx, @function
n456_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_call_α:            mov              r11, 361
                        mov              rax, qword ptr [rbp + 9344]
                        mov              qword ptr [rbp + 9296], rax
                        mov              rax, qword ptr [rbp + 9352]
                        mov              qword ptr [rbp + 9304], rax
                        lea              rdi, [rbp + 9296]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9280], rax
                        mov              qword ptr [rbp + 9288], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n456_call_β:            mov              r11, 361;                            jmp   cal_key$2F3_step
                        .size            n456_call_bx, .-n456_call_bx
                        .type            n457_var_ref_bx, @function
n457_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:         mov              r11, 362
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 9824], rax
                        mov              qword ptr [rbp + 9832], rdx;         jmp   n458_lit_string_α
                        .size            n457_var_ref_bx, .-n457_var_ref_bx
                        .type            n458_lit_string_bx, @function
n458_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_string_α:      mov              r11, 363
                        mov              qword ptr [rbp + 9840], 2            # result
                        mov              dword ptr [rbp + 9844], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_882_0]
                        mov              qword ptr [rbp + 9848], rax;         jmp   n459_call_α
.Llit_string_α_882_0:   .quad            .Llit_string_α_882_0_s
.Llit_string_α_882_0_s: .string          "October"
                        .size            n458_lit_string_bx, .-n458_lit_string_bx
                        .type            n459_call_bx, @function
n459_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_call_α:            mov              r11, 364
                        mov              rax, qword ptr [rbp + 9824]
                        mov              qword ptr [rbp + 9776], rax
                        mov              rax, qword ptr [rbp + 9832]
                        mov              qword ptr [rbp + 9784], rax
                        lea              rdi, [rbp + 9776]
                        mov              rsi, qword ptr [rip + .Lcall_α_883_2]
                                                                              jmp   .Lcall_α_883_3
.Lcall_α_883_2:         .quad            .Lcall_α_883_2_s
.Lcall_α_883_2_s:       .string          "October"
.Lcall_α_883_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9760], rax
                        mov              qword ptr [rbp + 9768], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n460_var_ref_α
n459_call_β:            mov              r11, 364;                            jmp   cal_key$2F3_step
                        .size            n459_call_bx, .-n459_call_bx
                        .type            n460_var_ref_bx, @function
n460_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_var_ref_α:         mov              r11, 365
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 9728], rax
                        mov              qword ptr [rbp + 9736], rdx;         jmp   n461_lit_integer_α
                        .size            n460_var_ref_bx, .-n460_var_ref_bx
                        .type            n461_lit_integer_bx, @function
n461_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_integer_α:     mov              r11, 366
                        mov              qword ptr [rbp + 9744], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_886_0]
                        mov              qword ptr [rbp + 9752], rax;         jmp   n462_call_α
.Llit_integer_α_886_0:  .quad            6
                        .size            n461_lit_integer_bx, .-n461_lit_integer_bx
                        .type            n462_call_bx, @function
n462_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_call_α:            mov              r11, 367
                        mov              rax, qword ptr [rbp + 9728]
                        mov              qword ptr [rbp + 9680], rax
                        mov              rax, qword ptr [rbp + 9736]
                        mov              qword ptr [rbp + 9688], rax
                        lea              rdi, [rbp + 9680]
                        movabs           rsi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9664], rax
                        mov              qword ptr [rbp + 9672], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n463_var_ref_α
n462_call_β:            mov              r11, 367;                            jmp   cal_key$2F3_step
                        .size            n462_call_bx, .-n462_call_bx
                        .type            n463_var_ref_bx, @function
n463_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_var_ref_α:         mov              r11, 368
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 9632], rax
                        mov              qword ptr [rbp + 9640], rdx;         jmp   n464_lit_integer_α
                        .size            n463_var_ref_bx, .-n463_var_ref_bx
                        .type            n464_lit_integer_bx, @function
n464_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_integer_α:     mov              r11, 369
                        mov              qword ptr [rbp + 9648], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_890_0]
                        mov              qword ptr [rbp + 9656], rax;         jmp   n465_call_α
.Llit_integer_α_890_0:  .quad            0
                        .size            n464_lit_integer_bx, .-n464_lit_integer_bx
                        .type            n465_call_bx, @function
n465_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_call_α:            mov              r11, 370
                        mov              rax, qword ptr [rbp + 9632]
                        mov              qword ptr [rbp + 9584], rax
                        mov              rax, qword ptr [rbp + 9640]
                        mov              qword ptr [rbp + 9592], rax
                        lea              rdi, [rbp + 9584]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9568], rax
                        mov              qword ptr [rbp + 9576], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n465_call_β:            mov              r11, 370;                            jmp   cal_key$2F3_step
                        .size            n465_call_bx, .-n465_call_bx
                        .type            n466_var_ref_bx, @function
n466_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n466_var_ref_α:         mov              r11, 371
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 10112], rax
                        mov              qword ptr [rbp + 10120], rdx;        jmp   n467_lit_string_α
                        .size            n466_var_ref_bx, .-n466_var_ref_bx
                        .type            n467_lit_string_bx, @function
n467_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_string_α:      mov              r11, 372
                        mov              qword ptr [rbp + 10128], 2           # result
                        mov              dword ptr [rbp + 10132], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_894_0]
                        mov              qword ptr [rbp + 10136], rax;        jmp   n468_call_α
.Llit_string_α_894_0:   .quad            .Llit_string_α_894_0_s
.Llit_string_α_894_0_s: .string          "November"
                        .size            n467_lit_string_bx, .-n467_lit_string_bx
                        .type            n468_call_bx, @function
n468_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n468_call_α:            mov              r11, 373
                        mov              rax, qword ptr [rbp + 10112]
                        mov              qword ptr [rbp + 10064], rax
                        mov              rax, qword ptr [rbp + 10120]
                        mov              qword ptr [rbp + 10072], rax
                        lea              rdi, [rbp + 10064]
                        mov              rsi, qword ptr [rip + .Lcall_α_895_2]
                                                                              jmp   .Lcall_α_895_3
.Lcall_α_895_2:         .quad            .Lcall_α_895_2_s
.Lcall_α_895_2_s:       .string          "November"
.Lcall_α_895_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 10048], rax
                        mov              qword ptr [rbp + 10056], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n469_var_ref_α
n468_call_β:            mov              r11, 373;                            jmp   cal_key$2F3_step
                        .size            n468_call_bx, .-n468_call_bx
                        .type            n469_var_ref_bx, @function
n469_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n469_var_ref_α:         mov              r11, 374
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 10016], rax
                        mov              qword ptr [rbp + 10024], rdx;        jmp   n470_lit_integer_α
                        .size            n469_var_ref_bx, .-n469_var_ref_bx
                        .type            n470_lit_integer_bx, @function
n470_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n470_lit_integer_α:     mov              r11, 375
                        mov              qword ptr [rbp + 10032], 3           # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_898_0]
                        mov              qword ptr [rbp + 10040], rax;        jmp   n471_call_α
.Llit_integer_α_898_0:  .quad            2
                        .size            n470_lit_integer_bx, .-n470_lit_integer_bx
                        .type            n471_call_bx, @function
n471_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n471_call_α:            mov              r11, 376
                        mov              rax, qword ptr [rbp + 10016]
                        mov              qword ptr [rbp + 9968], rax
                        mov              rax, qword ptr [rbp + 10024]
                        mov              qword ptr [rbp + 9976], rax
                        lea              rdi, [rbp + 9968]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9952], rax
                        mov              qword ptr [rbp + 9960], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n472_var_ref_α
n471_call_β:            mov              r11, 376;                            jmp   cal_key$2F3_step
                        .size            n471_call_bx, .-n471_call_bx
                        .type            n472_var_ref_bx, @function
n472_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n472_var_ref_α:         mov              r11, 377
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 9920], rax
                        mov              qword ptr [rbp + 9928], rdx;         jmp   n473_lit_integer_α
                        .size            n472_var_ref_bx, .-n472_var_ref_bx
                        .type            n473_lit_integer_bx, @function
n473_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n473_lit_integer_α:     mov              r11, 378
                        mov              qword ptr [rbp + 9936], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_902_0]
                        mov              qword ptr [rbp + 9944], rax;         jmp   n474_call_α
.Llit_integer_α_902_0:  .quad            0
                        .size            n473_lit_integer_bx, .-n473_lit_integer_bx
                        .type            n474_call_bx, @function
n474_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n474_call_α:            mov              r11, 379
                        mov              rax, qword ptr [rbp + 9920]
                        mov              qword ptr [rbp + 9872], rax
                        mov              rax, qword ptr [rbp + 9928]
                        mov              qword ptr [rbp + 9880], rax
                        lea              rdi, [rbp + 9872]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9856], rax
                        mov              qword ptr [rbp + 9864], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n474_call_β:            mov              r11, 379;                            jmp   cal_key$2F3_step
                        .size            n474_call_bx, .-n474_call_bx
                        .type            n475_var_ref_bx, @function
n475_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n475_var_ref_α:         mov              r11, 380
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 10400], rax
                        mov              qword ptr [rbp + 10408], rdx;        jmp   n476_lit_string_α
                        .size            n475_var_ref_bx, .-n475_var_ref_bx
                        .type            n476_lit_string_bx, @function
n476_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_string_α:      mov              r11, 381
                        mov              qword ptr [rbp + 10416], 2           # result
                        mov              dword ptr [rbp + 10420], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_906_0]
                        mov              qword ptr [rbp + 10424], rax;        jmp   n477_call_α
.Llit_string_α_906_0:   .quad            .Llit_string_α_906_0_s
.Llit_string_α_906_0_s: .string          "December"
                        .size            n476_lit_string_bx, .-n476_lit_string_bx
                        .type            n477_call_bx, @function
n477_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n477_call_α:            mov              r11, 382
                        mov              rax, qword ptr [rbp + 10400]
                        mov              qword ptr [rbp + 10352], rax
                        mov              rax, qword ptr [rbp + 10408]
                        mov              qword ptr [rbp + 10360], rax
                        lea              rdi, [rbp + 10352]
                        mov              rsi, qword ptr [rip + .Lcall_α_907_2]
                                                                              jmp   .Lcall_α_907_3
.Lcall_α_907_2:         .quad            .Lcall_α_907_2_s
.Lcall_α_907_2_s:       .string          "December"
.Lcall_α_907_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 10336], rax
                        mov              qword ptr [rbp + 10344], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n478_var_ref_α
n477_call_β:            mov              r11, 382;                            jmp   cal_key$2F3_step
                        .size            n477_call_bx, .-n477_call_bx
                        .type            n478_var_ref_bx, @function
n478_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:         mov              r11, 383
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 10304], rax
                        mov              qword ptr [rbp + 10312], rdx;        jmp   n479_lit_integer_α
                        .size            n478_var_ref_bx, .-n478_var_ref_bx
                        .type            n479_lit_integer_bx, @function
n479_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_integer_α:     mov              r11, 384
                        mov              qword ptr [rbp + 10320], 3           # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_910_0]
                        mov              qword ptr [rbp + 10328], rax;        jmp   n480_call_α
.Llit_integer_α_910_0:  .quad            4
                        .size            n479_lit_integer_bx, .-n479_lit_integer_bx
                        .type            n480_call_bx, @function
n480_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n480_call_α:            mov              r11, 385
                        mov              rax, qword ptr [rbp + 10304]
                        mov              qword ptr [rbp + 10256], rax
                        mov              rax, qword ptr [rbp + 10312]
                        mov              qword ptr [rbp + 10264], rax
                        lea              rdi, [rbp + 10256]
                        movabs           rsi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 10240], rax
                        mov              qword ptr [rbp + 10248], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   n481_var_ref_α
n480_call_β:            mov              r11, 385;                            jmp   cal_key$2F3_step
                        .size            n480_call_bx, .-n480_call_bx
                        .type            n481_var_ref_bx, @function
n481_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n481_var_ref_α:         mov              r11, 386
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 10208], rax
                        mov              qword ptr [rbp + 10216], rdx;        jmp   n482_lit_integer_α
                        .size            n481_var_ref_bx, .-n481_var_ref_bx
                        .type            n482_lit_integer_bx, @function
n482_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n482_lit_integer_α:     mov              r11, 387
                        mov              qword ptr [rbp + 10224], 3           # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_914_0]
                        mov              qword ptr [rbp + 10232], rax;        jmp   n483_call_α
.Llit_integer_α_914_0:  .quad            0
                        .size            n482_lit_integer_bx, .-n482_lit_integer_bx
                        .type            n483_call_bx, @function
n483_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n483_call_α:            mov              r11, 388
                        mov              rax, qword ptr [rbp + 10208]
                        mov              qword ptr [rbp + 10160], rax
                        mov              rax, qword ptr [rbp + 10216]
                        mov              qword ptr [rbp + 10168], rax
                        lea              rdi, [rbp + 10160]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 10144], rax
                        mov              qword ptr [rbp + 10152], rdx
                        cmp              al, 104;                             je    cal_key$2F3_step
                                                                              jmp   cal_key$2F3_γ
n483_call_β:            mov              r11, 388;                            jmp   cal_key$2F3_step
                        .size            n483_call_bx, .-n483_call_bx
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_step:
                        mov              rdi, qword ptr [rbp + 10448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 10464], 0
                        mov              rax, qword ptr [rbp + 10456]
                        test             rax, rax
                                                                              je    cal_key$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt1:
                        lea              rax, [rip + cal_key$2F3_alt2]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n169_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt2:
                        lea              rax, [rip + cal_key$2F3_alt3]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n178_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt3:
                        lea              rax, [rip + cal_key$2F3_alt4]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n187_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt4:
                        lea              rax, [rip + cal_key$2F3_alt5]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n196_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt5:
                        lea              rax, [rip + cal_key$2F3_alt6]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n205_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt6:
                        lea              rax, [rip + cal_key$2F3_alt7]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n214_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt7:
                        lea              rax, [rip + cal_key$2F3_alt8]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n223_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt8:
                        lea              rax, [rip + cal_key$2F3_alt9]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n232_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt9:
                        lea              rax, [rip + cal_key$2F3_alt10]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n241_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt10:
                        lea              rax, [rip + cal_key$2F3_alt11]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n250_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt11:
                        lea              rax, [rip + cal_key$2F3_alt12]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n259_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt12:
                        lea              rax, [rip + cal_key$2F3_alt13]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n268_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt13:
                        lea              rax, [rip + cal_key$2F3_alt14]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n277_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt14:
                        lea              rax, [rip + cal_key$2F3_alt15]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n286_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt15:
                        lea              rax, [rip + cal_key$2F3_alt16]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n295_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt16:
                        lea              rax, [rip + cal_key$2F3_alt17]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n304_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt17:
                        lea              rax, [rip + cal_key$2F3_alt18]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n313_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt18:
                        lea              rax, [rip + cal_key$2F3_alt19]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n322_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt19:
                        lea              rax, [rip + cal_key$2F3_alt20]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n331_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt20:
                        lea              rax, [rip + cal_key$2F3_alt21]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n340_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt21:
                        lea              rax, [rip + cal_key$2F3_alt22]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n349_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt22:
                        lea              rax, [rip + cal_key$2F3_alt23]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n358_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt23:
                        lea              rax, [rip + cal_key$2F3_alt24]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n367_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt24:
                        lea              rax, [rip + cal_key$2F3_alt25]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n376_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt25:
                        lea              rax, [rip + cal_key$2F3_alt26]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n385_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt26:
                        lea              rax, [rip + cal_key$2F3_alt27]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n394_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt27:
                        lea              rax, [rip + cal_key$2F3_alt28]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n403_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt28:
                        lea              rax, [rip + cal_key$2F3_alt29]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n412_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt29:
                        lea              rax, [rip + cal_key$2F3_alt30]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n421_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt30:
                        lea              rax, [rip + cal_key$2F3_alt31]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n430_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt31:
                        lea              rax, [rip + cal_key$2F3_alt32]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n439_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt32:
                        lea              rax, [rip + cal_key$2F3_alt33]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n448_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt33:
                        lea              rax, [rip + cal_key$2F3_alt34]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n457_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt34:
                        lea              rax, [rip + cal_key$2F3_alt35]
                        mov              qword ptr [rbp + 10456], rax
                                                                              jmp   n466_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_alt35:
                        xor              eax, eax
                        mov              qword ptr [rbp + 10456], rax
                        mov              r13, qword ptr [rbp + 10472]
                                                                              jmp   n475_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_β:
                        test             r15, r15
                                                                              jne   cal_key$2F3_ω
                        mov              rax, qword ptr [rbp + 10464]
                        mov              qword ptr [rbp + 10464], 0
                        test             rax, rax
                                                                              jne   cal_key$2F3_βres
                                                                              jmp   cal_key$2F3_step
cal_key$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 10488]
                        mov              rax, qword ptr [rbp + 10472]
                        cmp              r13, rax;                            je    cal_key$2F3_altdet
                        lea              rdx, [rip + cal_key$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 10504];        jmp   rcx
cal_key$2F3_altdet:     xor              eax, eax
                        lea              rsp, [rbp + 10512]
                        mov              rbp, qword ptr [rbp + 10504];        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
cal_key$2F3_ω:
                        mov              rcx, qword ptr [rbp + 10496]
                        mov              r13, qword ptr [rbp + 10472]
                        lea              rsp, [rbp + 10512]
                        mov              rbp, qword ptr [rbp + 10504];        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__compute_it$2F5:
                        sub              rsp, 3824
                        mov              qword ptr [rsp + 3800], rcx
                        mov              qword ptr [rsp + 3808], rdx
                        mov              qword ptr [rsp + 3816], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 3824]
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3784], r13
                        mov              qword ptr [rsp + 3776], 0
                        mov              qword ptr [rsp + 3768], 0
                        mov              qword ptr [rsp + 3760], r12
                        mov              rdi, rsp
                        mov              esi, 3616
                        mov              edx, 3760
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 5
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
compute_it$2F5_α_body:
                        .type            n916_var_ref_bx, @function
n916_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n916_var_ref_α:         mov              r11, 389
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx;         jmp   n917_var_ref_α
                        .size            n916_var_ref_bx, .-n916_var_ref_bx
                        .type            n917_var_ref_bx, @function
n917_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n917_var_ref_α:         mov              r11, 390
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3616]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx;         jmp   n918_call_α
                        .size            n917_var_ref_bx, .-n917_var_ref_bx
                        .type            n918_call_bx, @function
n918_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n918_call_α:            mov              r11, 391
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3560], rax
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3544], rax
                        lea              rdi, [rbp + 3536]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n919_var_ref_α
n918_call_β:            mov              r11, 391;                            jmp   compute_it$2F5_step
                        .size            n918_call_bx, .-n918_call_bx
                        .type            n919_var_ref_bx, @function
n919_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n919_var_ref_α:         mov              r11, 392
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx;         jmp   n920_var_ref_α
                        .size            n919_var_ref_bx, .-n919_var_ref_bx
                        .type            n920_var_ref_bx, @function
n920_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n920_var_ref_α:         mov              r11, 393
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3712]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx;         jmp   n921_call_α
                        .size            n920_var_ref_bx, .-n920_var_ref_bx
                        .type            n921_call_bx, @function
n921_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n921_call_α:            mov              r11, 394
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3464], rax
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3448], rax
                        lea              rdi, [rbp + 3440]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n922_var_ref_α
n921_call_β:            mov              r11, 394;                            jmp   compute_it$2F5_step
                        .size            n921_call_bx, .-n921_call_bx
                        .type            n922_var_ref_bx, @function
n922_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n922_var_ref_α:         mov              r11, 395
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx;         jmp   n923_var_ref_α
                        .size            n922_var_ref_bx, .-n922_var_ref_bx
                        .type            n923_var_ref_bx, @function
n923_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n923_var_ref_α:         mov              r11, 396
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx;         jmp   n924_call_α
                        .size            n923_var_ref_bx, .-n923_var_ref_bx
                        .type            n924_call_bx, @function
n924_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n924_call_α:            mov              r11, 397
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3352], rax
                        lea              rdi, [rbp + 3344]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n925_var_ref_α
n924_call_β:            mov              r11, 397;                            jmp   compute_it$2F5_step
                        .size            n924_call_bx, .-n924_call_bx
                        .type            n925_var_ref_bx, @function
n925_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n925_var_ref_α:         mov              r11, 398
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx;         jmp   n926_var_ref_α
                        .size            n925_var_ref_bx, .-n925_var_ref_bx
                        .type            n926_var_ref_bx, @function
n926_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n926_var_ref_α:         mov              r11, 399
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx;         jmp   n927_call_α
                        .size            n926_var_ref_bx, .-n926_var_ref_bx
                        .type            n927_call_bx, @function
n927_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n927_call_α:            mov              r11, 400
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3272], rax
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3256], rax
                        lea              rdi, [rbp + 3248]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n928_var_ref_α
n927_call_β:            mov              r11, 400;                            jmp   compute_it$2F5_step
                        .size            n927_call_bx, .-n927_call_bx
                        .type            n928_var_ref_bx, @function
n928_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n928_var_ref_α:         mov              r11, 401
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n929_var_ref_α
                        .size            n928_var_ref_bx, .-n928_var_ref_bx
                        .type            n929_var_ref_bx, @function
n929_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n929_var_ref_α:         mov              r11, 402
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3664]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx;         jmp   n930_call_α
                        .size            n929_var_ref_bx, .-n929_var_ref_bx
                        .type            n930_call_bx, @function
n930_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n930_call_α:            mov              r11, 403
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3176], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3160], rax
                        lea              rdi, [rbp + 3152]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n931_var_ref_α
n930_call_β:            mov              r11, 403;                            jmp   compute_it$2F5_step
                        .size            n930_call_bx, .-n930_call_bx
                        .type            n931_var_ref_bx, @function
n931_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n931_var_ref_α:         mov              r11, 404
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3680]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx;         jmp   n932_var_α
                        .size            n931_var_ref_bx, .-n931_var_ref_bx
                        .type            n932_var_bx, @function
n932_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n932_var_α:             mov              r11, 405
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 2888], rax;         jmp   n933_call_α
                        .size            n932_var_bx, .-n932_var_bx
                        .type            n933_call_bx, @function
n933_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n933_call_α:            mov              r11, 406
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2920], rax
                        lea              rdi, [rbp + 2912]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n934_lit_integer_α
n933_call_β:            mov              r11, 406;                            jmp   compute_it$2F5_step
                        .size            n933_call_bx, .-n933_call_bx
                        .type            n934_lit_integer_bx, @function
n934_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n934_lit_integer_α:     mov              r11, 407
                        mov              qword ptr [rbp + 2944], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1034_0]
                        mov              qword ptr [rbp + 2952], rax;         jmp   n935_call_α
.Llit_integer_α_1034_0: .quad            100
                        .size            n934_lit_integer_bx, .-n934_lit_integer_bx
                        .type            n935_call_bx, @function
n935_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n935_call_α:            mov              r11, 408
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2984], rax
                        lea              rdi, [rbp + 2976]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n936_lit_string_α
n935_call_β:            mov              r11, 408;                            jmp   compute_it$2F5_step
                        .size            n935_call_bx, .-n935_call_bx
                        .type            n936_lit_string_bx, @function
n936_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n936_lit_string_α:      mov              r11, 409
                        mov              qword ptr [rbp + 3072], 2            # result
                        mov              dword ptr [rbp + 3076], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1036_0]
                        mov              qword ptr [rbp + 3080], rax;         jmp   n937_call_α
.Llit_string_α_1036_0:  .quad            .Llit_string_α_1036_0_s
.Llit_string_α_1036_0_s:
                        .string          "//"
                        .size            n936_lit_string_bx, .-n936_lit_string_bx
                        .type            n937_call_bx, @function
n937_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n937_call_α:            mov              r11, 410
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3048], rax
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 3032], rax
                        lea              rdi, [rbp + 3024]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n938_call_α
n937_call_β:            mov              r11, 410;                            jmp   compute_it$2F5_step
                        .size            n937_call_bx, .-n937_call_bx
                        .type            n938_call_bx, @function
n938_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n938_call_α:            mov              r11, 411
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2856], rax
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2840], rax
                        lea              rdi, [rbp + 2832]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n939_call_α
n938_call_β:            mov              r11, 411;                            jmp   compute_it$2F5_step
                        .size            n938_call_bx, .-n938_call_bx
                        .type            n939_call_bx, @function
n939_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n939_call_α:            mov              r11, 412
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 3112], rax
                        lea              rdi, [rbp + 3104]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n940_call_α
n939_call_β:            mov              r11, 412;                            jmp   compute_it$2F5_step
                        .size            n939_call_bx, .-n939_call_bx
                        .type            n940_call_bx, @function
n940_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n940_call_α:            mov              r11, 413
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2776], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2760], rax
                        lea              rdi, [rbp + 2752]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n941_var_ref_α
n940_call_β:            mov              r11, 413;                            jmp   compute_it$2F5_step
                        .size            n940_call_bx, .-n940_call_bx
                        .type            n941_var_ref_bx, @function
n941_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n941_var_ref_α:         mov              r11, 414
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n942_var_α
                        .size            n941_var_ref_bx, .-n941_var_ref_bx
                        .type            n942_var_bx, @function
n942_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n942_var_α:             mov              r11, 415
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 2392], rax;         jmp   n943_call_α
                        .size            n942_var_bx, .-n942_var_bx
                        .type            n943_call_bx, @function
n943_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n943_call_α:            mov              r11, 416
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2424], rax
                        lea              rdi, [rbp + 2416]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n944_var_α
n943_call_β:            mov              r11, 416;                            jmp   compute_it$2F5_step
                        .size            n943_call_bx, .-n943_call_bx
                        .type            n944_var_bx, @function
n944_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n944_var_α:             mov              r11, 417
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 2520], rax;         jmp   n945_call_α
                        .size            n944_var_bx, .-n944_var_bx
                        .type            n945_call_bx, @function
n945_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n945_call_α:            mov              r11, 418
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2552], rax
                        lea              rdi, [rbp + 2544]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n946_lit_integer_α
n945_call_β:            mov              r11, 418;                            jmp   compute_it$2F5_step
                        .size            n945_call_bx, .-n945_call_bx
                        .type            n946_lit_integer_bx, @function
n946_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n946_lit_integer_α:     mov              r11, 419
                        mov              qword ptr [rbp + 2576], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1049_0]
                        mov              qword ptr [rbp + 2584], rax;         jmp   n947_call_α
.Llit_integer_α_1049_0: .quad            100
                        .size            n946_lit_integer_bx, .-n946_lit_integer_bx
                        .type            n947_call_bx, @function
n947_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n947_call_α:            mov              r11, 420
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2616], rax
                        lea              rdi, [rbp + 2608]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n948_call_α
n947_call_β:            mov              r11, 420;                            jmp   compute_it$2F5_step
                        .size            n947_call_bx, .-n947_call_bx
                        .type            n948_call_bx, @function
n948_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n948_call_α:            mov              r11, 421
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2488], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2472], rax
                        lea              rdi, [rbp + 2464]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n949_call_α
n948_call_β:            mov              r11, 421;                            jmp   compute_it$2F5_step
                        .size            n948_call_bx, .-n948_call_bx
                        .type            n949_call_bx, @function
n949_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n949_call_α:            mov              r11, 422
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2664], rax
                        lea              rdi, [rbp + 2656]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n950_call_α
n949_call_β:            mov              r11, 422;                            jmp   compute_it$2F5_step
                        .size            n949_call_bx, .-n949_call_bx
                        .type            n950_call_bx, @function
n950_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n950_call_α:            mov              r11, 423
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2344], rax
                        lea              rdi, [rbp + 2336]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n951_call_α
n950_call_β:            mov              r11, 423;                            jmp   compute_it$2F5_step
                        .size            n950_call_bx, .-n950_call_bx
                        .type            n951_call_bx, @function
n951_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n951_call_α:            mov              r11, 424
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2712], rax
                        lea              rdi, [rbp + 2704]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n952_call_α
n951_call_β:            mov              r11, 424;                            jmp   compute_it$2F5_step
                        .size            n951_call_bx, .-n951_call_bx
                        .type            n952_call_bx, @function
n952_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n952_call_α:            mov              r11, 425
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2264], rax
                        lea              rdi, [rbp + 2256]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n953_var_ref_α
n952_call_β:            mov              r11, 425;                            jmp   compute_it$2F5_step
                        .size            n952_call_bx, .-n952_call_bx
                        .type            n953_var_ref_bx, @function
n953_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n953_var_ref_α:         mov              r11, 426
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3632]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n954_var_α
                        .size            n953_var_ref_bx, .-n953_var_ref_bx
                        .type            n954_var_bx, @function
n954_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n954_var_α:             mov              r11, 427
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 808], rax;          jmp   n955_call_α
                        .size            n954_var_bx, .-n954_var_bx
                        .type            n955_call_bx, @function
n955_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n955_call_α:            mov              r11, 428
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n956_lit_integer_α
n955_call_β:            mov              r11, 428;                            jmp   compute_it$2F5_step
                        .size            n955_call_bx, .-n955_call_bx
                        .type            n956_lit_integer_bx, @function
n956_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n956_lit_integer_α:     mov              r11, 429
                        mov              qword ptr [rbp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1061_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n957_call_α
.Llit_integer_α_1061_0: .quad            5
                        .size            n956_lit_integer_bx, .-n956_lit_integer_bx
                        .type            n957_call_bx, @function
n957_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n957_call_α:            mov              r11, 430
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n958_call_α
n957_call_β:            mov              r11, 430;                            jmp   compute_it$2F5_step
                        .size            n957_call_bx, .-n957_call_bx
                        .type            n958_call_bx, @function
n958_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n958_call_α:            mov              r11, 431
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n959_call_α
n958_call_β:            mov              r11, 431;                            jmp   compute_it$2F5_step
                        .size            n958_call_bx, .-n958_call_bx
                        .type            n959_call_bx, @function
n959_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n959_call_α:            mov              r11, 432
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 744]
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
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n960_var_α
n959_call_β:            mov              r11, 432;                            jmp   compute_it$2F5_step
                        .size            n959_call_bx, .-n959_call_bx
                        .type            n960_var_bx, @function
n960_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n960_var_α:             mov              r11, 433
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n961_call_α
                        .size            n960_var_bx, .-n960_var_bx
                        .type            n961_call_bx, @function
n961_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n961_call_α:            mov              r11, 434
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n962_lit_integer_α
n961_call_β:            mov              r11, 434;                            jmp   compute_it$2F5_step
                        .size            n961_call_bx, .-n961_call_bx
                        .type            n962_lit_integer_bx, @function
n962_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n962_lit_integer_α:     mov              r11, 435
                        mov              qword ptr [rbp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1068_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n963_call_α
.Llit_integer_α_1068_0: .quad            4
                        .size            n962_lit_integer_bx, .-n962_lit_integer_bx
                        .type            n963_call_bx, @function
n963_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n963_call_α:            mov              r11, 436
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n964_lit_string_α
n963_call_β:            mov              r11, 436;                            jmp   compute_it$2F5_step
                        .size            n963_call_bx, .-n963_call_bx
                        .type            n964_lit_string_bx, @function
n964_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n964_lit_string_α:      mov              r11, 437
                        mov              qword ptr [rbp + 1232], 2            # result
                        mov              dword ptr [rbp + 1236], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1070_0]
                        mov              qword ptr [rbp + 1240], rax;         jmp   n965_call_α
.Llit_string_α_1070_0:  .quad            .Llit_string_α_1070_0_s
.Llit_string_α_1070_0_s:
                        .string          "//"
                        .size            n964_lit_string_bx, .-n964_lit_string_bx
                        .type            n965_call_bx, @function
n965_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n965_call_α:            mov              r11, 438
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n966_call_α
n965_call_β:            mov              r11, 438;                            jmp   compute_it$2F5_step
                        .size            n965_call_bx, .-n965_call_bx
                        .type            n966_call_bx, @function
n966_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n966_call_α:            mov              r11, 439
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1112]
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
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n967_call_α
n966_call_β:            mov              r11, 439;                            jmp   compute_it$2F5_step
                        .size            n966_call_bx, .-n966_call_bx
                        .type            n967_call_bx, @function
n967_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n967_call_α:            mov              r11, 440
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1264]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n968_call_α
n967_call_β:            mov              r11, 440;                            jmp   compute_it$2F5_step
                        .size            n967_call_bx, .-n967_call_bx
                        .type            n968_call_bx, @function
n968_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n968_call_α:            mov              r11, 441
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 984]
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
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n969_call_α
n968_call_β:            mov              r11, 441;                            jmp   compute_it$2F5_step
                        .size            n968_call_bx, .-n968_call_bx
                        .type            n969_call_bx, @function
n969_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n969_call_α:            mov              r11, 442
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n970_var_α
n969_call_β:            mov              r11, 442;                            jmp   compute_it$2F5_step
                        .size            n969_call_bx, .-n969_call_bx
                        .type            n970_var_bx, @function
n970_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n970_var_α:             mov              r11, 443
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n971_call_α
                        .size            n970_var_bx, .-n970_var_bx
                        .type            n971_call_bx, @function
n971_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n971_call_α:            mov              r11, 444
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1376]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n972_call_α
n971_call_β:            mov              r11, 444;                            jmp   compute_it$2F5_step
                        .size            n971_call_bx, .-n971_call_bx
                        .type            n972_call_bx, @function
n972_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n972_call_α:            mov              r11, 445
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 1352]
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
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n973_call_α
n972_call_β:            mov              r11, 445;                            jmp   compute_it$2F5_step
                        .size            n972_call_bx, .-n972_call_bx
                        .type            n973_call_bx, @function
n973_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n973_call_α:            mov              r11, 446
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1424]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n974_var_α
n973_call_β:            mov              r11, 446;                            jmp   compute_it$2F5_step
                        .size            n973_call_bx, .-n973_call_bx
                        .type            n974_var_bx, @function
n974_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n974_var_α:             mov              r11, 447
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 1528], rax;         jmp   n975_call_α
                        .size            n974_var_bx, .-n974_var_bx
                        .type            n975_call_bx, @function
n975_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n975_call_α:            mov              r11, 448
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1552]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n976_lit_integer_α
n975_call_β:            mov              r11, 448;                            jmp   compute_it$2F5_step
                        .size            n975_call_bx, .-n975_call_bx
                        .type            n976_lit_integer_bx, @function
n976_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n976_lit_integer_α:     mov              r11, 449
                        mov              qword ptr [rbp + 1584], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1084_0]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n977_call_α
.Llit_integer_α_1084_0: .quad            4
                        .size            n976_lit_integer_bx, .-n976_lit_integer_bx
                        .type            n977_call_bx, @function
n977_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n977_call_α:            mov              r11, 450
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1624], rax
                        lea              rdi, [rbp + 1616]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n978_lit_string_α
n977_call_β:            mov              r11, 450;                            jmp   compute_it$2F5_step
                        .size            n977_call_bx, .-n977_call_bx
                        .type            n978_lit_string_bx, @function
n978_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n978_lit_string_α:      mov              r11, 451
                        mov              qword ptr [rbp + 1712], 2            # result
                        mov              dword ptr [rbp + 1716], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1086_0]
                        mov              qword ptr [rbp + 1720], rax;         jmp   n979_call_α
.Llit_string_α_1086_0:  .quad            .Llit_string_α_1086_0_s
.Llit_string_α_1086_0_s:
                        .string          "//"
                        .size            n978_lit_string_bx, .-n978_lit_string_bx
                        .type            n979_call_bx, @function
n979_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n979_call_α:            mov              r11, 452
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1672], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n980_call_α
n979_call_β:            mov              r11, 452;                            jmp   compute_it$2F5_step
                        .size            n979_call_bx, .-n979_call_bx
                        .type            n980_call_bx, @function
n980_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n980_call_α:            mov              r11, 453
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1592]
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
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n981_call_α
n980_call_β:            mov              r11, 453;                            jmp   compute_it$2F5_step
                        .size            n980_call_bx, .-n980_call_bx
                        .type            n981_call_bx, @function
n981_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n981_call_α:            mov              r11, 454
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1752], rax
                        lea              rdi, [rbp + 1744]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n982_call_α
n981_call_β:            mov              r11, 454;                            jmp   compute_it$2F5_step
                        .size            n981_call_bx, .-n981_call_bx
                        .type            n982_call_bx, @function
n982_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n982_call_α:            mov              r11, 455
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n983_call_α
n982_call_β:            mov              r11, 455;                            jmp   compute_it$2F5_step
                        .size            n982_call_bx, .-n982_call_bx
                        .type            n983_call_bx, @function
n983_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n983_call_α:            mov              r11, 456
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 1800], rax
                        lea              rdi, [rbp + 1792]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n984_var_α
n983_call_β:            mov              r11, 456;                            jmp   compute_it$2F5_step
                        .size            n983_call_bx, .-n983_call_bx
                        .type            n984_var_bx, @function
n984_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n984_var_α:             mov              r11, 457
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 1832], rax;         jmp   n985_call_α
                        .size            n984_var_bx, .-n984_var_bx
                        .type            n985_call_bx, @function
n985_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n985_call_α:            mov              r11, 458
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1856]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n986_call_α
n985_call_β:            mov              r11, 458;                            jmp   compute_it$2F5_step
                        .size            n985_call_bx, .-n985_call_bx
                        .type            n986_call_bx, @function
n986_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n986_call_α:            mov              r11, 459
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 1832]
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
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n987_call_α
n986_call_β:            mov              r11, 459;                            jmp   compute_it$2F5_step
                        .size            n986_call_bx, .-n986_call_bx
                        .type            n987_call_bx, @function
n987_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n987_call_α:            mov              r11, 460
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 1912], rax
                        lea              rdi, [rbp + 1904]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n988_var_α
n987_call_β:            mov              r11, 460;                            jmp   compute_it$2F5_step
                        .size            n987_call_bx, .-n987_call_bx
                        .type            n988_var_bx, @function
n988_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n988_var_α:             mov              r11, 461
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 1944], rax;         jmp   n989_call_α
                        .size            n988_var_bx, .-n988_var_bx
                        .type            n989_call_bx, @function
n989_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n989_call_α:            mov              r11, 462
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1976], rax
                        lea              rdi, [rbp + 1968]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n990_call_α
n989_call_β:            mov              r11, 462;                            jmp   compute_it$2F5_step
                        .size            n989_call_bx, .-n989_call_bx
                        .type            n990_call_bx, @function
n990_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n990_call_α:            mov              r11, 463
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 1944]
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
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n991_call_α
n990_call_β:            mov              r11, 463;                            jmp   compute_it$2F5_step
                        .size            n990_call_bx, .-n990_call_bx
                        .type            n991_call_bx, @function
n991_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n991_call_α:            mov              r11, 464
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 2016]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n992_lit_integer_α
n991_call_β:            mov              r11, 464;                            jmp   compute_it$2F5_step
                        .size            n991_call_bx, .-n991_call_bx
                        .type            n992_lit_integer_bx, @function
n992_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n992_lit_integer_α:     mov              r11, 465
                        mov              qword ptr [rbp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1102_0]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n993_call_α
.Llit_integer_α_1102_0: .quad            7
                        .size            n992_lit_integer_bx, .-n992_lit_integer_bx
                        .type            n993_call_bx, @function
n993_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n993_call_α:            mov              r11, 466
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2080]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n994_lit_string_α
n993_call_β:            mov              r11, 466;                            jmp   compute_it$2F5_step
                        .size            n993_call_bx, .-n993_call_bx
                        .type            n994_lit_string_bx, @function
n994_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n994_lit_string_α:      mov              r11, 467
                        mov              qword ptr [rbp + 2176], 2            # result
                        mov              dword ptr [rbp + 2180], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_1104_0]
                        mov              qword ptr [rbp + 2184], rax;         jmp   n995_call_α
.Llit_string_α_1104_0:  .quad            .Llit_string_α_1104_0_s
.Llit_string_α_1104_0_s:
                        .string          "mod"
                        .size            n994_lit_string_bx, .-n994_lit_string_bx
                        .type            n995_call_bx, @function
n995_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n995_call_α:            mov              r11, 468
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2136], rax
                        lea              rdi, [rbp + 2128]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n996_call_α
n995_call_β:            mov              r11, 468;                            jmp   compute_it$2F5_step
                        .size            n995_call_bx, .-n995_call_bx
                        .type            n996_call_bx, @function
n996_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n996_call_α:            mov              r11, 469
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 2056]
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
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n997_call_α
n996_call_β:            mov              r11, 469;                            jmp   compute_it$2F5_step
                        .size            n996_call_bx, .-n996_call_bx
                        .type            n997_call_bx, @function
n997_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n997_call_α:            mov              r11, 470
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 2216], rax
                        lea              rdi, [rbp + 2208]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n998_call_α
n997_call_β:            mov              r11, 470;                            jmp   compute_it$2F5_step
                        .size            n997_call_bx, .-n997_call_bx
                        .type            n998_call_bx, @function
n998_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n998_call_α:            mov              r11, 471
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   n999_var_ref_α
n998_call_β:            mov              r11, 471;                            jmp   compute_it$2F5_step
                        .size            n998_call_bx, .-n998_call_bx
                        .type            n999_var_ref_bx, @function
n999_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n999_var_ref_α:         mov              r11, 472
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3616]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n1000_var_ref_α
                        .size            n999_var_ref_bx, .-n999_var_ref_bx
                        .type            n1000_var_ref_bx, @function
n1000_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1000_var_ref_α:        mov              r11, 473
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3632]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n1001_var_ref_α
                        .size            n1000_var_ref_bx, .-n1000_var_ref_bx
                        .type            n1001_var_ref_bx, @function
n1001_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1001_var_ref_α:        mov              r11, 474
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n1002_var_ref_α
                        .size            n1001_var_ref_bx, .-n1001_var_ref_bx
                        .type            n1002_var_ref_bx, @function
n1002_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1002_var_ref_α:        mov              r11, 475
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3664]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n1003_call_proc_staged_α
                        .size            n1002_var_ref_bx, .-n1002_var_ref_bx
                        .type            n1003_call_proc_staged_bx, @function
n1003_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1003_call_proc_staged_α:
                        mov              r11, 476
                        mov              qword ptr [rbp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1118_200
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1118_201
.Lcall_proc_staged_α_1118_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1118_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1118_202
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1118_203
.Lcall_proc_staged_α_1118_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1118_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1118_204
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_1118_205
.Lcall_proc_staged_α_1118_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1118_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1118_206
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_1118_207
.Lcall_proc_staged_α_1118_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1118_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1118_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1118_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 4
                        mov              rsi, rbp
                        lea              rdx, [rbp + 3824]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_1118_99
                        mov              r10, qword ptr [rbp + 3784]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_1118_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_1118_99
                        mov              rcx, qword ptr [rbp + 3800]
                        mov              rdx, qword ptr [rbp + 3808]
                        lea              rsp, [rbp + 3824]
                        mov              rbp, qword ptr [rbp + 3816];         jmp   rax
.Lcall_proc_staged_α_1118_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1118_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1118_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1118_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1118_3:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1118_21
                        add              rsp, 32
.Lcall_proc_staged_α_1118_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1118_2
.Lcall_proc_staged_α_1118_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 176], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1118_2
.Lcall_proc_staged_α_1118_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1118_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   compute_it$2F5_step
.Lcall_proc_staged_α_1118_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1118_29
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
.Lcall_proc_staged_α_1118_29:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   compute_it$2F5_ret0
n1003_call_proc_staged_β:
                        mov              r11, 476
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1118_22
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1118_22
                        mov              rcx, qword ptr [rbp + 184]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1118_22:
                                                                              jmp   compute_it$2F5_step
.Lcall_proc_staged_α_1118_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    compute_it$2F5_step
                                                                              jmp   compute_it$2F5_ret0
.Lcall_proc_staged_α_1118_0:
                        .quad            .Lcall_proc_staged_α_1118_0_s
.Lcall_proc_staged_α_1118_0_s:
                        .string          "leap_year/4"
                        .size            n1003_call_proc_staged_bx, .-n1003_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
compute_it$2F5_ret0:
                        lea              rax, [rip + n1003_call_proc_staged_β]
                        mov              qword ptr [rbp + 3776], rax
                                                                              jmp   compute_it$2F5_γ
#-----------------------------------------------------------------------------------------------------------------------
compute_it$2F5_step:
                        mov              rdi, qword ptr [rbp + 3760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3776], 0
                        mov              qword ptr [rbp + 3616], 0
                        mov              qword ptr [rbp + 3624], 0
                        mov              qword ptr [rbp + 3712], 0
                        mov              qword ptr [rbp + 3720], 0
                        mov              qword ptr [rbp + 3728], 0
                        mov              qword ptr [rbp + 3736], 0
                        mov              qword ptr [rbp + 3648], 0
                        mov              qword ptr [rbp + 3656], 0
                        mov              qword ptr [rbp + 3664], 0
                        mov              qword ptr [rbp + 3672], 0
                        mov              qword ptr [rbp + 3680], 0
                        mov              qword ptr [rbp + 3688], 0
                        mov              qword ptr [rbp + 3696], 0
                        mov              qword ptr [rbp + 3704], 0
                        mov              qword ptr [rbp + 3632], 0
                        mov              qword ptr [rbp + 3640], 0
                        mov              rax, qword ptr [rbp + 3768]
                        test             rax, rax
                                                                              je    compute_it$2F5_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
compute_it$2F5_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
compute_it$2F5_β:
                        test             r15, r15
                                                                              jne   compute_it$2F5_ω
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3776], 0
                        test             rax, rax
                                                                              jne   compute_it$2F5_βres
                                                                              jmp   compute_it$2F5_step
compute_it$2F5_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
compute_it$2F5_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 3800]
                        mov              rax, qword ptr [rbp + 3784]
                        cmp              r13, rax;                            je    compute_it$2F5_altdet
                        lea              rdx, [rip + compute_it$2F5_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 3816];         jmp   rcx
compute_it$2F5_altdet:  xor              eax, eax
                        lea              rsp, [rbp + 3824]
                        mov              rbp, qword ptr [rbp + 3816];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
compute_it$2F5_ω:
                        mov              rcx, qword ptr [rbp + 3808]
                        mov              r13, qword ptr [rbp + 3784]
                        lea              rsp, [rbp + 3824]
                        mov              rbp, qword ptr [rbp + 3816];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__main$2F0:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 104], r13
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 80], r12
                        mov              rdi, rsp
                        mov              esi, 64
                        mov              edx, 80
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                        .type            n1119_lit_string_bx, @function
n1119_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1119_lit_string_α:     mov              r11, 477
                        mov              qword ptr [rbp + 48], 2              # result
                        mov              dword ptr [rbp + 52], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_1121_0]
                        mov              qword ptr [rbp + 56], rax;           jmp   n1120_call_α
.Llit_string_α_1121_0:  .quad            .Llit_string_α_1121_0_s
.Llit_string_α_1121_0_s:
                        .string          "wall_us/1"
                        .size            n1119_lit_string_bx, .-n1119_lit_string_bx
                        .type            n1120_call_bx, @function
n1120_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1120_call_α:           mov              r11, 478
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        lea              rdi, [rbp + 16]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   main$2F0_step
n1120_call_β:           mov              r11, 478;                            jmp   main$2F0_step
                        .size            n1120_call_bx, .-n1120_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 96], 0
                        mov              rax, qword ptr [rbp + 88]
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
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 96], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 120]
                        mov              rax, qword ptr [rbp + 104]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 136];          jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 128]
                        mov              r13, qword ptr [rbp + 104]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__leap_year$2F4:
                        sub              rsp, 4224
                        mov              qword ptr [rsp + 4200], rcx
                        mov              qword ptr [rsp + 4208], rdx
                        mov              qword ptr [rsp + 4216], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 4224]
                        mov              qword ptr [rsp + 4192], rax
                        mov              qword ptr [rsp + 4184], r13
                        mov              qword ptr [rsp + 4176], 0
                        mov              qword ptr [rsp + 4168], 0
                        mov              qword ptr [rsp + 4160], r12
                        lea              rax, [rip + leap_year$2F4_alt1]
                        mov              qword ptr [rsp + 4168], rax
                        lea              rdi, [rsp + 4160]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 4048
                        mov              edx, 4160
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
leap_year$2F4_α_body:
                        .type            n1123_var_ref_bx, @function
n1123_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1123_var_ref_α:        mov              r11, 479
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n1124_var_ref_α
                        .size            n1123_var_ref_bx, .-n1123_var_ref_bx
                        .type            n1124_var_ref_bx, @function
n1124_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1124_var_ref_α:        mov              r11, 480
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4080]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n1125_call_α
                        .size            n1124_var_ref_bx, .-n1124_var_ref_bx
                        .type            n1125_call_bx, @function
n1125_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1125_call_α:           mov              r11, 481
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1126_var_ref_α
n1125_call_β:           mov              r11, 481;                            jmp   leap_year$2F4_step
                        .size            n1125_call_bx, .-n1125_call_bx
                        .type            n1126_var_ref_bx, @function
n1126_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1126_var_ref_α:        mov              r11, 482
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n1127_var_ref_α
                        .size            n1126_var_ref_bx, .-n1126_var_ref_bx
                        .type            n1127_var_ref_bx, @function
n1127_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1127_var_ref_α:        mov              r11, 483
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4048]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n1128_call_α
                        .size            n1127_var_ref_bx, .-n1127_var_ref_bx
                        .type            n1128_call_bx, @function
n1128_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1128_call_α:           mov              r11, 484
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1129_var_ref_α
n1128_call_β:           mov              r11, 484;                            jmp   leap_year$2F4_step
                        .size            n1128_call_bx, .-n1128_call_bx
                        .type            n1129_var_ref_bx, @function
n1129_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1129_var_ref_α:        mov              r11, 485
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n1130_var_ref_α
                        .size            n1129_var_ref_bx, .-n1129_var_ref_bx
                        .type            n1130_var_ref_bx, @function
n1130_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1130_var_ref_α:        mov              r11, 486
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4096]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n1131_call_α
                        .size            n1130_var_ref_bx, .-n1130_var_ref_bx
                        .type            n1131_call_bx, @function
n1131_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1131_call_α:           mov              r11, 487
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1132_var_ref_α
n1131_call_β:           mov              r11, 487;                            jmp   leap_year$2F4_step
                        .size            n1131_call_bx, .-n1131_call_bx
                        .type            n1132_var_ref_bx, @function
n1132_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1132_var_ref_α:        mov              r11, 488
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n1133_var_ref_α
                        .size            n1132_var_ref_bx, .-n1132_var_ref_bx
                        .type            n1133_var_ref_bx, @function
n1133_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1133_var_ref_α:        mov              r11, 489
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4064]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n1134_call_α
                        .size            n1133_var_ref_bx, .-n1133_var_ref_bx
                        .type            n1134_call_bx, @function
n1134_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1134_call_α:           mov              r11, 490
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1135_lit_integer_α
n1134_call_β:           mov              r11, 490;                            jmp   leap_year$2F4_step
                        .size            n1134_call_bx, .-n1134_call_bx
                        .type            n1135_lit_integer_bx, @function
n1135_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1135_lit_integer_α:    mov              r11, 491
                        mov              qword ptr [rbp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1255_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n1136_call_α
.Llit_integer_α_1255_0: .quad            0
                        .size            n1135_lit_integer_bx, .-n1135_lit_integer_bx
                        .type            n1136_call_bx, @function
n1136_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1136_call_α:           mov              r11, 492
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1137_var_α
n1136_call_β:           mov              r11, 492;                            jmp   leap_year$2F4_step
                        .size            n1136_call_bx, .-n1136_call_bx
                        .type            n1137_var_bx, @function
n1137_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1137_var_α:            mov              r11, 493
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 344], rax;          jmp   n1138_call_α
                        .size            n1137_var_bx, .-n1137_var_bx
                        .type            n1138_call_bx, @function
n1138_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1138_call_α:           mov              r11, 494
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1139_lit_integer_α
n1138_call_β:           mov              r11, 494;                            jmp   leap_year$2F4_step
                        .size            n1138_call_bx, .-n1138_call_bx
                        .type            n1139_lit_integer_bx, @function
n1139_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1139_lit_integer_α:    mov              r11, 495
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1260_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n1140_call_α
.Llit_integer_α_1260_0: .quad            4
                        .size            n1139_lit_integer_bx, .-n1139_lit_integer_bx
                        .type            n1140_call_bx, @function
n1140_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1140_call_α:           mov              r11, 496
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1141_lit_string_α
n1140_call_β:           mov              r11, 496;                            jmp   leap_year$2F4_step
                        .size            n1140_call_bx, .-n1140_call_bx
                        .type            n1141_lit_string_bx, @function
n1141_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1141_lit_string_α:     mov              r11, 497
                        mov              qword ptr [rbp + 528], 2             # result
                        mov              dword ptr [rbp + 532], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_1262_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n1142_call_α
.Llit_string_α_1262_0:  .quad            .Llit_string_α_1262_0_s
.Llit_string_α_1262_0_s:
                        .string          "mod"
                        .size            n1141_lit_string_bx, .-n1141_lit_string_bx
                        .type            n1142_call_bx, @function
n1142_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1142_call_α:           mov              r11, 498
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1143_call_α
n1142_call_β:           mov              r11, 498;                            jmp   leap_year$2F4_step
                        .size            n1142_call_bx, .-n1142_call_bx
                        .type            n1143_call_bx, @function
n1143_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1143_call_α:           mov              r11, 499
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
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
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1144_call_α
n1143_call_β:           mov              r11, 499;                            jmp   leap_year$2F4_step
                        .size            n1143_call_bx, .-n1143_call_bx
                        .type            n1144_call_bx, @function
n1144_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1144_call_α:           mov              r11, 500
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1145_call_α
n1144_call_β:           mov              r11, 500;                            jmp   leap_year$2F4_step
                        .size            n1144_call_bx, .-n1144_call_bx
                        .type            n1145_call_bx, @function
n1145_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1145_call_α:           mov              r11, 501
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
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1146_cut_α
n1145_call_β:           mov              r11, 501;                            jmp   leap_year$2F4_step
                        .size            n1145_call_bx, .-n1145_call_bx
                        .type            n1146_cut_bx, @function
n1146_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1146_cut_α:            mov              r11, 502
                        mov              qword ptr [rbp + 4168], 0
                        mov              qword ptr [rbp + 4176], 0
                        lea              rdi, [rbp + 4160]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n1147_var_ref_α
                        .size            n1146_cut_bx, .-n1146_cut_bx
                        .type            n1147_var_ref_bx, @function
n1147_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1147_var_ref_α:        mov              r11, 503
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4048]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n1148_var_ref_α
                        .size            n1147_var_ref_bx, .-n1147_var_ref_bx
                        .type            n1148_var_ref_bx, @function
n1148_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1148_var_ref_α:        mov              r11, 504
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4064]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n1149_call_proc_staged_α
                        .size            n1148_var_ref_bx, .-n1148_var_ref_bx
                        .type            n1149_call_proc_staged_bx, @function
n1149_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1149_call_proc_staged_α:
                        mov              r11, 505
                        mov              qword ptr [rbp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1274_200
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1274_201
.Lcall_proc_staged_α_1274_200:
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
.Lcall_proc_staged_α_1274_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1274_202
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1274_203
.Lcall_proc_staged_α_1274_202:
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
.Lcall_proc_staged_α_1274_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1274_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1274_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 4224]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_1274_99
                        mov              r10, qword ptr [rbp + 4184]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_1274_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_1274_99
                        mov              rcx, qword ptr [rbp + 4200]
                        mov              rdx, qword ptr [rbp + 4208]
                        lea              rsp, [rbp + 4224]
                        mov              rbp, qword ptr [rbp + 4216];         jmp   rax
.Lcall_proc_staged_α_1274_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1274_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1274_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1274_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1274_3:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1274_21
                        add              rsp, 32
.Lcall_proc_staged_α_1274_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1274_2
.Lcall_proc_staged_α_1274_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 128], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1274_2
.Lcall_proc_staged_α_1274_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1274_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   leap_year$2F4_ω
.Lcall_proc_staged_α_1274_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1274_29
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
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
.Lcall_proc_staged_α_1274_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    leap_year$2F4_ω
                                                                              jmp   leap_year$2F4_ret0
n1149_call_proc_staged_β:
                        mov              r11, 505
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1274_22
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1274_22
                        mov              rcx, qword ptr [rbp + 136]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1274_22:
                                                                              jmp   leap_year$2F4_ω
.Lcall_proc_staged_α_1274_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    leap_year$2F4_ω
                                                                              jmp   leap_year$2F4_ret0
.Lcall_proc_staged_α_1274_0:
                        .quad            .Lcall_proc_staged_α_1274_0_s
.Lcall_proc_staged_α_1274_0_s:
                        .string          "dow/2"
                        .size            n1149_call_proc_staged_bx, .-n1149_call_proc_staged_bx
                        .type            n1150_var_ref_bx, @function
n1150_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1150_var_ref_α:        mov              r11, 506
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx;         jmp   n1151_var_ref_α
                        .size            n1150_var_ref_bx, .-n1150_var_ref_bx
                        .type            n1151_var_ref_bx, @function
n1151_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1151_var_ref_α:        mov              r11, 507
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4080]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n1152_call_α
                        .size            n1151_var_ref_bx, .-n1151_var_ref_bx
                        .type            n1152_call_bx, @function
n1152_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1152_call_α:           mov              r11, 508
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2216], rax
                        lea              rdi, [rbp + 2208]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1153_var_ref_α
n1152_call_β:           mov              r11, 508;                            jmp   leap_year$2F4_step
                        .size            n1152_call_bx, .-n1152_call_bx
                        .type            n1153_var_ref_bx, @function
n1153_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1153_var_ref_α:        mov              r11, 509
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx;         jmp   n1154_var_ref_α
                        .size            n1153_var_ref_bx, .-n1153_var_ref_bx
                        .type            n1154_var_ref_bx, @function
n1154_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1154_var_ref_α:        mov              r11, 510
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4048]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx;         jmp   n1155_call_α
                        .size            n1154_var_ref_bx, .-n1154_var_ref_bx
                        .type            n1155_call_bx, @function
n1155_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1155_call_α:           mov              r11, 511
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                        lea              rdi, [rbp + 2112]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1156_var_ref_α
n1155_call_β:           mov              r11, 511;                            jmp   leap_year$2F4_step
                        .size            n1155_call_bx, .-n1155_call_bx
                        .type            n1156_var_ref_bx, @function
n1156_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1156_var_ref_α:        mov              r11, 512
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx;         jmp   n1157_var_ref_α
                        .size            n1156_var_ref_bx, .-n1156_var_ref_bx
                        .type            n1157_var_ref_bx, @function
n1157_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1157_var_ref_α:        mov              r11, 513
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4112]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n1158_call_α
                        .size            n1157_var_ref_bx, .-n1157_var_ref_bx
                        .type            n1158_call_bx, @function
n1158_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1158_call_α:           mov              r11, 514
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 2016]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1159_var_ref_α
n1158_call_β:           mov              r11, 514;                            jmp   leap_year$2F4_step
                        .size            n1158_call_bx, .-n1158_call_bx
                        .type            n1159_var_ref_bx, @function
n1159_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1159_var_ref_α:        mov              r11, 515
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx;         jmp   n1160_var_ref_α
                        .size            n1159_var_ref_bx, .-n1159_var_ref_bx
                        .type            n1160_var_ref_bx, @function
n1160_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1160_var_ref_α:        mov              r11, 516
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4064]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx;         jmp   n1161_call_α
                        .size            n1160_var_ref_bx, .-n1160_var_ref_bx
                        .type            n1161_call_bx, @function
n1161_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1161_call_α:           mov              r11, 517
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1920]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1162_lit_integer_α
n1161_call_β:           mov              r11, 517;                            jmp   leap_year$2F4_step
                        .size            n1161_call_bx, .-n1161_call_bx
                        .type            n1162_lit_integer_bx, @function
n1162_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1162_lit_integer_α:    mov              r11, 518
                        mov              qword ptr [rbp + 1520], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1295_0]
                        mov              qword ptr [rbp + 1528], rax;         jmp   n1163_call_α
.Llit_integer_α_1295_0: .quad            0
                        .size            n1162_lit_integer_bx, .-n1162_lit_integer_bx
                        .type            n1163_call_bx, @function
n1163_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1163_call_α:           mov              r11, 519
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1832], rax
                        lea              rdi, [rbp + 1824]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1164_var_α
n1163_call_β:           mov              r11, 519;                            jmp   leap_year$2F4_step
                        .size            n1163_call_bx, .-n1163_call_bx
                        .type            n1164_var_bx, @function
n1164_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1164_var_α:            mov              r11, 520
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n1165_call_α
                        .size            n1164_var_bx, .-n1164_var_bx
                        .type            n1165_call_bx, @function
n1165_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1165_call_α:           mov              r11, 521
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1640], rax
                        lea              rdi, [rbp + 1632]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1166_lit_integer_α
n1165_call_β:           mov              r11, 521;                            jmp   leap_year$2F4_step
                        .size            n1165_call_bx, .-n1165_call_bx
                        .type            n1166_lit_integer_bx, @function
n1166_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1166_lit_integer_α:    mov              r11, 522
                        mov              qword ptr [rbp + 1664], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1300_0]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n1167_call_α
.Llit_integer_α_1300_0: .quad            100
                        .size            n1166_lit_integer_bx, .-n1166_lit_integer_bx
                        .type            n1167_call_bx, @function
n1167_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1167_call_α:           mov              r11, 523
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1696]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1168_lit_string_α
n1167_call_β:           mov              r11, 523;                            jmp   leap_year$2F4_step
                        .size            n1167_call_bx, .-n1167_call_bx
                        .type            n1168_lit_string_bx, @function
n1168_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1168_lit_string_α:     mov              r11, 524
                        mov              qword ptr [rbp + 1792], 2            # result
                        mov              dword ptr [rbp + 1796], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_1302_0]
                        mov              qword ptr [rbp + 1800], rax;         jmp   n1169_call_α
.Llit_string_α_1302_0:  .quad            .Llit_string_α_1302_0_s
.Llit_string_α_1302_0_s:
                        .string          "mod"
                        .size            n1168_lit_string_bx, .-n1168_lit_string_bx
                        .type            n1169_call_bx, @function
n1169_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1169_call_α:           mov              r11, 525
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1752], rax
                        lea              rdi, [rbp + 1744]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1170_call_α
n1169_call_β:           mov              r11, 525;                            jmp   leap_year$2F4_step
                        .size            n1169_call_bx, .-n1169_call_bx
                        .type            n1170_call_bx, @function
n1170_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1170_call_α:           mov              r11, 526
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1552]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1171_call_α
n1170_call_β:           mov              r11, 526;                            jmp   leap_year$2F4_step
                        .size            n1170_call_bx, .-n1170_call_bx
                        .type            n1171_call_bx, @function
n1171_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1171_call_α:           mov              r11, 527
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1880], rax
                        lea              rdi, [rbp + 1872]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1172_call_α
n1171_call_β:           mov              r11, 527;                            jmp   leap_year$2F4_step
                        .size            n1171_call_bx, .-n1171_call_bx
                        .type            n1172_call_bx, @function
n1172_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1172_call_α:           mov              r11, 528
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1544]
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
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1173_cut_α
n1172_call_β:           mov              r11, 528;                            jmp   leap_year$2F4_step
                        .size            n1172_call_bx, .-n1172_call_bx
                        .type            n1173_cut_bx, @function
n1173_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1173_cut_α:            mov              r11, 529
                        mov              qword ptr [rbp + 4168], 0
                        mov              qword ptr [rbp + 4176], 0
                        lea              rdi, [rbp + 4160]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n1174_var_ref_α
                        .size            n1173_cut_bx, .-n1173_cut_bx
                        .type            n1174_var_ref_bx, @function
n1174_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1174_var_ref_α:        mov              r11, 530
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4096]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx;         jmp   n1175_var_α
                        .size            n1174_var_ref_bx, .-n1174_var_ref_bx
                        .type            n1175_var_bx, @function
n1175_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1175_var_α:            mov              r11, 531
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n1176_call_α
                        .size            n1175_var_bx, .-n1175_var_bx
                        .type            n1176_call_bx, @function
n1176_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1176_call_α:           mov              r11, 532
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1177_var_α
n1176_call_β:           mov              r11, 532;                            jmp   leap_year$2F4_step
                        .size            n1176_call_bx, .-n1176_call_bx
                        .type            n1177_var_bx, @function
n1177_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1177_var_α:            mov              r11, 533
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n1178_call_α
                        .size            n1177_var_bx, .-n1177_var_bx
                        .type            n1178_call_bx, @function
n1178_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1178_call_α:           mov              r11, 534
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1376]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1179_call_α
n1178_call_β:           mov              r11, 534;                            jmp   leap_year$2F4_step
                        .size            n1178_call_bx, .-n1178_call_bx
                        .type            n1179_call_bx, @function
n1179_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1179_call_α:           mov              r11, 535
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1180_call_α
n1179_call_β:           mov              r11, 535;                            jmp   leap_year$2F4_step
                        .size            n1179_call_bx, .-n1179_call_bx
                        .type            n1180_call_bx, @function
n1180_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1180_call_α:           mov              r11, 536
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1424]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1181_call_α
n1180_call_β:           mov              r11, 536;                            jmp   leap_year$2F4_step
                        .size            n1180_call_bx, .-n1180_call_bx
                        .type            n1181_call_bx, @function
n1181_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1181_call_α:           mov              r11, 537
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              al, 104;                             je    leap_year$2F4_ω
                                                                              jmp   n1182_var_ref_α
n1181_call_β:           mov              r11, 537;                            jmp   leap_year$2F4_ω
                        .size            n1181_call_bx, .-n1181_call_bx
                        .type            n1182_var_ref_bx, @function
n1182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1182_var_ref_α:        mov              r11, 538
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4096]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n1183_var_ref_α
                        .size            n1182_var_ref_bx, .-n1182_var_ref_bx
                        .type            n1183_var_ref_bx, @function
n1183_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1183_var_ref_α:        mov              r11, 539
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4064]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n1184_call_proc_staged_α
                        .size            n1183_var_ref_bx, .-n1183_var_ref_bx
                        .type            n1184_call_proc_staged_bx, @function
n1184_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1184_call_proc_staged_α:
                        mov              r11, 540
                        mov              qword ptr [rbp + 1072], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1325_200
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1325_201
.Lcall_proc_staged_α_1325_200:
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
.Lcall_proc_staged_α_1325_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1325_202
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1325_203
.Lcall_proc_staged_α_1325_202:
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
.Lcall_proc_staged_α_1325_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1325_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1325_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 4224]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_1325_99
                        mov              r10, qword ptr [rbp + 4184]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_1325_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_1325_99
                        mov              rcx, qword ptr [rbp + 4200]
                        mov              rdx, qword ptr [rbp + 4208]
                        lea              rsp, [rbp + 4224]
                        mov              rbp, qword ptr [rbp + 4216];         jmp   rax
.Lcall_proc_staged_α_1325_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1325_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1325_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1325_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1325_3:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1325_21
                        add              rsp, 32
.Lcall_proc_staged_α_1325_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1325_2
.Lcall_proc_staged_α_1325_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1072], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1325_2
.Lcall_proc_staged_α_1325_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1325_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   leap_year$2F4_ω
.Lcall_proc_staged_α_1325_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1325_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
.Lcall_proc_staged_α_1325_29:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    leap_year$2F4_ω
                                                                              jmp   leap_year$2F4_ret1
n1184_call_proc_staged_β:
                        mov              r11, 540
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1325_22
                        mov              rax, qword ptr [rbp + 1072]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1325_22
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1325_22:
                                                                              jmp   leap_year$2F4_ω
.Lcall_proc_staged_α_1325_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    leap_year$2F4_ω
                                                                              jmp   leap_year$2F4_ret1
.Lcall_proc_staged_α_1325_0:
                        .quad            .Lcall_proc_staged_α_1325_0_s
.Lcall_proc_staged_α_1325_0_s:
                        .string          "dow/2"
                        .size            n1184_call_proc_staged_bx, .-n1184_call_proc_staged_bx
                        .type            n1185_var_ref_bx, @function
n1185_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1185_var_ref_α:        mov              r11, 541
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n1186_var_ref_α
                        .size            n1185_var_ref_bx, .-n1185_var_ref_bx
                        .type            n1186_var_ref_bx, @function
n1186_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1186_var_ref_α:        mov              r11, 542
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4080]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx;         jmp   n1187_call_α
                        .size            n1186_var_ref_bx, .-n1186_var_ref_bx
                        .type            n1187_call_bx, @function
n1187_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1187_call_α:           mov              r11, 543
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3176], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3160], rax
                        lea              rdi, [rbp + 3152]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1188_var_ref_α
n1187_call_β:           mov              r11, 543;                            jmp   leap_year$2F4_step
                        .size            n1187_call_bx, .-n1187_call_bx
                        .type            n1188_var_ref_bx, @function
n1188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1188_var_ref_α:        mov              r11, 544
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx;         jmp   n1189_var_ref_α
                        .size            n1188_var_ref_bx, .-n1188_var_ref_bx
                        .type            n1189_var_ref_bx, @function
n1189_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1189_var_ref_α:        mov              r11, 545
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4048]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx;         jmp   n1190_call_α
                        .size            n1189_var_ref_bx, .-n1189_var_ref_bx
                        .type            n1190_call_bx, @function
n1190_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1190_call_α:           mov              r11, 546
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3080], rax
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3064], rax
                        lea              rdi, [rbp + 3056]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1191_var_ref_α
n1190_call_β:           mov              r11, 546;                            jmp   leap_year$2F4_step
                        .size            n1190_call_bx, .-n1190_call_bx
                        .type            n1191_var_ref_bx, @function
n1191_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1191_var_ref_α:        mov              r11, 547
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx;         jmp   n1192_var_ref_α
                        .size            n1191_var_ref_bx, .-n1191_var_ref_bx
                        .type            n1192_var_ref_bx, @function
n1192_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1192_var_ref_α:        mov              r11, 548
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4096]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx;         jmp   n1193_call_α
                        .size            n1192_var_ref_bx, .-n1192_var_ref_bx
                        .type            n1193_call_bx, @function
n1193_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1193_call_α:           mov              r11, 549
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 2984], rax
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2968], rax
                        lea              rdi, [rbp + 2960]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1194_var_ref_α
n1193_call_β:           mov              r11, 549;                            jmp   leap_year$2F4_step
                        .size            n1193_call_bx, .-n1193_call_bx
                        .type            n1194_var_ref_bx, @function
n1194_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1194_var_ref_α:        mov              r11, 550
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx;         jmp   n1195_var_ref_α
                        .size            n1194_var_ref_bx, .-n1194_var_ref_bx
                        .type            n1195_var_ref_bx, @function
n1195_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1195_var_ref_α:        mov              r11, 551
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4064]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx;         jmp   n1196_call_α
                        .size            n1195_var_ref_bx, .-n1195_var_ref_bx
                        .type            n1196_call_bx, @function
n1196_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1196_call_α:           mov              r11, 552
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2888], rax
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2872], rax
                        lea              rdi, [rbp + 2864]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1197_lit_integer_α
n1196_call_β:           mov              r11, 552;                            jmp   leap_year$2F4_step
                        .size            n1196_call_bx, .-n1196_call_bx
                        .type            n1197_lit_integer_bx, @function
n1197_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1197_lit_integer_α:    mov              r11, 553
                        mov              qword ptr [rbp + 2464], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1346_0]
                        mov              qword ptr [rbp + 2472], rax;         jmp   n1198_call_α
.Llit_integer_α_1346_0: .quad            0
                        .size            n1197_lit_integer_bx, .-n1197_lit_integer_bx
                        .type            n1198_call_bx, @function
n1198_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1198_call_α:           mov              r11, 554
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2776], rax
                        lea              rdi, [rbp + 2768]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1199_var_α
n1198_call_β:           mov              r11, 554;                            jmp   leap_year$2F4_step
                        .size            n1198_call_bx, .-n1198_call_bx
                        .type            n1199_var_bx, @function
n1199_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1199_var_α:            mov              r11, 555
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 2552], rax;         jmp   n1200_call_α
                        .size            n1199_var_bx, .-n1199_var_bx
                        .type            n1200_call_bx, @function
n1200_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1200_call_α:           mov              r11, 556
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2584], rax
                        lea              rdi, [rbp + 2576]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1201_lit_integer_α
n1200_call_β:           mov              r11, 556;                            jmp   leap_year$2F4_step
                        .size            n1200_call_bx, .-n1200_call_bx
                        .type            n1201_lit_integer_bx, @function
n1201_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1201_lit_integer_α:    mov              r11, 557
                        mov              qword ptr [rbp + 2608], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1351_0]
                        mov              qword ptr [rbp + 2616], rax;         jmp   n1202_call_α
.Llit_integer_α_1351_0: .quad            400
                        .size            n1201_lit_integer_bx, .-n1201_lit_integer_bx
                        .type            n1202_call_bx, @function
n1202_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1202_call_α:           mov              r11, 558
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2648], rax
                        lea              rdi, [rbp + 2640]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1203_lit_string_α
n1202_call_β:           mov              r11, 558;                            jmp   leap_year$2F4_step
                        .size            n1202_call_bx, .-n1202_call_bx
                        .type            n1203_lit_string_bx, @function
n1203_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1203_lit_string_α:     mov              r11, 559
                        mov              qword ptr [rbp + 2736], 2            # result
                        mov              dword ptr [rbp + 2740], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_1353_0]
                        mov              qword ptr [rbp + 2744], rax;         jmp   n1204_call_α
.Llit_string_α_1353_0:  .quad            .Llit_string_α_1353_0_s
.Llit_string_α_1353_0_s:
                        .string          "mod"
                        .size            n1203_lit_string_bx, .-n1203_lit_string_bx
                        .type            n1204_call_bx, @function
n1204_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1204_call_α:           mov              r11, 560
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2696], rax
                        lea              rdi, [rbp + 2688]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1205_call_α
n1204_call_β:           mov              r11, 560;                            jmp   leap_year$2F4_step
                        .size            n1204_call_bx, .-n1204_call_bx
                        .type            n1205_call_bx, @function
n1205_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1205_call_α:           mov              r11, 561
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2616]
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
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1206_call_α
n1205_call_β:           mov              r11, 561;                            jmp   leap_year$2F4_step
                        .size            n1205_call_bx, .-n1205_call_bx
                        .type            n1206_call_bx, @function
n1206_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1206_call_α:           mov              r11, 562
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2824], rax
                        lea              rdi, [rbp + 2816]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1207_call_α
n1206_call_β:           mov              r11, 562;                            jmp   leap_year$2F4_step
                        .size            n1206_call_bx, .-n1206_call_bx
                        .type            n1207_call_bx, @function
n1207_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1207_call_α:           mov              r11, 563
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2488]
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
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1208_cut_α
n1207_call_β:           mov              r11, 563;                            jmp   leap_year$2F4_step
                        .size            n1207_call_bx, .-n1207_call_bx
                        .type            n1208_cut_bx, @function
n1208_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1208_cut_α:            mov              r11, 564
                        mov              qword ptr [rbp + 4168], 0
                        mov              qword ptr [rbp + 4176], 0
                        lea              rdi, [rbp + 4160]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n1209_var_ref_α
                        .size            n1208_cut_bx, .-n1208_cut_bx
                        .type            n1209_var_ref_bx, @function
n1209_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1209_var_ref_α:        mov              r11, 565
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4048]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx;         jmp   n1210_var_ref_α
                        .size            n1209_var_ref_bx, .-n1209_var_ref_bx
                        .type            n1210_var_ref_bx, @function
n1210_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1210_var_ref_α:        mov              r11, 566
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4064]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n1211_call_proc_staged_α
                        .size            n1210_var_ref_bx, .-n1210_var_ref_bx
                        .type            n1211_call_proc_staged_bx, @function
n1211_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1211_call_proc_staged_α:
                        mov              r11, 567
                        mov              qword ptr [rbp + 2336], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1365_200
                        mov              rax, qword ptr [rbp + 2368]
                        mov              rdx, qword ptr [rbp + 2376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1365_201
.Lcall_proc_staged_α_1365_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2368]
                        mov              rdx, qword ptr [rbp + 2376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1365_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1365_202
                        mov              rax, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1365_203
.Lcall_proc_staged_α_1365_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1365_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1365_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1365_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 4224]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_1365_99
                        mov              r10, qword ptr [rbp + 4184]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_1365_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_1365_99
                        mov              rcx, qword ptr [rbp + 4200]
                        mov              rdx, qword ptr [rbp + 4208]
                        lea              rsp, [rbp + 4224]
                        mov              rbp, qword ptr [rbp + 4216];         jmp   rax
.Lcall_proc_staged_α_1365_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1365_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1365_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1365_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1365_3:
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1365_21
                        add              rsp, 32
.Lcall_proc_staged_α_1365_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1365_2
.Lcall_proc_staged_α_1365_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2336], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1365_2
.Lcall_proc_staged_α_1365_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1365_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   leap_year$2F4_ω
.Lcall_proc_staged_α_1365_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1365_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
.Lcall_proc_staged_α_1365_29:
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              al, 104;                             je    leap_year$2F4_ω
                                                                              jmp   leap_year$2F4_ret2
n1211_call_proc_staged_β:
                        mov              r11, 567
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1365_22
                        mov              rax, qword ptr [rbp + 2336]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1365_22
                        mov              rcx, qword ptr [rbp + 2344]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1365_22:
                                                                              jmp   leap_year$2F4_ω
.Lcall_proc_staged_α_1365_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              al, 104;                             je    leap_year$2F4_ω
                                                                              jmp   leap_year$2F4_ret2
.Lcall_proc_staged_α_1365_0:
                        .quad            .Lcall_proc_staged_α_1365_0_s
.Lcall_proc_staged_α_1365_0_s:
                        .string          "dow/2"
                        .size            n1211_call_proc_staged_bx, .-n1211_call_proc_staged_bx
                        .type            n1212_var_ref_bx, @function
n1212_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1212_var_ref_α:        mov              r11, 568
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx;         jmp   n1213_var_ref_α
                        .size            n1212_var_ref_bx, .-n1212_var_ref_bx
                        .type            n1213_var_ref_bx, @function
n1213_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1213_var_ref_α:        mov              r11, 569
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4096]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx;         jmp   n1214_call_α
                        .size            n1213_var_ref_bx, .-n1213_var_ref_bx
                        .type            n1214_call_bx, @function
n1214_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1214_call_α:           mov              r11, 570
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 3992], rax
                        mov              rax, qword ptr [rbp + 4016]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 4024]
                        mov              qword ptr [rbp + 3976], rax
                        lea              rdi, [rbp + 3968]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1215_var_ref_α
n1214_call_β:           mov              r11, 570;                            jmp   leap_year$2F4_step
                        .size            n1214_call_bx, .-n1214_call_bx
                        .type            n1215_var_ref_bx, @function
n1215_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1215_var_ref_α:        mov              r11, 571
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx;         jmp   n1216_var_ref_α
                        .size            n1215_var_ref_bx, .-n1215_var_ref_bx
                        .type            n1216_var_ref_bx, @function
n1216_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1216_var_ref_α:        mov              r11, 572
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4048]
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx;         jmp   n1217_call_α
                        .size            n1216_var_ref_bx, .-n1216_var_ref_bx
                        .type            n1217_call_bx, @function
n1217_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1217_call_α:           mov              r11, 573
                        mov              rax, qword ptr [rbp + 3936]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3944]
                        mov              qword ptr [rbp + 3896], rax
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3880], rax
                        lea              rdi, [rbp + 3872]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1218_var_ref_α
n1217_call_β:           mov              r11, 573;                            jmp   leap_year$2F4_step
                        .size            n1217_call_bx, .-n1217_call_bx
                        .type            n1218_var_ref_bx, @function
n1218_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1218_var_ref_α:        mov              r11, 574
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx;         jmp   n1219_var_ref_α
                        .size            n1218_var_ref_bx, .-n1218_var_ref_bx
                        .type            n1219_var_ref_bx, @function
n1219_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1219_var_ref_α:        mov              r11, 575
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4112]
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx;         jmp   n1220_call_α
                        .size            n1219_var_ref_bx, .-n1219_var_ref_bx
                        .type            n1220_call_bx, @function
n1220_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1220_call_α:           mov              r11, 576
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3800], rax
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 3784], rax
                        lea              rdi, [rbp + 3776]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1221_var_ref_α
n1220_call_β:           mov              r11, 576;                            jmp   leap_year$2F4_step
                        .size            n1220_call_bx, .-n1220_call_bx
                        .type            n1221_var_ref_bx, @function
n1221_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1221_var_ref_α:        mov              r11, 577
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx;         jmp   n1222_var_ref_α
                        .size            n1221_var_ref_bx, .-n1221_var_ref_bx
                        .type            n1222_var_ref_bx, @function
n1222_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1222_var_ref_α:        mov              r11, 578
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4064]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx;         jmp   n1223_call_α
                        .size            n1222_var_ref_bx, .-n1222_var_ref_bx
                        .type            n1223_call_bx, @function
n1223_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1223_call_α:           mov              r11, 579
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3704], rax
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 3688], rax
                        lea              rdi, [rbp + 3680]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1224_var_ref_α
n1223_call_β:           mov              r11, 579;                            jmp   leap_year$2F4_step
                        .size            n1223_call_bx, .-n1223_call_bx
                        .type            n1224_var_ref_bx, @function
n1224_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1224_var_ref_α:        mov              r11, 580
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4128]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx;         jmp   n1225_var_α
                        .size            n1224_var_ref_bx, .-n1224_var_ref_bx
                        .type            n1225_var_bx, @function
n1225_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1225_var_α:            mov              r11, 581
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 3496], rax;         jmp   n1226_call_α
                        .size            n1225_var_bx, .-n1225_var_bx
                        .type            n1226_call_bx, @function
n1226_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1226_call_α:           mov              r11, 582
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3528], rax
                        lea              rdi, [rbp + 3520]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1227_var_α
n1226_call_β:           mov              r11, 582;                            jmp   leap_year$2F4_step
                        .size            n1226_call_bx, .-n1226_call_bx
                        .type            n1227_var_bx, @function
n1227_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1227_var_α:            mov              r11, 583
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 3560], rax;         jmp   n1228_call_α
                        .size            n1227_var_bx, .-n1227_var_bx
                        .type            n1228_call_bx, @function
n1228_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1228_call_α:           mov              r11, 584
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3592], rax
                        lea              rdi, [rbp + 3584]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1229_call_α
n1228_call_β:           mov              r11, 584;                            jmp   leap_year$2F4_step
                        .size            n1228_call_bx, .-n1228_call_bx
                        .type            n1229_call_bx, @function
n1229_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1229_call_α:           mov              r11, 585
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3464], rax
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3448], rax
                        lea              rdi, [rbp + 3440]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1230_call_α
n1229_call_β:           mov              r11, 585;                            jmp   leap_year$2F4_step
                        .size            n1229_call_bx, .-n1229_call_bx
                        .type            n1230_call_bx, @function
n1230_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1230_call_α:           mov              r11, 586
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3640], rax
                        lea              rdi, [rbp + 3632]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1231_call_α
n1230_call_β:           mov              r11, 586;                            jmp   leap_year$2F4_step
                        .size            n1230_call_bx, .-n1230_call_bx
                        .type            n1231_call_bx, @function
n1231_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1231_call_α:           mov              r11, 587
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3384], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3368], rax
                        lea              rdi, [rbp + 3360]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   n1232_var_ref_α
n1231_call_β:           mov              r11, 587;                            jmp   leap_year$2F4_step
                        .size            n1231_call_bx, .-n1231_call_bx
                        .type            n1232_var_ref_bx, @function
n1232_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1232_var_ref_α:        mov              r11, 588
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4128]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx;         jmp   n1233_var_ref_α
                        .size            n1232_var_ref_bx, .-n1232_var_ref_bx
                        .type            n1233_var_ref_bx, @function
n1233_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1233_var_ref_α:        mov              r11, 589
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4064]
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx;         jmp   n1234_call_proc_staged_α
                        .size            n1233_var_ref_bx, .-n1233_var_ref_bx
                        .type            n1234_call_proc_staged_bx, @function
n1234_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1234_call_proc_staged_α:
                        mov              r11, 590
                        mov              qword ptr [rbp + 3280], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1402_200
                        mov              rax, qword ptr [rbp + 3312]
                        mov              rdx, qword ptr [rbp + 3320]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1402_201
.Lcall_proc_staged_α_1402_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3312]
                        mov              rdx, qword ptr [rbp + 3320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1402_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1402_202
                        mov              rax, qword ptr [rbp + 3328]
                        mov              rdx, qword ptr [rbp + 3336]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1402_203
.Lcall_proc_staged_α_1402_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3328]
                        mov              rdx, qword ptr [rbp + 3336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1402_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1402_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1402_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 4224]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_1402_99
                        mov              r10, qword ptr [rbp + 4184]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_1402_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_1402_99
                        mov              rcx, qword ptr [rbp + 4200]
                        mov              rdx, qword ptr [rbp + 4208]
                        lea              rsp, [rbp + 4224]
                        mov              rbp, qword ptr [rbp + 4216];         jmp   rax
.Lcall_proc_staged_α_1402_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1402_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1402_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1402_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1402_3:
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1402_21
                        add              rsp, 32
.Lcall_proc_staged_α_1402_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1402_2
.Lcall_proc_staged_α_1402_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3280], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1402_2
.Lcall_proc_staged_α_1402_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1402_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   leap_year$2F4_step
.Lcall_proc_staged_α_1402_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1402_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3232]
                        mov              rdx, qword ptr [rbp + 3240]
.Lcall_proc_staged_α_1402_29:
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   leap_year$2F4_ret3
n1234_call_proc_staged_β:
                        mov              r11, 590
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1402_22
                        mov              rax, qword ptr [rbp + 3280]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1402_22
                        mov              rcx, qword ptr [rbp + 3288]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1402_22:
                                                                              jmp   leap_year$2F4_step
.Lcall_proc_staged_α_1402_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              al, 104;                             je    leap_year$2F4_step
                                                                              jmp   leap_year$2F4_ret3
.Lcall_proc_staged_α_1402_0:
                        .quad            .Lcall_proc_staged_α_1402_0_s
.Lcall_proc_staged_α_1402_0_s:
                        .string          "dow/2"
                        .size            n1234_call_proc_staged_bx, .-n1234_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
leap_year$2F4_ret0:
                        lea              rax, [rip + n1149_call_proc_staged_β]
                        mov              qword ptr [rbp + 4176], rax
                                                                              jmp   leap_year$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
leap_year$2F4_ret1:
                        lea              rax, [rip + n1184_call_proc_staged_β]
                        mov              qword ptr [rbp + 4176], rax
                                                                              jmp   leap_year$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
leap_year$2F4_ret2:
                        lea              rax, [rip + n1211_call_proc_staged_β]
                        mov              qword ptr [rbp + 4176], rax
                                                                              jmp   leap_year$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
leap_year$2F4_ret3:
                        lea              rax, [rip + n1234_call_proc_staged_β]
                        mov              qword ptr [rbp + 4176], rax
                                                                              jmp   leap_year$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
leap_year$2F4_step:
                        mov              rdi, qword ptr [rbp + 4160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4176], 0
                        mov              qword ptr [rbp + 4080], 0
                        mov              qword ptr [rbp + 4088], 0
                        mov              qword ptr [rbp + 4048], 0
                        mov              qword ptr [rbp + 4056], 0
                        mov              qword ptr [rbp + 4112], 0
                        mov              qword ptr [rbp + 4120], 0
                        mov              qword ptr [rbp + 4064], 0
                        mov              qword ptr [rbp + 4072], 0
                        mov              qword ptr [rbp + 4096], 0
                        mov              qword ptr [rbp + 4104], 0
                        mov              qword ptr [rbp + 4128], 0
                        mov              qword ptr [rbp + 4136], 0
                        mov              rax, qword ptr [rbp + 4168]
                        test             rax, rax
                                                                              je    leap_year$2F4_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
leap_year$2F4_alt1:
                        lea              rax, [rip + leap_year$2F4_alt2]
                        mov              qword ptr [rbp + 4168], rax
                                                                              jmp   n1150_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leap_year$2F4_alt2:
                        lea              rax, [rip + leap_year$2F4_alt3]
                        mov              qword ptr [rbp + 4168], rax
                                                                              jmp   n1185_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leap_year$2F4_alt3:
                        xor              eax, eax
                        mov              qword ptr [rbp + 4168], rax
                        mov              r13, qword ptr [rbp + 4184]
                                                                              jmp   n1212_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leap_year$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
leap_year$2F4_β:
                        test             r15, r15
                                                                              jne   leap_year$2F4_ω
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4176], 0
                        test             rax, rax
                                                                              jne   leap_year$2F4_βres
                                                                              jmp   leap_year$2F4_step
leap_year$2F4_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
leap_year$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 4200]
                        mov              rax, qword ptr [rbp + 4184]
                        cmp              r13, rax;                            je    leap_year$2F4_altdet
                        lea              rdx, [rip + leap_year$2F4_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 4216];         jmp   rcx
leap_year$2F4_altdet:   xor              eax, eax
                        lea              rsp, [rbp + 4224]
                        mov              rbp, qword ptr [rbp + 4216];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
leap_year$2F4_ω:
                        mov              rcx, qword ptr [rbp + 4208]
                        mov              r13, qword ptr [rbp + 4184]
                        lea              rsp, [rbp + 4224]
                        mov              rbp, qword ptr [rbp + 4216];         jmp   rcx
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
                        .type            n1403_call_proc_staged_bx, @function
n1403_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1403_call_proc_staged_α:
                        mov              r11, 591
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1405_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 4
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1405_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1405_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1405_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1405_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1405_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1405_21
                        add              rsp, 32
.Lcall_proc_staged_α_1405_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1405_2
.Lcall_proc_staged_α_1405_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1405_2
.Lcall_proc_staged_α_1405_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1405_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_1405_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1405_29
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
.Lcall_proc_staged_α_1405_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n1403_call_proc_staged_β:
                        mov              r11, 591
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1405_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1405_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1405_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_1405_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_1405_0:
                        .quad            .Lcall_proc_staged_α_1405_0_s
.Lcall_proc_staged_α_1405_0_s:
                        .string          "main/0"
                        .size            n1403_call_proc_staged_bx, .-n1403_call_proc_staged_bx
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
.Lstartup_pname0:       .string          "dow/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__dow$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1392
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "day_of_week/4"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__day_of_week$2F4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            912
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "cal_key/3"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__cal_key$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            10432
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "compute_it/5"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__compute_it$2F5
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            5
                        .long            0
                        .long            3744
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "main/0"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__main$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            64
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "leap_year/4"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__leap_year$2F4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            4144
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
