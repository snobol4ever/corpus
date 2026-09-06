                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__area$2F2:
                        sub              rsp, 4928
                        mov              qword ptr [rsp + 4904], rcx
                        mov              qword ptr [rsp + 4912], rdx
                        mov              qword ptr [rsp + 4920], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 4928]
                        mov              qword ptr [rsp + 4896], rax
                        mov              qword ptr [rsp + 4888], r13
                        mov              qword ptr [rsp + 4880], 0
                        mov              qword ptr [rsp + 4872], 0
                        mov              qword ptr [rsp + 4864], r12
                        lea              rax, [rip + area$2F2_alt1]
                        mov              qword ptr [rsp + 4872], rax
                        lea              rdi, [rsp + 4864]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 4848
                        mov              edx, 4864
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
area$2F2_α_body:
                        .type            n0_var_ref_bx, @function
n0_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n1_lit_string_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rbp + 224], 2             # result
                        mov              dword ptr [rbp + 228], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_152_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n2_call_α
.Llit_string_α_152_0:   .quad            .Llit_string_α_152_0_s
.Llit_string_α_152_0_s: .string          "china"
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              rsi, qword ptr [rip + .Lcall_α_153_2]
                                                                              jmp   .Lcall_α_153_3
.Lcall_α_153_2:         .quad            .Lcall_α_153_2_s
.Lcall_α_153_2_s:       .string          "china"
.Lcall_α_153_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n3_var_ref_α
n2_call_β:              mov              r11, 3;                              jmp   area$2F2_step
                        .size            n2_call_bx, .-n2_call_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n4_lit_integer_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 5
                        mov              qword ptr [rbp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_156_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n5_call_α
.Llit_integer_α_156_0:  .quad            3380
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_call_bx, @function
n5_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:              mov              r11, 6
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        movabs           rsi, 3380
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n5_call_β:              mov              r11, 6;                              jmp   area$2F2_step
                        .size            n5_call_bx, .-n5_call_bx
                        .type            n6_var_ref_bx, @function
n6_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n7_lit_string_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_lit_string_bx, @function
n7_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_160_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n8_call_α
.Llit_string_α_160_0:   .quad            .Llit_string_α_160_0_s
.Llit_string_α_160_0_s: .string          "india"
                        .size            n7_lit_string_bx, .-n7_lit_string_bx
                        .type            n8_call_bx, @function
n8_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:              mov              r11, 9
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              rsi, qword ptr [rip + .Lcall_α_161_2]
                                                                              jmp   .Lcall_α_161_3
.Lcall_α_161_2:         .quad            .Lcall_α_161_2_s
.Lcall_α_161_2_s:       .string          "india"
.Lcall_α_161_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n9_var_ref_α
n8_call_β:              mov              r11, 9;                              jmp   area$2F2_step
                        .size            n8_call_bx, .-n8_call_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n10_lit_integer_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rbp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_164_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n11_call_α
.Llit_integer_α_164_0:  .quad            1139
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_call_bx, @function
n11_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:             mov              r11, 12
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        movabs           rsi, 1139
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n11_call_β:             mov              r11, 12;                             jmp   area$2F2_step
                        .size            n11_call_bx, .-n11_call_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n13_lit_string_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_lit_string_bx, @function
n13_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rbp + 608], 2             # result
                        mov              dword ptr [rbp + 612], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_168_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n14_call_α
.Llit_string_α_168_0:   .quad            .Llit_string_α_168_0_s
.Llit_string_α_168_0_s: .string          "ussr"
                        .size            n13_lit_string_bx, .-n13_lit_string_bx
                        .type            n14_call_bx, @function
n14_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             mov              r11, 15
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              rsi, qword ptr [rip + .Lcall_α_169_2]
                                                                              jmp   .Lcall_α_169_3
.Lcall_α_169_2:         .quad            .Lcall_α_169_2_s
.Lcall_α_169_2_s:       .string          "ussr"
.Lcall_α_169_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n15_var_ref_α
n14_call_β:             mov              r11, 15;                             jmp   area$2F2_step
                        .size            n14_call_bx, .-n14_call_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n16_lit_integer_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rbp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_172_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n17_call_α
.Llit_integer_α_172_0:  .quad            8708
                        .size            n16_lit_integer_bx, .-n16_lit_integer_bx
                        .type            n17_call_bx, @function
n17_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:             mov              r11, 18
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        movabs           rsi, 8708
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n17_call_β:             mov              r11, 18;                             jmp   area$2F2_step
                        .size            n17_call_bx, .-n17_call_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n19_lit_string_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_lit_string_bx, @function
n19_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_176_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n20_call_α
.Llit_string_α_176_0:   .quad            .Llit_string_α_176_0_s
.Llit_string_α_176_0_s: .string          "usa"
                        .size            n19_lit_string_bx, .-n19_lit_string_bx
                        .type            n20_call_bx, @function
n20_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             mov              r11, 21
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        mov              rsi, qword ptr [rip + .Lcall_α_177_2]
                                                                              jmp   .Lcall_α_177_3
.Lcall_α_177_2:         .quad            .Lcall_α_177_2_s
.Lcall_α_177_2_s:       .string          "usa"
.Lcall_α_177_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n21_var_ref_α
n20_call_β:             mov              r11, 21;                             jmp   area$2F2_step
                        .size            n20_call_bx, .-n20_call_bx
                        .type            n21_var_ref_bx, @function
n21_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n22_lit_integer_α
                        .size            n21_var_ref_bx, .-n21_var_ref_bx
                        .type            n22_lit_integer_bx, @function
n22_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              r11, 23
                        mov              qword ptr [rbp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_180_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n23_call_α
.Llit_integer_α_180_0:  .quad            3609
                        .size            n22_lit_integer_bx, .-n22_lit_integer_bx
                        .type            n23_call_bx, @function
n23_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_call_α:             mov              r11, 24
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        movabs           rsi, 3609
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n23_call_β:             mov              r11, 24;                             jmp   area$2F2_step
                        .size            n23_call_bx, .-n23_call_bx
                        .type            n24_var_ref_bx, @function
n24_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n25_lit_string_α
                        .size            n24_var_ref_bx, .-n24_var_ref_bx
                        .type            n25_lit_string_bx, @function
n25_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_184_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n26_call_α
.Llit_string_α_184_0:   .quad            .Llit_string_α_184_0_s
.Llit_string_α_184_0_s: .string          "indonesia"
                        .size            n25_lit_string_bx, .-n25_lit_string_bx
                        .type            n26_call_bx, @function
n26_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_call_α:             mov              r11, 27
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              rsi, qword ptr [rip + .Lcall_α_185_2]
                                                                              jmp   .Lcall_α_185_3
.Lcall_α_185_2:         .quad            .Lcall_α_185_2_s
.Lcall_α_185_2_s:       .string          "indonesia"
.Lcall_α_185_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n27_var_ref_α
n26_call_β:             mov              r11, 27;                             jmp   area$2F2_step
                        .size            n26_call_bx, .-n26_call_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n28_lit_integer_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_lit_integer_bx, @function
n28_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      mov              r11, 29
                        mov              qword ptr [rbp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_188_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n29_call_α
.Llit_integer_α_188_0:  .quad            570
                        .size            n28_lit_integer_bx, .-n28_lit_integer_bx
                        .type            n29_call_bx, @function
n29_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_α:             mov              r11, 30
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        movabs           rsi, 570
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n29_call_β:             mov              r11, 30;                             jmp   area$2F2_step
                        .size            n29_call_bx, .-n29_call_bx
                        .type            n30_var_ref_bx, @function
n30_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n31_lit_string_α
                        .size            n30_var_ref_bx, .-n30_var_ref_bx
                        .type            n31_lit_string_bx, @function
n31_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              r11, 32
                        mov              qword ptr [rbp + 1184], 2            # result
                        mov              dword ptr [rbp + 1188], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_192_0]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n32_call_α
.Llit_string_α_192_0:   .quad            .Llit_string_α_192_0_s
.Llit_string_α_192_0_s: .string          "japan"
                        .size            n31_lit_string_bx, .-n31_lit_string_bx
                        .type            n32_call_bx, @function
n32_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:             mov              r11, 33
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              rsi, qword ptr [rip + .Lcall_α_193_2]
                                                                              jmp   .Lcall_α_193_3
.Lcall_α_193_2:         .quad            .Lcall_α_193_2_s
.Lcall_α_193_2_s:       .string          "japan"
.Lcall_α_193_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n33_var_ref_α
n32_call_β:             mov              r11, 33;                             jmp   area$2F2_step
                        .size            n32_call_bx, .-n32_call_bx
                        .type            n33_var_ref_bx, @function
n33_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n34_lit_integer_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_lit_integer_bx, @function
n34_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      mov              r11, 35
                        mov              qword ptr [rbp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_196_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n35_call_α
.Llit_integer_α_196_0:  .quad            148
                        .size            n34_lit_integer_bx, .-n34_lit_integer_bx
                        .type            n35_call_bx, @function
n35_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_call_α:             mov              r11, 36
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        movabs           rsi, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n35_call_β:             mov              r11, 36;                             jmp   area$2F2_step
                        .size            n35_call_bx, .-n35_call_bx
                        .type            n36_var_ref_bx, @function
n36_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n37_lit_string_α
                        .size            n36_var_ref_bx, .-n36_var_ref_bx
                        .type            n37_lit_string_bx, @function
n37_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rbp + 1376], 2            # result
                        mov              dword ptr [rbp + 1380], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_200_0]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n38_call_α
.Llit_string_α_200_0:   .quad            .Llit_string_α_200_0_s
.Llit_string_α_200_0_s: .string          "brazil"
                        .size            n37_lit_string_bx, .-n37_lit_string_bx
                        .type            n38_call_bx, @function
n38_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             mov              r11, 39
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1312]
                        mov              rsi, qword ptr [rip + .Lcall_α_201_2]
                                                                              jmp   .Lcall_α_201_3
.Lcall_α_201_2:         .quad            .Lcall_α_201_2_s
.Lcall_α_201_2_s:       .string          "brazil"
.Lcall_α_201_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n39_var_ref_α
n38_call_β:             mov              r11, 39;                             jmp   area$2F2_step
                        .size            n38_call_bx, .-n38_call_bx
                        .type            n39_var_ref_bx, @function
n39_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n40_lit_integer_α
                        .size            n39_var_ref_bx, .-n39_var_ref_bx
                        .type            n40_lit_integer_bx, @function
n40_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      mov              r11, 41
                        mov              qword ptr [rbp + 1280], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_204_0]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n41_call_α
.Llit_integer_α_204_0:  .quad            3288
                        .size            n40_lit_integer_bx, .-n40_lit_integer_bx
                        .type            n41_call_bx, @function
n41_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:             mov              r11, 42
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1216]
                        movabs           rsi, 3288
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n41_call_β:             mov              r11, 42;                             jmp   area$2F2_step
                        .size            n41_call_bx, .-n41_call_bx
                        .type            n42_var_ref_bx, @function
n42_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n43_lit_string_α
                        .size            n42_var_ref_bx, .-n42_var_ref_bx
                        .type            n43_lit_string_bx, @function
n43_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_208_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n44_call_α
.Llit_string_α_208_0:   .quad            .Llit_string_α_208_0_s
.Llit_string_α_208_0_s: .string          "bangladesh"
                        .size            n43_lit_string_bx, .-n43_lit_string_bx
                        .type            n44_call_bx, @function
n44_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_call_α:             mov              r11, 45
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1504]
                        mov              rsi, qword ptr [rip + .Lcall_α_209_2]
                                                                              jmp   .Lcall_α_209_3
.Lcall_α_209_2:         .quad            .Lcall_α_209_2_s
.Lcall_α_209_2_s:       .string          "bangladesh"
.Lcall_α_209_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n45_var_ref_α
n44_call_β:             mov              r11, 45;                             jmp   area$2F2_step
                        .size            n44_call_bx, .-n44_call_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n46_lit_integer_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_lit_integer_bx, @function
n46_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      mov              r11, 47
                        mov              qword ptr [rbp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_212_0]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n47_call_α
.Llit_integer_α_212_0:  .quad            55
                        .size            n46_lit_integer_bx, .-n46_lit_integer_bx
                        .type            n47_call_bx, @function
n47_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_call_α:             mov              r11, 48
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1408]
                        movabs           rsi, 55
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n47_call_β:             mov              r11, 48;                             jmp   area$2F2_step
                        .size            n47_call_bx, .-n47_call_bx
                        .type            n48_var_ref_bx, @function
n48_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx;         jmp   n49_lit_string_α
                        .size            n48_var_ref_bx, .-n48_var_ref_bx
                        .type            n49_lit_string_bx, @function
n49_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rbp + 1760], 2            # result
                        mov              dword ptr [rbp + 1764], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_216_0]
                        mov              qword ptr [rbp + 1768], rax;         jmp   n50_call_α
.Llit_string_α_216_0:   .quad            .Llit_string_α_216_0_s
.Llit_string_α_216_0_s: .string          "pakistan"
                        .size            n49_lit_string_bx, .-n49_lit_string_bx
                        .type            n50_call_bx, @function
n50_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_call_α:             mov              r11, 51
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1696]
                        mov              rsi, qword ptr [rip + .Lcall_α_217_2]
                                                                              jmp   .Lcall_α_217_3
.Lcall_α_217_2:         .quad            .Lcall_α_217_2_s
.Lcall_α_217_2_s:       .string          "pakistan"
.Lcall_α_217_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n51_var_ref_α
n50_call_β:             mov              r11, 51;                             jmp   area$2F2_step
                        .size            n50_call_bx, .-n50_call_bx
                        .type            n51_var_ref_bx, @function
n51_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx;         jmp   n52_lit_integer_α
                        .size            n51_var_ref_bx, .-n51_var_ref_bx
                        .type            n52_lit_integer_bx, @function
n52_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      mov              r11, 53
                        mov              qword ptr [rbp + 1664], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_220_0]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n53_call_α
.Llit_integer_α_220_0:  .quad            311
                        .size            n52_lit_integer_bx, .-n52_lit_integer_bx
                        .type            n53_call_bx, @function
n53_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_call_α:             mov              r11, 54
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        movabs           rsi, 311
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n53_call_β:             mov              r11, 54;                             jmp   area$2F2_step
                        .size            n53_call_bx, .-n53_call_bx
                        .type            n54_var_ref_bx, @function
n54_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n55_lit_string_α
                        .size            n54_var_ref_bx, .-n54_var_ref_bx
                        .type            n55_lit_string_bx, @function
n55_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              r11, 56
                        mov              qword ptr [rbp + 1952], 2            # result
                        mov              dword ptr [rbp + 1956], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_224_0]
                        mov              qword ptr [rbp + 1960], rax;         jmp   n56_call_α
.Llit_string_α_224_0:   .quad            .Llit_string_α_224_0_s
.Llit_string_α_224_0_s: .string          "w_germany"
                        .size            n55_lit_string_bx, .-n55_lit_string_bx
                        .type            n56_call_bx, @function
n56_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_call_α:             mov              r11, 57
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1888]
                        mov              rsi, qword ptr [rip + .Lcall_α_225_2]
                                                                              jmp   .Lcall_α_225_3
.Lcall_α_225_2:         .quad            .Lcall_α_225_2_s
.Lcall_α_225_2_s:       .string          "w_germany"
.Lcall_α_225_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n57_var_ref_α
n56_call_β:             mov              r11, 57;                             jmp   area$2F2_step
                        .size            n56_call_bx, .-n56_call_bx
                        .type            n57_var_ref_bx, @function
n57_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n58_lit_integer_α
                        .size            n57_var_ref_bx, .-n57_var_ref_bx
                        .type            n58_lit_integer_bx, @function
n58_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              r11, 59
                        mov              qword ptr [rbp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_228_0]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n59_call_α
.Llit_integer_α_228_0:  .quad            96
                        .size            n58_lit_integer_bx, .-n58_lit_integer_bx
                        .type            n59_call_bx, @function
n59_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_call_α:             mov              r11, 60
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1800], rax
                        lea              rdi, [rbp + 1792]
                        movabs           rsi, 96
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n59_call_β:             mov              r11, 60;                             jmp   area$2F2_step
                        .size            n59_call_bx, .-n59_call_bx
                        .type            n60_var_ref_bx, @function
n60_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx;         jmp   n61_lit_string_α
                        .size            n60_var_ref_bx, .-n60_var_ref_bx
                        .type            n61_lit_string_bx, @function
n61_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       mov              r11, 62
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_232_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n62_call_α
.Llit_string_α_232_0:   .quad            .Llit_string_α_232_0_s
.Llit_string_α_232_0_s: .string          "nigeria"
                        .size            n61_lit_string_bx, .-n61_lit_string_bx
                        .type            n62_call_bx, @function
n62_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_call_α:             mov              r11, 63
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2080]
                        mov              rsi, qword ptr [rip + .Lcall_α_233_2]
                                                                              jmp   .Lcall_α_233_3
.Lcall_α_233_2:         .quad            .Lcall_α_233_2_s
.Lcall_α_233_2_s:       .string          "nigeria"
.Lcall_α_233_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n63_var_ref_α
n62_call_β:             mov              r11, 63;                             jmp   area$2F2_step
                        .size            n62_call_bx, .-n62_call_bx
                        .type            n63_var_ref_bx, @function
n63_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n64_lit_integer_α
                        .size            n63_var_ref_bx, .-n63_var_ref_bx
                        .type            n64_lit_integer_bx, @function
n64_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      mov              r11, 65
                        mov              qword ptr [rbp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_236_0]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n65_call_α
.Llit_integer_α_236_0:  .quad            373
                        .size            n64_lit_integer_bx, .-n64_lit_integer_bx
                        .type            n65_call_bx, @function
n65_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_call_α:             mov              r11, 66
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rdi, [rbp + 1984]
                        movabs           rsi, 373
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n65_call_β:             mov              r11, 66;                             jmp   area$2F2_step
                        .size            n65_call_bx, .-n65_call_bx
                        .type            n66_var_ref_bx, @function
n66_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n67_lit_string_α
                        .size            n66_var_ref_bx, .-n66_var_ref_bx
                        .type            n67_lit_string_bx, @function
