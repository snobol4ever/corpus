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
                        sub              rsp, 1520
                        mov              qword ptr [rsp + 1496], rcx
                        mov              qword ptr [rsp + 1504], rdx
                        mov              qword ptr [rsp + 1512], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1480], r13
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1456], r12
                        mov              rdi, rsp
                        mov              esi, 1344
                        mov              edx, 1456
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
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n351_lit_string_α
                        .size            n350_var_ref_bx, .-n350_var_ref_bx
                        .type            n351_lit_string_bx, @function
n351_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:      mov              r11, 152
                        mov              qword ptr [rbp + 1328], 2            # result
                        mov              dword ptr [rbp + 1332], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_389_0]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n352_var_ref_α
.Llit_string_α_389_0:   .quad            .Llit_string_α_389_0_s
.Llit_string_α_389_0_s: .string          "."
                        .size            n351_lit_string_bx, .-n351_lit_string_bx
                        .type            n352_var_ref_bx, @function
n352_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n353_lit_string_α
                        .size            n352_var_ref_bx, .-n352_var_ref_bx
                        .type            n353_lit_string_bx, @function
n353_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:      mov              r11, 154
                        mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_392_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n354_var_ref_α
.Llit_string_α_392_0:   .quad            .Llit_string_α_392_0_s
.Llit_string_α_392_0_s: .string          "."
                        .size            n353_lit_string_bx, .-n353_lit_string_bx
                        .type            n354_var_ref_bx, @function
n354_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:         mov              r11, 155
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n355_lit_string_α
                        .size            n354_var_ref_bx, .-n354_var_ref_bx
                        .type            n355_lit_string_bx, @function
n355_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:      mov              r11, 156
                        mov              qword ptr [rbp + 1104], 2            # result
                        mov              dword ptr [rbp + 1108], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_395_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n356_var_ref_α
.Llit_string_α_395_0:   .quad            .Llit_string_α_395_0_s
.Llit_string_α_395_0_s: .string          "."
                        .size            n355_lit_string_bx, .-n355_lit_string_bx
                        .type            n356_var_ref_bx, @function
n356_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:         mov              r11, 157
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n357_lit_string_α
                        .size            n356_var_ref_bx, .-n356_var_ref_bx
                        .type            n357_lit_string_bx, @function
n357_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_398_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n358_var_ref_α
.Llit_string_α_398_0:   .quad            .Llit_string_α_398_0_s
.Llit_string_α_398_0_s: .string          "."
                        .size            n357_lit_string_bx, .-n357_lit_string_bx
                        .type            n358_var_ref_bx, @function
n358_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n359_lit_string_α
                        .size            n358_var_ref_bx, .-n358_var_ref_bx
                        .type            n359_lit_string_bx, @function
n359_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:      mov              r11, 160
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_401_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n360_call_α
.Llit_string_α_401_0:   .quad            .Llit_string_α_401_0_s
.Llit_string_α_401_0_s: .string          "[]"
                        .size            n359_lit_string_bx, .-n359_lit_string_bx
                        .type            n360_call_bx, @function
n360_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_call_α:            mov              r11, 161
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 888]
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
                        cmp              al, 104;                             je    query$2F1_ω
                                                                              jmp   n361_call_α
n360_call_β:            mov              r11, 161;                            jmp   query$2F1_ω
                        .size            n360_call_bx, .-n360_call_bx
                        .type            n361_call_bx, @function
n361_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_call_α:            mov              r11, 162
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1016]
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
                        cmp              al, 104;                             je    query$2F1_ω
                                                                              jmp   n362_call_α
n361_call_β:            mov              r11, 162;                            jmp   query$2F1_ω
                        .size            n361_call_bx, .-n361_call_bx
                        .type            n362_call_bx, @function
n362_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_call_α:            mov              r11, 163
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              al, 104;                             je    query$2F1_ω
                                                                              jmp   n363_call_α
n362_call_β:            mov              r11, 163;                            jmp   query$2F1_ω
                        .size            n362_call_bx, .-n362_call_bx
                        .type            n363_call_bx, @function
n363_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_call_α:            mov              r11, 164
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1264]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n364_call_α
n363_call_β:            mov              r11, 164;                            jmp   query$2F1_step
                        .size            n363_call_bx, .-n363_call_bx
                        .type            n364_call_bx, @function
n364_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_call_α:            mov              r11, 165
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n365_var_ref_α
n364_call_β:            mov              r11, 165;                            jmp   query$2F1_step
                        .size            n364_call_bx, .-n364_call_bx
                        .type            n365_var_ref_bx, @function
n365_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_var_ref_α:         mov              r11, 166
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n366_var_ref_α
                        .size            n365_var_ref_bx, .-n365_var_ref_bx
                        .type            n366_var_ref_bx, @function
n366_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n367_call_proc_staged_α
                        .size            n366_var_ref_bx, .-n366_var_ref_bx
                        .type            n367_call_proc_staged_bx, @function
n367_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_call_proc_staged_α:
                        mov              r11, 168
                        mov              qword ptr [rbp + 736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_412_200
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_412_201
.Lcall_proc_staged_α_412_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
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
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_412_203
.Lcall_proc_staged_α_412_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_412_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_412_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_412_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_412_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_412_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_412_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_412_3:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_412_21
                        add              rsp, 32
.Lcall_proc_staged_α_412_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_412_2
.Lcall_proc_staged_α_412_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 736], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_412_2
.Lcall_proc_staged_α_412_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_412_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   query$2F1_step
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
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
.Lcall_proc_staged_α_412_29:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n368_var_ref_α
n367_call_proc_staged_β:
                        mov              r11, 168
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_412_22
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_412_22
                        mov              rcx, qword ptr [rbp + 744]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_412_22:
                                                                              jmp   query$2F1_step
.Lcall_proc_staged_α_412_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n368_var_ref_α
.Lcall_proc_staged_α_412_0:
                        .quad            .Lcall_proc_staged_α_412_0_s
.Lcall_proc_staged_α_412_0_s:
                        .string          "density/2"
                        .size            n367_call_proc_staged_bx, .-n367_call_proc_staged_bx
                        .type            n368_var_ref_bx, @function
n368_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_var_ref_α:         mov              r11, 169
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n369_var_ref_α
                        .size            n368_var_ref_bx, .-n368_var_ref_bx
                        .type            n369_var_ref_bx, @function
n369_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n370_call_proc_staged_α
                        .size            n369_var_ref_bx, .-n369_var_ref_bx
                        .type            n370_call_proc_staged_bx, @function
n370_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_call_proc_staged_α:
                        mov              r11, 171
                        mov              qword ptr [rbp + 624], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_418_200
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_418_201
.Lcall_proc_staged_α_418_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_418_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_418_202
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_418_203
.Lcall_proc_staged_α_418_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_418_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_418_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_418_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_418_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_418_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_418_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_418_3:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_418_21
                        add              rsp, 32
.Lcall_proc_staged_α_418_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_418_2
.Lcall_proc_staged_α_418_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 624], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_418_2
.Lcall_proc_staged_α_418_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_418_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n367_call_proc_staged_β
.Lcall_proc_staged_α_418_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_418_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
.Lcall_proc_staged_α_418_29:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    n367_call_proc_staged_β
                                                                              jmp   n371_var_α
n370_call_proc_staged_β:
                        mov              r11, 171
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_418_22
                        mov              rax, qword ptr [rbp + 624]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_418_22
                        mov              rcx, qword ptr [rbp + 632]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_418_22:
                                                                              jmp   n367_call_proc_staged_β
.Lcall_proc_staged_α_418_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    n367_call_proc_staged_β
                                                                              jmp   n371_var_α
.Lcall_proc_staged_α_418_0:
                        .quad            .Lcall_proc_staged_α_418_0_s
.Lcall_proc_staged_α_418_0_s:
                        .string          "density/2"
                        .size            n370_call_proc_staged_bx, .-n370_call_proc_staged_bx
                        .type            n371_var_bx, @function
n371_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_var_α:             mov              r11, 172
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 552], rax;          jmp   n372_var_α
                        .size            n371_var_bx, .-n371_var_bx
                        .type            n372_var_bx, @function
n372_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_var_α:             mov              r11, 173
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 568], rax;          jmp   n373_call_α
                        .size            n372_var_bx, .-n372_var_bx
                        .type            n373_call_bx, @function
n373_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_call_α:            mov              r11, 174
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
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n370_call_proc_staged_β
                                                                              jmp   n374_var_ref_α
n373_call_β:            mov              r11, 174;                            jmp   n370_call_proc_staged_β
                        .size            n373_call_bx, .-n373_call_bx
                        .type            n374_var_ref_bx, @function
n374_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_var_ref_α:         mov              r11, 175
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n375_lit_integer_α
                        .size            n374_var_ref_bx, .-n374_var_ref_bx
                        .type            n375_lit_integer_bx, @function
n375_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_integer_α:     mov              r11, 176
                        mov              qword ptr [rbp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_426_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n376_var_α
.Llit_integer_α_426_0:  .quad            20
                        .size            n375_lit_integer_bx, .-n375_lit_integer_bx
                        .type            n376_var_bx, @function
n376_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:             mov              r11, 177
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 472], rax;          jmp   n377_call_α
                        .size            n376_var_bx, .-n376_var_bx
                        .type            n377_call_bx, @function
n377_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_call_α:            mov              r11, 178
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n378_call_α
n377_call_β:            mov              r11, 178;                            jmp   query$2F1_step
                        .size            n377_call_bx, .-n377_call_bx
                        .type            n378_call_bx, @function
n378_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:            mov              r11, 179
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    n370_call_proc_staged_β
                                                                              jmp   n379_var_ref_α
n378_call_β:            mov              r11, 179;                            jmp   n370_call_proc_staged_β
                        .size            n378_call_bx, .-n378_call_bx
                        .type            n379_var_ref_bx, @function
n379_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_var_ref_α:         mov              r11, 180
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n380_lit_integer_α
                        .size            n379_var_ref_bx, .-n379_var_ref_bx
                        .type            n380_lit_integer_bx, @function
n380_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_integer_α:     mov              r11, 181
                        mov              qword ptr [rbp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_433_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n381_var_α
.Llit_integer_α_433_0:  .quad            21
                        .size            n380_lit_integer_bx, .-n380_lit_integer_bx
                        .type            n381_var_bx, @function
n381_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_var_α:             mov              r11, 182
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 296], rax;          jmp   n382_call_α
                        .size            n381_var_bx, .-n381_var_bx
                        .type            n382_call_bx, @function
n382_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_call_α:            mov              r11, 183
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    query$2F1_step
                                                                              jmp   n383_call_α
n382_call_β:            mov              r11, 183;                            jmp   query$2F1_step
                        .size            n382_call_bx, .-n382_call_bx
                        .type            n383_call_bx, @function
n383_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_call_α:            mov              r11, 184
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    n370_call_proc_staged_β
                                                                              jmp   n384_var_α