n67_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              r11, 68
                        mov              qword ptr [rbp + 2336], 2            # result
                        mov              dword ptr [rbp + 2340], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_240_0]
                        mov              qword ptr [rbp + 2344], rax;         jmp   n68_call_α
.Llit_string_α_240_0:   .quad            .Llit_string_α_240_0_s
.Llit_string_α_240_0_s: .string          "mexico"
                        .size            n67_lit_string_bx, .-n67_lit_string_bx
                        .type            n68_call_bx, @function
n68_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:             mov              r11, 69
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2272]
                        mov              rsi, qword ptr [rip + .Lcall_α_241_2]
                                                                              jmp   .Lcall_α_241_3
.Lcall_α_241_2:         .quad            .Lcall_α_241_2_s
.Lcall_α_241_2_s:       .string          "mexico"
.Lcall_α_241_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n69_var_ref_α
n68_call_β:             mov              r11, 69;                             jmp   area$2F2_step
                        .size            n68_call_bx, .-n68_call_bx
                        .type            n69_var_ref_bx, @function
n69_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n70_lit_integer_α
                        .size            n69_var_ref_bx, .-n69_var_ref_bx
                        .type            n70_lit_integer_bx, @function
n70_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      mov              r11, 71
                        mov              qword ptr [rbp + 2240], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_244_0]
                        mov              qword ptr [rbp + 2248], rax;         jmp   n71_call_α
.Llit_integer_α_244_0:  .quad            764
                        .size            n70_lit_integer_bx, .-n70_lit_integer_bx
                        .type            n71_call_bx, @function
n71_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:             mov              r11, 72
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2184], rax
                        lea              rdi, [rbp + 2176]
                        movabs           rsi, 764
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n71_call_β:             mov              r11, 72;                             jmp   area$2F2_step
                        .size            n71_call_bx, .-n71_call_bx
                        .type            n72_var_ref_bx, @function
n72_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx;         jmp   n73_lit_string_α
                        .size            n72_var_ref_bx, .-n72_var_ref_bx
                        .type            n73_lit_string_bx, @function
n73_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              r11, 74
                        mov              qword ptr [rbp + 2528], 2            # result
                        mov              dword ptr [rbp + 2532], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_248_0]
                        mov              qword ptr [rbp + 2536], rax;         jmp   n74_call_α
.Llit_string_α_248_0:   .quad            .Llit_string_α_248_0_s
.Llit_string_α_248_0_s: .string          "uk"
                        .size            n73_lit_string_bx, .-n73_lit_string_bx
                        .type            n74_call_bx, @function
n74_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_call_α:             mov              r11, 75
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2472], rax
                        lea              rdi, [rbp + 2464]
                        mov              rsi, qword ptr [rip + .Lcall_α_249_2]
                                                                              jmp   .Lcall_α_249_3
.Lcall_α_249_2:         .quad            .Lcall_α_249_2_s
.Lcall_α_249_2_s:       .string          "uk"
.Lcall_α_249_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n75_var_ref_α
n74_call_β:             mov              r11, 75;                             jmp   area$2F2_step
                        .size            n74_call_bx, .-n74_call_bx
                        .type            n75_var_ref_bx, @function
n75_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx;         jmp   n76_lit_integer_α
                        .size            n75_var_ref_bx, .-n75_var_ref_bx
                        .type            n76_lit_integer_bx, @function
n76_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:      mov              r11, 77
                        mov              qword ptr [rbp + 2432], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_252_0]
                        mov              qword ptr [rbp + 2440], rax;         jmp   n77_call_α
.Llit_integer_α_252_0:  .quad            86
                        .size            n76_lit_integer_bx, .-n76_lit_integer_bx
                        .type            n77_call_bx, @function
n77_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_call_α:             mov              r11, 78
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        lea              rdi, [rbp + 2368]
                        movabs           rsi, 86
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n77_call_β:             mov              r11, 78;                             jmp   area$2F2_step
                        .size            n77_call_bx, .-n77_call_bx
                        .type            n78_var_ref_bx, @function
n78_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx;         jmp   n79_lit_string_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_lit_string_bx, @function
n79_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              r11, 80
                        mov              qword ptr [rbp + 2720], 2            # result
                        mov              dword ptr [rbp + 2724], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_256_0]
                        mov              qword ptr [rbp + 2728], rax;         jmp   n80_call_α
.Llit_string_α_256_0:   .quad            .Llit_string_α_256_0_s
.Llit_string_α_256_0_s: .string          "italy"
                        .size            n79_lit_string_bx, .-n79_lit_string_bx
                        .type            n80_call_bx, @function
n80_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_call_α:             mov              r11, 81
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2664], rax
                        lea              rdi, [rbp + 2656]
                        mov              rsi, qword ptr [rip + .Lcall_α_257_2]
                                                                              jmp   .Lcall_α_257_3
.Lcall_α_257_2:         .quad            .Lcall_α_257_2_s
.Lcall_α_257_2_s:       .string          "italy"
.Lcall_α_257_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n81_var_ref_α
n80_call_β:             mov              r11, 81;                             jmp   area$2F2_step
                        .size            n80_call_bx, .-n80_call_bx
                        .type            n81_var_ref_bx, @function
n81_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx;         jmp   n82_lit_integer_α
                        .size            n81_var_ref_bx, .-n81_var_ref_bx
                        .type            n82_lit_integer_bx, @function
n82_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      mov              r11, 83
                        mov              qword ptr [rbp + 2624], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_260_0]
                        mov              qword ptr [rbp + 2632], rax;         jmp   n83_call_α
.Llit_integer_α_260_0:  .quad            116
                        .size            n82_lit_integer_bx, .-n82_lit_integer_bx
                        .type            n83_call_bx, @function
n83_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:             mov              r11, 84
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2568], rax
                        lea              rdi, [rbp + 2560]
                        movabs           rsi, 116
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n83_call_β:             mov              r11, 84;                             jmp   area$2F2_step
                        .size            n83_call_bx, .-n83_call_bx
                        .type            n84_var_ref_bx, @function
n84_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx;         jmp   n85_lit_string_α
                        .size            n84_var_ref_bx, .-n84_var_ref_bx
                        .type            n85_lit_string_bx, @function
n85_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              r11, 86
                        mov              qword ptr [rbp + 2912], 2            # result
                        mov              dword ptr [rbp + 2916], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_264_0]
                        mov              qword ptr [rbp + 2920], rax;         jmp   n86_call_α
.Llit_string_α_264_0:   .quad            .Llit_string_α_264_0_s
.Llit_string_α_264_0_s: .string          "france"
                        .size            n85_lit_string_bx, .-n85_lit_string_bx
                        .type            n86_call_bx, @function
n86_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:             mov              r11, 87
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        mov              rsi, qword ptr [rip + .Lcall_α_265_2]
                                                                              jmp   .Lcall_α_265_3
.Lcall_α_265_2:         .quad            .Lcall_α_265_2_s
.Lcall_α_265_2_s:       .string          "france"
.Lcall_α_265_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n87_var_ref_α
n86_call_β:             mov              r11, 87;                             jmp   area$2F2_step
                        .size            n86_call_bx, .-n86_call_bx
                        .type            n87_var_ref_bx, @function
n87_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx;         jmp   n88_lit_integer_α
                        .size            n87_var_ref_bx, .-n87_var_ref_bx
                        .type            n88_lit_integer_bx, @function
n88_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      mov              r11, 89
                        mov              qword ptr [rbp + 2816], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_268_0]
                        mov              qword ptr [rbp + 2824], rax;         jmp   n89_call_α
.Llit_integer_α_268_0:  .quad            213
                        .size            n88_lit_integer_bx, .-n88_lit_integer_bx
                        .type            n89_call_bx, @function
n89_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_call_α:             mov              r11, 90
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2760], rax
                        lea              rdi, [rbp + 2752]
                        movabs           rsi, 213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n89_call_β:             mov              r11, 90;                             jmp   area$2F2_step
                        .size            n89_call_bx, .-n89_call_bx
                        .type            n90_var_ref_bx, @function
n90_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx;         jmp   n91_lit_string_α
                        .size            n90_var_ref_bx, .-n90_var_ref_bx
                        .type            n91_lit_string_bx, @function
n91_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:       mov              r11, 92
                        mov              qword ptr [rbp + 3104], 2            # result
                        mov              dword ptr [rbp + 3108], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_272_0]
                        mov              qword ptr [rbp + 3112], rax;         jmp   n92_call_α
.Llit_string_α_272_0:   .quad            .Llit_string_α_272_0_s
.Llit_string_α_272_0_s: .string          "philippines"
                        .size            n91_lit_string_bx, .-n91_lit_string_bx
                        .type            n92_call_bx, @function
n92_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_call_α:             mov              r11, 93
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3048], rax
                        lea              rdi, [rbp + 3040]
                        mov              rsi, qword ptr [rip + .Lcall_α_273_2]
                                                                              jmp   .Lcall_α_273_3
.Lcall_α_273_2:         .quad            .Lcall_α_273_2_s
.Lcall_α_273_2_s:       .string          "philippines"
.Lcall_α_273_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n93_var_ref_α
n92_call_β:             mov              r11, 93;                             jmp   area$2F2_step
                        .size            n92_call_bx, .-n92_call_bx
                        .type            n93_var_ref_bx, @function
n93_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:          mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx;         jmp   n94_lit_integer_α
                        .size            n93_var_ref_bx, .-n93_var_ref_bx
                        .type            n94_lit_integer_bx, @function
n94_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:      mov              r11, 95
                        mov              qword ptr [rbp + 3008], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_276_0]
                        mov              qword ptr [rbp + 3016], rax;         jmp   n95_call_α
.Llit_integer_α_276_0:  .quad            90
                        .size            n94_lit_integer_bx, .-n94_lit_integer_bx
                        .type            n95_call_bx, @function
n95_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_call_α:             mov              r11, 96
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2952], rax
                        lea              rdi, [rbp + 2944]
                        movabs           rsi, 90
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n95_call_β:             mov              r11, 96;                             jmp   area$2F2_step
                        .size            n95_call_bx, .-n95_call_bx
                        .type            n96_var_ref_bx, @function
n96_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx;         jmp   n97_lit_string_α
                        .size            n96_var_ref_bx, .-n96_var_ref_bx
                        .type            n97_lit_string_bx, @function
n97_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              r11, 98
                        mov              qword ptr [rbp + 3296], 2            # result
                        mov              dword ptr [rbp + 3300], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_280_0]
                        mov              qword ptr [rbp + 3304], rax;         jmp   n98_call_α
.Llit_string_α_280_0:   .quad            .Llit_string_α_280_0_s
.Llit_string_α_280_0_s: .string          "thailand"
                        .size            n97_lit_string_bx, .-n97_lit_string_bx
                        .type            n98_call_bx, @function
n98_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_call_α:             mov              r11, 99
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3240], rax
                        lea              rdi, [rbp + 3232]
                        mov              rsi, qword ptr [rip + .Lcall_α_281_2]
                                                                              jmp   .Lcall_α_281_3
.Lcall_α_281_2:         .quad            .Lcall_α_281_2_s
.Lcall_α_281_2_s:       .string          "thailand"
.Lcall_α_281_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n99_var_ref_α
n98_call_β:             mov              r11, 99;                             jmp   area$2F2_step
                        .size            n98_call_bx, .-n98_call_bx
                        .type            n99_var_ref_bx, @function
n99_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:          mov              r11, 100
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n100_lit_integer_α
                        .size            n99_var_ref_bx, .-n99_var_ref_bx
                        .type            n100_lit_integer_bx, @function
n100_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:     mov              r11, 101
                        mov              qword ptr [rbp + 3200], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_284_0]
                        mov              qword ptr [rbp + 3208], rax;         jmp   n101_call_α
.Llit_integer_α_284_0:  .quad            200
                        .size            n100_lit_integer_bx, .-n100_lit_integer_bx
                        .type            n101_call_bx, @function
n101_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_call_α:            mov              r11, 102
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3144], rax
                        lea              rdi, [rbp + 3136]
                        movabs           rsi, 200
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n101_call_β:            mov              r11, 102;                            jmp   area$2F2_step
                        .size            n101_call_bx, .-n101_call_bx
                        .type            n102_var_ref_bx, @function
n102_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx;         jmp   n103_lit_string_α
                        .size            n102_var_ref_bx, .-n102_var_ref_bx
                        .type            n103_lit_string_bx, @function
n103_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rbp + 3488], 2            # result
                        mov              dword ptr [rbp + 3492], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_288_0]
                        mov              qword ptr [rbp + 3496], rax;         jmp   n104_call_α
.Llit_string_α_288_0:   .quad            .Llit_string_α_288_0_s
.Llit_string_α_288_0_s: .string          "turkey"
                        .size            n103_lit_string_bx, .-n103_lit_string_bx
                        .type            n104_call_bx, @function
n104_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_call_α:            mov              r11, 105
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3432], rax
                        lea              rdi, [rbp + 3424]
                        mov              rsi, qword ptr [rip + .Lcall_α_289_2]
                                                                              jmp   .Lcall_α_289_3
.Lcall_α_289_2:         .quad            .Lcall_α_289_2_s
.Lcall_α_289_2_s:       .string          "turkey"
.Lcall_α_289_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n105_var_ref_α
n104_call_β:            mov              r11, 105;                            jmp   area$2F2_step
                        .size            n104_call_bx, .-n104_call_bx
                        .type            n105_var_ref_bx, @function
n105_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx;         jmp   n106_lit_integer_α
                        .size            n105_var_ref_bx, .-n105_var_ref_bx
                        .type            n106_lit_integer_bx, @function
n106_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:     mov              r11, 107
                        mov              qword ptr [rbp + 3392], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_292_0]
                        mov              qword ptr [rbp + 3400], rax;         jmp   n107_call_α
.Llit_integer_α_292_0:  .quad            296
                        .size            n106_lit_integer_bx, .-n106_lit_integer_bx
                        .type            n107_call_bx, @function
n107_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_call_α:            mov              r11, 108
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3336], rax
                        lea              rdi, [rbp + 3328]
                        movabs           rsi, 296
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n107_call_β:            mov              r11, 108;                            jmp   area$2F2_step
                        .size            n107_call_bx, .-n107_call_bx
                        .type            n108_var_ref_bx, @function
n108_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx;         jmp   n109_lit_string_α
                        .size            n108_var_ref_bx, .-n108_var_ref_bx
                        .type            n109_lit_string_bx, @function
n109_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:      mov              r11, 110
                        mov              qword ptr [rbp + 3680], 2            # result
                        mov              dword ptr [rbp + 3684], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_296_0]
                        mov              qword ptr [rbp + 3688], rax;         jmp   n110_call_α
.Llit_string_α_296_0:   .quad            .Llit_string_α_296_0_s
.Llit_string_α_296_0_s: .string          "egypt"
                        .size            n109_lit_string_bx, .-n109_lit_string_bx
                        .type            n110_call_bx, @function
n110_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_call_α:            mov              r11, 111
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3624], rax
                        lea              rdi, [rbp + 3616]
                        mov              rsi, qword ptr [rip + .Lcall_α_297_2]
                                                                              jmp   .Lcall_α_297_3
.Lcall_α_297_2:         .quad            .Lcall_α_297_2_s
.Lcall_α_297_2_s:       .string          "egypt"
.Lcall_α_297_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n111_var_ref_α
n110_call_β:            mov              r11, 111;                            jmp   area$2F2_step
                        .size            n110_call_bx, .-n110_call_bx
                        .type            n111_var_ref_bx, @function
n111_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx;         jmp   n112_lit_integer_α
                        .size            n111_var_ref_bx, .-n111_var_ref_bx
                        .type            n112_lit_integer_bx, @function
n112_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:     mov              r11, 113
                        mov              qword ptr [rbp + 3584], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_300_0]
                        mov              qword ptr [rbp + 3592], rax;         jmp   n113_call_α
.Llit_integer_α_300_0:  .quad            386
                        .size            n112_lit_integer_bx, .-n112_lit_integer_bx
                        .type            n113_call_bx, @function
n113_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_call_α:            mov              r11, 114
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3528], rax
                        lea              rdi, [rbp + 3520]
                        movabs           rsi, 386
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n113_call_β:            mov              r11, 114;                            jmp   area$2F2_step
                        .size            n113_call_bx, .-n113_call_bx
                        .type            n114_var_ref_bx, @function
n114_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx;         jmp   n115_lit_string_α
                        .size            n114_var_ref_bx, .-n114_var_ref_bx
                        .type            n115_lit_string_bx, @function
n115_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rbp + 3872], 2            # result
                        mov              dword ptr [rbp + 3876], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_304_0]
                        mov              qword ptr [rbp + 3880], rax;         jmp   n116_call_α
.Llit_string_α_304_0:   .quad            .Llit_string_α_304_0_s
.Llit_string_α_304_0_s: .string          "spain"
                        .size            n115_lit_string_bx, .-n115_lit_string_bx
                        .type            n116_call_bx, @function
n116_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_call_α:            mov              r11, 117
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3816], rax
                        lea              rdi, [rbp + 3808]
                        mov              rsi, qword ptr [rip + .Lcall_α_305_2]
                                                                              jmp   .Lcall_α_305_3
.Lcall_α_305_2:         .quad            .Lcall_α_305_2_s
.Lcall_α_305_2_s:       .string          "spain"
.Lcall_α_305_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n117_var_ref_α
n116_call_β:            mov              r11, 117;                            jmp   area$2F2_step
                        .size            n116_call_bx, .-n116_call_bx
                        .type            n117_var_ref_bx, @function
n117_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx;         jmp   n118_lit_integer_α
                        .size            n117_var_ref_bx, .-n117_var_ref_bx
                        .type            n118_lit_integer_bx, @function
n118_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:     mov              r11, 119
                        mov              qword ptr [rbp + 3776], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_308_0]
                        mov              qword ptr [rbp + 3784], rax;         jmp   n119_call_α
.Llit_integer_α_308_0:  .quad            190
                        .size            n118_lit_integer_bx, .-n118_lit_integer_bx
                        .type            n119_call_bx, @function
n119_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_call_α:            mov              r11, 120
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3720], rax
                        lea              rdi, [rbp + 3712]
                        movabs           rsi, 190
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n119_call_β:            mov              r11, 120;                            jmp   area$2F2_step
                        .size            n119_call_bx, .-n119_call_bx
                        .type            n120_var_ref_bx, @function
n120_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx;         jmp   n121_lit_string_α
                        .size            n120_var_ref_bx, .-n120_var_ref_bx
                        .type            n121_lit_string_bx, @function
n121_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rbp + 4064], 2            # result
                        mov              dword ptr [rbp + 4068], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_312_0]
                        mov              qword ptr [rbp + 4072], rax;         jmp   n122_call_α
.Llit_string_α_312_0:   .quad            .Llit_string_α_312_0_s
.Llit_string_α_312_0_s: .string          "poland"
                        .size            n121_lit_string_bx, .-n121_lit_string_bx
                        .type            n122_call_bx, @function
n122_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_call_α:            mov              r11, 123
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4008], rax
                        lea              rdi, [rbp + 4000]
                        mov              rsi, qword ptr [rip + .Lcall_α_313_2]
                                                                              jmp   .Lcall_α_313_3
.Lcall_α_313_2:         .quad            .Lcall_α_313_2_s
.Lcall_α_313_2_s:       .string          "poland"
.Lcall_α_313_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n123_var_ref_α
n122_call_β:            mov              r11, 123;                            jmp   area$2F2_step
                        .size            n122_call_bx, .-n122_call_bx
                        .type            n123_var_ref_bx, @function
n123_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx;         jmp   n124_lit_integer_α
                        .size            n123_var_ref_bx, .-n123_var_ref_bx
                        .type            n124_lit_integer_bx, @function
n124_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:     mov              r11, 125
                        mov              qword ptr [rbp + 3968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_316_0]
                        mov              qword ptr [rbp + 3976], rax;         jmp   n125_call_α
.Llit_integer_α_316_0:  .quad            121
                        .size            n124_lit_integer_bx, .-n124_lit_integer_bx
                        .type            n125_call_bx, @function
n125_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_call_α:            mov              r11, 126
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 3912], rax
                        lea              rdi, [rbp + 3904]
                        movabs           rsi, 121
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n125_call_β:            mov              r11, 126;                            jmp   area$2F2_step
                        .size            n125_call_bx, .-n125_call_bx
                        .type            n126_var_ref_bx, @function
n126_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx;         jmp   n127_lit_string_α
                        .size            n126_var_ref_bx, .-n126_var_ref_bx
                        .type            n127_lit_string_bx, @function
n127_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rbp + 4256], 2            # result
                        mov              dword ptr [rbp + 4260], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_320_0]
                        mov              qword ptr [rbp + 4264], rax;         jmp   n128_call_α
.Llit_string_α_320_0:   .quad            .Llit_string_α_320_0_s
.Llit_string_α_320_0_s: .string          "s_korea"
                        .size            n127_lit_string_bx, .-n127_lit_string_bx
                        .type            n128_call_bx, @function
n128_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_call_α:            mov              r11, 129
                        mov              rax, qword ptr [rbp + 4240]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 4200], rax
                        lea              rdi, [rbp + 4192]
                        mov              rsi, qword ptr [rip + .Lcall_α_321_2]
                                                                              jmp   .Lcall_α_321_3
.Lcall_α_321_2:         .quad            .Lcall_α_321_2_s
.Lcall_α_321_2_s:       .string          "s_korea"
.Lcall_α_321_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n129_var_ref_α
n128_call_β:            mov              r11, 129;                            jmp   area$2F2_step
                        .size            n128_call_bx, .-n128_call_bx
                        .type            n129_var_ref_bx, @function
n129_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 130
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx;         jmp   n130_lit_integer_α
                        .size            n129_var_ref_bx, .-n129_var_ref_bx
                        .type            n130_lit_integer_bx, @function
n130_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:     mov              r11, 131
                        mov              qword ptr [rbp + 4160], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_324_0]
                        mov              qword ptr [rbp + 4168], rax;         jmp   n131_call_α
.Llit_integer_α_324_0:  .quad            37
                        .size            n130_lit_integer_bx, .-n130_lit_integer_bx
                        .type            n131_call_bx, @function
n131_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_call_α:            mov              r11, 132
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4104], rax
                        lea              rdi, [rbp + 4096]
                        movabs           rsi, 37
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n131_call_β:            mov              r11, 132;                            jmp   area$2F2_step
                        .size            n131_call_bx, .-n131_call_bx
                        .type            n132_var_ref_bx, @function
n132_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx;         jmp   n133_lit_string_α
                        .size            n132_var_ref_bx, .-n132_var_ref_bx
                        .type            n133_lit_string_bx, @function
n133_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:      mov              r11, 134
                        mov              qword ptr [rbp + 4448], 2            # result
                        mov              dword ptr [rbp + 4452], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_328_0]
                        mov              qword ptr [rbp + 4456], rax;         jmp   n134_call_α
.Llit_string_α_328_0:   .quad            .Llit_string_α_328_0_s
.Llit_string_α_328_0_s: .string          "iran"
                        .size            n133_lit_string_bx, .-n133_lit_string_bx
                        .type            n134_call_bx, @function
n134_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_call_α:            mov              r11, 135
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 4392], rax
                        lea              rdi, [rbp + 4384]
                        mov              rsi, qword ptr [rip + .Lcall_α_329_2]
                                                                              jmp   .Lcall_α_329_3
.Lcall_α_329_2:         .quad            .Lcall_α_329_2_s
.Lcall_α_329_2_s:       .string          "iran"
.Lcall_α_329_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n135_var_ref_α
n134_call_β:            mov              r11, 135;                            jmp   area$2F2_step
                        .size            n134_call_bx, .-n134_call_bx
                        .type            n135_var_ref_bx, @function
n135_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx;         jmp   n136_lit_integer_α
                        .size            n135_var_ref_bx, .-n135_var_ref_bx
                        .type            n136_lit_integer_bx, @function
n136_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:     mov              r11, 137
                        mov              qword ptr [rbp + 4352], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_332_0]
                        mov              qword ptr [rbp + 4360], rax;         jmp   n137_call_α
.Llit_integer_α_332_0:  .quad            628
                        .size            n136_lit_integer_bx, .-n136_lit_integer_bx
                        .type            n137_call_bx, @function
n137_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_call_α:            mov              r11, 138
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4296], rax
                        lea              rdi, [rbp + 4288]
                        movabs           rsi, 628
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n137_call_β:            mov              r11, 138;                            jmp   area$2F2_step
                        .size            n137_call_bx, .-n137_call_bx
                        .type            n138_var_ref_bx, @function
n138_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx;         jmp   n139_lit_string_α
                        .size            n138_var_ref_bx, .-n138_var_ref_bx
                        .type            n139_lit_string_bx, @function
n139_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:      mov              r11, 140
                        mov              qword ptr [rbp + 4640], 2            # result
                        mov              dword ptr [rbp + 4644], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_336_0]
                        mov              qword ptr [rbp + 4648], rax;         jmp   n140_call_α
.Llit_string_α_336_0:   .quad            .Llit_string_α_336_0_s
.Llit_string_α_336_0_s: .string          "ethiopia"
                        .size            n139_lit_string_bx, .-n139_lit_string_bx
                        .type            n140_call_bx, @function
n140_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_call_α:            mov              r11, 141
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 4584], rax
                        lea              rdi, [rbp + 4576]
                        mov              rsi, qword ptr [rip + .Lcall_α_337_2]
                                                                              jmp   .Lcall_α_337_3
.Lcall_α_337_2:         .quad            .Lcall_α_337_2_s
.Lcall_α_337_2_s:       .string          "ethiopia"
.Lcall_α_337_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n141_var_ref_α
n140_call_β:            mov              r11, 141;                            jmp   area$2F2_step
                        .size            n140_call_bx, .-n140_call_bx
                        .type            n141_var_ref_bx, @function
n141_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx;         jmp   n142_lit_integer_α
                        .size            n141_var_ref_bx, .-n141_var_ref_bx
                        .type            n142_lit_integer_bx, @function
n142_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     mov              r11, 143
                        mov              qword ptr [rbp + 4544], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_340_0]
                        mov              qword ptr [rbp + 4552], rax;         jmp   n143_call_α
.Llit_integer_α_340_0:  .quad            350
                        .size            n142_lit_integer_bx, .-n142_lit_integer_bx
                        .type            n143_call_bx, @function
n143_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_call_α:            mov              r11, 144
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4488], rax
                        lea              rdi, [rbp + 4480]
                        movabs           rsi, 350
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n143_call_β:            mov              r11, 144;                            jmp   area$2F2_step
                        .size            n143_call_bx, .-n143_call_bx
                        .type            n144_var_ref_bx, @function
n144_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx;         jmp   n145_lit_string_α
                        .size            n144_var_ref_bx, .-n144_var_ref_bx
                        .type            n145_lit_string_bx, @function
n145_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:      mov              r11, 146
                        mov              qword ptr [rbp + 4832], 2            # result
                        mov              dword ptr [rbp + 4836], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_344_0]
                        mov              qword ptr [rbp + 4840], rax;         jmp   n146_call_α
.Llit_string_α_344_0:   .quad            .Llit_string_α_344_0_s
.Llit_string_α_344_0_s: .string          "argentina"
                        .size            n145_lit_string_bx, .-n145_lit_string_bx
                        .type            n146_call_bx, @function
n146_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_call_α:            mov              r11, 147
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 4776], rax
                        lea              rdi, [rbp + 4768]
                        mov              rsi, qword ptr [rip + .Lcall_α_345_2]
                                                                              jmp   .Lcall_α_345_3
.Lcall_α_345_2:         .quad            .Lcall_α_345_2_s
.Lcall_α_345_2_s:       .string          "argentina"
.Lcall_α_345_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   n147_var_ref_α
n146_call_β:            mov              r11, 147;                            jmp   area$2F2_step
                        .size            n146_call_bx, .-n146_call_bx
                        .type            n147_var_ref_bx, @function
n147_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4720], rax
                        mov              qword ptr [rbp + 4728], rdx;         jmp   n148_lit_integer_α
                        .size            n147_var_ref_bx, .-n147_var_ref_bx
                        .type            n148_lit_integer_bx, @function
n148_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     mov              r11, 149
                        mov              qword ptr [rbp + 4736], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_348_0]
                        mov              qword ptr [rbp + 4744], rax;         jmp   n149_call_α
.Llit_integer_α_348_0:  .quad            1080
                        .size            n148_lit_integer_bx, .-n148_lit_integer_bx
                        .type            n149_call_bx, @function
n149_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_call_α:            mov              r11, 150
                        mov              rax, qword ptr [rbp + 4720]
                        mov              qword ptr [rbp + 4672], rax
                        mov              rax, qword ptr [rbp + 4728]
                        mov              qword ptr [rbp + 4680], rax
                        lea              rdi, [rbp + 4672]
                        movabs           rsi, 1080
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4656], rax
                        mov              qword ptr [rbp + 4664], rdx
                        cmp              al, 104;                             je    area$2F2_step
                                                                              jmp   area$2F2_γ
n149_call_β:            mov              r11, 150;                            jmp   area$2F2_step
                        .size            n149_call_bx, .-n149_call_bx
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_step:
                        mov              rdi, qword ptr [rbp + 4864]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4880], 0
                        mov              rax, qword ptr [rbp + 4872]
                        test             rax, rax
                                                                              je    area$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt1:
                        lea              rax, [rip + area$2F2_alt2]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt2:
                        lea              rax, [rip + area$2F2_alt3]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt3:
                        lea              rax, [rip + area$2F2_alt4]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n18_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt4:
                        lea              rax, [rip + area$2F2_alt5]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt5:
                        lea              rax, [rip + area$2F2_alt6]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt6:
                        lea              rax, [rip + area$2F2_alt7]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n36_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt7:
                        lea              rax, [rip + area$2F2_alt8]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n42_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt8:
                        lea              rax, [rip + area$2F2_alt9]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n48_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt9:
                        lea              rax, [rip + area$2F2_alt10]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n54_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt10:
                        lea              rax, [rip + area$2F2_alt11]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n60_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt11:
                        lea              rax, [rip + area$2F2_alt12]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n66_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt12:
                        lea              rax, [rip + area$2F2_alt13]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n72_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt13:
                        lea              rax, [rip + area$2F2_alt14]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt14:
                        lea              rax, [rip + area$2F2_alt15]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n84_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt15:
                        lea              rax, [rip + area$2F2_alt16]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n90_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt16:
                        lea              rax, [rip + area$2F2_alt17]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n96_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt17:
                        lea              rax, [rip + area$2F2_alt18]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n102_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt18:
                        lea              rax, [rip + area$2F2_alt19]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n108_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt19:
                        lea              rax, [rip + area$2F2_alt20]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n114_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt20:
                        lea              rax, [rip + area$2F2_alt21]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n120_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt21:
                        lea              rax, [rip + area$2F2_alt22]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n126_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt22:
                        lea              rax, [rip + area$2F2_alt23]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n132_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt23:
                        lea              rax, [rip + area$2F2_alt24]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n138_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_alt24:
                        xor              eax, eax
                        mov              qword ptr [rbp + 4872], rax
                        mov              r13, qword ptr [rbp + 4888]
                                                                              jmp   n144_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_β:
                        test             r15, r15
                                                                              jne   area$2F2_ω
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 4880], 0
                        test             rax, rax
                                                                              jne   area$2F2_βres
                                                                              jmp   area$2F2_step
area$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 4904]
                        mov              rax, qword ptr [rbp + 4888]
                        cmp              r13, rax;                            je    area$2F2_altdet
                        lea              rdx, [rip + area$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 4920];         jmp   rcx
area$2F2_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 4928]
                        mov              rbp, qword ptr [rbp + 4920];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
area$2F2_ω:
                        mov              rcx, qword ptr [rbp + 4912]
                        mov              r13, qword ptr [rbp + 4888]
                        lea              rsp, [rbp + 4928]
                        mov              rbp, qword ptr [rbp + 4920];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__query$2F1:
                        sub              rsp, 2000
                        mov              qword ptr [rsp + 1976], rcx
                        mov              qword ptr [rsp + 1984], rdx
                        mov              qword ptr [rsp + 1992], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 2000]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1960], r13
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1936], r12
                        mov              rdi, rsp
                        mov              esi, 1824
                        mov              edx, 1936
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
query$2F1_α_body:
                        .type            n350_var_ref_bx, @function
n350_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx;         jmp   n351_lit_string_α
                        .size            n350_var_ref_bx, .-n350_var_ref_bx
                        .type            n351_lit_string_bx, @function
n351_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:      mov              r11, 152
                        mov              qword ptr [rbp + 1808], 2            # result
                        mov              dword ptr [rbp + 1812], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_399_0]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n352_var_ref_α
.Llit_string_α_399_0:   .quad            .Llit_string_α_399_0_s
.Llit_string_α_399_0_s: .string          "."
                        .size            n351_lit_string_bx, .-n351_lit_string_bx
                        .type            n352_var_ref_bx, @function
n352_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1904]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n353_lit_string_α
                        .size            n352_var_ref_bx, .-n352_var_ref_bx
                        .type            n353_lit_string_bx, @function
n353_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:      mov              r11, 154
                        mov              qword ptr [rbp + 1696], 2            # result
                        mov              dword ptr [rbp + 1700], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_402_0]
                        mov              qword ptr [rbp + 1704], rax;         jmp   n354_var_ref_α
.Llit_string_α_402_0:   .quad            .Llit_string_α_402_0_s
.Llit_string_α_402_0_s: .string          "."
                        .size            n353_lit_string_bx, .-n353_lit_string_bx
                        .type            n354_var_ref_bx, @function
n354_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:         mov              r11, 155
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1872]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n355_lit_string_α
                        .size            n354_var_ref_bx, .-n354_var_ref_bx
                        .type            n355_lit_string_bx, @function
n355_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:      mov              r11, 156
                        mov              qword ptr [rbp + 1584], 2            # result
                        mov              dword ptr [rbp + 1588], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_405_0]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n356_var_ref_α
.Llit_string_α_405_0:   .quad            .Llit_string_α_405_0_s
.Llit_string_α_405_0_s: .string          "."
                        .size            n355_lit_string_bx, .-n355_lit_string_bx
                        .type            n356_var_ref_bx, @function
n356_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:         mov              r11, 157
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1888]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n357_lit_string_α
                        .size            n356_var_ref_bx, .-n356_var_ref_bx
                        .type            n357_lit_string_bx, @function
n357_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rbp + 1472], 2            # result
                        mov              dword ptr [rbp + 1476], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_408_0]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n358_var_ref_α
.Llit_string_α_408_0:   .quad            .Llit_string_α_408_0_s
.Llit_string_α_408_0_s: .string          "."
                        .size            n357_lit_string_bx, .-n357_lit_string_bx
                        .type            n358_var_ref_bx, @function
n358_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx;         jmp   n359_lit_string_α
                        .size            n358_var_ref_bx, .-n358_var_ref_bx
                        .type            n359_lit_string_bx, @function
n359_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:      mov              r11, 160
                        mov              qword ptr [rbp + 1360], 2            # result
                        mov              dword ptr [rbp + 1364], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_411_0]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n360_call_α
.Llit_string_α_411_0:   .quad            .Llit_string_α_411_0_s
.Llit_string_α_411_0_s: .string          "[]"
                        .size            n359_lit_string_bx, .-n359_lit_string_bx
                        .type            n360_call_bx, @function
n360_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_call_α:            mov              r11, 161
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1408]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              al, 104;                             je    query$2F1_ω
                                                                              jmp   n361_call_α
n360_call_β:            mov              r11, 161;                            jmp   query$2F1_ω
                        .size            n360_call_bx, .-n360_call_bx
                        .type            n361_call_bx, @function
n361_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_call_α:            mov              r11, 162
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              al, 104;                             je    query$2F1_ω
                                                                              jmp   n362_call_α
n361_call_β:            mov              r11, 162;                            jmp   query$2F1_ω
                        .size            n361_call_bx, .-n361_call_bx
                        .type            n362_call_bx, @function
n362_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_call_α:            mov              r11, 163
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1640], rax
                        lea              rdi, [rbp + 1632]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              al, 104;                             je    query$2F1_ω
                                                                              jmp   n363_call_α
n362_call_β:            mov              r11, 163;                            jmp   query$2F1_ω
                        .size            n362_call_bx, .-n362_call_bx
                        .type            n363_call_bx, @function