n383_call_β:            mov              r11, 184;                            jmp   n370_call_proc_staged_β
                        .size            n383_call_bx, .-n383_call_bx
                        .type            n384_var_bx, @function
n384_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_var_α:             mov              r11, 185
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 104], rax;          jmp   n385_var_α
                        .size            n384_var_bx, .-n384_var_bx
                        .type            n385_var_bx, @function
n385_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_var_α:             mov              r11, 186
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 120], rax;          jmp   n386_call_α
                        .size            n385_var_bx, .-n385_var_bx
                        .type            n386_call_bx, @function
n386_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_call_α:            mov              r11, 187
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
n386_call_β:            mov              r11, 187;                            jmp   n370_call_proc_staged_β
                        .size            n386_call_bx, .-n386_call_bx
#-----------------------------------------------------------------------------------------------------------------------
query$2F1_ret0:
                        lea              rax, [rip + n370_call_proc_staged_β]
                        mov              qword ptr [rbp + 1472], rax
                                                                              jmp   query$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
query$2F1_step:
                        mov              rdi, qword ptr [rbp + 1456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1472], 0
                        mov              qword ptr [rbp + 1424], 0
                        mov              qword ptr [rbp + 1432], 0
                        mov              qword ptr [rbp + 1392], 0
                        mov              qword ptr [rbp + 1400], 0
                        mov              qword ptr [rbp + 1408], 0
                        mov              qword ptr [rbp + 1416], 0
                        mov              qword ptr [rbp + 1376], 0
                        mov              qword ptr [rbp + 1384], 0
                        mov              qword ptr [rbp + 1344], 0
                        mov              qword ptr [rbp + 1352], 0
                        mov              qword ptr [rbp + 1360], 0
                        mov              qword ptr [rbp + 1368], 0
                        mov              rax, qword ptr [rbp + 1464]
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
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1472], 0
                        test             rax, rax
                                                                              jne   query$2F1_βres
                                                                              jmp   query$2F1_step
query$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
query$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1496]
                        mov              rax, qword ptr [rbp + 1480]
                        cmp              r13, rax;                            je    query$2F1_altdet
                        lea              rdx, [rip + query$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1512];         jmp   rcx
query$2F1_altdet:       xor              eax, eax
                        lea              rsp, [rbp + 1520]
                        mov              rbp, qword ptr [rbp + 1512];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
query$2F1_ω:
                        mov              rcx, qword ptr [rbp + 1504]
                        mov              r13, qword ptr [rbp + 1480]
                        lea              rsp, [rbp + 1520]
                        mov              rbp, qword ptr [rbp + 1512];         jmp   rcx
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
                        .type            n443_var_ref_bx, @function
n443_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n444_lit_string_α
                        .size            n443_var_ref_bx, .-n443_var_ref_bx
                        .type            n444_lit_string_bx, @function
n444_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:      mov              r11, 189
                        mov              qword ptr [rbp + 224], 2             # result
                        mov              dword ptr [rbp + 228], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_595_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n445_call_α
.Llit_string_α_595_0:   .quad            .Llit_string_α_595_0_s
.Llit_string_α_595_0_s: .string          "china"
                        .size            n444_lit_string_bx, .-n444_lit_string_bx
                        .type            n445_call_bx, @function
n445_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_call_α:            mov              r11, 190
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              rsi, qword ptr [rip + .Lcall_α_596_2]
                                                                              jmp   .Lcall_α_596_3
.Lcall_α_596_2:         .quad            .Lcall_α_596_2_s
.Lcall_α_596_2_s:       .string          "china"
.Lcall_α_596_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n446_var_ref_α
n445_call_β:            mov              r11, 190;                            jmp   pop$2F2_step
                        .size            n445_call_bx, .-n445_call_bx
                        .type            n446_var_ref_bx, @function
n446_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n447_lit_integer_α
                        .size            n446_var_ref_bx, .-n446_var_ref_bx
                        .type            n447_lit_integer_bx, @function
n447_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_integer_α:     mov              r11, 192
                        mov              qword ptr [rbp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_599_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n448_call_α
.Llit_integer_α_599_0:  .quad            8250
                        .size            n447_lit_integer_bx, .-n447_lit_integer_bx
                        .type            n448_call_bx, @function
n448_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_call_α:            mov              r11, 193
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
n448_call_β:            mov              r11, 193;                            jmp   pop$2F2_step
                        .size            n448_call_bx, .-n448_call_bx
                        .type            n449_var_ref_bx, @function
n449_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n450_lit_string_α
                        .size            n449_var_ref_bx, .-n449_var_ref_bx
                        .type            n450_lit_string_bx, @function
n450_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_lit_string_α:      mov              r11, 195
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_603_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n451_call_α
.Llit_string_α_603_0:   .quad            .Llit_string_α_603_0_s
.Llit_string_α_603_0_s: .string          "india"
                        .size            n450_lit_string_bx, .-n450_lit_string_bx
                        .type            n451_call_bx, @function
n451_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_call_α:            mov              r11, 196
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              rsi, qword ptr [rip + .Lcall_α_604_2]
                                                                              jmp   .Lcall_α_604_3
.Lcall_α_604_2:         .quad            .Lcall_α_604_2_s
.Lcall_α_604_2_s:       .string          "india"
.Lcall_α_604_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n452_var_ref_α
n451_call_β:            mov              r11, 196;                            jmp   pop$2F2_step
                        .size            n451_call_bx, .-n451_call_bx
                        .type            n452_var_ref_bx, @function
n452_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n453_lit_integer_α
                        .size            n452_var_ref_bx, .-n452_var_ref_bx
                        .type            n453_lit_integer_bx, @function
n453_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_integer_α:     mov              r11, 198
                        mov              qword ptr [rbp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_607_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n454_call_α
.Llit_integer_α_607_0:  .quad            5863
                        .size            n453_lit_integer_bx, .-n453_lit_integer_bx
                        .type            n454_call_bx, @function
n454_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_call_α:            mov              r11, 199
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
n454_call_β:            mov              r11, 199;                            jmp   pop$2F2_step
                        .size            n454_call_bx, .-n454_call_bx
                        .type            n455_var_ref_bx, @function
n455_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n456_lit_string_α
                        .size            n455_var_ref_bx, .-n455_var_ref_bx
                        .type            n456_lit_string_bx, @function
n456_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_string_α:      mov              r11, 201
                        mov              qword ptr [rbp + 608], 2             # result
                        mov              dword ptr [rbp + 612], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_611_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n457_call_α
.Llit_string_α_611_0:   .quad            .Llit_string_α_611_0_s
.Llit_string_α_611_0_s: .string          "ussr"
                        .size            n456_lit_string_bx, .-n456_lit_string_bx
                        .type            n457_call_bx, @function
n457_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n457_call_α:            mov              r11, 202
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              rsi, qword ptr [rip + .Lcall_α_612_2]
                                                                              jmp   .Lcall_α_612_3
.Lcall_α_612_2:         .quad            .Lcall_α_612_2_s
.Lcall_α_612_2_s:       .string          "ussr"
.Lcall_α_612_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n458_var_ref_α
n457_call_β:            mov              r11, 202;                            jmp   pop$2F2_step
                        .size            n457_call_bx, .-n457_call_bx
                        .type            n458_var_ref_bx, @function
n458_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n459_lit_integer_α
                        .size            n458_var_ref_bx, .-n458_var_ref_bx
                        .type            n459_lit_integer_bx, @function
n459_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_integer_α:     mov              r11, 204
                        mov              qword ptr [rbp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_615_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n460_call_α
.Llit_integer_α_615_0:  .quad            2521
                        .size            n459_lit_integer_bx, .-n459_lit_integer_bx
                        .type            n460_call_bx, @function
n460_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_call_α:            mov              r11, 205
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
n460_call_β:            mov              r11, 205;                            jmp   pop$2F2_step
                        .size            n460_call_bx, .-n460_call_bx
                        .type            n461_var_ref_bx, @function
n461_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n461_var_ref_α:         mov              r11, 206
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n462_lit_string_α
                        .size            n461_var_ref_bx, .-n461_var_ref_bx
                        .type            n462_lit_string_bx, @function
n462_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_619_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n463_call_α
.Llit_string_α_619_0:   .quad            .Llit_string_α_619_0_s
.Llit_string_α_619_0_s: .string          "usa"
                        .size            n462_lit_string_bx, .-n462_lit_string_bx
                        .type            n463_call_bx, @function
n463_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_call_α:            mov              r11, 208
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        mov              rsi, qword ptr [rip + .Lcall_α_620_2]
                                                                              jmp   .Lcall_α_620_3
.Lcall_α_620_2:         .quad            .Lcall_α_620_2_s
.Lcall_α_620_2_s:       .string          "usa"
.Lcall_α_620_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n464_var_ref_α
n463_call_β:            mov              r11, 208;                            jmp   pop$2F2_step
                        .size            n463_call_bx, .-n463_call_bx
                        .type            n464_var_ref_bx, @function
n464_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n465_lit_integer_α
                        .size            n464_var_ref_bx, .-n464_var_ref_bx
                        .type            n465_lit_integer_bx, @function
n465_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_integer_α:     mov              r11, 210
                        mov              qword ptr [rbp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_623_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n466_call_α
.Llit_integer_α_623_0:  .quad            2119
                        .size            n465_lit_integer_bx, .-n465_lit_integer_bx
                        .type            n466_call_bx, @function
n466_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n466_call_α:            mov              r11, 211
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
n466_call_β:            mov              r11, 211;                            jmp   pop$2F2_step
                        .size            n466_call_bx, .-n466_call_bx
                        .type            n467_var_ref_bx, @function
n467_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n467_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n468_lit_string_α
                        .size            n467_var_ref_bx, .-n467_var_ref_bx
                        .type            n468_lit_string_bx, @function
n468_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_string_α:      mov              r11, 213
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_627_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n469_call_α
.Llit_string_α_627_0:   .quad            .Llit_string_α_627_0_s
.Llit_string_α_627_0_s: .string          "indonesia"
                        .size            n468_lit_string_bx, .-n468_lit_string_bx
                        .type            n469_call_bx, @function
n469_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n469_call_α:            mov              r11, 214
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              rsi, qword ptr [rip + .Lcall_α_628_2]
                                                                              jmp   .Lcall_α_628_3
.Lcall_α_628_2:         .quad            .Lcall_α_628_2_s
.Lcall_α_628_2_s:       .string          "indonesia"
.Lcall_α_628_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n470_var_ref_α
n469_call_β:            mov              r11, 214;                            jmp   pop$2F2_step
                        .size            n469_call_bx, .-n469_call_bx
                        .type            n470_var_ref_bx, @function
n470_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n470_var_ref_α:         mov              r11, 215
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n471_lit_integer_α
                        .size            n470_var_ref_bx, .-n470_var_ref_bx
                        .type            n471_lit_integer_bx, @function
n471_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_integer_α:     mov              r11, 216
                        mov              qword ptr [rbp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_631_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n472_call_α
.Llit_integer_α_631_0:  .quad            1276
                        .size            n471_lit_integer_bx, .-n471_lit_integer_bx
                        .type            n472_call_bx, @function
n472_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n472_call_α:            mov              r11, 217
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
n472_call_β:            mov              r11, 217;                            jmp   pop$2F2_step
                        .size            n472_call_bx, .-n472_call_bx
                        .type            n473_var_ref_bx, @function
n473_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n473_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n474_lit_string_α
                        .size            n473_var_ref_bx, .-n473_var_ref_bx
                        .type            n474_lit_string_bx, @function
n474_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_string_α:      mov              r11, 219
                        mov              qword ptr [rbp + 1184], 2            # result
                        mov              dword ptr [rbp + 1188], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_635_0]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n475_call_α
.Llit_string_α_635_0:   .quad            .Llit_string_α_635_0_s
.Llit_string_α_635_0_s: .string          "japan"
                        .size            n474_lit_string_bx, .-n474_lit_string_bx
                        .type            n475_call_bx, @function
n475_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n475_call_α:            mov              r11, 220
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              rsi, qword ptr [rip + .Lcall_α_636_2]
                                                                              jmp   .Lcall_α_636_3
.Lcall_α_636_2:         .quad            .Lcall_α_636_2_s
.Lcall_α_636_2_s:       .string          "japan"
.Lcall_α_636_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n476_var_ref_α
n475_call_β:            mov              r11, 220;                            jmp   pop$2F2_step
                        .size            n475_call_bx, .-n475_call_bx
                        .type            n476_var_ref_bx, @function
n476_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n476_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n477_lit_integer_α
                        .size            n476_var_ref_bx, .-n476_var_ref_bx
                        .type            n477_lit_integer_bx, @function
n477_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_integer_α:     mov              r11, 222
                        mov              qword ptr [rbp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_639_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n478_call_α
.Llit_integer_α_639_0:  .quad            1097
                        .size            n477_lit_integer_bx, .-n477_lit_integer_bx
                        .type            n478_call_bx, @function
n478_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n478_call_α:            mov              r11, 223
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
n478_call_β:            mov              r11, 223;                            jmp   pop$2F2_step
                        .size            n478_call_bx, .-n478_call_bx
                        .type            n479_var_ref_bx, @function
n479_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n479_var_ref_α:         mov              r11, 224
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n480_lit_string_α
                        .size            n479_var_ref_bx, .-n479_var_ref_bx
                        .type            n480_lit_string_bx, @function
n480_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:      mov              r11, 225
                        mov              qword ptr [rbp + 1376], 2            # result
                        mov              dword ptr [rbp + 1380], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_643_0]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n481_call_α
.Llit_string_α_643_0:   .quad            .Llit_string_α_643_0_s
.Llit_string_α_643_0_s: .string          "brazil"
                        .size            n480_lit_string_bx, .-n480_lit_string_bx
                        .type            n481_call_bx, @function
n481_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n481_call_α:            mov              r11, 226
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1312]
                        mov              rsi, qword ptr [rip + .Lcall_α_644_2]
                                                                              jmp   .Lcall_α_644_3
.Lcall_α_644_2:         .quad            .Lcall_α_644_2_s
.Lcall_α_644_2_s:       .string          "brazil"
.Lcall_α_644_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n482_var_ref_α
n481_call_β:            mov              r11, 226;                            jmp   pop$2F2_step
                        .size            n481_call_bx, .-n481_call_bx
                        .type            n482_var_ref_bx, @function
n482_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n482_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n483_lit_integer_α
                        .size            n482_var_ref_bx, .-n482_var_ref_bx
                        .type            n483_lit_integer_bx, @function
n483_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n483_lit_integer_α:     mov              r11, 228
                        mov              qword ptr [rbp + 1280], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_647_0]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n484_call_α
.Llit_integer_α_647_0:  .quad            1042
                        .size            n483_lit_integer_bx, .-n483_lit_integer_bx
                        .type            n484_call_bx, @function
n484_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n484_call_α:            mov              r11, 229
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
n484_call_β:            mov              r11, 229;                            jmp   pop$2F2_step
                        .size            n484_call_bx, .-n484_call_bx
                        .type            n485_var_ref_bx, @function
n485_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n485_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n486_lit_string_α
                        .size            n485_var_ref_bx, .-n485_var_ref_bx
                        .type            n486_lit_string_bx, @function
n486_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n486_lit_string_α:      mov              r11, 231
                        mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_651_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n487_call_α
.Llit_string_α_651_0:   .quad            .Llit_string_α_651_0_s
.Llit_string_α_651_0_s: .string          "bangladesh"
                        .size            n486_lit_string_bx, .-n486_lit_string_bx
                        .type            n487_call_bx, @function
n487_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n487_call_α:            mov              r11, 232
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1504]
                        mov              rsi, qword ptr [rip + .Lcall_α_652_2]
                                                                              jmp   .Lcall_α_652_3
.Lcall_α_652_2:         .quad            .Lcall_α_652_2_s
.Lcall_α_652_2_s:       .string          "bangladesh"
.Lcall_α_652_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n488_var_ref_α
n487_call_β:            mov              r11, 232;                            jmp   pop$2F2_step
                        .size            n487_call_bx, .-n487_call_bx
                        .type            n488_var_ref_bx, @function
n488_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n488_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n489_lit_integer_α
                        .size            n488_var_ref_bx, .-n488_var_ref_bx
                        .type            n489_lit_integer_bx, @function
n489_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_integer_α:     mov              r11, 234
                        mov              qword ptr [rbp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_655_0]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n490_call_α
.Llit_integer_α_655_0:  .quad            750
                        .size            n489_lit_integer_bx, .-n489_lit_integer_bx
                        .type            n490_call_bx, @function
n490_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n490_call_α:            mov              r11, 235
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
n490_call_β:            mov              r11, 235;                            jmp   pop$2F2_step
                        .size            n490_call_bx, .-n490_call_bx
                        .type            n491_var_ref_bx, @function
n491_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n491_var_ref_α:         mov              r11, 236
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx;         jmp   n492_lit_string_α
                        .size            n491_var_ref_bx, .-n491_var_ref_bx
                        .type            n492_lit_string_bx, @function
n492_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:      mov              r11, 237
                        mov              qword ptr [rbp + 1760], 2            # result
                        mov              dword ptr [rbp + 1764], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_659_0]
                        mov              qword ptr [rbp + 1768], rax;         jmp   n493_call_α