n363_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_call_α:            mov              r11, 164
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1752], rax
                        lea              rdi, [rbp + 1744]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n364_call_α
n363_call_β:            mov              r11, 164;                            jmp   query$2F1_step
                        .size            n363_call_bx, .-n363_call_bx
                        .type            n364_call_bx, @function
n364_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_call_α:            mov              r11, 165
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rdi, [rbp + 1296]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n365_var_ref_α
n364_call_β:            mov              r11, 165;                            jmp   query$2F1_step
                        .size            n364_call_bx, .-n364_call_bx
                        .type            n365_var_ref_bx, @function
n365_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_var_ref_α:         mov              r11, 166
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1904]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n366_var_ref_α
                        .size            n365_var_ref_bx, .-n365_var_ref_bx
                        .type            n366_var_ref_bx, @function
n366_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1872]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n367_call_proc_staged_α
                        .size            n366_var_ref_bx, .-n366_var_ref_bx
                        .type            n367_call_proc_staged_bx, @function
n367_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_call_proc_staged_α:
                        mov              r11, 168
                        mov              qword ptr [rbp + 1216], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_422_200
                        mov              rax, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_422_201
.Lcall_proc_staged_α_422_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_422_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_422_202
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_422_203
.Lcall_proc_staged_α_422_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_422_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_422_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_422_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_422_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_422_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_422_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_422_3:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_422_21
                        add              rsp, 32
.Lcall_proc_staged_α_422_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_422_2
.Lcall_proc_staged_α_422_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1216], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_422_2
.Lcall_proc_staged_α_422_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_422_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   query$2F1_step
.Lcall_proc_staged_α_422_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_422_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
.Lcall_proc_staged_α_422_29:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n368_var_ref_α
n367_call_proc_staged_β:
                        mov              r11, 168
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_422_22
                        mov              rax, qword ptr [rbp + 1216]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_422_22
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_422_22:
                                                                              jmp   query$2F1_step
.Lcall_proc_staged_α_422_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n368_var_ref_α
.Lcall_proc_staged_α_422_0:
                        .quad            .Lcall_proc_staged_α_422_0_s
.Lcall_proc_staged_α_422_0_s:
                        .string          "density/2"
                        .size            n367_call_proc_staged_bx, .-n367_call_proc_staged_bx
                        .type            n368_var_ref_bx, @function
n368_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_var_ref_α:         mov              r11, 169
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1888]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n369_var_ref_α
                        .size            n368_var_ref_bx, .-n368_var_ref_bx
                        .type            n369_var_ref_bx, @function
n369_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n370_call_proc_staged_α
                        .size            n369_var_ref_bx, .-n369_var_ref_bx
                        .type            n370_call_proc_staged_bx, @function
n370_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_call_proc_staged_α:
                        mov              r11, 171
                        mov              qword ptr [rbp + 1104], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_428_200
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_428_201
.Lcall_proc_staged_α_428_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_428_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_428_202
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_428_203
.Lcall_proc_staged_α_428_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_428_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_428_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_428_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_428_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_428_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_428_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_428_3:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_428_21
                        add              rsp, 32
.Lcall_proc_staged_α_428_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_428_2
.Lcall_proc_staged_α_428_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1104], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_428_2
.Lcall_proc_staged_α_428_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_428_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n367_call_proc_staged_β
.Lcall_proc_staged_α_428_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_428_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
.Lcall_proc_staged_α_428_29:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    n367_call_proc_staged_β
                                                                              jmp   n371_var_α
n370_call_proc_staged_β:
                        mov              r11, 171
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_428_22
                        mov              rax, qword ptr [rbp + 1104]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_428_22
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_428_22:
                                                                              jmp   n367_call_proc_staged_β
.Lcall_proc_staged_α_428_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    n367_call_proc_staged_β
                                                                              jmp   n371_var_α
.Lcall_proc_staged_α_428_0:
                        .quad            .Lcall_proc_staged_α_428_0_s
.Lcall_proc_staged_α_428_0_s:
                        .string          "density/2"
                        .size            n370_call_proc_staged_bx, .-n370_call_proc_staged_bx
                        .type            n371_var_bx, @function
n371_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_var_α:             mov              r11, 172
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 936], rax;          jmp   n372_call_α
                        .size            n371_var_bx, .-n371_var_bx
                        .type            n372_call_bx, @function
n372_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:            mov              r11, 173
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n373_var_α
n372_call_β:            mov              r11, 173;                            jmp   query$2F1_step
                        .size            n372_call_bx, .-n372_call_bx
                        .type            n373_var_bx, @function
n373_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_var_α:             mov              r11, 174
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 952], rax;          jmp   n374_call_α
                        .size            n373_var_bx, .-n373_var_bx
                        .type            n374_call_bx, @function
n374_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:            mov              r11, 175
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n375_call_α
n374_call_β:            mov              r11, 175;                            jmp   query$2F1_step
                        .size            n374_call_bx, .-n374_call_bx
                        .type            n375_call_bx, @function
n375_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_call_α:            mov              r11, 176
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
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    n370_call_proc_staged_β
                                                                              jmp   n376_var_ref_α
n375_call_β:            mov              r11, 176;                            jmp   n370_call_proc_staged_β
                        .size            n375_call_bx, .-n375_call_bx
                        .type            n376_var_ref_bx, @function
n376_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_var_ref_α:         mov              r11, 177
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1824]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n377_lit_integer_α
                        .size            n376_var_ref_bx, .-n376_var_ref_bx
                        .type            n377_lit_integer_bx, @function
n377_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_integer_α:     mov              r11, 178
                        mov              qword ptr [rbp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_438_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n378_call_α
.Llit_integer_α_438_0:  .quad            20
                        .size            n377_lit_integer_bx, .-n377_lit_integer_bx
                        .type            n378_call_bx, @function
n378_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:            mov              r11, 179
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n379_var_α
n378_call_β:            mov              r11, 179;                            jmp   query$2F1_step
                        .size            n378_call_bx, .-n378_call_bx
                        .type            n379_var_bx, @function
n379_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_var_α:             mov              r11, 180
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 760], rax;          jmp   n380_call_α
                        .size            n379_var_bx, .-n379_var_bx
                        .type            n380_call_bx, @function
n380_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_call_α:            mov              r11, 181
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n381_call_α
n380_call_β:            mov              r11, 181;                            jmp   query$2F1_step
                        .size            n380_call_bx, .-n380_call_bx
                        .type            n381_call_bx, @function
n381_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_call_α:            mov              r11, 182
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 760]
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
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n382_call_α
n381_call_β:            mov              r11, 182;                            jmp   query$2F1_step
                        .size            n381_call_bx, .-n381_call_bx
                        .type            n382_call_bx, @function
n382_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_call_α:            mov              r11, 183
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 632]
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
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n383_call_α
n382_call_β:            mov              r11, 183;                            jmp   query$2F1_step
                        .size            n382_call_bx, .-n382_call_bx
                        .type            n383_call_bx, @function
n383_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_call_α:            mov              r11, 184
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    n370_call_proc_staged_β
                                                                              jmp   n384_var_ref_α
n383_call_β:            mov              r11, 184;                            jmp   n370_call_proc_staged_β
                        .size            n383_call_bx, .-n383_call_bx
                        .type            n384_var_ref_bx, @function
n384_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n385_lit_integer_α
                        .size            n384_var_ref_bx, .-n384_var_ref_bx
                        .type            n385_lit_integer_bx, @function
n385_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_integer_α:     mov              r11, 186
                        mov              qword ptr [rbp + 368], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_448_0]
                        mov              qword ptr [rbp + 376], rax;          jmp   n386_call_α
.Llit_integer_α_448_0:  .quad            21
                        .size            n385_lit_integer_bx, .-n385_lit_integer_bx
                        .type            n386_call_bx, @function
n386_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_call_α:            mov              r11, 187
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n387_var_α
n386_call_β:            mov              r11, 187;                            jmp   query$2F1_step
                        .size            n386_call_bx, .-n386_call_bx
                        .type            n387_var_bx, @function
n387_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_var_α:             mov              r11, 188
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 440], rax;          jmp   n388_call_α
                        .size            n387_var_bx, .-n387_var_bx
                        .type            n388_call_bx, @function
n388_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_call_α:            mov              r11, 189
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n389_call_α
n388_call_β:            mov              r11, 189;                            jmp   query$2F1_step
                        .size            n388_call_bx, .-n388_call_bx
                        .type            n389_call_bx, @function
n389_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_call_α:            mov              r11, 190
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n390_call_α
n389_call_β:            mov              r11, 190;                            jmp   query$2F1_step
                        .size            n389_call_bx, .-n389_call_bx
                        .type            n390_call_bx, @function
n390_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_call_α:            mov              r11, 191
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n391_call_α
n390_call_β:            mov              r11, 191;                            jmp   query$2F1_step
                        .size            n390_call_bx, .-n390_call_bx
                        .type            n391_call_bx, @function
n391_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_call_α:            mov              r11, 192
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    n370_call_proc_staged_β
                                                                              jmp   n392_var_α
n391_call_β:            mov              r11, 192;                            jmp   n370_call_proc_staged_β
                        .size            n391_call_bx, .-n391_call_bx
                        .type            n392_var_bx, @function
n392_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_var_α:             mov              r11, 193
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 104], rax;          jmp   n393_call_α
                        .size            n392_var_bx, .-n392_var_bx
                        .type            n393_call_bx, @function
n393_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_call_α:            mov              r11, 194
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n394_var_α
n393_call_β:            mov              r11, 194;                            jmp   query$2F1_step
                        .size            n393_call_bx, .-n393_call_bx
                        .type            n394_var_bx, @function
n394_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_var_α:             mov              r11, 195
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 120], rax;          jmp   n395_call_α
                        .size            n394_var_bx, .-n394_var_bx
                        .type            n395_call_bx, @function
n395_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_call_α:            mov              r11, 196
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n396_call_α
n395_call_β:            mov              r11, 196;                            jmp   query$2F1_step
                        .size            n395_call_bx, .-n395_call_bx
                        .type            n396_call_bx, @function
n396_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_call_α:            mov              r11, 197
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_lt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    n370_call_proc_staged_β
                                                                              jmp   query$2F1_ret0
n396_call_β:            mov              r11, 197;                            jmp   n370_call_proc_staged_β
                        .size            n396_call_bx, .-n396_call_bx
#-----------------------------------------------------------------------------------------------------------------------
query$2F1_ret0:
                        lea              rax, [rip + n370_call_proc_staged_β]
                        mov              qword ptr [rbp + 1952], rax
                                                                              jmp   query$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
query$2F1_step:
                        mov              rdi, qword ptr [rbp + 1936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1952], 0
                        mov              qword ptr [rbp + 1904], 0
                        mov              qword ptr [rbp + 1912], 0
                        mov              qword ptr [rbp + 1872], 0
                        mov              qword ptr [rbp + 1880], 0
                        mov              qword ptr [rbp + 1888], 0
                        mov              qword ptr [rbp + 1896], 0
                        mov              qword ptr [rbp + 1856], 0
                        mov              qword ptr [rbp + 1864], 0
                        mov              qword ptr [rbp + 1824], 0
                        mov              qword ptr [rbp + 1832], 0
                        mov              qword ptr [rbp + 1840], 0
                        mov              qword ptr [rbp + 1848], 0
                        mov              rax, qword ptr [rbp + 1944]
                        test             rax, rax
                                                                              je    query$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
query$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
query$2F1_β:
                        test             r15, r15
                                                                              jne   query$2F1_ω
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1952], 0
                        test             rax, rax
                                                                              jne   query$2F1_βres
                                                                              jmp   query$2F1_step
query$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
query$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1976]
                        mov              rax, qword ptr [rbp + 1960]
                        cmp              r13, rax;                            je    query$2F1_altdet
                        lea              rdx, [rip + query$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1992];         jmp   rcx
query$2F1_altdet:       xor              eax, eax
                        lea              rsp, [rbp + 2000]
                        mov              rbp, qword ptr [rbp + 1992];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
query$2F1_ω:
                        mov              rcx, qword ptr [rbp + 1984]
                        mov              r13, qword ptr [rbp + 1960]
                        lea              rsp, [rbp + 2000]
                        mov              rbp, qword ptr [rbp + 1992];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pop$2F2:
                        sub              rsp, 4928
                        mov              qword ptr [rsp + 4904], rcx
                        mov              qword ptr [rsp + 4912], rdx
                        mov              qword ptr [rsp + 4920], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 4928]
                        mov              qword ptr [rsp + 4896], rax
                        mov              qword ptr [rsp + 4888], r13
                        mov              qword ptr [rsp + 4880], 0
                        mov              qword ptr [rsp + 4872], 0
                        mov              qword ptr [rsp + 4864], r12
                        lea              rax, [rip + pop$2F2_alt1]
                        mov              qword ptr [rsp + 4872], rax
                        lea              rdi, [rsp + 4864]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 4848
                        mov              edx, 4864
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
pop$2F2_α_body:
                        .type            n463_var_ref_bx, @function
n463_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n464_lit_string_α
                        .size            n463_var_ref_bx, .-n463_var_ref_bx
                        .type            n464_lit_string_bx, @function
n464_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_string_α:      mov              r11, 199
                        mov              qword ptr [rbp + 224], 2             # result
                        mov              dword ptr [rbp + 228], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_615_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n465_call_α
.Llit_string_α_615_0:   .quad            .Llit_string_α_615_0_s
.Llit_string_α_615_0_s: .string          "china"
                        .size            n464_lit_string_bx, .-n464_lit_string_bx
                        .type            n465_call_bx, @function
n465_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_call_α:            mov              r11, 200
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              rsi, qword ptr [rip + .Lcall_α_616_2]
                                                                              jmp   .Lcall_α_616_3
.Lcall_α_616_2:         .quad            .Lcall_α_616_2_s
.Lcall_α_616_2_s:       .string          "china"
.Lcall_α_616_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n466_var_ref_α
n465_call_β:            mov              r11, 200;                            jmp   pop$2F2_step
                        .size            n465_call_bx, .-n465_call_bx
                        .type            n466_var_ref_bx, @function
n466_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n466_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n467_lit_integer_α
                        .size            n466_var_ref_bx, .-n466_var_ref_bx
                        .type            n467_lit_integer_bx, @function