.Llit_string_α_659_0:   .quad            .Llit_string_α_659_0_s
.Llit_string_α_659_0_s: .string          "pakistan"
                        .size            n492_lit_string_bx, .-n492_lit_string_bx
                        .type            n493_call_bx, @function
n493_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n493_call_α:            mov              r11, 238
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1696]
                        mov              rsi, qword ptr [rip + .Lcall_α_660_2]
                                                                              jmp   .Lcall_α_660_3
.Lcall_α_660_2:         .quad            .Lcall_α_660_2_s
.Lcall_α_660_2_s:       .string          "pakistan"
.Lcall_α_660_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n494_var_ref_α
n493_call_β:            mov              r11, 238;                            jmp   pop$2F2_step
                        .size            n493_call_bx, .-n493_call_bx
                        .type            n494_var_ref_bx, @function
n494_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:         mov              r11, 239
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx;         jmp   n495_lit_integer_α
                        .size            n494_var_ref_bx, .-n494_var_ref_bx
                        .type            n495_lit_integer_bx, @function
n495_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_integer_α:     mov              r11, 240
                        mov              qword ptr [rbp + 1664], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_663_0]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n496_call_α
.Llit_integer_α_663_0:  .quad            682
                        .size            n495_lit_integer_bx, .-n495_lit_integer_bx
                        .type            n496_call_bx, @function
n496_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n496_call_α:            mov              r11, 241
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
n496_call_β:            mov              r11, 241;                            jmp   pop$2F2_step
                        .size            n496_call_bx, .-n496_call_bx
                        .type            n497_var_ref_bx, @function
n497_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:         mov              r11, 242
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n498_lit_string_α
                        .size            n497_var_ref_bx, .-n497_var_ref_bx
                        .type            n498_lit_string_bx, @function
n498_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:      mov              r11, 243
                        mov              qword ptr [rbp + 1952], 2            # result
                        mov              dword ptr [rbp + 1956], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_667_0]
                        mov              qword ptr [rbp + 1960], rax;         jmp   n499_call_α
.Llit_string_α_667_0:   .quad            .Llit_string_α_667_0_s
.Llit_string_α_667_0_s: .string          "w_germany"
                        .size            n498_lit_string_bx, .-n498_lit_string_bx
                        .type            n499_call_bx, @function
n499_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n499_call_α:            mov              r11, 244
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1888]
                        mov              rsi, qword ptr [rip + .Lcall_α_668_2]
                                                                              jmp   .Lcall_α_668_3
.Lcall_α_668_2:         .quad            .Lcall_α_668_2_s
.Lcall_α_668_2_s:       .string          "w_germany"
.Lcall_α_668_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n500_var_ref_α
n499_call_β:            mov              r11, 244;                            jmp   pop$2F2_step
                        .size            n499_call_bx, .-n499_call_bx
                        .type            n500_var_ref_bx, @function
n500_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:         mov              r11, 245
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n501_lit_integer_α
                        .size            n500_var_ref_bx, .-n500_var_ref_bx
                        .type            n501_lit_integer_bx, @function
n501_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n501_lit_integer_α:     mov              r11, 246
                        mov              qword ptr [rbp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_671_0]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n502_call_α
.Llit_integer_α_671_0:  .quad            620
                        .size            n501_lit_integer_bx, .-n501_lit_integer_bx
                        .type            n502_call_bx, @function
n502_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n502_call_α:            mov              r11, 247
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
n502_call_β:            mov              r11, 247;                            jmp   pop$2F2_step
                        .size            n502_call_bx, .-n502_call_bx
                        .type            n503_var_ref_bx, @function
n503_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n503_var_ref_α:         mov              r11, 248
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx;         jmp   n504_lit_string_α
                        .size            n503_var_ref_bx, .-n503_var_ref_bx
                        .type            n504_lit_string_bx, @function
n504_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_lit_string_α:      mov              r11, 249
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_675_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n505_call_α
.Llit_string_α_675_0:   .quad            .Llit_string_α_675_0_s
.Llit_string_α_675_0_s: .string          "nigeria"
                        .size            n504_lit_string_bx, .-n504_lit_string_bx
                        .type            n505_call_bx, @function
n505_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n505_call_α:            mov              r11, 250
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2080]
                        mov              rsi, qword ptr [rip + .Lcall_α_676_2]
                                                                              jmp   .Lcall_α_676_3
.Lcall_α_676_2:         .quad            .Lcall_α_676_2_s
.Lcall_α_676_2_s:       .string          "nigeria"
.Lcall_α_676_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n506_var_ref_α
n505_call_β:            mov              r11, 250;                            jmp   pop$2F2_step
                        .size            n505_call_bx, .-n505_call_bx
                        .type            n506_var_ref_bx, @function
n506_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n506_var_ref_α:         mov              r11, 251
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n507_lit_integer_α
                        .size            n506_var_ref_bx, .-n506_var_ref_bx
                        .type            n507_lit_integer_bx, @function
n507_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_integer_α:     mov              r11, 252
                        mov              qword ptr [rbp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_679_0]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n508_call_α
.Llit_integer_α_679_0:  .quad            613
                        .size            n507_lit_integer_bx, .-n507_lit_integer_bx
                        .type            n508_call_bx, @function
n508_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_call_α:            mov              r11, 253
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
n508_call_β:            mov              r11, 253;                            jmp   pop$2F2_step
                        .size            n508_call_bx, .-n508_call_bx
                        .type            n509_var_ref_bx, @function
n509_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_var_ref_α:         mov              r11, 254
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n510_lit_string_α
                        .size            n509_var_ref_bx, .-n509_var_ref_bx
                        .type            n510_lit_string_bx, @function
n510_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n510_lit_string_α:      mov              r11, 255
                        mov              qword ptr [rbp + 2336], 2            # result
                        mov              dword ptr [rbp + 2340], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_683_0]
                        mov              qword ptr [rbp + 2344], rax;         jmp   n511_call_α
.Llit_string_α_683_0:   .quad            .Llit_string_α_683_0_s
.Llit_string_α_683_0_s: .string          "mexico"
                        .size            n510_lit_string_bx, .-n510_lit_string_bx
                        .type            n511_call_bx, @function
n511_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n511_call_α:            mov              r11, 256
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2272]
                        mov              rsi, qword ptr [rip + .Lcall_α_684_2]
                                                                              jmp   .Lcall_α_684_3
.Lcall_α_684_2:         .quad            .Lcall_α_684_2_s
.Lcall_α_684_2_s:       .string          "mexico"
.Lcall_α_684_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n512_var_ref_α
n511_call_β:            mov              r11, 256;                            jmp   pop$2F2_step
                        .size            n511_call_bx, .-n511_call_bx
                        .type            n512_var_ref_bx, @function
n512_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n512_var_ref_α:         mov              r11, 257
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n513_lit_integer_α
                        .size            n512_var_ref_bx, .-n512_var_ref_bx
                        .type            n513_lit_integer_bx, @function
n513_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n513_lit_integer_α:     mov              r11, 258
                        mov              qword ptr [rbp + 2240], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_687_0]
                        mov              qword ptr [rbp + 2248], rax;         jmp   n514_call_α
.Llit_integer_α_687_0:  .quad            581
                        .size            n513_lit_integer_bx, .-n513_lit_integer_bx
                        .type            n514_call_bx, @function
n514_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n514_call_α:            mov              r11, 259
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
n514_call_β:            mov              r11, 259;                            jmp   pop$2F2_step
                        .size            n514_call_bx, .-n514_call_bx
                        .type            n515_var_ref_bx, @function
n515_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n515_var_ref_α:         mov              r11, 260
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx;         jmp   n516_lit_string_α
                        .size            n515_var_ref_bx, .-n515_var_ref_bx
                        .type            n516_lit_string_bx, @function
n516_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n516_lit_string_α:      mov              r11, 261
                        mov              qword ptr [rbp + 2528], 2            # result
                        mov              dword ptr [rbp + 2532], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_691_0]
                        mov              qword ptr [rbp + 2536], rax;         jmp   n517_call_α
.Llit_string_α_691_0:   .quad            .Llit_string_α_691_0_s
.Llit_string_α_691_0_s: .string          "uk"
                        .size            n516_lit_string_bx, .-n516_lit_string_bx
                        .type            n517_call_bx, @function
n517_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n517_call_α:            mov              r11, 262
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2472], rax
                        lea              rdi, [rbp + 2464]
                        mov              rsi, qword ptr [rip + .Lcall_α_692_2]
                                                                              jmp   .Lcall_α_692_3
.Lcall_α_692_2:         .quad            .Lcall_α_692_2_s
.Lcall_α_692_2_s:       .string          "uk"
.Lcall_α_692_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n518_var_ref_α
n517_call_β:            mov              r11, 262;                            jmp   pop$2F2_step
                        .size            n517_call_bx, .-n517_call_bx
                        .type            n518_var_ref_bx, @function
n518_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n518_var_ref_α:         mov              r11, 263
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx;         jmp   n519_lit_integer_α
                        .size            n518_var_ref_bx, .-n518_var_ref_bx
                        .type            n519_lit_integer_bx, @function
n519_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n519_lit_integer_α:     mov              r11, 264
                        mov              qword ptr [rbp + 2432], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_695_0]
                        mov              qword ptr [rbp + 2440], rax;         jmp   n520_call_α
.Llit_integer_α_695_0:  .quad            559
                        .size            n519_lit_integer_bx, .-n519_lit_integer_bx
                        .type            n520_call_bx, @function
n520_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n520_call_α:            mov              r11, 265
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
n520_call_β:            mov              r11, 265;                            jmp   pop$2F2_step
                        .size            n520_call_bx, .-n520_call_bx
                        .type            n521_var_ref_bx, @function
n521_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n521_var_ref_α:         mov              r11, 266
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx;         jmp   n522_lit_string_α
                        .size            n521_var_ref_bx, .-n521_var_ref_bx
                        .type            n522_lit_string_bx, @function
n522_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n522_lit_string_α:      mov              r11, 267
                        mov              qword ptr [rbp + 2720], 2            # result
                        mov              dword ptr [rbp + 2724], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_699_0]
                        mov              qword ptr [rbp + 2728], rax;         jmp   n523_call_α
.Llit_string_α_699_0:   .quad            .Llit_string_α_699_0_s
.Llit_string_α_699_0_s: .string          "italy"
                        .size            n522_lit_string_bx, .-n522_lit_string_bx
                        .type            n523_call_bx, @function
n523_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n523_call_α:            mov              r11, 268
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2664], rax
                        lea              rdi, [rbp + 2656]
                        mov              rsi, qword ptr [rip + .Lcall_α_700_2]
                                                                              jmp   .Lcall_α_700_3
.Lcall_α_700_2:         .quad            .Lcall_α_700_2_s
.Lcall_α_700_2_s:       .string          "italy"
.Lcall_α_700_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n524_var_ref_α
n523_call_β:            mov              r11, 268;                            jmp   pop$2F2_step
                        .size            n523_call_bx, .-n523_call_bx
                        .type            n524_var_ref_bx, @function
n524_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:         mov              r11, 269
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx;         jmp   n525_lit_integer_α
                        .size            n524_var_ref_bx, .-n524_var_ref_bx
                        .type            n525_lit_integer_bx, @function
n525_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_integer_α:     mov              r11, 270
                        mov              qword ptr [rbp + 2624], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_703_0]
                        mov              qword ptr [rbp + 2632], rax;         jmp   n526_call_α
.Llit_integer_α_703_0:  .quad            554
                        .size            n525_lit_integer_bx, .-n525_lit_integer_bx
                        .type            n526_call_bx, @function
n526_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n526_call_α:            mov              r11, 271
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
n526_call_β:            mov              r11, 271;                            jmp   pop$2F2_step
                        .size            n526_call_bx, .-n526_call_bx
                        .type            n527_var_ref_bx, @function
n527_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n527_var_ref_α:         mov              r11, 272
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx;         jmp   n528_lit_string_α
                        .size            n527_var_ref_bx, .-n527_var_ref_bx
                        .type            n528_lit_string_bx, @function
n528_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n528_lit_string_α:      mov              r11, 273
                        mov              qword ptr [rbp + 2912], 2            # result
                        mov              dword ptr [rbp + 2916], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_707_0]
                        mov              qword ptr [rbp + 2920], rax;         jmp   n529_call_α
.Llit_string_α_707_0:   .quad            .Llit_string_α_707_0_s
.Llit_string_α_707_0_s: .string          "france"
                        .size            n528_lit_string_bx, .-n528_lit_string_bx
                        .type            n529_call_bx, @function
n529_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n529_call_α:            mov              r11, 274
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        mov              rsi, qword ptr [rip + .Lcall_α_708_2]
                                                                              jmp   .Lcall_α_708_3
.Lcall_α_708_2:         .quad            .Lcall_α_708_2_s
.Lcall_α_708_2_s:       .string          "france"
.Lcall_α_708_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n530_var_ref_α
n529_call_β:            mov              r11, 274;                            jmp   pop$2F2_step
                        .size            n529_call_bx, .-n529_call_bx
                        .type            n530_var_ref_bx, @function
n530_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n530_var_ref_α:         mov              r11, 275
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx;         jmp   n531_lit_integer_α
                        .size            n530_var_ref_bx, .-n530_var_ref_bx
                        .type            n531_lit_integer_bx, @function
n531_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_integer_α:     mov              r11, 276
                        mov              qword ptr [rbp + 2816], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_711_0]
                        mov              qword ptr [rbp + 2824], rax;         jmp   n532_call_α
.Llit_integer_α_711_0:  .quad            525
                        .size            n531_lit_integer_bx, .-n531_lit_integer_bx
                        .type            n532_call_bx, @function
n532_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n532_call_α:            mov              r11, 277
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
n532_call_β:            mov              r11, 277;                            jmp   pop$2F2_step
                        .size            n532_call_bx, .-n532_call_bx
                        .type            n533_var_ref_bx, @function
n533_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n533_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx;         jmp   n534_lit_string_α
                        .size            n533_var_ref_bx, .-n533_var_ref_bx
                        .type            n534_lit_string_bx, @function
n534_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n534_lit_string_α:      mov              r11, 279
                        mov              qword ptr [rbp + 3104], 2            # result
                        mov              dword ptr [rbp + 3108], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_715_0]
                        mov              qword ptr [rbp + 3112], rax;         jmp   n535_call_α
.Llit_string_α_715_0:   .quad            .Llit_string_α_715_0_s
.Llit_string_α_715_0_s: .string          "philippines"
                        .size            n534_lit_string_bx, .-n534_lit_string_bx
                        .type            n535_call_bx, @function
n535_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n535_call_α:            mov              r11, 280
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3048], rax
                        lea              rdi, [rbp + 3040]
                        mov              rsi, qword ptr [rip + .Lcall_α_716_2]
                                                                              jmp   .Lcall_α_716_3
.Lcall_α_716_2:         .quad            .Lcall_α_716_2_s
.Lcall_α_716_2_s:       .string          "philippines"
.Lcall_α_716_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n536_var_ref_α
n535_call_β:            mov              r11, 280;                            jmp   pop$2F2_step
                        .size            n535_call_bx, .-n535_call_bx
                        .type            n536_var_ref_bx, @function