n467_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_integer_α:     mov              r11, 202
                        mov              qword ptr [rbp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_619_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n468_call_α
.Llit_integer_α_619_0:  .quad            8250
                        .size            n467_lit_integer_bx, .-n467_lit_integer_bx
                        .type            n468_call_bx, @function
n468_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n468_call_α:            mov              r11, 203
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        movabs           rsi, 8250
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n468_call_β:            mov              r11, 203;                            jmp   pop$2F2_step
                        .size            n468_call_bx, .-n468_call_bx
                        .type            n469_var_ref_bx, @function
n469_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n469_var_ref_α:         mov              r11, 204
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n470_lit_string_α
                        .size            n469_var_ref_bx, .-n469_var_ref_bx
                        .type            n470_lit_string_bx, @function
n470_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n470_lit_string_α:      mov              r11, 205
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_623_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n471_call_α
.Llit_string_α_623_0:   .quad            .Llit_string_α_623_0_s
.Llit_string_α_623_0_s: .string          "india"
                        .size            n470_lit_string_bx, .-n470_lit_string_bx
                        .type            n471_call_bx, @function
n471_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n471_call_α:            mov              r11, 206
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              rsi, qword ptr [rip + .Lcall_α_624_2]
                                                                              jmp   .Lcall_α_624_3
.Lcall_α_624_2:         .quad            .Lcall_α_624_2_s
.Lcall_α_624_2_s:       .string          "india"
.Lcall_α_624_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n472_var_ref_α
n471_call_β:            mov              r11, 206;                            jmp   pop$2F2_step
                        .size            n471_call_bx, .-n471_call_bx
                        .type            n472_var_ref_bx, @function
n472_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n472_var_ref_α:         mov              r11, 207
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n473_lit_integer_α
                        .size            n472_var_ref_bx, .-n472_var_ref_bx
                        .type            n473_lit_integer_bx, @function
n473_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n473_lit_integer_α:     mov              r11, 208
                        mov              qword ptr [rbp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_627_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n474_call_α
.Llit_integer_α_627_0:  .quad            5863
                        .size            n473_lit_integer_bx, .-n473_lit_integer_bx
                        .type            n474_call_bx, @function
n474_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n474_call_α:            mov              r11, 209
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        movabs           rsi, 5863
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n474_call_β:            mov              r11, 209;                            jmp   pop$2F2_step
                        .size            n474_call_bx, .-n474_call_bx
                        .type            n475_var_ref_bx, @function
n475_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n475_var_ref_α:         mov              r11, 210
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n476_lit_string_α
                        .size            n475_var_ref_bx, .-n475_var_ref_bx
                        .type            n476_lit_string_bx, @function
n476_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_string_α:      mov              r11, 211
                        mov              qword ptr [rbp + 608], 2             # result
                        mov              dword ptr [rbp + 612], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_631_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n477_call_α
.Llit_string_α_631_0:   .quad            .Llit_string_α_631_0_s
.Llit_string_α_631_0_s: .string          "ussr"
                        .size            n476_lit_string_bx, .-n476_lit_string_bx
                        .type            n477_call_bx, @function
n477_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n477_call_α:            mov              r11, 212
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              rsi, qword ptr [rip + .Lcall_α_632_2]
                                                                              jmp   .Lcall_α_632_3
.Lcall_α_632_2:         .quad            .Lcall_α_632_2_s
.Lcall_α_632_2_s:       .string          "ussr"
.Lcall_α_632_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n478_var_ref_α
n477_call_β:            mov              r11, 212;                            jmp   pop$2F2_step
                        .size            n477_call_bx, .-n477_call_bx
                        .type            n478_var_ref_bx, @function
n478_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:         mov              r11, 213
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n479_lit_integer_α
                        .size            n478_var_ref_bx, .-n478_var_ref_bx
                        .type            n479_lit_integer_bx, @function
n479_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_integer_α:     mov              r11, 214
                        mov              qword ptr [rbp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_635_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n480_call_α
.Llit_integer_α_635_0:  .quad            2521
                        .size            n479_lit_integer_bx, .-n479_lit_integer_bx
                        .type            n480_call_bx, @function
n480_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n480_call_α:            mov              r11, 215
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        movabs           rsi, 2521
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n480_call_β:            mov              r11, 215;                            jmp   pop$2F2_step
                        .size            n480_call_bx, .-n480_call_bx
                        .type            n481_var_ref_bx, @function
n481_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n481_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n482_lit_string_α
                        .size            n481_var_ref_bx, .-n481_var_ref_bx
                        .type            n482_lit_string_bx, @function
n482_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n482_lit_string_α:      mov              r11, 217
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_639_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n483_call_α
.Llit_string_α_639_0:   .quad            .Llit_string_α_639_0_s
.Llit_string_α_639_0_s: .string          "usa"
                        .size            n482_lit_string_bx, .-n482_lit_string_bx
                        .type            n483_call_bx, @function
n483_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n483_call_α:            mov              r11, 218
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        mov              rsi, qword ptr [rip + .Lcall_α_640_2]
                                                                              jmp   .Lcall_α_640_3
.Lcall_α_640_2:         .quad            .Lcall_α_640_2_s
.Lcall_α_640_2_s:       .string          "usa"
.Lcall_α_640_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n484_var_ref_α
n483_call_β:            mov              r11, 218;                            jmp   pop$2F2_step
                        .size            n483_call_bx, .-n483_call_bx
                        .type            n484_var_ref_bx, @function
n484_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n484_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n485_lit_integer_α
                        .size            n484_var_ref_bx, .-n484_var_ref_bx
                        .type            n485_lit_integer_bx, @function
n485_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_integer_α:     mov              r11, 220
                        mov              qword ptr [rbp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_643_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n486_call_α
.Llit_integer_α_643_0:  .quad            2119
                        .size            n485_lit_integer_bx, .-n485_lit_integer_bx
                        .type            n486_call_bx, @function
n486_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n486_call_α:            mov              r11, 221
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        movabs           rsi, 2119
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n486_call_β:            mov              r11, 221;                            jmp   pop$2F2_step
                        .size            n486_call_bx, .-n486_call_bx
                        .type            n487_var_ref_bx, @function
n487_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n487_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n488_lit_string_α
                        .size            n487_var_ref_bx, .-n487_var_ref_bx
                        .type            n488_lit_string_bx, @function
n488_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_string_α:      mov              r11, 223
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_647_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n489_call_α
.Llit_string_α_647_0:   .quad            .Llit_string_α_647_0_s
.Llit_string_α_647_0_s: .string          "indonesia"
                        .size            n488_lit_string_bx, .-n488_lit_string_bx
                        .type            n489_call_bx, @function
n489_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n489_call_α:            mov              r11, 224
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              rsi, qword ptr [rip + .Lcall_α_648_2]
                                                                              jmp   .Lcall_α_648_3
.Lcall_α_648_2:         .quad            .Lcall_α_648_2_s
.Lcall_α_648_2_s:       .string          "indonesia"
.Lcall_α_648_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n490_var_ref_α
n489_call_β:            mov              r11, 224;                            jmp   pop$2F2_step
                        .size            n489_call_bx, .-n489_call_bx
                        .type            n490_var_ref_bx, @function
n490_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n490_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n491_lit_integer_α
                        .size            n490_var_ref_bx, .-n490_var_ref_bx
                        .type            n491_lit_integer_bx, @function
n491_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_integer_α:     mov              r11, 226
                        mov              qword ptr [rbp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_651_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n492_call_α
.Llit_integer_α_651_0:  .quad            1276
                        .size            n491_lit_integer_bx, .-n491_lit_integer_bx
                        .type            n492_call_bx, @function
n492_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n492_call_α:            mov              r11, 227
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        movabs           rsi, 1276
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n492_call_β:            mov              r11, 227;                            jmp   pop$2F2_step
                        .size            n492_call_bx, .-n492_call_bx
                        .type            n493_var_ref_bx, @function
n493_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n493_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n494_lit_string_α
                        .size            n493_var_ref_bx, .-n493_var_ref_bx
                        .type            n494_lit_string_bx, @function
n494_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rbp + 1184], 2            # result
                        mov              dword ptr [rbp + 1188], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_655_0]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n495_call_α
.Llit_string_α_655_0:   .quad            .Llit_string_α_655_0_s
.Llit_string_α_655_0_s: .string          "japan"
                        .size            n494_lit_string_bx, .-n494_lit_string_bx
                        .type            n495_call_bx, @function
n495_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n495_call_α:            mov              r11, 230
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              rsi, qword ptr [rip + .Lcall_α_656_2]
                                                                              jmp   .Lcall_α_656_3
.Lcall_α_656_2:         .quad            .Lcall_α_656_2_s
.Lcall_α_656_2_s:       .string          "japan"
.Lcall_α_656_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n496_var_ref_α
n495_call_β:            mov              r11, 230;                            jmp   pop$2F2_step
                        .size            n495_call_bx, .-n495_call_bx
                        .type            n496_var_ref_bx, @function
n496_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n497_lit_integer_α
                        .size            n496_var_ref_bx, .-n496_var_ref_bx
                        .type            n497_lit_integer_bx, @function
n497_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_integer_α:     mov              r11, 232
                        mov              qword ptr [rbp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_659_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n498_call_α
.Llit_integer_α_659_0:  .quad            1097
                        .size            n497_lit_integer_bx, .-n497_lit_integer_bx
                        .type            n498_call_bx, @function
n498_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n498_call_α:            mov              r11, 233
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        movabs           rsi, 1097
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n498_call_β:            mov              r11, 233;                            jmp   pop$2F2_step
                        .size            n498_call_bx, .-n498_call_bx
                        .type            n499_var_ref_bx, @function
n499_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n499_var_ref_α:         mov              r11, 234
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n500_lit_string_α
                        .size            n499_var_ref_bx, .-n499_var_ref_bx
                        .type            n500_lit_string_bx, @function
n500_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n500_lit_string_α:      mov              r11, 235
                        mov              qword ptr [rbp + 1376], 2            # result
                        mov              dword ptr [rbp + 1380], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_663_0]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n501_call_α
.Llit_string_α_663_0:   .quad            .Llit_string_α_663_0_s
.Llit_string_α_663_0_s: .string          "brazil"
                        .size            n500_lit_string_bx, .-n500_lit_string_bx
                        .type            n501_call_bx, @function
n501_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n501_call_α:            mov              r11, 236
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1312]
                        mov              rsi, qword ptr [rip + .Lcall_α_664_2]
                                                                              jmp   .Lcall_α_664_3
.Lcall_α_664_2:         .quad            .Lcall_α_664_2_s
.Lcall_α_664_2_s:       .string          "brazil"
.Lcall_α_664_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n502_var_ref_α
n501_call_β:            mov              r11, 236;                            jmp   pop$2F2_step
                        .size            n501_call_bx, .-n501_call_bx
                        .type            n502_var_ref_bx, @function
n502_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n502_var_ref_α:         mov              r11, 237
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n503_lit_integer_α
                        .size            n502_var_ref_bx, .-n502_var_ref_bx
                        .type            n503_lit_integer_bx, @function
n503_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_integer_α:     mov              r11, 238
                        mov              qword ptr [rbp + 1280], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_667_0]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n504_call_α
.Llit_integer_α_667_0:  .quad            1042
                        .size            n503_lit_integer_bx, .-n503_lit_integer_bx
                        .type            n504_call_bx, @function
n504_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_call_α:            mov              r11, 239
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1216]
                        movabs           rsi, 1042
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n504_call_β:            mov              r11, 239;                            jmp   pop$2F2_step
                        .size            n504_call_bx, .-n504_call_bx
                        .type            n505_var_ref_bx, @function
n505_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n505_var_ref_α:         mov              r11, 240
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n506_lit_string_α
                        .size            n505_var_ref_bx, .-n505_var_ref_bx
                        .type            n506_lit_string_bx, @function
n506_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:      mov              r11, 241
                        mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_671_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n507_call_α
.Llit_string_α_671_0:   .quad            .Llit_string_α_671_0_s
.Llit_string_α_671_0_s: .string          "bangladesh"
                        .size            n506_lit_string_bx, .-n506_lit_string_bx
                        .type            n507_call_bx, @function
n507_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_call_α:            mov              r11, 242
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1504]
                        mov              rsi, qword ptr [rip + .Lcall_α_672_2]
                                                                              jmp   .Lcall_α_672_3
.Lcall_α_672_2:         .quad            .Lcall_α_672_2_s
.Lcall_α_672_2_s:       .string          "bangladesh"
.Lcall_α_672_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n508_var_ref_α
n507_call_β:            mov              r11, 242;                            jmp   pop$2F2_step
                        .size            n507_call_bx, .-n507_call_bx
                        .type            n508_var_ref_bx, @function
n508_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:         mov              r11, 243
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n509_lit_integer_α
                        .size            n508_var_ref_bx, .-n508_var_ref_bx
                        .type            n509_lit_integer_bx, @function
n509_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_lit_integer_α:     mov              r11, 244
                        mov              qword ptr [rbp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_675_0]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n510_call_α
.Llit_integer_α_675_0:  .quad            750
                        .size            n509_lit_integer_bx, .-n509_lit_integer_bx
                        .type            n510_call_bx, @function
n510_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n510_call_α:            mov              r11, 245
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1408]
                        movabs           rsi, 750
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n510_call_β:            mov              r11, 245;                            jmp   pop$2F2_step
                        .size            n510_call_bx, .-n510_call_bx
                        .type            n511_var_ref_bx, @function
n511_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n511_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx;         jmp   n512_lit_string_α
                        .size            n511_var_ref_bx, .-n511_var_ref_bx
                        .type            n512_lit_string_bx, @function
n512_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n512_lit_string_α:      mov              r11, 247
                        mov              qword ptr [rbp + 1760], 2            # result
                        mov              dword ptr [rbp + 1764], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_679_0]
                        mov              qword ptr [rbp + 1768], rax;         jmp   n513_call_α
.Llit_string_α_679_0:   .quad            .Llit_string_α_679_0_s
.Llit_string_α_679_0_s: .string          "pakistan"
                        .size            n512_lit_string_bx, .-n512_lit_string_bx
                        .type            n513_call_bx, @function
n513_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n513_call_α:            mov              r11, 248
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1696]
                        mov              rsi, qword ptr [rip + .Lcall_α_680_2]
                                                                              jmp   .Lcall_α_680_3
.Lcall_α_680_2:         .quad            .Lcall_α_680_2_s
.Lcall_α_680_2_s:       .string          "pakistan"
.Lcall_α_680_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n514_var_ref_α
n513_call_β:            mov              r11, 248;                            jmp   pop$2F2_step
                        .size            n513_call_bx, .-n513_call_bx
                        .type            n514_var_ref_bx, @function
n514_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n514_var_ref_α:         mov              r11, 249
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx;         jmp   n515_lit_integer_α
                        .size            n514_var_ref_bx, .-n514_var_ref_bx
                        .type            n515_lit_integer_bx, @function
n515_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_integer_α:     mov              r11, 250
                        mov              qword ptr [rbp + 1664], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_683_0]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n516_call_α
.Llit_integer_α_683_0:  .quad            682
                        .size            n515_lit_integer_bx, .-n515_lit_integer_bx
                        .type            n516_call_bx, @function
n516_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n516_call_α:            mov              r11, 251
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        movabs           rsi, 682
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n516_call_β:            mov              r11, 251;                            jmp   pop$2F2_step
                        .size            n516_call_bx, .-n516_call_bx
                        .type            n517_var_ref_bx, @function
n517_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n517_var_ref_α:         mov              r11, 252
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n518_lit_string_α
                        .size            n517_var_ref_bx, .-n517_var_ref_bx
                        .type            n518_lit_string_bx, @function
n518_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n518_lit_string_α:      mov              r11, 253
                        mov              qword ptr [rbp + 1952], 2            # result
                        mov              dword ptr [rbp + 1956], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_687_0]
                        mov              qword ptr [rbp + 1960], rax;         jmp   n519_call_α
.Llit_string_α_687_0:   .quad            .Llit_string_α_687_0_s
.Llit_string_α_687_0_s: .string          "w_germany"
                        .size            n518_lit_string_bx, .-n518_lit_string_bx
                        .type            n519_call_bx, @function
n519_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n519_call_α:            mov              r11, 254
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1888]
                        mov              rsi, qword ptr [rip + .Lcall_α_688_2]
                                                                              jmp   .Lcall_α_688_3
.Lcall_α_688_2:         .quad            .Lcall_α_688_2_s
.Lcall_α_688_2_s:       .string          "w_germany"
.Lcall_α_688_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n520_var_ref_α
n519_call_β:            mov              r11, 254;                            jmp   pop$2F2_step
                        .size            n519_call_bx, .-n519_call_bx
                        .type            n520_var_ref_bx, @function
n520_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n520_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n521_lit_integer_α
                        .size            n520_var_ref_bx, .-n520_var_ref_bx
                        .type            n521_lit_integer_bx, @function
n521_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n521_lit_integer_α:     mov              r11, 256
                        mov              qword ptr [rbp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_691_0]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n522_call_α
.Llit_integer_α_691_0:  .quad            620
                        .size            n521_lit_integer_bx, .-n521_lit_integer_bx
                        .type            n522_call_bx, @function
n522_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n522_call_α:            mov              r11, 257
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1800], rax
                        lea              rdi, [rbp + 1792]
                        movabs           rsi, 620
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n522_call_β:            mov              r11, 257;                            jmp   pop$2F2_step
                        .size            n522_call_bx, .-n522_call_bx
                        .type            n523_var_ref_bx, @function
n523_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:         mov              r11, 258
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx;         jmp   n524_lit_string_α
                        .size            n523_var_ref_bx, .-n523_var_ref_bx
                        .type            n524_lit_string_bx, @function
n524_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_string_α:      mov              r11, 259
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_695_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n525_call_α
.Llit_string_α_695_0:   .quad            .Llit_string_α_695_0_s
.Llit_string_α_695_0_s: .string          "nigeria"
                        .size            n524_lit_string_bx, .-n524_lit_string_bx
                        .type            n525_call_bx, @function
n525_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n525_call_α:            mov              r11, 260
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2080]
                        mov              rsi, qword ptr [rip + .Lcall_α_696_2]
                                                                              jmp   .Lcall_α_696_3
.Lcall_α_696_2:         .quad            .Lcall_α_696_2_s
.Lcall_α_696_2_s:       .string          "nigeria"
.Lcall_α_696_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n526_var_ref_α
n525_call_β:            mov              r11, 260;                            jmp   pop$2F2_step
                        .size            n525_call_bx, .-n525_call_bx
                        .type            n526_var_ref_bx, @function
n526_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n526_var_ref_α:         mov              r11, 261
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n527_lit_integer_α
                        .size            n526_var_ref_bx, .-n526_var_ref_bx
                        .type            n527_lit_integer_bx, @function
n527_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n527_lit_integer_α:     mov              r11, 262
                        mov              qword ptr [rbp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_699_0]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n528_call_α
.Llit_integer_α_699_0:  .quad            613
                        .size            n527_lit_integer_bx, .-n527_lit_integer_bx
                        .type            n528_call_bx, @function
n528_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n528_call_α:            mov              r11, 263
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rdi, [rbp + 1984]
                        movabs           rsi, 613
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n528_call_β:            mov              r11, 263;                            jmp   pop$2F2_step
                        .size            n528_call_bx, .-n528_call_bx
                        .type            n529_var_ref_bx, @function
n529_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n529_var_ref_α:         mov              r11, 264
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n530_lit_string_α
                        .size            n529_var_ref_bx, .-n529_var_ref_bx
                        .type            n530_lit_string_bx, @function
n530_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n530_lit_string_α:      mov              r11, 265
                        mov              qword ptr [rbp + 2336], 2            # result
                        mov              dword ptr [rbp + 2340], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_703_0]
                        mov              qword ptr [rbp + 2344], rax;         jmp   n531_call_α
.Llit_string_α_703_0:   .quad            .Llit_string_α_703_0_s
.Llit_string_α_703_0_s: .string          "mexico"
                        .size            n530_lit_string_bx, .-n530_lit_string_bx
                        .type            n531_call_bx, @function
n531_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n531_call_α:            mov              r11, 266
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2272]
                        mov              rsi, qword ptr [rip + .Lcall_α_704_2]
                                                                              jmp   .Lcall_α_704_3
.Lcall_α_704_2:         .quad            .Lcall_α_704_2_s
.Lcall_α_704_2_s:       .string          "mexico"
.Lcall_α_704_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n532_var_ref_α
n531_call_β:            mov              r11, 266;                            jmp   pop$2F2_step
                        .size            n531_call_bx, .-n531_call_bx
                        .type            n532_var_ref_bx, @function
n532_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n532_var_ref_α:         mov              r11, 267
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n533_lit_integer_α
                        .size            n532_var_ref_bx, .-n532_var_ref_bx
                        .type            n533_lit_integer_bx, @function
n533_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n533_lit_integer_α:     mov              r11, 268
                        mov              qword ptr [rbp + 2240], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_707_0]
                        mov              qword ptr [rbp + 2248], rax;         jmp   n534_call_α
.Llit_integer_α_707_0:  .quad            581
                        .size            n533_lit_integer_bx, .-n533_lit_integer_bx
                        .type            n534_call_bx, @function
n534_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n534_call_α:            mov              r11, 269
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2184], rax
                        lea              rdi, [rbp + 2176]
                        movabs           rsi, 581
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n534_call_β:            mov              r11, 269;                            jmp   pop$2F2_step
                        .size            n534_call_bx, .-n534_call_bx
                        .type            n535_var_ref_bx, @function
n535_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n535_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx;         jmp   n536_lit_string_α
                        .size            n535_var_ref_bx, .-n535_var_ref_bx
                        .type            n536_lit_string_bx, @function
n536_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n536_lit_string_α:      mov              r11, 271
                        mov              qword ptr [rbp + 2528], 2            # result
                        mov              dword ptr [rbp + 2532], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_711_0]
                        mov              qword ptr [rbp + 2536], rax;         jmp   n537_call_α
.Llit_string_α_711_0:   .quad            .Llit_string_α_711_0_s
.Llit_string_α_711_0_s: .string          "uk"
                        .size            n536_lit_string_bx, .-n536_lit_string_bx
                        .type            n537_call_bx, @function