n536_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n536_var_ref_α:         mov              r11, 281
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx;         jmp   n537_lit_integer_α
                        .size            n536_var_ref_bx, .-n536_var_ref_bx
                        .type            n537_lit_integer_bx, @function
n537_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n537_lit_integer_α:     mov              r11, 282
                        mov              qword ptr [rbp + 3008], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_719_0]
                        mov              qword ptr [rbp + 3016], rax;         jmp   n538_call_α
.Llit_integer_α_719_0:  .quad            415
                        .size            n537_lit_integer_bx, .-n537_lit_integer_bx
                        .type            n538_call_bx, @function
n538_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n538_call_α:            mov              r11, 283
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
n538_call_β:            mov              r11, 283;                            jmp   pop$2F2_step
                        .size            n538_call_bx, .-n538_call_bx
                        .type            n539_var_ref_bx, @function
n539_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n539_var_ref_α:         mov              r11, 284
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx;         jmp   n540_lit_string_α
                        .size            n539_var_ref_bx, .-n539_var_ref_bx
                        .type            n540_lit_string_bx, @function
n540_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n540_lit_string_α:      mov              r11, 285
                        mov              qword ptr [rbp + 3296], 2            # result
                        mov              dword ptr [rbp + 3300], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_723_0]
                        mov              qword ptr [rbp + 3304], rax;         jmp   n541_call_α
.Llit_string_α_723_0:   .quad            .Llit_string_α_723_0_s
.Llit_string_α_723_0_s: .string          "thailand"
                        .size            n540_lit_string_bx, .-n540_lit_string_bx
                        .type            n541_call_bx, @function
n541_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n541_call_α:            mov              r11, 286
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3240], rax
                        lea              rdi, [rbp + 3232]
                        mov              rsi, qword ptr [rip + .Lcall_α_724_2]
                                                                              jmp   .Lcall_α_724_3
.Lcall_α_724_2:         .quad            .Lcall_α_724_2_s
.Lcall_α_724_2_s:       .string          "thailand"
.Lcall_α_724_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n542_var_ref_α
n541_call_β:            mov              r11, 286;                            jmp   pop$2F2_step
                        .size            n541_call_bx, .-n541_call_bx
                        .type            n542_var_ref_bx, @function
n542_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n542_var_ref_α:         mov              r11, 287
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n543_lit_integer_α
                        .size            n542_var_ref_bx, .-n542_var_ref_bx
                        .type            n543_lit_integer_bx, @function
n543_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n543_lit_integer_α:     mov              r11, 288
                        mov              qword ptr [rbp + 3200], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_727_0]
                        mov              qword ptr [rbp + 3208], rax;         jmp   n544_call_α
.Llit_integer_α_727_0:  .quad            410
                        .size            n543_lit_integer_bx, .-n543_lit_integer_bx
                        .type            n544_call_bx, @function
n544_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n544_call_α:            mov              r11, 289
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
n544_call_β:            mov              r11, 289;                            jmp   pop$2F2_step
                        .size            n544_call_bx, .-n544_call_bx
                        .type            n545_var_ref_bx, @function
n545_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n545_var_ref_α:         mov              r11, 290
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx;         jmp   n546_lit_string_α
                        .size            n545_var_ref_bx, .-n545_var_ref_bx
                        .type            n546_lit_string_bx, @function
n546_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n546_lit_string_α:      mov              r11, 291
                        mov              qword ptr [rbp + 3488], 2            # result
                        mov              dword ptr [rbp + 3492], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_731_0]
                        mov              qword ptr [rbp + 3496], rax;         jmp   n547_call_α
.Llit_string_α_731_0:   .quad            .Llit_string_α_731_0_s
.Llit_string_α_731_0_s: .string          "turkey"
                        .size            n546_lit_string_bx, .-n546_lit_string_bx
                        .type            n547_call_bx, @function
n547_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n547_call_α:            mov              r11, 292
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3432], rax
                        lea              rdi, [rbp + 3424]
                        mov              rsi, qword ptr [rip + .Lcall_α_732_2]
                                                                              jmp   .Lcall_α_732_3
.Lcall_α_732_2:         .quad            .Lcall_α_732_2_s
.Lcall_α_732_2_s:       .string          "turkey"
.Lcall_α_732_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n548_var_ref_α
n547_call_β:            mov              r11, 292;                            jmp   pop$2F2_step
                        .size            n547_call_bx, .-n547_call_bx
                        .type            n548_var_ref_bx, @function
n548_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n548_var_ref_α:         mov              r11, 293
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx;         jmp   n549_lit_integer_α
                        .size            n548_var_ref_bx, .-n548_var_ref_bx
                        .type            n549_lit_integer_bx, @function
n549_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n549_lit_integer_α:     mov              r11, 294
                        mov              qword ptr [rbp + 3392], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_735_0]
                        mov              qword ptr [rbp + 3400], rax;         jmp   n550_call_α
.Llit_integer_α_735_0:  .quad            383
                        .size            n549_lit_integer_bx, .-n549_lit_integer_bx
                        .type            n550_call_bx, @function
n550_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n550_call_α:            mov              r11, 295
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
n550_call_β:            mov              r11, 295;                            jmp   pop$2F2_step
                        .size            n550_call_bx, .-n550_call_bx
                        .type            n551_var_ref_bx, @function
n551_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n551_var_ref_α:         mov              r11, 296
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx;         jmp   n552_lit_string_α
                        .size            n551_var_ref_bx, .-n551_var_ref_bx
                        .type            n552_lit_string_bx, @function
n552_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n552_lit_string_α:      mov              r11, 297
                        mov              qword ptr [rbp + 3680], 2            # result
                        mov              dword ptr [rbp + 3684], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_739_0]
                        mov              qword ptr [rbp + 3688], rax;         jmp   n553_call_α
.Llit_string_α_739_0:   .quad            .Llit_string_α_739_0_s
.Llit_string_α_739_0_s: .string          "egypt"
                        .size            n552_lit_string_bx, .-n552_lit_string_bx
                        .type            n553_call_bx, @function
n553_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n553_call_α:            mov              r11, 298
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3624], rax
                        lea              rdi, [rbp + 3616]
                        mov              rsi, qword ptr [rip + .Lcall_α_740_2]
                                                                              jmp   .Lcall_α_740_3
.Lcall_α_740_2:         .quad            .Lcall_α_740_2_s
.Lcall_α_740_2_s:       .string          "egypt"
.Lcall_α_740_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n554_var_ref_α
n553_call_β:            mov              r11, 298;                            jmp   pop$2F2_step
                        .size            n553_call_bx, .-n553_call_bx
                        .type            n554_var_ref_bx, @function
n554_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n554_var_ref_α:         mov              r11, 299
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx;         jmp   n555_lit_integer_α
                        .size            n554_var_ref_bx, .-n554_var_ref_bx
                        .type            n555_lit_integer_bx, @function
n555_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n555_lit_integer_α:     mov              r11, 300
                        mov              qword ptr [rbp + 3584], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_743_0]
                        mov              qword ptr [rbp + 3592], rax;         jmp   n556_call_α
.Llit_integer_α_743_0:  .quad            364
                        .size            n555_lit_integer_bx, .-n555_lit_integer_bx
                        .type            n556_call_bx, @function
n556_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n556_call_α:            mov              r11, 301
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
n556_call_β:            mov              r11, 301;                            jmp   pop$2F2_step
                        .size            n556_call_bx, .-n556_call_bx
                        .type            n557_var_ref_bx, @function
n557_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n557_var_ref_α:         mov              r11, 302
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx;         jmp   n558_lit_string_α
                        .size            n557_var_ref_bx, .-n557_var_ref_bx
                        .type            n558_lit_string_bx, @function
n558_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n558_lit_string_α:      mov              r11, 303
                        mov              qword ptr [rbp + 3872], 2            # result
                        mov              dword ptr [rbp + 3876], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_747_0]
                        mov              qword ptr [rbp + 3880], rax;         jmp   n559_call_α
.Llit_string_α_747_0:   .quad            .Llit_string_α_747_0_s
.Llit_string_α_747_0_s: .string          "spain"
                        .size            n558_lit_string_bx, .-n558_lit_string_bx
                        .type            n559_call_bx, @function
n559_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n559_call_α:            mov              r11, 304
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3816], rax
                        lea              rdi, [rbp + 3808]
                        mov              rsi, qword ptr [rip + .Lcall_α_748_2]
                                                                              jmp   .Lcall_α_748_3
.Lcall_α_748_2:         .quad            .Lcall_α_748_2_s
.Lcall_α_748_2_s:       .string          "spain"
.Lcall_α_748_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n560_var_ref_α
n559_call_β:            mov              r11, 304;                            jmp   pop$2F2_step
                        .size            n559_call_bx, .-n559_call_bx
                        .type            n560_var_ref_bx, @function
n560_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n560_var_ref_α:         mov              r11, 305
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx;         jmp   n561_lit_integer_α
                        .size            n560_var_ref_bx, .-n560_var_ref_bx
                        .type            n561_lit_integer_bx, @function
n561_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n561_lit_integer_α:     mov              r11, 306
                        mov              qword ptr [rbp + 3776], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_751_0]
                        mov              qword ptr [rbp + 3784], rax;         jmp   n562_call_α
.Llit_integer_α_751_0:  .quad            352
                        .size            n561_lit_integer_bx, .-n561_lit_integer_bx
                        .type            n562_call_bx, @function
n562_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n562_call_α:            mov              r11, 307
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
n562_call_β:            mov              r11, 307;                            jmp   pop$2F2_step
                        .size            n562_call_bx, .-n562_call_bx
                        .type            n563_var_ref_bx, @function
n563_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n563_var_ref_α:         mov              r11, 308
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx;         jmp   n564_lit_string_α
                        .size            n563_var_ref_bx, .-n563_var_ref_bx
                        .type            n564_lit_string_bx, @function
n564_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n564_lit_string_α:      mov              r11, 309
                        mov              qword ptr [rbp + 4064], 2            # result
                        mov              dword ptr [rbp + 4068], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_755_0]
                        mov              qword ptr [rbp + 4072], rax;         jmp   n565_call_α
.Llit_string_α_755_0:   .quad            .Llit_string_α_755_0_s
.Llit_string_α_755_0_s: .string          "poland"
                        .size            n564_lit_string_bx, .-n564_lit_string_bx
                        .type            n565_call_bx, @function
n565_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n565_call_α:            mov              r11, 310
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4008], rax
                        lea              rdi, [rbp + 4000]
                        mov              rsi, qword ptr [rip + .Lcall_α_756_2]
                                                                              jmp   .Lcall_α_756_3
.Lcall_α_756_2:         .quad            .Lcall_α_756_2_s
.Lcall_α_756_2_s:       .string          "poland"
.Lcall_α_756_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n566_var_ref_α
n565_call_β:            mov              r11, 310;                            jmp   pop$2F2_step
                        .size            n565_call_bx, .-n565_call_bx
                        .type            n566_var_ref_bx, @function
n566_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n566_var_ref_α:         mov              r11, 311
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx;         jmp   n567_lit_integer_α
                        .size            n566_var_ref_bx, .-n566_var_ref_bx
                        .type            n567_lit_integer_bx, @function
n567_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n567_lit_integer_α:     mov              r11, 312
                        mov              qword ptr [rbp + 3968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_759_0]
                        mov              qword ptr [rbp + 3976], rax;         jmp   n568_call_α
.Llit_integer_α_759_0:  .quad            337
                        .size            n567_lit_integer_bx, .-n567_lit_integer_bx
                        .type            n568_call_bx, @function
n568_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n568_call_α:            mov              r11, 313
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
n568_call_β:            mov              r11, 313;                            jmp   pop$2F2_step
                        .size            n568_call_bx, .-n568_call_bx
                        .type            n569_var_ref_bx, @function
n569_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n569_var_ref_α:         mov              r11, 314
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx;         jmp   n570_lit_string_α
                        .size            n569_var_ref_bx, .-n569_var_ref_bx
                        .type            n570_lit_string_bx, @function
n570_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_string_α:      mov              r11, 315
                        mov              qword ptr [rbp + 4256], 2            # result
                        mov              dword ptr [rbp + 4260], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_763_0]
                        mov              qword ptr [rbp + 4264], rax;         jmp   n571_call_α
.Llit_string_α_763_0:   .quad            .Llit_string_α_763_0_s
.Llit_string_α_763_0_s: .string          "s_korea"
                        .size            n570_lit_string_bx, .-n570_lit_string_bx
                        .type            n571_call_bx, @function
n571_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n571_call_α:            mov              r11, 316
                        mov              rax, qword ptr [rbp + 4240]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 4200], rax
                        lea              rdi, [rbp + 4192]
                        mov              rsi, qword ptr [rip + .Lcall_α_764_2]
                                                                              jmp   .Lcall_α_764_3
.Lcall_α_764_2:         .quad            .Lcall_α_764_2_s
.Lcall_α_764_2_s:       .string          "s_korea"
.Lcall_α_764_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n572_var_ref_α
n571_call_β:            mov              r11, 316;                            jmp   pop$2F2_step
                        .size            n571_call_bx, .-n571_call_bx
                        .type            n572_var_ref_bx, @function
n572_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n572_var_ref_α:         mov              r11, 317
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx;         jmp   n573_lit_integer_α
                        .size            n572_var_ref_bx, .-n572_var_ref_bx
                        .type            n573_lit_integer_bx, @function
n573_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n573_lit_integer_α:     mov              r11, 318
                        mov              qword ptr [rbp + 4160], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_767_0]
                        mov              qword ptr [rbp + 4168], rax;         jmp   n574_call_α
.Llit_integer_α_767_0:  .quad            335
                        .size            n573_lit_integer_bx, .-n573_lit_integer_bx
                        .type            n574_call_bx, @function
n574_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n574_call_α:            mov              r11, 319
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
n574_call_β:            mov              r11, 319;                            jmp   pop$2F2_step
                        .size            n574_call_bx, .-n574_call_bx
                        .type            n575_var_ref_bx, @function
n575_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n575_var_ref_α:         mov              r11, 320
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx;         jmp   n576_lit_string_α
                        .size            n575_var_ref_bx, .-n575_var_ref_bx
                        .type            n576_lit_string_bx, @function
n576_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n576_lit_string_α:      mov              r11, 321
                        mov              qword ptr [rbp + 4448], 2            # result
                        mov              dword ptr [rbp + 4452], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_771_0]
                        mov              qword ptr [rbp + 4456], rax;         jmp   n577_call_α
.Llit_string_α_771_0:   .quad            .Llit_string_α_771_0_s
.Llit_string_α_771_0_s: .string          "iran"
                        .size            n576_lit_string_bx, .-n576_lit_string_bx
                        .type            n577_call_bx, @function
n577_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n577_call_α:            mov              r11, 322
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 4392], rax
                        lea              rdi, [rbp + 4384]
                        mov              rsi, qword ptr [rip + .Lcall_α_772_2]
                                                                              jmp   .Lcall_α_772_3
.Lcall_α_772_2:         .quad            .Lcall_α_772_2_s
.Lcall_α_772_2_s:       .string          "iran"
.Lcall_α_772_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n578_var_ref_α
n577_call_β:            mov              r11, 322;                            jmp   pop$2F2_step
                        .size            n577_call_bx, .-n577_call_bx
                        .type            n578_var_ref_bx, @function
n578_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n578_var_ref_α:         mov              r11, 323
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx;         jmp   n579_lit_integer_α
                        .size            n578_var_ref_bx, .-n578_var_ref_bx
                        .type            n579_lit_integer_bx, @function
n579_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n579_lit_integer_α:     mov              r11, 324
                        mov              qword ptr [rbp + 4352], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_775_0]
                        mov              qword ptr [rbp + 4360], rax;         jmp   n580_call_α
.Llit_integer_α_775_0:  .quad            320
                        .size            n579_lit_integer_bx, .-n579_lit_integer_bx
                        .type            n580_call_bx, @function
n580_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n580_call_α:            mov              r11, 325
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
n580_call_β:            mov              r11, 325;                            jmp   pop$2F2_step
                        .size            n580_call_bx, .-n580_call_bx
                        .type            n581_var_ref_bx, @function
n581_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n581_var_ref_α:         mov              r11, 326
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx;         jmp   n582_lit_string_α
                        .size            n581_var_ref_bx, .-n581_var_ref_bx
                        .type            n582_lit_string_bx, @function
n582_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n582_lit_string_α:      mov              r11, 327
                        mov              qword ptr [rbp + 4640], 2            # result
                        mov              dword ptr [rbp + 4644], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_779_0]
                        mov              qword ptr [rbp + 4648], rax;         jmp   n583_call_α
.Llit_string_α_779_0:   .quad            .Llit_string_α_779_0_s
.Llit_string_α_779_0_s: .string          "ethiopia"
                        .size            n582_lit_string_bx, .-n582_lit_string_bx
                        .type            n583_call_bx, @function
n583_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n583_call_α:            mov              r11, 328
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 4584], rax
                        lea              rdi, [rbp + 4576]
                        mov              rsi, qword ptr [rip + .Lcall_α_780_2]
                                                                              jmp   .Lcall_α_780_3
.Lcall_α_780_2:         .quad            .Lcall_α_780_2_s
.Lcall_α_780_2_s:       .string          "ethiopia"
.Lcall_α_780_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n584_var_ref_α
n583_call_β:            mov              r11, 328;                            jmp   pop$2F2_step
                        .size            n583_call_bx, .-n583_call_bx
                        .type            n584_var_ref_bx, @function
n584_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n584_var_ref_α:         mov              r11, 329
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx;         jmp   n585_lit_integer_α
                        .size            n584_var_ref_bx, .-n584_var_ref_bx
                        .type            n585_lit_integer_bx, @function
n585_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n585_lit_integer_α:     mov              r11, 330
                        mov              qword ptr [rbp + 4544], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_783_0]
                        mov              qword ptr [rbp + 4552], rax;         jmp   n586_call_α
.Llit_integer_α_783_0:  .quad            272
                        .size            n585_lit_integer_bx, .-n585_lit_integer_bx
                        .type            n586_call_bx, @function
n586_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n586_call_α:            mov              r11, 331
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
n586_call_β:            mov              r11, 331;                            jmp   pop$2F2_step
                        .size            n586_call_bx, .-n586_call_bx
                        .type            n587_var_ref_bx, @function
n587_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n587_var_ref_α:         mov              r11, 332
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx;         jmp   n588_lit_string_α
                        .size            n587_var_ref_bx, .-n587_var_ref_bx
                        .type            n588_lit_string_bx, @function
n588_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n588_lit_string_α:      mov              r11, 333
                        mov              qword ptr [rbp + 4832], 2            # result
                        mov              dword ptr [rbp + 4836], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_787_0]
                        mov              qword ptr [rbp + 4840], rax;         jmp   n589_call_α
.Llit_string_α_787_0:   .quad            .Llit_string_α_787_0_s
.Llit_string_α_787_0_s: .string          "argentina"
                        .size            n588_lit_string_bx, .-n588_lit_string_bx
                        .type            n589_call_bx, @function
n589_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n589_call_α:            mov              r11, 334
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 4776], rax
                        lea              rdi, [rbp + 4768]
                        mov              rsi, qword ptr [rip + .Lcall_α_788_2]
                                                                              jmp   .Lcall_α_788_3
.Lcall_α_788_2:         .quad            .Lcall_α_788_2_s
.Lcall_α_788_2_s:       .string          "argentina"
.Lcall_α_788_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                        cmp              al, 104;                             je    pop$2F2_step
                                                                              jmp   n590_var_ref_α
n589_call_β:            mov              r11, 334;                            jmp   pop$2F2_step
                        .size            n589_call_bx, .-n589_call_bx
                        .type            n590_var_ref_bx, @function
n590_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n590_var_ref_α:         mov              r11, 335
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4720], rax
                        mov              qword ptr [rbp + 4728], rdx;         jmp   n591_lit_integer_α
                        .size            n590_var_ref_bx, .-n590_var_ref_bx
                        .type            n591_lit_integer_bx, @function
n591_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_integer_α:     mov              r11, 336
                        mov              qword ptr [rbp + 4736], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_791_0]
                        mov              qword ptr [rbp + 4744], rax;         jmp   n592_call_α
.Llit_integer_α_791_0:  .quad            251
                        .size            n591_lit_integer_bx, .-n591_lit_integer_bx
                        .type            n592_call_bx, @function