n537_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n537_call_α:            mov              r11, 272
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2472], rax
                        lea              rdi, [rbp + 2464]
                        mov              rsi, qword ptr [rip + .Lcall_α_712_2]
                                                                              jmp   .Lcall_α_712_3
.Lcall_α_712_2:         .quad            .Lcall_α_712_2_s
.Lcall_α_712_2_s:       .string          "uk"
.Lcall_α_712_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n538_var_ref_α
n537_call_β:            mov              r11, 272;                            jmp   pop$2F2_step
                        .size            n537_call_bx, .-n537_call_bx
                        .type            n538_var_ref_bx, @function
n538_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n538_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx;         jmp   n539_lit_integer_α
                        .size            n538_var_ref_bx, .-n538_var_ref_bx
                        .type            n539_lit_integer_bx, @function
n539_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n539_lit_integer_α:     mov              r11, 274
                        mov              qword ptr [rbp + 2432], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_715_0]
                        mov              qword ptr [rbp + 2440], rax;         jmp   n540_call_α
.Llit_integer_α_715_0:  .quad            559
                        .size            n539_lit_integer_bx, .-n539_lit_integer_bx
                        .type            n540_call_bx, @function
n540_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n540_call_α:            mov              r11, 275
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        lea              rdi, [rbp + 2368]
                        movabs           rsi, 559
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n540_call_β:            mov              r11, 275;                            jmp   pop$2F2_step
                        .size            n540_call_bx, .-n540_call_bx
                        .type            n541_var_ref_bx, @function
n541_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n541_var_ref_α:         mov              r11, 276
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx;         jmp   n542_lit_string_α
                        .size            n541_var_ref_bx, .-n541_var_ref_bx
                        .type            n542_lit_string_bx, @function
n542_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n542_lit_string_α:      mov              r11, 277
                        mov              qword ptr [rbp + 2720], 2            # result
                        mov              dword ptr [rbp + 2724], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_719_0]
                        mov              qword ptr [rbp + 2728], rax;         jmp   n543_call_α
.Llit_string_α_719_0:   .quad            .Llit_string_α_719_0_s
.Llit_string_α_719_0_s: .string          "italy"
                        .size            n542_lit_string_bx, .-n542_lit_string_bx
                        .type            n543_call_bx, @function
n543_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n543_call_α:            mov              r11, 278
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2664], rax
                        lea              rdi, [rbp + 2656]
                        mov              rsi, qword ptr [rip + .Lcall_α_720_2]
                                                                              jmp   .Lcall_α_720_3
.Lcall_α_720_2:         .quad            .Lcall_α_720_2_s
.Lcall_α_720_2_s:       .string          "italy"
.Lcall_α_720_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n544_var_ref_α
n543_call_β:            mov              r11, 278;                            jmp   pop$2F2_step
                        .size            n543_call_bx, .-n543_call_bx
                        .type            n544_var_ref_bx, @function
n544_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n544_var_ref_α:         mov              r11, 279
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx;         jmp   n545_lit_integer_α
                        .size            n544_var_ref_bx, .-n544_var_ref_bx
                        .type            n545_lit_integer_bx, @function
n545_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n545_lit_integer_α:     mov              r11, 280
                        mov              qword ptr [rbp + 2624], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_723_0]
                        mov              qword ptr [rbp + 2632], rax;         jmp   n546_call_α
.Llit_integer_α_723_0:  .quad            554
                        .size            n545_lit_integer_bx, .-n545_lit_integer_bx
                        .type            n546_call_bx, @function
n546_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n546_call_α:            mov              r11, 281
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2568], rax
                        lea              rdi, [rbp + 2560]
                        movabs           rsi, 554
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n546_call_β:            mov              r11, 281;                            jmp   pop$2F2_step
                        .size            n546_call_bx, .-n546_call_bx
                        .type            n547_var_ref_bx, @function
n547_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n547_var_ref_α:         mov              r11, 282
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx;         jmp   n548_lit_string_α
                        .size            n547_var_ref_bx, .-n547_var_ref_bx
                        .type            n548_lit_string_bx, @function
n548_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n548_lit_string_α:      mov              r11, 283
                        mov              qword ptr [rbp + 2912], 2            # result
                        mov              dword ptr [rbp + 2916], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_727_0]
                        mov              qword ptr [rbp + 2920], rax;         jmp   n549_call_α
.Llit_string_α_727_0:   .quad            .Llit_string_α_727_0_s
.Llit_string_α_727_0_s: .string          "france"
                        .size            n548_lit_string_bx, .-n548_lit_string_bx
                        .type            n549_call_bx, @function
n549_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n549_call_α:            mov              r11, 284
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        mov              rsi, qword ptr [rip + .Lcall_α_728_2]
                                                                              jmp   .Lcall_α_728_3
.Lcall_α_728_2:         .quad            .Lcall_α_728_2_s
.Lcall_α_728_2_s:       .string          "france"
.Lcall_α_728_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n550_var_ref_α
n549_call_β:            mov              r11, 284;                            jmp   pop$2F2_step
                        .size            n549_call_bx, .-n549_call_bx
                        .type            n550_var_ref_bx, @function
n550_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n550_var_ref_α:         mov              r11, 285
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx;         jmp   n551_lit_integer_α
                        .size            n550_var_ref_bx, .-n550_var_ref_bx
                        .type            n551_lit_integer_bx, @function
n551_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n551_lit_integer_α:     mov              r11, 286
                        mov              qword ptr [rbp + 2816], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_731_0]
                        mov              qword ptr [rbp + 2824], rax;         jmp   n552_call_α
.Llit_integer_α_731_0:  .quad            525
                        .size            n551_lit_integer_bx, .-n551_lit_integer_bx
                        .type            n552_call_bx, @function
n552_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n552_call_α:            mov              r11, 287
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2760], rax
                        lea              rdi, [rbp + 2752]
                        movabs           rsi, 525
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n552_call_β:            mov              r11, 287;                            jmp   pop$2F2_step
                        .size            n552_call_bx, .-n552_call_bx
                        .type            n553_var_ref_bx, @function
n553_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n553_var_ref_α:         mov              r11, 288
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx;         jmp   n554_lit_string_α
                        .size            n553_var_ref_bx, .-n553_var_ref_bx
                        .type            n554_lit_string_bx, @function
n554_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n554_lit_string_α:      mov              r11, 289
                        mov              qword ptr [rbp + 3104], 2            # result
                        mov              dword ptr [rbp + 3108], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_735_0]
                        mov              qword ptr [rbp + 3112], rax;         jmp   n555_call_α
.Llit_string_α_735_0:   .quad            .Llit_string_α_735_0_s
.Llit_string_α_735_0_s: .string          "philippines"
                        .size            n554_lit_string_bx, .-n554_lit_string_bx
                        .type            n555_call_bx, @function
n555_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n555_call_α:            mov              r11, 290
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3048], rax
                        lea              rdi, [rbp + 3040]
                        mov              rsi, qword ptr [rip + .Lcall_α_736_2]
                                                                              jmp   .Lcall_α_736_3
.Lcall_α_736_2:         .quad            .Lcall_α_736_2_s
.Lcall_α_736_2_s:       .string          "philippines"
.Lcall_α_736_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n556_var_ref_α
n555_call_β:            mov              r11, 290;                            jmp   pop$2F2_step
                        .size            n555_call_bx, .-n555_call_bx
                        .type            n556_var_ref_bx, @function
n556_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n556_var_ref_α:         mov              r11, 291
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx;         jmp   n557_lit_integer_α
                        .size            n556_var_ref_bx, .-n556_var_ref_bx
                        .type            n557_lit_integer_bx, @function
n557_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n557_lit_integer_α:     mov              r11, 292
                        mov              qword ptr [rbp + 3008], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_739_0]
                        mov              qword ptr [rbp + 3016], rax;         jmp   n558_call_α
.Llit_integer_α_739_0:  .quad            415
                        .size            n557_lit_integer_bx, .-n557_lit_integer_bx
                        .type            n558_call_bx, @function
n558_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n558_call_α:            mov              r11, 293
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2952], rax
                        lea              rdi, [rbp + 2944]
                        movabs           rsi, 415
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n558_call_β:            mov              r11, 293;                            jmp   pop$2F2_step
                        .size            n558_call_bx, .-n558_call_bx
                        .type            n559_var_ref_bx, @function
n559_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n559_var_ref_α:         mov              r11, 294
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx;         jmp   n560_lit_string_α
                        .size            n559_var_ref_bx, .-n559_var_ref_bx
                        .type            n560_lit_string_bx, @function
n560_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n560_lit_string_α:      mov              r11, 295
                        mov              qword ptr [rbp + 3296], 2            # result
                        mov              dword ptr [rbp + 3300], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_743_0]
                        mov              qword ptr [rbp + 3304], rax;         jmp   n561_call_α
.Llit_string_α_743_0:   .quad            .Llit_string_α_743_0_s
.Llit_string_α_743_0_s: .string          "thailand"
                        .size            n560_lit_string_bx, .-n560_lit_string_bx
                        .type            n561_call_bx, @function
n561_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n561_call_α:            mov              r11, 296
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3240], rax
                        lea              rdi, [rbp + 3232]
                        mov              rsi, qword ptr [rip + .Lcall_α_744_2]
                                                                              jmp   .Lcall_α_744_3
.Lcall_α_744_2:         .quad            .Lcall_α_744_2_s
.Lcall_α_744_2_s:       .string          "thailand"
.Lcall_α_744_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n562_var_ref_α
n561_call_β:            mov              r11, 296;                            jmp   pop$2F2_step
                        .size            n561_call_bx, .-n561_call_bx
                        .type            n562_var_ref_bx, @function
n562_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n562_var_ref_α:         mov              r11, 297
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n563_lit_integer_α
                        .size            n562_var_ref_bx, .-n562_var_ref_bx
                        .type            n563_lit_integer_bx, @function
n563_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n563_lit_integer_α:     mov              r11, 298
                        mov              qword ptr [rbp + 3200], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_747_0]
                        mov              qword ptr [rbp + 3208], rax;         jmp   n564_call_α
.Llit_integer_α_747_0:  .quad            410
                        .size            n563_lit_integer_bx, .-n563_lit_integer_bx
                        .type            n564_call_bx, @function
n564_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n564_call_α:            mov              r11, 299
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3144], rax
                        lea              rdi, [rbp + 3136]
                        movabs           rsi, 410
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n564_call_β:            mov              r11, 299;                            jmp   pop$2F2_step
                        .size            n564_call_bx, .-n564_call_bx
                        .type            n565_var_ref_bx, @function
n565_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n565_var_ref_α:         mov              r11, 300
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx;         jmp   n566_lit_string_α
                        .size            n565_var_ref_bx, .-n565_var_ref_bx
                        .type            n566_lit_string_bx, @function
n566_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n566_lit_string_α:      mov              r11, 301
                        mov              qword ptr [rbp + 3488], 2            # result
                        mov              dword ptr [rbp + 3492], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_751_0]
                        mov              qword ptr [rbp + 3496], rax;         jmp   n567_call_α
.Llit_string_α_751_0:   .quad            .Llit_string_α_751_0_s
.Llit_string_α_751_0_s: .string          "turkey"
                        .size            n566_lit_string_bx, .-n566_lit_string_bx
                        .type            n567_call_bx, @function
n567_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n567_call_α:            mov              r11, 302
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3432], rax
                        lea              rdi, [rbp + 3424]
                        mov              rsi, qword ptr [rip + .Lcall_α_752_2]
                                                                              jmp   .Lcall_α_752_3
.Lcall_α_752_2:         .quad            .Lcall_α_752_2_s
.Lcall_α_752_2_s:       .string          "turkey"
.Lcall_α_752_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n568_var_ref_α
n567_call_β:            mov              r11, 302;                            jmp   pop$2F2_step
                        .size            n567_call_bx, .-n567_call_bx
                        .type            n568_var_ref_bx, @function
n568_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n568_var_ref_α:         mov              r11, 303
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx;         jmp   n569_lit_integer_α
                        .size            n568_var_ref_bx, .-n568_var_ref_bx
                        .type            n569_lit_integer_bx, @function
n569_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n569_lit_integer_α:     mov              r11, 304
                        mov              qword ptr [rbp + 3392], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_755_0]
                        mov              qword ptr [rbp + 3400], rax;         jmp   n570_call_α
.Llit_integer_α_755_0:  .quad            383
                        .size            n569_lit_integer_bx, .-n569_lit_integer_bx
                        .type            n570_call_bx, @function
n570_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n570_call_α:            mov              r11, 305
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3336], rax
                        lea              rdi, [rbp + 3328]
                        movabs           rsi, 383
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n570_call_β:            mov              r11, 305;                            jmp   pop$2F2_step
                        .size            n570_call_bx, .-n570_call_bx
                        .type            n571_var_ref_bx, @function
n571_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n571_var_ref_α:         mov              r11, 306
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx;         jmp   n572_lit_string_α
                        .size            n571_var_ref_bx, .-n571_var_ref_bx
                        .type            n572_lit_string_bx, @function
n572_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n572_lit_string_α:      mov              r11, 307
                        mov              qword ptr [rbp + 3680], 2            # result
                        mov              dword ptr [rbp + 3684], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_759_0]
                        mov              qword ptr [rbp + 3688], rax;         jmp   n573_call_α
.Llit_string_α_759_0:   .quad            .Llit_string_α_759_0_s
.Llit_string_α_759_0_s: .string          "egypt"
                        .size            n572_lit_string_bx, .-n572_lit_string_bx
                        .type            n573_call_bx, @function
n573_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n573_call_α:            mov              r11, 308
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3624], rax
                        lea              rdi, [rbp + 3616]
                        mov              rsi, qword ptr [rip + .Lcall_α_760_2]
                                                                              jmp   .Lcall_α_760_3
.Lcall_α_760_2:         .quad            .Lcall_α_760_2_s
.Lcall_α_760_2_s:       .string          "egypt"
.Lcall_α_760_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n574_var_ref_α
n573_call_β:            mov              r11, 308;                            jmp   pop$2F2_step
                        .size            n573_call_bx, .-n573_call_bx
                        .type            n574_var_ref_bx, @function
n574_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n574_var_ref_α:         mov              r11, 309
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx;         jmp   n575_lit_integer_α
                        .size            n574_var_ref_bx, .-n574_var_ref_bx
                        .type            n575_lit_integer_bx, @function
n575_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n575_lit_integer_α:     mov              r11, 310
                        mov              qword ptr [rbp + 3584], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_763_0]
                        mov              qword ptr [rbp + 3592], rax;         jmp   n576_call_α
.Llit_integer_α_763_0:  .quad            364
                        .size            n575_lit_integer_bx, .-n575_lit_integer_bx
                        .type            n576_call_bx, @function
n576_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n576_call_α:            mov              r11, 311
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3528], rax
                        lea              rdi, [rbp + 3520]
                        movabs           rsi, 364
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n576_call_β:            mov              r11, 311;                            jmp   pop$2F2_step
                        .size            n576_call_bx, .-n576_call_bx
                        .type            n577_var_ref_bx, @function
n577_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n577_var_ref_α:         mov              r11, 312
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx;         jmp   n578_lit_string_α
                        .size            n577_var_ref_bx, .-n577_var_ref_bx
                        .type            n578_lit_string_bx, @function
n578_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n578_lit_string_α:      mov              r11, 313
                        mov              qword ptr [rbp + 3872], 2            # result
                        mov              dword ptr [rbp + 3876], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_767_0]
                        mov              qword ptr [rbp + 3880], rax;         jmp   n579_call_α
.Llit_string_α_767_0:   .quad            .Llit_string_α_767_0_s
.Llit_string_α_767_0_s: .string          "spain"
                        .size            n578_lit_string_bx, .-n578_lit_string_bx
                        .type            n579_call_bx, @function
n579_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n579_call_α:            mov              r11, 314
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3816], rax
                        lea              rdi, [rbp + 3808]
                        mov              rsi, qword ptr [rip + .Lcall_α_768_2]
                                                                              jmp   .Lcall_α_768_3
.Lcall_α_768_2:         .quad            .Lcall_α_768_2_s
.Lcall_α_768_2_s:       .string          "spain"
.Lcall_α_768_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n580_var_ref_α
n579_call_β:            mov              r11, 314;                            jmp   pop$2F2_step
                        .size            n579_call_bx, .-n579_call_bx
                        .type            n580_var_ref_bx, @function
n580_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n580_var_ref_α:         mov              r11, 315
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx;         jmp   n581_lit_integer_α
                        .size            n580_var_ref_bx, .-n580_var_ref_bx
                        .type            n581_lit_integer_bx, @function
n581_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n581_lit_integer_α:     mov              r11, 316
                        mov              qword ptr [rbp + 3776], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_771_0]
                        mov              qword ptr [rbp + 3784], rax;         jmp   n582_call_α
.Llit_integer_α_771_0:  .quad            352
                        .size            n581_lit_integer_bx, .-n581_lit_integer_bx
                        .type            n582_call_bx, @function
n582_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n582_call_α:            mov              r11, 317
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3720], rax
                        lea              rdi, [rbp + 3712]
                        movabs           rsi, 352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n582_call_β:            mov              r11, 317;                            jmp   pop$2F2_step
                        .size            n582_call_bx, .-n582_call_bx
                        .type            n583_var_ref_bx, @function
n583_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n583_var_ref_α:         mov              r11, 318
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx;         jmp   n584_lit_string_α
                        .size            n583_var_ref_bx, .-n583_var_ref_bx
                        .type            n584_lit_string_bx, @function
n584_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n584_lit_string_α:      mov              r11, 319
                        mov              qword ptr [rbp + 4064], 2            # result
                        mov              dword ptr [rbp + 4068], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_775_0]
                        mov              qword ptr [rbp + 4072], rax;         jmp   n585_call_α
.Llit_string_α_775_0:   .quad            .Llit_string_α_775_0_s
.Llit_string_α_775_0_s: .string          "poland"
                        .size            n584_lit_string_bx, .-n584_lit_string_bx
                        .type            n585_call_bx, @function
n585_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n585_call_α:            mov              r11, 320
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4008], rax
                        lea              rdi, [rbp + 4000]
                        mov              rsi, qword ptr [rip + .Lcall_α_776_2]
                                                                              jmp   .Lcall_α_776_3