n592_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n592_call_α:            mov              r11, 337
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
n592_call_β:            mov              r11, 337;                            jmp   pop$2F2_step
                        .size            n592_call_bx, .-n592_call_bx
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
                                                                              jmp   n449_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt2:
                        lea              rax, [rip + pop$2F2_alt3]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n455_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt3:
                        lea              rax, [rip + pop$2F2_alt4]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n461_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt4:
                        lea              rax, [rip + pop$2F2_alt5]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n467_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt5:
                        lea              rax, [rip + pop$2F2_alt6]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n473_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt6:
                        lea              rax, [rip + pop$2F2_alt7]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n479_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt7:
                        lea              rax, [rip + pop$2F2_alt8]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n485_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt8:
                        lea              rax, [rip + pop$2F2_alt9]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n491_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt9:
                        lea              rax, [rip + pop$2F2_alt10]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n497_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt10:
                        lea              rax, [rip + pop$2F2_alt11]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n503_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt11:
                        lea              rax, [rip + pop$2F2_alt12]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n509_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt12:
                        lea              rax, [rip + pop$2F2_alt13]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n515_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt13:
                        lea              rax, [rip + pop$2F2_alt14]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n521_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt14:
                        lea              rax, [rip + pop$2F2_alt15]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n527_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt15:
                        lea              rax, [rip + pop$2F2_alt16]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n533_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt16:
                        lea              rax, [rip + pop$2F2_alt17]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n539_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt17:
                        lea              rax, [rip + pop$2F2_alt18]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n545_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt18:
                        lea              rax, [rip + pop$2F2_alt19]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n551_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt19:
                        lea              rax, [rip + pop$2F2_alt20]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n557_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt20:
                        lea              rax, [rip + pop$2F2_alt21]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n563_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt21:
                        lea              rax, [rip + pop$2F2_alt22]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n569_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt22:
                        lea              rax, [rip + pop$2F2_alt23]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n575_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt23:
                        lea              rax, [rip + pop$2F2_alt24]
                        mov              qword ptr [rbp + 4872], rax
                                                                              jmp   n581_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pop$2F2_alt24:
                        xor              eax, eax
                        mov              qword ptr [rbp + 4872], rax
                        mov              r13, qword ptr [rbp + 4888]
                                                                              jmp   n587_var_ref_α
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
                        sub              rsp, 944
                        mov              qword ptr [rsp + 920], rcx
                        mov              qword ptr [rsp + 928], rdx
                        mov              qword ptr [rsp + 936], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 904], r13
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 880], r12
                        mov              rdi, rsp
                        mov              esi, 800
                        mov              edx, 880
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
density$2F2_α_body:
                        .type            n793_var_ref_bx, @function
n793_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n793_var_ref_α:         mov              r11, 338
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n794_var_ref_α
                        .size            n793_var_ref_bx, .-n793_var_ref_bx
                        .type            n794_var_ref_bx, @function
n794_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n794_var_ref_α:         mov              r11, 339
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n795_call_α
                        .size            n794_var_ref_bx, .-n794_var_ref_bx
                        .type            n795_call_bx, @function
n795_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n795_call_α:            mov              r11, 340
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n796_var_ref_α
n795_call_β:            mov              r11, 340;                            jmp   density$2F2_step
                        .size            n795_call_bx, .-n795_call_bx
                        .type            n796_var_ref_bx, @function
n796_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n796_var_ref_α:         mov              r11, 341
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n797_var_ref_α
                        .size            n796_var_ref_bx, .-n796_var_ref_bx
                        .type            n797_var_ref_bx, @function
n797_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n797_var_ref_α:         mov              r11, 342
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n798_call_α
                        .size            n797_var_ref_bx, .-n797_var_ref_bx
                        .type            n798_call_bx, @function
n798_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n798_call_α:            mov              r11, 343
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n799_var_ref_α
n798_call_β:            mov              r11, 343;                            jmp   density$2F2_step
                        .size            n798_call_bx, .-n798_call_bx
                        .type            n799_var_ref_bx, @function
n799_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n799_var_ref_α:         mov              r11, 344
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n800_var_ref_α
                        .size            n799_var_ref_bx, .-n799_var_ref_bx
                        .type            n800_var_ref_bx, @function
n800_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n800_var_ref_α:         mov              r11, 345
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n801_call_proc_staged_α
                        .size            n800_var_ref_bx, .-n800_var_ref_bx
                        .type            n801_call_proc_staged_bx, @function
n801_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n801_call_proc_staged_α:
                        mov              r11, 346
                        mov              qword ptr [rbp + 544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_829_200
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_829_201
.Lcall_proc_staged_α_829_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_829_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_829_202
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_829_203
.Lcall_proc_staged_α_829_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_829_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_829_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_829_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_829_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_829_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_829_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_829_3:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_829_21
                        add              rsp, 32
.Lcall_proc_staged_α_829_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_829_2
.Lcall_proc_staged_α_829_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 544], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_829_2
.Lcall_proc_staged_α_829_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_829_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   density$2F2_step
.Lcall_proc_staged_α_829_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_829_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
.Lcall_proc_staged_α_829_29:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n802_var_ref_α
n801_call_proc_staged_β:
                        mov              r11, 346
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_829_22
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_829_22
                        mov              rcx, qword ptr [rbp + 552]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_829_22:
                                                                              jmp   density$2F2_step
.Lcall_proc_staged_α_829_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n802_var_ref_α
.Lcall_proc_staged_α_829_0:
                        .quad            .Lcall_proc_staged_α_829_0_s
.Lcall_proc_staged_α_829_0_s:
                        .string          "pop/2"
                        .size            n801_call_proc_staged_bx, .-n801_call_proc_staged_bx
                        .type            n802_var_ref_bx, @function
n802_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n802_var_ref_α:         mov              r11, 347
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n803_var_ref_α
                        .size            n802_var_ref_bx, .-n802_var_ref_bx
                        .type            n803_var_ref_bx, @function
n803_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n803_var_ref_α:         mov              r11, 348
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n804_call_proc_staged_α
                        .size            n803_var_ref_bx, .-n803_var_ref_bx
                        .type            n804_call_proc_staged_bx, @function
n804_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n804_call_proc_staged_α:
                        mov              r11, 349
                        mov              qword ptr [rbp + 432], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_835_200
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_835_201
.Lcall_proc_staged_α_835_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_835_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_835_202
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_835_203
.Lcall_proc_staged_α_835_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_835_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_835_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_835_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_835_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_835_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_835_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_835_3:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_835_21
                        add              rsp, 32
.Lcall_proc_staged_α_835_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_835_2
.Lcall_proc_staged_α_835_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 432], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_835_2
.Lcall_proc_staged_α_835_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_835_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n801_call_proc_staged_β
.Lcall_proc_staged_α_835_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_835_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
.Lcall_proc_staged_α_835_29:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n801_call_proc_staged_β
                                                                              jmp   n805_var_ref_α
n804_call_proc_staged_β:
                        mov              r11, 349
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_835_22
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_835_22
                        mov              rcx, qword ptr [rbp + 440]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_835_22:
                                                                              jmp   n801_call_proc_staged_β
.Lcall_proc_staged_α_835_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n801_call_proc_staged_β
                                                                              jmp   n805_var_ref_α
.Lcall_proc_staged_α_835_0:
                        .quad            .Lcall_proc_staged_α_835_0_s
.Lcall_proc_staged_α_835_0_s:
                        .string          "area/2"
                        .size            n804_call_proc_staged_bx, .-n804_call_proc_staged_bx
                        .type            n805_var_ref_bx, @function
n805_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n805_var_ref_α:         mov              r11, 350
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n806_var_α
                        .size            n805_var_ref_bx, .-n805_var_ref_bx
                        .type            n806_var_bx, @function
n806_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n806_var_α:             mov              r11, 351
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 264], rax;          jmp   n807_lit_integer_α
                        .size            n806_var_bx, .-n806_var_bx
                        .type            n807_lit_integer_bx, @function
n807_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n807_lit_integer_α:     mov              r11, 352
                        mov              qword ptr [rbp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_840_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n808_call_α
.Llit_integer_α_840_0:  .quad            100
                        .size            n807_lit_integer_bx, .-n807_lit_integer_bx
                        .type            n808_call_bx, @function
n808_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n808_call_α:            mov              r11, 353
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
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n809_var_α
n808_call_β:            mov              r11, 353;                            jmp   density$2F2_step
                        .size            n808_call_bx, .-n808_call_bx
                        .type            n809_var_bx, @function
n809_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n809_var_α:             mov              r11, 354
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 296], rax;          jmp   n810_lit_string_α
                        .size            n809_var_bx, .-n809_var_bx
                        .type            n810_lit_string_bx, @function
n810_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n810_lit_string_α:      mov              r11, 355
                        mov              qword ptr [rbp + 368], 2             # result
                        mov              dword ptr [rbp + 372], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_844_0]
                        mov              qword ptr [rbp + 376], rax;          jmp   n811_call_α
.Llit_string_α_844_0:   .quad            .Llit_string_α_844_0_s
.Llit_string_α_844_0_s: .string          "//"
                        .size            n810_lit_string_bx, .-n810_lit_string_bx
                        .type            n811_call_bx, @function
n811_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n811_call_α:            mov              r11, 356
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    density$2F2_step
                                                                              jmp   n812_call_α
n811_call_β:            mov              r11, 356;                            jmp   density$2F2_step
                        .size            n811_call_bx, .-n811_call_bx
                        .type            n812_call_bx, @function
n812_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n812_call_α:            mov              r11, 357
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 296]
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
                                                                              jmp   n813_call_α
n812_call_β:            mov              r11, 357;                            jmp   density$2F2_step
                        .size            n812_call_bx, .-n812_call_bx
                        .type            n813_call_bx, @function
n813_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n813_call_α:            mov              r11, 358
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
                        cmp              al, 104;                             je    n804_call_proc_staged_β
                                                                              jmp   density$2F2_ret0
n813_call_β:            mov              r11, 358;                            jmp   n804_call_proc_staged_β
                        .size            n813_call_bx, .-n813_call_bx
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_ret0:
                        lea              rax, [rip + n804_call_proc_staged_β]
                        mov              qword ptr [rbp + 896], rax
                                                                              jmp   density$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_step:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              qword ptr [rbp + 816], 0
                        mov              qword ptr [rbp + 824], 0
                        mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              rax, qword ptr [rbp + 888]
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
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 896], 0
                        test             rax, rax
                                                                              jne   density$2F2_βres
                                                                              jmp   density$2F2_step
density$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 920]
                        mov              rax, qword ptr [rbp + 904]
                        cmp              r13, rax;                            je    density$2F2_altdet
                        lea              rdx, [rip + density$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 936];          jmp   rcx
density$2F2_altdet:     xor              eax, eax
                        lea              rsp, [rbp + 944]
                        mov              rbp, qword ptr [rbp + 936];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
density$2F2_ω:
                        mov              rcx, qword ptr [rbp + 928]
                        mov              r13, qword ptr [rbp + 904]
                        lea              rsp, [rbp + 944]
                        mov              rbp, qword ptr [rbp + 936];          jmp   rcx
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
                        .type            n848_bound_bx, @function
n848_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n848_bound_α:           mov              r11, 359
                        mov              qword ptr [rbp + 64], r12
                        lea              rdi, [rbp + 1088]
                        mov              rsi, rbp
                        call             rt_pl_disj_open@PLT;                 jmp   n849_lit_string_α
                        .size            n848_bound_bx, .-n848_bound_bx
                        .type            n849_lit_string_bx, @function
n849_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n849_lit_string_α:      mov              r11, 360
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_881_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n850_var_ref_α
.Llit_string_α_881_0:   .quad            .Llit_string_α_881_0_s
.Llit_string_α_881_0_s: .string          "."
                        .size            n849_lit_string_bx, .-n849_lit_string_bx
                        .type            n850_var_ref_bx, @function
n850_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n850_var_ref_α:         mov              r11, 361
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n851_lit_string_α
                        .size            n850_var_ref_bx, .-n850_var_ref_bx
                        .type            n851_lit_string_bx, @function
n851_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n851_lit_string_α:      mov              r11, 362
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_884_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n852_var_ref_α
.Llit_string_α_884_0:   .quad            .Llit_string_α_884_0_s
.Llit_string_α_884_0_s: .string          "."
                        .size            n851_lit_string_bx, .-n851_lit_string_bx
                        .type            n852_var_ref_bx, @function
n852_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n852_var_ref_α:         mov              r11, 363
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n853_lit_string_α
                        .size            n852_var_ref_bx, .-n852_var_ref_bx
                        .type            n853_lit_string_bx, @function
n853_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n853_lit_string_α:      mov              r11, 364
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_887_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n854_var_ref_α
.Llit_string_α_887_0:   .quad            .Llit_string_α_887_0_s
.Llit_string_α_887_0_s: .string          "."
                        .size            n853_lit_string_bx, .-n853_lit_string_bx
                        .type            n854_var_ref_bx, @function
n854_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n854_var_ref_α:         mov              r11, 365
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n855_lit_string_α
                        .size            n854_var_ref_bx, .-n854_var_ref_bx
                        .type            n855_lit_string_bx, @function
n855_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n855_lit_string_α:      mov              r11, 366
                        mov              qword ptr [rbp + 656], 2             # result
                        mov              dword ptr [rbp + 660], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_890_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n856_var_ref_α
.Llit_string_α_890_0:   .quad            .Llit_string_α_890_0_s
.Llit_string_α_890_0_s: .string          "."
                        .size            n855_lit_string_bx, .-n855_lit_string_bx
                        .type            n856_var_ref_bx, @function
n856_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n856_var_ref_α:         mov              r11, 367
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n857_lit_string_α
                        .size            n856_var_ref_bx, .-n856_var_ref_bx
                        .type            n857_lit_string_bx, @function
n857_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n857_lit_string_α:      mov              r11, 368
                        mov              qword ptr [rbp + 544], 2             # result
                        mov              dword ptr [rbp + 548], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_893_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n858_call_α
.Llit_string_α_893_0:   .quad            .Llit_string_α_893_0_s
.Llit_string_α_893_0_s: .string          "[]"
                        .size            n857_lit_string_bx, .-n857_lit_string_bx
                        .type            n858_call_bx, @function
n858_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n858_call_α:            mov              r11, 369
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
                                                                              jmp   n859_call_α
n858_call_β:            mov              r11, 369;                            jmp   main$2F0_ω
                        .size            n858_call_bx, .-n858_call_bx
                        .type            n859_call_bx, @function
n859_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n859_call_α:            mov              r11, 370
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
                                                                              jmp   n860_call_α
n859_call_β:            mov              r11, 370;                            jmp   main$2F0_ω
                        .size            n859_call_bx, .-n859_call_bx
                        .type            n860_call_bx, @function
n860_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n860_call_α:            mov              r11, 371
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
                                                                              jmp   n861_call_α
n860_call_β:            mov              r11, 371;                            jmp   main$2F0_ω
                        .size            n860_call_bx, .-n860_call_bx
                        .type            n861_call_bx, @function
n861_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n861_call_α:            mov              r11, 372
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
                        cmp              al, 104;                             je    n872_unmark_α
                                                                              jmp   n862_call_proc_staged_α
n861_call_β:            mov              r11, 372;                            jmp   n872_unmark_α
                        .size            n861_call_bx, .-n861_call_bx
                        .type            n862_call_proc_staged_bx, @function
n862_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n862_call_proc_staged_α:
                        mov              r11, 373
                        mov              qword ptr [rbp + 512], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_899_200
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_899_201
.Lcall_proc_staged_α_899_200:
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
.Lcall_proc_staged_α_899_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_899_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_899_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_899_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_899_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_899_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_899_3:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_899_21
                        add              rsp, 32
.Lcall_proc_staged_α_899_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_899_2
.Lcall_proc_staged_α_899_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 512], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_899_2
.Lcall_proc_staged_α_899_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_899_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n872_unmark_α
.Lcall_proc_staged_α_899_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_899_29
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
.Lcall_proc_staged_α_899_29:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n872_unmark_α
                                                                              jmp   n863_lit_string_α
n862_call_proc_staged_β:
                        mov              r11, 373
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_899_22
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_899_22
                        mov              rcx, qword ptr [rbp + 520]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_899_22:
                                                                              jmp   n872_unmark_α
.Lcall_proc_staged_α_899_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n872_unmark_α
                                                                              jmp   n863_lit_string_α
.Lcall_proc_staged_α_899_0:
                        .quad            .Lcall_proc_staged_α_899_0_s
.Lcall_proc_staged_α_899_0_s:
                        .string          "query/1"
                        .size            n862_call_proc_staged_bx, .-n862_call_proc_staged_bx
                        .type            n863_lit_string_bx, @function
n863_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n863_lit_string_α:      mov              r11, 374
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_900_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n864_var_ref_α
.Llit_string_α_900_0:   .quad            .Llit_string_α_900_0_s
.Llit_string_α_900_0_s: .string          "."
                        .size            n863_lit_string_bx, .-n863_lit_string_bx
                        .type            n864_var_ref_bx, @function
n864_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n864_var_ref_α:         mov              r11, 375
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n865_lit_string_α
                        .size            n864_var_ref_bx, .-n864_var_ref_bx
                        .type            n865_lit_string_bx, @function
n865_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n865_lit_string_α:      mov              r11, 376
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_903_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n866_var_ref_α
.Llit_string_α_903_0:   .quad            .Llit_string_α_903_0_s
.Llit_string_α_903_0_s: .string          "."
                        .size            n865_lit_string_bx, .-n865_lit_string_bx
                        .type            n866_var_ref_bx, @function
n866_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n866_var_ref_α:         mov              r11, 377
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n867_lit_string_α
                        .size            n866_var_ref_bx, .-n866_var_ref_bx
                        .type            n867_lit_string_bx, @function
n867_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n867_lit_string_α:      mov              r11, 378
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_906_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n868_call_α
.Llit_string_α_906_0:   .quad            .Llit_string_α_906_0_s
.Llit_string_α_906_0_s: .string          "[]"
                        .size            n867_lit_string_bx, .-n867_lit_string_bx
                        .type            n868_call_bx, @function
n868_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n868_call_α:            mov              r11, 379
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
                                                                              jmp   n869_call_α
n868_call_β:            mov              r11, 379;                            jmp   main$2F0_ω
                        .size            n868_call_bx, .-n868_call_bx
                        .type            n869_call_bx, @function
n869_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n869_call_α:            mov              r11, 380
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
                        cmp              al, 104;                             je    n876_unmark_α
                                                                              jmp   n870_call_α
n869_call_β:            mov              r11, 380;                            jmp   n876_unmark_α
                        .size            n869_call_bx, .-n869_call_bx
                        .type            n870_call_bx, @function
n870_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n870_call_α:            mov              r11, 381
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
                        cmp              al, 104;                             je    n876_unmark_α
                                                                              jmp   n871_move_label_α
n870_call_β:            mov              r11, 381;                            jmp   n876_unmark_α
                        .size            n870_call_bx, .-n870_call_bx
                        .type            n871_move_label_bx, @function
n871_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n871_move_label_α:      mov              r11, 382
                        lea              rax, [rip + n877_indirect_goto_α]
                        mov              qword ptr [rbp + 48], rax;           jmp   n878_call_α
                        .size            n871_move_label_bx, .-n871_move_label_bx
                        .type            n872_unmark_bx, @function
n872_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n872_unmark_α:          mov              r11, 383
                        mov              rdi, qword ptr [rbp + 64]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   main$2F0_step
                                                                              jmp   n873_lit_string_α
                        .size            n872_unmark_bx, .-n872_unmark_bx
                        .type            n873_lit_string_bx, @function
n873_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n873_lit_string_α:      mov              r11, 384
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_914_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n874_call_α
.Llit_string_α_914_0:   .quad            .Llit_string_α_914_0_s
.Llit_string_α_914_0_s: .string          "none"
                        .size            n873_lit_string_bx, .-n873_lit_string_bx
                        .type            n874_call_bx, @function
n874_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n874_call_α:            mov              r11, 385
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
                        cmp              al, 104;                             je    n876_unmark_α
                                                                              jmp   n875_move_label_α
n874_call_β:            mov              r11, 385;                            jmp   n876_unmark_α
                        .size            n874_call_bx, .-n874_call_bx
                        .type            n875_move_label_bx, @function
n875_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n875_move_label_α:      mov              r11, 386
                        lea              rax, [rip + n877_indirect_goto_α]
                        mov              qword ptr [rbp + 48], rax;           jmp   n878_call_α
                        .size            n875_move_label_bx, .-n875_move_label_bx
                        .type            n876_unmark_bx, @function
n876_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n876_unmark_α:          mov              r11, 387
                        mov              rdi, qword ptr [rbp + 64]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   main$2F0_step
                                                                              jmp   n877_indirect_goto_α
                        .size            n876_unmark_bx, .-n876_unmark_bx
                        .type            n877_indirect_goto_bx, @function
n877_indirect_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n877_indirect_goto_α:   mov              r11, 388;                            jmp   main$2F0_step
n877_indirect_goto_β:   mov              r11, 388;                            jmp   qword ptr [rbp + 48]
                        .size            n877_indirect_goto_bx, .-n877_indirect_goto_bx
                        .type            n878_call_bx, @function
n878_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n878_call_α:            mov              r11, 389
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
                        cmp              al, 104;                             je    n877_indirect_goto_β
                                                                              jmp   main$2F0_ret0
n878_call_β:            mov              r11, 389;                            jmp   n877_indirect_goto_β
                        .size            n878_call_bx, .-n878_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ret0:
                        lea              rax, [rip + n877_indirect_goto_β]
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
                        .type            n923_call_proc_staged_bx, @function
n923_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n923_call_proc_staged_α:
                        mov              r11, 390
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_925_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_925_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_925_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_925_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_925_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_925_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_925_21
                        add              rsp, 32
.Lcall_proc_staged_α_925_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_925_2
.Lcall_proc_staged_α_925_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_925_2
.Lcall_proc_staged_α_925_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_925_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_925_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_925_29
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
.Lcall_proc_staged_α_925_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n923_call_proc_staged_β:
                        mov              r11, 390
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_925_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_925_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_925_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_925_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_925_0:
                        .quad            .Lcall_proc_staged_α_925_0_s
.Lcall_proc_staged_α_925_0_s:
                        .string          "main/0"
                        .size            n923_call_proc_staged_bx, .-n923_call_proc_staged_bx
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
                        .long            1440
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
                        .long            864
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