.Lcall_α_776_2:         .quad            .Lcall_α_776_2_s
.Lcall_α_776_2_s:       .string          "poland"
.Lcall_α_776_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n586_var_ref_α
n585_call_β:            mov              r11, 320;                            jmp   pop$2F2_step
                        .size            n585_call_bx, .-n585_call_bx
                        .type            n586_var_ref_bx, @function
n586_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n586_var_ref_α:         mov              r11, 321
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx;         jmp   n587_lit_integer_α
                        .size            n586_var_ref_bx, .-n586_var_ref_bx
                        .type            n587_lit_integer_bx, @function
n587_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n587_lit_integer_α:     mov              r11, 322
                        mov              qword ptr [rbp + 3968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_779_0]
                        mov              qword ptr [rbp + 3976], rax;         jmp   n588_call_α
.Llit_integer_α_779_0:  .quad            337
                        .size            n587_lit_integer_bx, .-n587_lit_integer_bx
                        .type            n588_call_bx, @function
n588_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n588_call_α:            mov              r11, 323
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 3912], rax
                        lea              rdi, [rbp + 3904]
                        movabs           rsi, 337
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n588_call_β:            mov              r11, 323;                            jmp   pop$2F2_step
                        .size            n588_call_bx, .-n588_call_bx
                        .type            n589_var_ref_bx, @function
n589_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n589_var_ref_α:         mov              r11, 324
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx;         jmp   n590_lit_string_α
                        .size            n589_var_ref_bx, .-n589_var_ref_bx
                        .type            n590_lit_string_bx, @function
n590_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_string_α:      mov              r11, 325
                        mov              qword ptr [rbp + 4256], 2            # result
                        mov              dword ptr [rbp + 4260], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_783_0]
                        mov              qword ptr [rbp + 4264], rax;         jmp   n591_call_α
.Llit_string_α_783_0:   .quad            .Llit_string_α_783_0_s
.Llit_string_α_783_0_s: .string          "s_korea"
                        .size            n590_lit_string_bx, .-n590_lit_string_bx
                        .type            n591_call_bx, @function
n591_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n591_call_α:            mov              r11, 326
                        mov              rax, qword ptr [rbp + 4240]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 4200], rax
                        lea              rdi, [rbp + 4192]
                        mov              rsi, qword ptr [rip + .Lcall_α_784_2]
                                                                              jmp   .Lcall_α_784_3
.Lcall_α_784_2:         .quad            .Lcall_α_784_2_s
.Lcall_α_784_2_s:       .string          "s_korea"
.Lcall_α_784_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n592_var_ref_α
n591_call_β:            mov              r11, 326;                            jmp   pop$2F2_step
                        .size            n591_call_bx, .-n591_call_bx
                        .type            n592_var_ref_bx, @function
n592_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n592_var_ref_α:         mov              r11, 327
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx;         jmp   n593_lit_integer_α
                        .size            n592_var_ref_bx, .-n592_var_ref_bx
                        .type            n593_lit_integer_bx, @function
n593_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n593_lit_integer_α:     mov              r11, 328
                        mov              qword ptr [rbp + 4160], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_787_0]
                        mov              qword ptr [rbp + 4168], rax;         jmp   n594_call_α
.Llit_integer_α_787_0:  .quad            335
                        .size            n593_lit_integer_bx, .-n593_lit_integer_bx
                        .type            n594_call_bx, @function
n594_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n594_call_α:            mov              r11, 329
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4104], rax
                        lea              rdi, [rbp + 4096]
                        movabs           rsi, 335
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n594_call_β:            mov              r11, 329;                            jmp   pop$2F2_step
                        .size            n594_call_bx, .-n594_call_bx
                        .type            n595_var_ref_bx, @function
n595_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n595_var_ref_α:         mov              r11, 330
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx;         jmp   n596_lit_string_α
                        .size            n595_var_ref_bx, .-n595_var_ref_bx
                        .type            n596_lit_string_bx, @function
n596_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n596_lit_string_α:      mov              r11, 331
                        mov              qword ptr [rbp + 4448], 2            # result
                        mov              dword ptr [rbp + 4452], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_791_0]
                        mov              qword ptr [rbp + 4456], rax;         jmp   n597_call_α
.Llit_string_α_791_0:   .quad            .Llit_string_α_791_0_s
.Llit_string_α_791_0_s: .string          "iran"
                        .size            n596_lit_string_bx, .-n596_lit_string_bx
                        .type            n597_call_bx, @function
n597_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n597_call_α:            mov              r11, 332
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 4392], rax
                        lea              rdi, [rbp + 4384]
                        mov              rsi, qword ptr [rip + .Lcall_α_792_2]
                                                                              jmp   .Lcall_α_792_3
.Lcall_α_792_2:         .quad            .Lcall_α_792_2_s
.Lcall_α_792_2_s:       .string          "iran"
.Lcall_α_792_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n598_var_ref_α
n597_call_β:            mov              r11, 332;                            jmp   pop$2F2_step
                        .size            n597_call_bx, .-n597_call_bx
                        .type            n598_var_ref_bx, @function
n598_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n598_var_ref_α:         mov              r11, 333
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx;         jmp   n599_lit_integer_α
                        .size            n598_var_ref_bx, .-n598_var_ref_bx
                        .type            n599_lit_integer_bx, @function
n599_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n599_lit_integer_α:     mov              r11, 334
                        mov              qword ptr [rbp + 4352], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_795_0]
                        mov              qword ptr [rbp + 4360], rax;         jmp   n600_call_α
.Llit_integer_α_795_0:  .quad            320
                        .size            n599_lit_integer_bx, .-n599_lit_integer_bx
                        .type            n600_call_bx, @function
n600_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n600_call_α:            mov              r11, 335
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4296], rax
                        lea              rdi, [rbp + 4288]
                        movabs           rsi, 320
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n600_call_β:            mov              r11, 335;                            jmp   pop$2F2_step
                        .size            n600_call_bx, .-n600_call_bx
                        .type            n601_var_ref_bx, @function
n601_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n601_var_ref_α:         mov              r11, 336
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx;         jmp   n602_lit_string_α
                        .size            n601_var_ref_bx, .-n601_var_ref_bx
                        .type            n602_lit_string_bx, @function
n602_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n602_lit_string_α:      mov              r11, 337
                        mov              qword ptr [rbp + 4640], 2            # result
                        mov              dword ptr [rbp + 4644], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_799_0]
                        mov              qword ptr [rbp + 4648], rax;         jmp   n603_call_α
.Llit_string_α_799_0:   .quad            .Llit_string_α_799_0_s
.Llit_string_α_799_0_s: .string          "ethiopia"
                        .size            n602_lit_string_bx, .-n602_lit_string_bx
                        .type            n603_call_bx, @function
n603_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n603_call_α:            mov              r11, 338
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 4584], rax
                        lea              rdi, [rbp + 4576]
                        mov              rsi, qword ptr [rip + .Lcall_α_800_2]
                                                                              jmp   .Lcall_α_800_3
.Lcall_α_800_2:         .quad            .Lcall_α_800_2_s
.Lcall_α_800_2_s:       .string          "ethiopia"
.Lcall_α_800_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n604_var_ref_α
n603_call_β:            mov              r11, 338;                            jmp   pop$2F2_step
                        .size            n603_call_bx, .-n603_call_bx
                        .type            n604_var_ref_bx, @function
n604_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n604_var_ref_α:         mov              r11, 339
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx;         jmp   n605_lit_integer_α
                        .size            n604_var_ref_bx, .-n604_var_ref_bx
                        .type            n605_lit_integer_bx, @function
n605_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n605_lit_integer_α:     mov              r11, 340
                        mov              qword ptr [rbp + 4544], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_803_0]
                        mov              qword ptr [rbp + 4552], rax;         jmp   n606_call_α
.Llit_integer_α_803_0:  .quad            272
                        .size            n605_lit_integer_bx, .-n605_lit_integer_bx
                        .type            n606_call_bx, @function
n606_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n606_call_α:            mov              r11, 341
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4488], rax
                        lea              rdi, [rbp + 4480]
                        movabs           rsi, 272
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n606_call_β:            mov              r11, 341;                            jmp   pop$2F2_step
                        .size            n606_call_bx, .-n606_call_bx
                        .type            n607_var_ref_bx, @function
n607_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n607_var_ref_α:         mov              r11, 342
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx;         jmp   n608_lit_string_α
                        .size            n607_var_ref_bx, .-n607_var_ref_bx
                        .type            n608_lit_string_bx, @function
n608_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n608_lit_string_α:      mov              r11, 343
                        mov              qword ptr [rbp + 4832], 2            # result
                        mov              dword ptr [rbp + 4836], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_807_0]
                        mov              qword ptr [rbp + 4840], rax;         jmp   n609_call_α
.Llit_string_α_807_0:   .quad            .Llit_string_α_807_0_s
.Llit_string_α_807_0_s: .string          "argentina"
                        .size            n608_lit_string_bx, .-n608_lit_string_bx
                        .type            n609_call_bx, @function
n609_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n609_call_α:            mov              r11, 344
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 4776], rax
                        lea              rdi, [rbp + 4768]
                        mov              rsi, qword ptr [rip + .Lcall_α_808_2]
                                                                              jmp   .Lcall_α_808_3
.Lcall_α_808_2:         .quad            .Lcall_α_808_2_s
.Lcall_α_808_2_s:       .string          "argentina"
.Lcall_α_808_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n610_var_ref_α
n609_call_β:            mov              r11, 344;                            jmp   pop$2F2_step
                        .size            n609_call_bx, .-n609_call_bx
                        .type            n610_var_ref_bx, @function
n610_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n610_var_ref_α:         mov              r11, 345
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4720], rax
                        mov              qword ptr [rbp + 4728], rdx;         jmp   n611_lit_integer_α
                        .size            n610_var_ref_bx, .-n610_var_ref_bx
                        .type            n611_lit_integer_bx, @function
n611_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n611_lit_integer_α:     mov              r11, 346
                        mov              qword ptr [rbp + 4736], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_811_0]
                        mov              qword ptr [rbp + 4744], rax;         jmp   n612_call_α
.Llit_integer_α_811_0:  .quad            251
                        .size            n611_lit_integer_bx, .-n611_lit_integer_bx
                        .type            n612_call_bx, @function
n612_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n612_call_α:            mov              r11, 347
                        mov              rax, qword ptr [rbp + 4720]
                        mov              qword ptr [rbp + 4672], rax
                        mov              rax, qword ptr [rbp + 4728]
                        mov              qword ptr [rbp + 4680], rax
                        lea              rdi, [rbp + 4672]
                        movabs           rsi, 251
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4656], rax
                        mov              qword ptr [rbp + 4664], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   pop$2F2_γ
n612_call_β:            mov              r11, 347;                            jmp   pop$2F2_step
                        .size            n612_call_bx, .-n612_call_bx
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_step:
                        mov              rdi, qword ptr [rbp + 4864]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4880], 0
                        mov              rax, qword ptr [rbp + 4872]
                        test             rax, rax
                                                                              je    pop$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt1:
                        lea              rax, [rip + pop$2F2_alt2]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n469_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt2:
                        lea              rax, [rip + pop$2F2_alt3]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n475_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt3:
                        lea              rax, [rip + pop$2F2_alt4]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n481_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt4:
                        lea              rax, [rip + pop$2F2_alt5]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n487_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt5:
                        lea              rax, [rip + pop$2F2_alt6]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n493_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt6:
                        lea              rax, [rip + pop$2F2_alt7]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n499_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt7:
                        lea              rax, [rip + pop$2F2_alt8]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n505_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt8:
                        lea              rax, [rip + pop$2F2_alt9]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n511_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt9:
                        lea              rax, [rip + pop$2F2_alt10]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n517_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt10:
                        lea              rax, [rip + pop$2F2_alt11]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n523_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt11:
                        lea              rax, [rip + pop$2F2_alt12]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n529_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt12:
                        lea              rax, [rip + pop$2F2_alt13]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n535_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt13:
                        lea              rax, [rip + pop$2F2_alt14]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n541_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt14:
                        lea              rax, [rip + pop$2F2_alt15]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n547_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt15:
                        lea              rax, [rip + pop$2F2_alt16]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n553_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt16:
                        lea              rax, [rip + pop$2F2_alt17]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n559_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt17:
                        lea              rax, [rip + pop$2F2_alt18]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n565_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt18:
                        lea              rax, [rip + pop$2F2_alt19]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n571_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt19:
                        lea              rax, [rip + pop$2F2_alt20]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n577_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt20:
                        lea              rax, [rip + pop$2F2_alt21]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n583_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt21:
                        lea              rax, [rip + pop$2F2_alt22]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n589_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt22:
                        lea              rax, [rip + pop$2F2_alt23]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n595_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt23:
                        lea              rax, [rip + pop$2F2_alt24]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n601_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt24:
                        xor              eax, eax
                        mov              qword ptr [rbp + 4872], rax
                        mov              r13, qword ptr [rbp + 4888]
                                                                              jmp   n607_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_β:
                        test             r15, r15
                                                                              jne   pop$2F2_ω
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 4880], 0
                        test             rax, rax
                                                                              jne   pop$2F2_βres
                                                                              jmp   pop$2F2_step
pop$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 4904]
                        mov              rax, qword ptr [rbp + 4888]
                        cmp              r13, rax;                            je    pop$2F2_altdet
                        lea              rdx, [rip + pop$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 4920];         jmp   rcx
pop$2F2_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 4928]
                        mov              rbp, qword ptr [rbp + 4920];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_ω:
                        mov              rcx, qword ptr [rbp + 4912]
                        mov              r13, qword ptr [rbp + 4888]
                        lea              rsp, [rbp + 4928]
                        mov              rbp, qword ptr [rbp + 4920];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__density$2F2:
                        sub              rsp, 1184
                        mov              qword ptr [rsp + 1160], rcx
                        mov              qword ptr [rsp + 1168], rdx
                        mov              qword ptr [rsp + 1176], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1144], r13
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1120], r12
                        mov              rdi, rsp
                        mov              esi, 1040
                        mov              edx, 1120
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
density$2F2_α_body:
                        .type            n813_var_ref_bx, @function
n813_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n813_var_ref_α:         mov              r11, 348
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n814_var_ref_α
                        .size            n813_var_ref_bx, .-n813_var_ref_bx
                        .type            n814_var_ref_bx, @function
n814_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n814_var_ref_α:         mov              r11, 349
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1088]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n815_call_α
                        .size            n814_var_ref_bx, .-n814_var_ref_bx
                        .type            n815_call_bx, @function
n815_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n815_call_α:            mov              r11, 350
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 960]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n816_var_ref_α
n815_call_β:            mov              r11, 350;                            jmp   density$2F2_step
                        .size            n815_call_bx, .-n815_call_bx
                        .type            n816_var_ref_bx, @function
n816_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n816_var_ref_α:         mov              r11, 351
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n817_var_ref_α
                        .size            n816_var_ref_bx, .-n816_var_ref_bx
                        .type            n817_var_ref_bx, @function
n817_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n817_var_ref_α:         mov              r11, 352
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n818_call_α
                        .size            n817_var_ref_bx, .-n817_var_ref_bx
                        .type            n818_call_bx, @function
n818_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n818_call_α:            mov              r11, 353
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n819_var_ref_α
n818_call_β:            mov              r11, 353;                            jmp   density$2F2_step
                        .size            n818_call_bx, .-n818_call_bx
                        .type            n819_var_ref_bx, @function
n819_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n819_var_ref_α:         mov              r11, 354
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1088]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n820_var_ref_α
                        .size            n819_var_ref_bx, .-n819_var_ref_bx
                        .type            n820_var_ref_bx, @function
n820_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n820_var_ref_α:         mov              r11, 355
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n821_call_proc_staged_α
                        .size            n820_var_ref_bx, .-n820_var_ref_bx
                        .type            n821_call_proc_staged_bx, @function
n821_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n821_call_proc_staged_α:
                        mov              r11, 356
                        mov              qword ptr [rbp + 784], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_854_200
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_854_201
.Lcall_proc_staged_α_854_200:
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
.Lcall_proc_staged_α_854_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_854_202
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_854_203
.Lcall_proc_staged_α_854_202:
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
.Lcall_proc_staged_α_854_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_854_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_854_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_854_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_854_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_854_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_854_3:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_854_21
                        add              rsp, 32
.Lcall_proc_staged_α_854_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_854_2
.Lcall_proc_staged_α_854_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 784], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_854_2
.Lcall_proc_staged_α_854_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_854_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   density$2F2_step
.Lcall_proc_staged_α_854_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_854_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
.Lcall_proc_staged_α_854_29:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n822_var_ref_α
n821_call_proc_staged_β:
                        mov              r11, 356
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_854_22
                        mov              rax, qword ptr [rbp + 784]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_854_22
                        mov              rcx, qword ptr [rbp + 792]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_854_22:
                                                                              jmp   density$2F2_step
.Lcall_proc_staged_α_854_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n822_var_ref_α
.Lcall_proc_staged_α_854_0:
                        .quad            .Lcall_proc_staged_α_854_0_s
.Lcall_proc_staged_α_854_0_s:
                        .string          "pop/2"
                        .size            n821_call_proc_staged_bx, .-n821_call_proc_staged_bx
                        .type            n822_var_ref_bx, @function
n822_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n822_var_ref_α:         mov              r11, 357
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1088]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n823_var_ref_α
                        .size            n822_var_ref_bx, .-n822_var_ref_bx
                        .type            n823_var_ref_bx, @function
n823_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n823_var_ref_α:         mov              r11, 358
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1072]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n824_call_proc_staged_α
                        .size            n823_var_ref_bx, .-n823_var_ref_bx
                        .type            n824_call_proc_staged_bx, @function
n824_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n824_call_proc_staged_α:
                        mov              r11, 359
                        mov              qword ptr [rbp + 672], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_860_200
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_860_201
.Lcall_proc_staged_α_860_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_860_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_860_202
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_860_203
.Lcall_proc_staged_α_860_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_860_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_860_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_860_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_860_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_860_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_860_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_860_3:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_860_21
                        add              rsp, 32
.Lcall_proc_staged_α_860_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_860_2
.Lcall_proc_staged_α_860_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 672], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_860_2
.Lcall_proc_staged_α_860_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_860_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n821_call_proc_staged_β
.Lcall_proc_staged_α_860_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_860_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
.Lcall_proc_staged_α_860_29:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    n821_call_proc_staged_β
                                                                              jmp   n825_var_ref_α
n824_call_proc_staged_β:
                        mov              r11, 359
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_860_22
                        mov              rax, qword ptr [rbp + 672]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_860_22
                        mov              rcx, qword ptr [rbp + 680]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_860_22:
                                                                              jmp   n821_call_proc_staged_β
.Lcall_proc_staged_α_860_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    n821_call_proc_staged_β
                                                                              jmp   n825_var_ref_α
.Lcall_proc_staged_α_860_0:
                        .quad            .Lcall_proc_staged_α_860_0_s
.Lcall_proc_staged_α_860_0_s:
                        .string          "area/2"
                        .size            n824_call_proc_staged_bx, .-n824_call_proc_staged_bx
                        .type            n825_var_ref_bx, @function
n825_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n825_var_ref_α:         mov              r11, 360
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n826_var_α
                        .size            n825_var_ref_bx, .-n825_var_ref_bx
                        .type            n826_var_bx, @function
n826_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n826_var_α:             mov              r11, 361
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 264], rax;          jmp   n827_call_α
                        .size            n826_var_bx, .-n826_var_bx
                        .type            n827_call_bx, @function
n827_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n827_call_α:            mov              r11, 362
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n828_lit_integer_α
n827_call_β:            mov              r11, 362;                            jmp   density$2F2_step
                        .size            n827_call_bx, .-n827_call_bx
                        .type            n828_lit_integer_bx, @function
n828_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n828_lit_integer_α:     mov              r11, 363
                        mov              qword ptr [rbp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_866_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n829_call_α
.Llit_integer_α_866_0:  .quad            100
                        .size            n828_lit_integer_bx, .-n828_lit_integer_bx
                        .type            n829_call_bx, @function
n829_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n829_call_α:            mov              r11, 364
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n830_call_α
n829_call_β:            mov              r11, 364;                            jmp   density$2F2_step
                        .size            n829_call_bx, .-n829_call_bx
                        .type            n830_call_bx, @function
n830_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n830_call_α:            mov              r11, 365
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 328]
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
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n831_call_α
n830_call_β:            mov              r11, 365;                            jmp   density$2F2_step
                        .size            n830_call_bx, .-n830_call_bx
                        .type            n831_call_bx, @function
n831_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n831_call_α:            mov              r11, 366
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n832_var_α
n831_call_β:            mov              r11, 366;                            jmp   density$2F2_step
                        .size            n831_call_bx, .-n831_call_bx
                        .type            n832_var_bx, @function
n832_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n832_var_α:             mov              r11, 367
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 440], rax;          jmp   n833_call_α
                        .size            n832_var_bx, .-n832_var_bx
                        .type            n833_call_bx, @function
n833_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n833_call_α:            mov              r11, 368
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n834_lit_string_α
n833_call_β:            mov              r11, 368;                            jmp   density$2F2_step
                        .size            n833_call_bx, .-n833_call_bx
                        .type            n834_lit_string_bx, @function
n834_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n834_lit_string_α:      mov              r11, 369
                        mov              qword ptr [rbp + 560], 2             # result
                        mov              dword ptr [rbp + 564], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_873_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n835_call_α
.Llit_string_α_873_0:   .quad            .Llit_string_α_873_0_s
.Llit_string_α_873_0_s: .string          "//"
                        .size            n834_lit_string_bx, .-n834_lit_string_bx
                        .type            n835_call_bx, @function
n835_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n835_call_α:            mov              r11, 370
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n836_call_α
n835_call_β:            mov              r11, 370;                            jmp   density$2F2_step
                        .size            n835_call_bx, .-n835_call_bx
                        .type            n836_call_bx, @function
n836_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n836_call_α:            mov              r11, 371
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n837_call_α
n836_call_β:            mov              r11, 371;                            jmp   density$2F2_step
                        .size            n836_call_bx, .-n836_call_bx
                        .type            n837_call_bx, @function
n837_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n837_call_α:            mov              r11, 372
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n838_call_α
n837_call_β:            mov              r11, 372;                            jmp   density$2F2_step
                        .size            n837_call_bx, .-n837_call_bx
                        .type            n838_call_bx, @function
n838_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n838_call_α:            mov              r11, 373
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n824_call_proc_staged_β
                                                                              jmp   density$2F2_ret0
n838_call_β:            mov              r11, 373;                            jmp   n824_call_proc_staged_β
                        .size            n838_call_bx, .-n838_call_bx
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_ret0:
                        lea              rax, [rip + n824_call_proc_staged_β]
                        mov              qword ptr [rbp + 1136], rax
                                                                              jmp   density$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_step:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1088], 0
                        mov              qword ptr [rbp + 1096], 0
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 1048], 0
                        mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                        mov              qword ptr [rbp + 1072], 0
                        mov              qword ptr [rbp + 1080], 0
                        mov              rax, qword ptr [rbp + 1128]
                        test             rax, rax
                                                                              je    density$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_β:
                        test             r15, r15
                                                                              jne   density$2F2_ω
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1136], 0
                        test             rax, rax
                                                                              jne   density$2F2_βres
                                                                              jmp   density$2F2_step
density$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1160]
                        mov              rax, qword ptr [rbp + 1144]
                        cmp              r13, rax;                            je    density$2F2_altdet
                        lea              rdx, [rip + density$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1176];         jmp   rcx
density$2F2_altdet:     xor              eax, eax
                        lea              rsp, [rbp + 1184]
                        mov              rbp, qword ptr [rbp + 1176];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_ω:
                        mov              rcx, qword ptr [rbp + 1168]
                        mov              r13, qword ptr [rbp + 1144]
                        lea              rsp, [rbp + 1184]
                        mov              rbp, qword ptr [rbp + 1176];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__main$2F0:
                        sub              rsp, 1152
                        mov              qword ptr [rsp + 1128], rcx
                        mov              qword ptr [rsp + 1136], rdx
                        mov              qword ptr [rsp + 1144], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1112], r13
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1088], r12
                        mov              rdi, rsp
                        mov              esi, 1008
                        mov              edx, 1088
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                        .type            n878_bound_bx, @function
n878_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n878_bound_α:           mov              r11, 374
                        mov              qword ptr [rbp + 64], r12
                        lea              rdi, [rbp + 1088]
                        mov              rsi, rbp
                        call             rt_pl_disj_open@PLT;                 jmp   n879_lit_string_α
                        .size            n878_bound_bx, .-n878_bound_bx
                        .type            n879_lit_string_bx, @function
n879_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n879_lit_string_α:      mov              r11, 375
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_911_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n880_var_ref_α
.Llit_string_α_911_0:   .quad            .Llit_string_α_911_0_s
.Llit_string_α_911_0_s: .string          "."
                        .size            n879_lit_string_bx, .-n879_lit_string_bx
                        .type            n880_var_ref_bx, @function
n880_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n880_var_ref_α:         mov              r11, 376
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n881_lit_string_α
                        .size            n880_var_ref_bx, .-n880_var_ref_bx
                        .type            n881_lit_string_bx, @function
n881_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n881_lit_string_α:      mov              r11, 377
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_914_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n882_var_ref_α
.Llit_string_α_914_0:   .quad            .Llit_string_α_914_0_s
.Llit_string_α_914_0_s: .string          "."
                        .size            n881_lit_string_bx, .-n881_lit_string_bx
                        .type            n882_var_ref_bx, @function
n882_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n882_var_ref_α:         mov              r11, 378
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n883_lit_string_α
                        .size            n882_var_ref_bx, .-n882_var_ref_bx
                        .type            n883_lit_string_bx, @function
n883_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n883_lit_string_α:      mov              r11, 379
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_917_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n884_var_ref_α
.Llit_string_α_917_0:   .quad            .Llit_string_α_917_0_s
.Llit_string_α_917_0_s: .string          "."
                        .size            n883_lit_string_bx, .-n883_lit_string_bx
                        .type            n884_var_ref_bx, @function
n884_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n884_var_ref_α:         mov              r11, 380
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n885_lit_string_α
                        .size            n884_var_ref_bx, .-n884_var_ref_bx
                        .type            n885_lit_string_bx, @function
n885_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n885_lit_string_α:      mov              r11, 381
                        mov              qword ptr [rbp + 656], 2             # result
                        mov              dword ptr [rbp + 660], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_920_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n886_var_ref_α
.Llit_string_α_920_0:   .quad            .Llit_string_α_920_0_s
.Llit_string_α_920_0_s: .string          "."
                        .size            n885_lit_string_bx, .-n885_lit_string_bx
                        .type            n886_var_ref_bx, @function
n886_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n886_var_ref_α:         mov              r11, 382
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n887_lit_string_α
                        .size            n886_var_ref_bx, .-n886_var_ref_bx
                        .type            n887_lit_string_bx, @function
n887_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n887_lit_string_α:      mov              r11, 383
                        mov              qword ptr [rbp + 544], 2             # result
                        mov              dword ptr [rbp + 548], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_923_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n888_call_α
.Llit_string_α_923_0:   .quad            .Llit_string_α_923_0_s
.Llit_string_α_923_0_s: .string          "[]"
                        .size            n887_lit_string_bx, .-n887_lit_string_bx
                        .type            n888_call_bx, @function
n888_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n888_call_α:            mov              r11, 384
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 568]
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
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n889_call_α
n888_call_β:            mov              r11, 384;                            jmp   main$2F0_ω
                        .size            n888_call_bx, .-n888_call_bx
                        .type            n889_call_bx, @function
n889_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n889_call_α:            mov              r11, 385
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 680]
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
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n890_call_α
n889_call_β:            mov              r11, 385;                            jmp   main$2F0_ω
                        .size            n889_call_bx, .-n889_call_bx
                        .type            n890_call_bx, @function
n890_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n890_call_α:            mov              r11, 386
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 792]
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
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n891_call_α
n890_call_β:            mov              r11, 386;                            jmp   main$2F0_ω
                        .size            n890_call_bx, .-n890_call_bx
                        .type            n891_call_bx, @function
n891_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n891_call_α:            mov              r11, 387
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 904]
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
                        cmp              al, 104;                             je    n902_unmark_α
                                                                              jmp   n892_call_proc_staged_α
n891_call_β:            mov              r11, 387;                            jmp   n902_unmark_α
                        .size            n891_call_bx, .-n891_call_bx
                        .type            n892_call_proc_staged_bx, @function
n892_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n892_call_proc_staged_α:
                        mov              r11, 388
                        mov              qword ptr [rbp + 512], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_929_200
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_929_201
.Lcall_proc_staged_α_929_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_929_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_929_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_929_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_929_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_929_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_929_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_929_3:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_929_21
                        add              rsp, 32
.Lcall_proc_staged_α_929_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_929_2
.Lcall_proc_staged_α_929_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 512], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_929_2
.Lcall_proc_staged_α_929_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_929_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n902_unmark_α
.Lcall_proc_staged_α_929_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_929_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
.Lcall_proc_staged_α_929_29:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n902_unmark_α
                                                                              jmp   n893_lit_string_α
n892_call_proc_staged_β:
                        mov              r11, 388
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_929_22
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_929_22
                        mov              rcx, qword ptr [rbp + 520]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_929_22:
                                                                              jmp   n902_unmark_α
.Lcall_proc_staged_α_929_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n902_unmark_α
                                                                              jmp   n893_lit_string_α
.Lcall_proc_staged_α_929_0:
                        .quad            .Lcall_proc_staged_α_929_0_s
.Lcall_proc_staged_α_929_0_s:
                        .string          "query/1"
                        .size            n892_call_proc_staged_bx, .-n892_call_proc_staged_bx
                        .type            n893_lit_string_bx, @function
n893_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n893_lit_string_α:      mov              r11, 389
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_930_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n894_var_ref_α
.Llit_string_α_930_0:   .quad            .Llit_string_α_930_0_s
.Llit_string_α_930_0_s: .string          "."
                        .size            n893_lit_string_bx, .-n893_lit_string_bx
                        .type            n894_var_ref_bx, @function
n894_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n894_var_ref_α:         mov              r11, 390
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n895_lit_string_α
                        .size            n894_var_ref_bx, .-n894_var_ref_bx
                        .type            n895_lit_string_bx, @function
n895_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n895_lit_string_α:      mov              r11, 391
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_933_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n896_var_ref_α
.Llit_string_α_933_0:   .quad            .Llit_string_α_933_0_s
.Llit_string_α_933_0_s: .string          "."
                        .size            n895_lit_string_bx, .-n895_lit_string_bx
                        .type            n896_var_ref_bx, @function
n896_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n896_var_ref_α:         mov              r11, 392
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n897_lit_string_α
                        .size            n896_var_ref_bx, .-n896_var_ref_bx
                        .type            n897_lit_string_bx, @function
n897_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n897_lit_string_α:      mov              r11, 393
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_936_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n898_call_α
.Llit_string_α_936_0:   .quad            .Llit_string_α_936_0_s
.Llit_string_α_936_0_s: .string          "[]"
                        .size            n897_lit_string_bx, .-n897_lit_string_bx
                        .type            n898_call_bx, @function
n898_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n898_call_α:            mov              r11, 394
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
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n899_call_α
n898_call_β:            mov              r11, 394;                            jmp   main$2F0_ω
                        .size            n898_call_bx, .-n898_call_bx
                        .type            n899_call_bx, @function
n899_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n899_call_α:            mov              r11, 395
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
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n906_unmark_α
                                                                              jmp   n900_call_α
n899_call_β:            mov              r11, 395;                            jmp   n906_unmark_α
                        .size            n899_call_bx, .-n899_call_bx
                        .type            n900_call_bx, @function
n900_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n900_call_α:            mov              r11, 396
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dop_write@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    n906_unmark_α
                                                                              jmp   n901_move_label_α
n900_call_β:            mov              r11, 396;                            jmp   n906_unmark_α
                        .size            n900_call_bx, .-n900_call_bx
                        .type            n901_move_label_bx, @function
n901_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n901_move_label_α:      mov              r11, 397
                        lea              rax, [rip + n907_indirect_goto_α]
                        mov              qword ptr [rbp + 48], rax;           jmp   n908_call_α
                        .size            n901_move_label_bx, .-n901_move_label_bx
                        .type            n902_unmark_bx, @function
n902_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n902_unmark_α:          mov              r11, 398
                        mov              rdi, qword ptr [rbp + 64]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   main$2F0_step
                                                                              jmp   n903_lit_string_α
                        .size            n902_unmark_bx, .-n902_unmark_bx
                        .type            n903_lit_string_bx, @function
n903_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n903_lit_string_α:      mov              r11, 399
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_944_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n904_call_α
.Llit_string_α_944_0:   .quad            .Llit_string_α_944_0_s
.Llit_string_α_944_0_s: .string          "none"
                        .size            n903_lit_string_bx, .-n903_lit_string_bx
                        .type            n904_call_bx, @function
n904_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n904_call_α:            mov              r11, 400
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dop_write@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    n906_unmark_α
                                                                              jmp   n905_move_label_α
n904_call_β:            mov              r11, 400;                            jmp   n906_unmark_α
                        .size            n904_call_bx, .-n904_call_bx
                        .type            n905_move_label_bx, @function
n905_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n905_move_label_α:      mov              r11, 401
                        lea              rax, [rip + n907_indirect_goto_α]
                        mov              qword ptr [rbp + 48], rax;           jmp   n908_call_α
                        .size            n905_move_label_bx, .-n905_move_label_bx
                        .type            n906_unmark_bx, @function
n906_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n906_unmark_α:          mov              r11, 402
                        mov              rdi, qword ptr [rbp + 64]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   main$2F0_step
                                                                              jmp   n907_indirect_goto_α
                        .size            n906_unmark_bx, .-n906_unmark_bx
                        .type            n907_indirect_goto_bx, @function
n907_indirect_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n907_indirect_goto_α:   mov              r11, 403;                            jmp   main$2F0_step
n907_indirect_goto_β:   mov              r11, 403;                            jmp   qword ptr [rbp + 48]
                        .size            n907_indirect_goto_bx, .-n907_indirect_goto_bx
                        .type            n908_call_bx, @function
n908_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n908_call_α:            mov              r11, 404
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
                        cmp              al, 104;                             je    n907_indirect_goto_β
                                                                              jmp   main$2F0_ret0
n908_call_β:            mov              r11, 404;                            jmp   n907_indirect_goto_β
                        .size            n908_call_bx, .-n908_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ret0:
                        lea              rax, [rip + n907_indirect_goto_β]
                        mov              qword ptr [rbp + 1104], rax
                                                                              jmp   main$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1104], 0
                        mov              qword ptr [rbp + 1024], 0
                        mov              qword ptr [rbp + 1032], 0
                        mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 1016], 0
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 1048], 0
                        mov              rax, qword ptr [rbp + 1096]
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
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1104], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1128]
                        mov              rax, qword ptr [rbp + 1112]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1144];         jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 1152]
                        mov              rbp, qword ptr [rbp + 1144];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 1136]
                        mov              r13, qword ptr [rbp + 1112]
                        lea              rsp, [rbp + 1152]
                        mov              rbp, qword ptr [rbp + 1144];         jmp   rcx
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
                        .type            n953_call_proc_staged_bx, @function
n953_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n953_call_proc_staged_α:
                        mov              r11, 405
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_955_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_955_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_955_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_955_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_955_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_955_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_955_21
                        add              rsp, 32
.Lcall_proc_staged_α_955_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_955_2
.Lcall_proc_staged_α_955_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_955_2
.Lcall_proc_staged_α_955_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_955_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_955_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_955_29
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
.Lcall_proc_staged_α_955_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n953_call_proc_staged_β:
                        mov              r11, 405
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_955_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_955_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_955_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_955_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_955_0:
                        .quad            .Lcall_proc_staged_α_955_0_s
.Lcall_proc_staged_α_955_0_s:
                        .string          "main/0"
                        .size            n953_call_proc_staged_bx, .-n953_call_proc_staged_bx
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
.Lstartup_pname0:       .string          "area/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__area$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            4848
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "query/1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__query$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1920
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "pop/2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__pop$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            4848
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "density/2"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__density$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1104
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
                        .long            1072
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
