                        .intel_syntax    noprefix
                        .text
                        .file            1 "test_icon.sno"
                        .file            2 "<included>"
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 14
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 14
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "x5.V"
.Lgvan1:                .string          "x1.V"
.Lgvan2:                .string          "x2.V"
.Lgvan3:                .string          "to1.I"
.Lgvan4:                .string          "to1.V"
.Lgvan5:                .string          "x3.V"
.Lgvan6:                .string          "x4.V"
.Lgvan7:                .string          "to2.I"
.Lgvan8:                .string          "to2.V"
.Lgvan9:                .string          "mult.V"
.Lgvan10:               .string          "greater.V"
.Lgvan11:               .string          "write.V"
.Lgvan12:               .string          "to3.I"
.Lgvan13:               .string          "to4.I"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .quad            .Lgvan10
                        .quad            .Lgvan11
                        .quad            .Lgvan12
                        .quad            .Lgvan13
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        .type            n0_statement_begin_bx, @function
n0_statement_begin_bx:
#=======================================================================================================================
# START                                   :(main1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_statement_end_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n196_statement_begin_α
                        .size            n0_statement_begin_bx, .-n0_statement_begin_bx
                        .type            n1_statement_end_bx, @function
n1_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_statement_end_α:     mov              r11, 2
                        mov              r10, 1;                              jmp   n196_statement_begin_α
                        .size            n1_statement_end_bx, .-n1_statement_end_bx
                        .type            n2_statement_begin_bx, @function
n2_statement_begin_bx:
#=======================================================================================================================
# x5.start        x5.V = 5                :(x5.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n2_statement_begin_α:   mov              r11, 3
                        mov              r10, 2;                              jmp   n3_lit_integer_α
n2_statement_begin_β:   mov              r11, 3;                              jmp   n114_statement_begin_α
                        .size            n2_statement_begin_bx, .-n2_statement_begin_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       sub              rsp, 16
                        mov              r11, 4
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_283_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_assign_α
.Llit_integer_α_283_0:  .quad            5
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_assign_bx, @function
n4_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 5
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # x5.V
                        mov              qword ptr [r9 + 8], rdx;             jmp   n5_statement_end_α
                        .size            n4_assign_bx, .-n4_assign_bx
                        .type            n5_statement_end_bx, @function
n5_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_end_α:     mov              r11, 6
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n114_statement_begin_α
                        .size            n5_statement_end_bx, .-n5_statement_end_bx
                        .type            n6_statement_begin_bx, @function
n6_statement_begin_bx:
#=======================================================================================================================
# x5.resume                               :(x5.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n6_statement_begin_α:   mov              r11, 7
                        mov              r10, 3;                              jmp   n7_statement_end_α
n6_statement_begin_β:   mov              r11, 7;                              jmp   n108_statement_begin_α
                        .size            n6_statement_begin_bx, .-n6_statement_begin_bx
                        .type            n7_statement_end_bx, @function
n7_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     mov              r11, 8
                        mov              r10, 3;                              jmp   n108_statement_begin_α
                        .size            n7_statement_end_bx, .-n7_statement_end_bx
                        .type            n8_statement_begin_bx, @function
n8_statement_begin_bx:
#=======================================================================================================================
# x1.start        x1.V = 1                :(x1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n8_statement_begin_α:   mov              r11, 9
                        mov              r10, 4;                              jmp   n9_lit_integer_α
n8_statement_begin_β:   mov              r11, 9;                              jmp   n43_statement_begin_α
                        .size            n8_statement_begin_bx, .-n8_statement_begin_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_293_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_assign_α
.Llit_integer_α_293_0:  .quad            1
                        .size            n9_lit_integer_bx, .-n9_lit_integer_bx
                        .type            n10_assign_bx, @function
n10_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # x1.V
                        mov              qword ptr [r9 + 24], rdx;            jmp   n11_statement_end_α
                        .size            n10_assign_bx, .-n10_assign_bx
                        .type            n11_statement_end_bx, @function
n11_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:    mov              r11, 12
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n43_statement_begin_α
                        .size            n11_statement_end_bx, .-n11_statement_end_bx
                        .type            n12_statement_begin_bx, @function
n12_statement_begin_bx:
#=======================================================================================================================
# x1.resume                               :(x1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n12_statement_begin_α:  mov              r11, 13
                        mov              r10, 5;                              jmp   n13_statement_end_α
n12_statement_begin_β:  mov              r11, 13;                             jmp   n22_statement_begin_α
                        .size            n12_statement_begin_bx, .-n12_statement_begin_bx
                        .type            n13_statement_end_bx, @function
n13_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:    mov              r11, 14
                        mov              r10, 5;                              jmp   n22_statement_begin_α
                        .size            n13_statement_end_bx, .-n13_statement_end_bx
                        .type            n14_statement_begin_bx, @function
n14_statement_begin_bx:
#=======================================================================================================================
# x2.start        x2.V = 2                :(x2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n14_statement_begin_α:  mov              r11, 15
                        mov              r10, 6;                              jmp   n15_lit_integer_α
n14_statement_begin_β:  mov              r11, 15;                             jmp   n45_statement_begin_α
                        .size            n14_statement_begin_bx, .-n14_statement_begin_bx
                        .type            n15_lit_integer_bx, @function
n15_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_303_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_assign_α
.Llit_integer_α_303_0:  .quad            2
                        .size            n15_lit_integer_bx, .-n15_lit_integer_bx
                        .type            n16_assign_bx, @function
n16_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              r11, 17
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # x2.V
                        mov              qword ptr [r9 + 40], rdx;            jmp   n17_statement_end_α
                        .size            n16_assign_bx, .-n16_assign_bx
                        .type            n17_statement_end_bx, @function
n17_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:    mov              r11, 18
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n45_statement_begin_α
                        .size            n17_statement_end_bx, .-n17_statement_end_bx
                        .type            n18_statement_begin_bx, @function
n18_statement_begin_bx:
#=======================================================================================================================
# x2.resume                               :(x2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n18_statement_begin_α:  mov              r11, 19
                        mov              r10, 7;                              jmp   n19_statement_end_α
n18_statement_begin_β:  mov              r11, 19;                             jmp   n24_statement_begin_α
                        .size            n18_statement_begin_bx, .-n18_statement_begin_bx
                        .type            n19_statement_end_bx, @function
n19_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    mov              r11, 20
                        mov              r10, 7;                              jmp   n24_statement_begin_α
                        .size            n19_statement_end_bx, .-n19_statement_end_bx
                        .type            n20_statement_begin_bx, @function
n20_statement_begin_bx:
#=======================================================================================================================
# to1.start                               :(x1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n20_statement_begin_α:  mov              r11, 21
                        mov              r10, 8;                              jmp   n21_statement_end_α
n20_statement_begin_β:  mov              r11, 21;                             jmp   n8_statement_begin_α
                        .size            n20_statement_begin_bx, .-n20_statement_begin_bx
                        .type            n21_statement_end_bx, @function
n21_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:    mov              r11, 22
                        mov              r10, 8;                              jmp   n8_statement_begin_α
                        .size            n21_statement_end_bx, .-n21_statement_end_bx
                        .type            n22_statement_begin_bx, @function
n22_statement_begin_bx:
#=======================================================================================================================
# x1.fail                                 :(to1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n22_statement_begin_α:  mov              r11, 23
                        mov              r10, 9;                              jmp   n23_statement_end_α
n22_statement_begin_β:  mov              r11, 23;                             jmp   n92_statement_begin_α
                        .size            n22_statement_begin_bx, .-n22_statement_begin_bx
                        .type            n23_statement_end_bx, @function
n23_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:    mov              r11, 24
                        mov              r10, 9;                              jmp   n92_statement_begin_α
                        .size            n23_statement_end_bx, .-n23_statement_end_bx
                        .type            n24_statement_begin_bx, @function
n24_statement_begin_bx:
#=======================================================================================================================
# x2.fail                                 :(x1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n24_statement_begin_α:  mov              r11, 25
                        mov              r10, 10;                             jmp   n25_statement_end_α
n24_statement_begin_β:  mov              r11, 25;                             jmp   n12_statement_begin_α
                        .size            n24_statement_begin_bx, .-n24_statement_begin_bx
                        .type            n25_statement_end_bx, @function
n25_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:    mov              r11, 26
                        mov              r10, 10;                             jmp   n12_statement_begin_α
                        .size            n25_statement_end_bx, .-n25_statement_end_bx
                        .type            n26_statement_begin_bx, @function
n26_statement_begin_bx:
#=======================================================================================================================
# to1.code        LE(to1.I, x2.V)         :F(x2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n26_statement_begin_α:  mov              r11, 27
                        mov              r10, 11;                             jmp   n27_var_α
n26_statement_begin_β:  mov              r11, 27;                             jmp   n18_statement_begin_α
                        .size            n26_statement_begin_bx, .-n26_statement_begin_bx
                        .type            n27_var_bx, @function
n27_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              sub              rsp, 16
                        mov              r11, 28
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n28_var_α
                        .size            n27_var_bx, .-n27_var_bx
                        .type            n28_var_bx, @function
n28_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              sub              rsp, 16
                        mov              r11, 29
                        mov              rax, qword ptr [r9 + 32]             # x2.V
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n29_coerce_numeric_α
n28_var_β:              mov              r11, 29
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n26_statement_begin_β
                        .size            n28_var_bx, .-n28_var_bx
                        .type            n29_coerce_numeric_bx, @function
n29_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 30
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_328_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_328_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_328_0
.Lcoerce_numeric_α_328_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_coerce_numeric_α
.Lcoerce_numeric_α_328_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_coerce_numeric_α
n29_coerce_numeric_β:   mov              r11, 30
                        add              rsp, 16;                             jmp   n28_var_β
                        .size            n29_coerce_numeric_bx, .-n29_coerce_numeric_bx
                        .type            n30_coerce_numeric_bx, @function
n30_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 31
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_330_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_330_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_330_0
.Lcoerce_numeric_α_330_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_cmp_test_α
.Lcoerce_numeric_α_330_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n31_cmp_test_α
n30_coerce_numeric_β:   mov              r11, 31
                        add              rsp, 16;                             jmp   n29_coerce_numeric_β
                        .size            n30_coerce_numeric_bx, .-n30_coerce_numeric_bx
                        .type            n31_cmp_test_bx, @function
n31_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_cmp_test_α:         sub              rsp, 16
                        mov              r11, 32
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_332_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_332_239
                        add              rsp, 16;                             jmp   n30_coerce_numeric_β
.Lcmp_test_α_332_239:                                                         jmp   n32_statement_end_α
.Lcmp_test_α_332_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jle   .Lcmp_test_α_332_240
                        add              rsp, 16;                             jmp   n30_coerce_numeric_β
.Lcmp_test_α_332_240:                                                         jmp   n32_statement_end_α
                        .size            n31_cmp_test_bx, .-n31_cmp_test_bx
                        .type            n32_statement_end_bx, @function
n32_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:    mov              r11, 33
                        mov              r10, 11
                        add              rsp, 80;                             jmp   n33_statement_begin_α
                        .size            n32_statement_end_bx, .-n32_statement_end_bx
                        .type            n33_statement_begin_bx, @function
n33_statement_begin_bx:
#=======================================================================================================================
#                 to1.V = to1.I           :(to1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n33_statement_begin_α:  mov              r11, 34
                        mov              r10, 12;                             jmp   n34_var_α
n33_statement_begin_β:  mov              r11, 34;                             jmp   n98_statement_begin_α
                        .size            n33_statement_begin_bx, .-n33_statement_begin_bx
                        .type            n34_var_bx, @function
n34_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              sub              rsp, 16
                        mov              r11, 35
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_assign_α
                        .size            n34_var_bx, .-n34_var_bx
                        .type            n35_assign_bx, @function
n35_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              r11, 36
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # to1.V
                        mov              qword ptr [r9 + 72], rdx;            jmp   n36_statement_end_α
                        .size            n35_assign_bx, .-n35_assign_bx
                        .type            n36_statement_end_bx, @function
n36_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 37
                        mov              r10, 12
                        add              rsp, 16;                             jmp   n98_statement_begin_α
                        .size            n36_statement_end_bx, .-n36_statement_end_bx
                        .type            n37_statement_begin_bx, @function
n37_statement_begin_bx:
#=======================================================================================================================
# to1.resume      to1.I = to1.I + 1       :(to1.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n37_statement_begin_α:  mov              r11, 38
                        mov              r10, 13;                             jmp   n38_var_α
n37_statement_begin_β:  mov              r11, 38;                             jmp   n26_statement_begin_α
                        .size            n37_statement_begin_bx, .-n37_statement_begin_bx
                        .type            n38_var_bx, @function
n38_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              sub              rsp, 16
                        mov              r11, 39
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_lit_integer_α
                        .size            n38_var_bx, .-n38_var_bx
                        .type            n39_lit_integer_bx, @function
n39_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      sub              rsp, 16
                        mov              r11, 40
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_344_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_binop_α
n39_lit_integer_β:      mov              r11, 40
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n37_statement_begin_β
.Llit_integer_α_344_0:  .quad            1
                        .size            n39_lit_integer_bx, .-n39_lit_integer_bx
                        .type            n40_binop_bx, @function
n40_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_binop_α:            sub              rsp, 16
                        mov              r11, 41
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_345_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_345_7
.Lbinop_α_345_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_345_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_345_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_345_4
.Lbinop_α_345_3:        movq             xmm0, rsi
.Lbinop_α_345_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_345_7:                                                              jmp   n41_assign_α
.Lbinop_α_345_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_345_240
                        add              rsp, 16;                             jmp   n39_lit_integer_β
.Lbinop_α_345_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n41_assign_α
                        .size            n40_binop_bx, .-n40_binop_bx
                        .type            n41_assign_bx, @function
n41_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              r11, 42
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # to1.I
                        mov              qword ptr [r9 + 56], rdx;            jmp   n42_statement_end_α
                        .size            n41_assign_bx, .-n41_assign_bx
                        .type            n42_statement_end_bx, @function
n42_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    mov              r11, 43
                        mov              r10, 13
                        add              rsp, 48;                             jmp   n26_statement_begin_α
                        .size            n42_statement_end_bx, .-n42_statement_end_bx
                        .type            n43_statement_begin_bx, @function
n43_statement_begin_bx:
#=======================================================================================================================
# x1.succeed                              :(x2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n43_statement_begin_α:  mov              r11, 44
                        mov              r10, 14;                             jmp   n44_statement_end_α
n43_statement_begin_β:  mov              r11, 44;                             jmp   n14_statement_begin_α
                        .size            n43_statement_begin_bx, .-n43_statement_begin_bx
                        .type            n44_statement_end_bx, @function
n44_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:    mov              r11, 45
                        mov              r10, 14;                             jmp   n14_statement_begin_α
                        .size            n44_statement_end_bx, .-n44_statement_end_bx
                        .type            n45_statement_begin_bx, @function
n45_statement_begin_bx:
#=======================================================================================================================
# x2.succeed      to1.I = x1.V            :(to1.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n45_statement_begin_α:  mov              r11, 46
                        mov              r10, 15;                             jmp   n46_var_α
n45_statement_begin_β:  mov              r11, 46;                             jmp   n26_statement_begin_α
                        .size            n45_statement_begin_bx, .-n45_statement_begin_bx
                        .type            n46_var_bx, @function
n46_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              sub              rsp, 16
                        mov              r11, 47
                        mov              rax, qword ptr [r9 + 16]             # x1.V
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n47_assign_α
                        .size            n46_var_bx, .-n46_var_bx
                        .type            n47_assign_bx, @function
n47_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 48
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # to1.I
                        mov              qword ptr [r9 + 56], rdx;            jmp   n48_statement_end_α
                        .size            n47_assign_bx, .-n47_assign_bx
                        .type            n48_statement_end_bx, @function
n48_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 49
                        mov              r10, 15
                        add              rsp, 16;                             jmp   n26_statement_begin_α
                        .size            n48_statement_end_bx, .-n48_statement_end_bx
                        .type            n49_statement_begin_bx, @function
n49_statement_begin_bx:
#=======================================================================================================================
# x3.start        x3.V = 3                :(x3.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n49_statement_begin_α:  mov              r11, 50
                        mov              r10, 16;                             jmp   n50_lit_integer_α
n49_statement_begin_β:  mov              r11, 50;                             jmp   n84_statement_begin_α
                        .size            n49_statement_begin_bx, .-n49_statement_begin_bx
                        .type            n50_lit_integer_bx, @function
n50_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      sub              rsp, 16
                        mov              r11, 51
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_361_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_assign_α
.Llit_integer_α_361_0:  .quad            3
                        .size            n50_lit_integer_bx, .-n50_lit_integer_bx
                        .type            n51_assign_bx, @function
n51_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 52
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # x3.V
                        mov              qword ptr [r9 + 88], rdx;            jmp   n52_statement_end_α
                        .size            n51_assign_bx, .-n51_assign_bx
                        .type            n52_statement_end_bx, @function
n52_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 53
                        mov              r10, 16
                        add              rsp, 16;                             jmp   n84_statement_begin_α
                        .size            n52_statement_end_bx, .-n52_statement_end_bx
                        .type            n53_statement_begin_bx, @function
n53_statement_begin_bx:
#=======================================================================================================================
# x3.resume                               :(x3.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n53_statement_begin_α:  mov              r11, 54
                        mov              r10, 17;                             jmp   n54_statement_end_α
n53_statement_begin_β:  mov              r11, 54;                             jmp   n63_statement_begin_α
                        .size            n53_statement_begin_bx, .-n53_statement_begin_bx
                        .type            n54_statement_end_bx, @function
n54_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:    mov              r11, 55
                        mov              r10, 17;                             jmp   n63_statement_begin_α
                        .size            n54_statement_end_bx, .-n54_statement_end_bx
                        .type            n55_statement_begin_bx, @function
n55_statement_begin_bx:
#=======================================================================================================================
# x4.start        x4.V = 4                :(x4.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n55_statement_begin_α:  mov              r11, 56
                        mov              r10, 18;                             jmp   n56_lit_integer_α
n55_statement_begin_β:  mov              r11, 56;                             jmp   n86_statement_begin_α
                        .size            n55_statement_begin_bx, .-n55_statement_begin_bx
                        .type            n56_lit_integer_bx, @function
n56_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      sub              rsp, 16
                        mov              r11, 57
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_371_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_assign_α
.Llit_integer_α_371_0:  .quad            4
                        .size            n56_lit_integer_bx, .-n56_lit_integer_bx
                        .type            n57_assign_bx, @function
n57_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              r11, 58
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # x4.V
                        mov              qword ptr [r9 + 104], rdx;           jmp   n58_statement_end_α
                        .size            n57_assign_bx, .-n57_assign_bx
                        .type            n58_statement_end_bx, @function
n58_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    mov              r11, 59
                        mov              r10, 18
                        add              rsp, 16;                             jmp   n86_statement_begin_α
                        .size            n58_statement_end_bx, .-n58_statement_end_bx
                        .type            n59_statement_begin_bx, @function
n59_statement_begin_bx:
#=======================================================================================================================
# x4.resume                               :(x4.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n59_statement_begin_α:  mov              r11, 60
                        mov              r10, 19;                             jmp   n60_statement_end_α
n59_statement_begin_β:  mov              r11, 60;                             jmp   n65_statement_begin_α
                        .size            n59_statement_begin_bx, .-n59_statement_begin_bx
                        .type            n60_statement_end_bx, @function
n60_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    mov              r11, 61
                        mov              r10, 19;                             jmp   n65_statement_begin_α
                        .size            n60_statement_end_bx, .-n60_statement_end_bx
                        .type            n61_statement_begin_bx, @function
n61_statement_begin_bx:
#=======================================================================================================================
# to2.start                               :(x3.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n61_statement_begin_α:  mov              r11, 62
                        mov              r10, 20;                             jmp   n62_statement_end_α
n61_statement_begin_β:  mov              r11, 62;                             jmp   n49_statement_begin_α
                        .size            n61_statement_begin_bx, .-n61_statement_begin_bx
                        .type            n62_statement_end_bx, @function
n62_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:    mov              r11, 63
                        mov              r10, 20;                             jmp   n49_statement_begin_α
                        .size            n62_statement_end_bx, .-n62_statement_end_bx
                        .type            n63_statement_begin_bx, @function
n63_statement_begin_bx:
#=======================================================================================================================
# x3.fail                                 :(to2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n63_statement_begin_α:  mov              r11, 64
                        mov              r10, 21;                             jmp   n64_statement_end_α
n63_statement_begin_β:  mov              r11, 64;                             jmp   n94_statement_begin_α
                        .size            n63_statement_begin_bx, .-n63_statement_begin_bx
                        .type            n64_statement_end_bx, @function
n64_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    mov              r11, 65
                        mov              r10, 21;                             jmp   n94_statement_begin_α
                        .size            n64_statement_end_bx, .-n64_statement_end_bx
                        .type            n65_statement_begin_bx, @function
n65_statement_begin_bx:
#=======================================================================================================================
# x4.fail                                 :(x3.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n65_statement_begin_α:  mov              r11, 66
                        mov              r10, 22;                             jmp   n66_statement_end_α
n65_statement_begin_β:  mov              r11, 66;                             jmp   n53_statement_begin_α
                        .size            n65_statement_begin_bx, .-n65_statement_begin_bx
                        .type            n66_statement_end_bx, @function
n66_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    mov              r11, 67
                        mov              r10, 22;                             jmp   n53_statement_begin_α
                        .size            n66_statement_end_bx, .-n66_statement_end_bx
                        .type            n67_statement_begin_bx, @function
n67_statement_begin_bx:
#=======================================================================================================================
# to2.code        LE(to2.I, x4.V)         :F(x4.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n67_statement_begin_α:  mov              r11, 68
                        mov              r10, 23;                             jmp   n68_var_α
n67_statement_begin_β:  mov              r11, 68;                             jmp   n59_statement_begin_α
                        .size            n67_statement_begin_bx, .-n67_statement_begin_bx
                        .type            n68_var_bx, @function
n68_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              sub              rsp, 16
                        mov              r11, 69
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_var_α
                        .size            n68_var_bx, .-n68_var_bx
                        .type            n69_var_bx, @function
n69_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              sub              rsp, 16
                        mov              r11, 70
                        mov              rax, qword ptr [r9 + 96]             # x4.V
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_coerce_numeric_α
n69_var_β:              mov              r11, 70
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n67_statement_begin_β
                        .size            n69_var_bx, .-n69_var_bx
                        .type            n70_coerce_numeric_bx, @function
n70_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 71
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_396_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_396_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_396_0
.Lcoerce_numeric_α_396_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_coerce_numeric_α
.Lcoerce_numeric_α_396_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n71_coerce_numeric_α
n70_coerce_numeric_β:   mov              r11, 71
                        add              rsp, 16;                             jmp   n69_var_β
                        .size            n70_coerce_numeric_bx, .-n70_coerce_numeric_bx
                        .type            n71_coerce_numeric_bx, @function
n71_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 72
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_398_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_398_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_398_0
.Lcoerce_numeric_α_398_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_cmp_test_α
.Lcoerce_numeric_α_398_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n72_cmp_test_α
n71_coerce_numeric_β:   mov              r11, 72
                        add              rsp, 16;                             jmp   n70_coerce_numeric_β
                        .size            n71_coerce_numeric_bx, .-n71_coerce_numeric_bx
                        .type            n72_cmp_test_bx, @function
n72_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_cmp_test_α:         sub              rsp, 16
                        mov              r11, 73
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_400_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_400_239
                        add              rsp, 16;                             jmp   n71_coerce_numeric_β
.Lcmp_test_α_400_239:                                                         jmp   n73_statement_end_α
.Lcmp_test_α_400_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jle   .Lcmp_test_α_400_240
                        add              rsp, 16;                             jmp   n71_coerce_numeric_β
.Lcmp_test_α_400_240:                                                         jmp   n73_statement_end_α
                        .size            n72_cmp_test_bx, .-n72_cmp_test_bx
                        .type            n73_statement_end_bx, @function
n73_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:    mov              r11, 74
                        mov              r10, 23
                        add              rsp, 80;                             jmp   n74_statement_begin_α
                        .size            n73_statement_end_bx, .-n73_statement_end_bx
                        .type            n74_statement_begin_bx, @function
n74_statement_begin_bx:
#=======================================================================================================================
#                 to2.V = to2.I           :(to2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n74_statement_begin_α:  mov              r11, 75
                        mov              r10, 24;                             jmp   n75_var_α
n74_statement_begin_β:  mov              r11, 75;                             jmp   n100_statement_begin_α
                        .size            n74_statement_begin_bx, .-n74_statement_begin_bx
                        .type            n75_var_bx, @function
n75_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:              sub              rsp, 16
                        mov              r11, 76
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n76_assign_α
                        .size            n75_var_bx, .-n75_var_bx
                        .type            n76_assign_bx, @function
n76_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:           mov              r11, 77
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # to2.V
                        mov              qword ptr [r9 + 136], rdx;           jmp   n77_statement_end_α
                        .size            n76_assign_bx, .-n76_assign_bx
                        .type            n77_statement_end_bx, @function
n77_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:    mov              r11, 78
                        mov              r10, 24
                        add              rsp, 16;                             jmp   n100_statement_begin_α
                        .size            n77_statement_end_bx, .-n77_statement_end_bx
                        .type            n78_statement_begin_bx, @function
n78_statement_begin_bx:
#=======================================================================================================================
# to2.resume      to2.I = to2.I + 1       :(to2.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n78_statement_begin_α:  mov              r11, 79
                        mov              r10, 25;                             jmp   n79_var_α
n78_statement_begin_β:  mov              r11, 79;                             jmp   n67_statement_begin_α
                        .size            n78_statement_begin_bx, .-n78_statement_begin_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              r11, 80
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_lit_integer_α
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_lit_integer_bx, @function
n80_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:      sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_412_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_binop_α
n80_lit_integer_β:      mov              r11, 81
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n78_statement_begin_β
.Llit_integer_α_412_0:  .quad            1
                        .size            n80_lit_integer_bx, .-n80_lit_integer_bx
                        .type            n81_binop_bx, @function
n81_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_binop_α:            sub              rsp, 16
                        mov              r11, 82
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_413_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_413_7
.Lbinop_α_413_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_413_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_413_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_413_4
.Lbinop_α_413_3:        movq             xmm0, rsi
.Lbinop_α_413_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_413_7:                                                              jmp   n82_assign_α
.Lbinop_α_413_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_413_240
                        add              rsp, 16;                             jmp   n80_lit_integer_β
.Lbinop_α_413_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_assign_α
                        .size            n81_binop_bx, .-n81_binop_bx
                        .type            n82_assign_bx, @function
n82_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              r11, 83
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # to2.I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n83_statement_end_α
                        .size            n82_assign_bx, .-n82_assign_bx
                        .type            n83_statement_end_bx, @function
n83_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:    mov              r11, 84
                        mov              r10, 25
                        add              rsp, 48;                             jmp   n67_statement_begin_α
                        .size            n83_statement_end_bx, .-n83_statement_end_bx
                        .type            n84_statement_begin_bx, @function
n84_statement_begin_bx:
#=======================================================================================================================
# x3.succeed                              :(x4.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n84_statement_begin_α:  mov              r11, 85
                        mov              r10, 26;                             jmp   n85_statement_end_α
n84_statement_begin_β:  mov              r11, 85;                             jmp   n55_statement_begin_α
                        .size            n84_statement_begin_bx, .-n84_statement_begin_bx
                        .type            n85_statement_end_bx, @function
n85_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:    mov              r11, 86
                        mov              r10, 26;                             jmp   n55_statement_begin_α
                        .size            n85_statement_end_bx, .-n85_statement_end_bx
                        .type            n86_statement_begin_bx, @function
n86_statement_begin_bx:
#=======================================================================================================================
# x4.succeed      to2.I = x3.V            :(to2.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n86_statement_begin_α:  mov              r11, 87
                        mov              r10, 27;                             jmp   n87_var_α
n86_statement_begin_β:  mov              r11, 87;                             jmp   n67_statement_begin_α
                        .size            n86_statement_begin_bx, .-n86_statement_begin_bx
                        .type            n87_var_bx, @function
n87_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              sub              rsp, 16
                        mov              r11, 88
                        mov              rax, qword ptr [r9 + 80]             # x3.V
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_assign_α
                        .size            n87_var_bx, .-n87_var_bx
                        .type            n88_assign_bx, @function
n88_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:           mov              r11, 89
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # to2.I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n89_statement_end_α
                        .size            n88_assign_bx, .-n88_assign_bx
                        .type            n89_statement_end_bx, @function
n89_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:    mov              r11, 90
                        mov              r10, 27
                        add              rsp, 16;                             jmp   n67_statement_begin_α
                        .size            n89_statement_end_bx, .-n89_statement_end_bx
                        .type            n90_statement_begin_bx, @function
n90_statement_begin_bx:
#=======================================================================================================================
# mult.start                              :(to1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
n90_statement_begin_α:  mov              r11, 91
                        mov              r10, 28;                             jmp   n91_statement_end_α
n90_statement_begin_β:  mov              r11, 91;                             jmp   n20_statement_begin_α
                        .size            n90_statement_begin_bx, .-n90_statement_begin_bx
                        .type            n91_statement_end_bx, @function
n91_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:    mov              r11, 92
                        mov              r10, 28;                             jmp   n20_statement_begin_α
                        .size            n91_statement_end_bx, .-n91_statement_end_bx
                        .type            n92_statement_begin_bx, @function
n92_statement_begin_bx:
#=======================================================================================================================
# to1.fail                                :(mult.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n92_statement_begin_α:  mov              r11, 93
                        mov              r10, 29;                             jmp   n93_statement_end_α
n92_statement_begin_β:  mov              r11, 93;                             jmp   n110_statement_begin_α
                        .size            n92_statement_begin_bx, .-n92_statement_begin_bx
                        .type            n93_statement_end_bx, @function
n93_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:    mov              r11, 94
                        mov              r10, 29;                             jmp   n110_statement_begin_α
                        .size            n93_statement_end_bx, .-n93_statement_end_bx
                        .type            n94_statement_begin_bx, @function
n94_statement_begin_bx:
#=======================================================================================================================
# to2.fail                                :(to1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n94_statement_begin_α:  mov              r11, 95
                        mov              r10, 30;                             jmp   n95_statement_end_α
n94_statement_begin_β:  mov              r11, 95;                             jmp   n37_statement_begin_α
                        .size            n94_statement_begin_bx, .-n94_statement_begin_bx
                        .type            n95_statement_end_bx, @function
n95_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:    mov              r11, 96
                        mov              r10, 30;                             jmp   n37_statement_begin_α
                        .size            n95_statement_end_bx, .-n95_statement_end_bx
                        .type            n96_statement_begin_bx, @function
n96_statement_begin_bx:
#=======================================================================================================================
# mult.resume                             :(to2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 42 0
n96_statement_begin_α:  mov              r11, 97
                        mov              r10, 31;                             jmp   n97_statement_end_α
n96_statement_begin_β:  mov              r11, 97;                             jmp   n78_statement_begin_α
                        .size            n96_statement_begin_bx, .-n96_statement_begin_bx
                        .type            n97_statement_end_bx, @function
n97_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_end_α:    mov              r11, 98
                        mov              r10, 31;                             jmp   n78_statement_begin_α
                        .size            n97_statement_end_bx, .-n97_statement_end_bx
                        .type            n98_statement_begin_bx, @function
n98_statement_begin_bx:
#=======================================================================================================================
# to1.succeed                             :(to2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 43 0
n98_statement_begin_α:  mov              r11, 99
                        mov              r10, 32;                             jmp   n99_statement_end_α
n98_statement_begin_β:  mov              r11, 99;                             jmp   n61_statement_begin_α
                        .size            n98_statement_begin_bx, .-n98_statement_begin_bx
                        .type            n99_statement_end_bx, @function
n99_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:    mov              r11, 100
                        mov              r10, 32;                             jmp   n61_statement_begin_α
                        .size            n99_statement_end_bx, .-n99_statement_end_bx
                        .type            n100_statement_begin_bx, @function
n100_statement_begin_bx:
#=======================================================================================================================
# to2.succeed     mult.V = to1.V * to2.V  :S(mult.succeed)F(exception)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 44 0
n100_statement_begin_α: mov              r11, 101
                        mov              r10, 33;                             jmp   n101_var_α
n100_statement_begin_β: mov              r11, 101;                            jmp   n220_statement_begin_α
                        .size            n100_statement_begin_bx, .-n100_statement_begin_bx
                        .type            n101_var_bx, @function
n101_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              r11, 102
                        mov              rax, qword ptr [r9 + 64]             # to1.V
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_var_α
                        .size            n101_var_bx, .-n101_var_bx
                        .type            n102_var_bx, @function
n102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              r11, 103
                        mov              rax, qword ptr [r9 + 128]            # to2.V
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_binop_α
n102_var_β:             mov              r11, 103
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n100_statement_begin_β
                        .size            n102_var_bx, .-n102_var_bx
                        .type            n103_binop_bx, @function
n103_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_binop_α:           sub              rsp, 16
                        mov              r11, 104
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_451_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_451_7
.Lbinop_α_451_2:        and              edx, 1;                              jz    .Lbinop_α_451_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_451_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_451_4
.Lbinop_α_451_3:        movq             xmm0, rsi
.Lbinop_α_451_4:        cmp              cl, 5;                               je    .Lbinop_α_451_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_451_6
.Lbinop_α_451_5:        movq             xmm1, rdi
.Lbinop_α_451_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_451_7:                                                              jmp   n104_assign_α
.Lbinop_α_451_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_451_240
                        add              rsp, 16;                             jmp   n102_var_β
.Lbinop_α_451_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_assign_α
                        .size            n103_binop_bx, .-n103_binop_bx
                        .type            n104_assign_bx, @function
n104_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:          mov              r11, 105
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # mult.V
                        mov              qword ptr [r9 + 152], rdx;           jmp   n105_statement_end_α
                        .size            n104_assign_bx, .-n104_assign_bx
                        .type            n105_statement_end_bx, @function
n105_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:   mov              r11, 106
                        mov              r10, 33
                        add              rsp, 48;                             jmp   n116_statement_begin_α
                        .size            n105_statement_end_bx, .-n105_statement_end_bx
                        .type            n106_statement_begin_bx, @function
n106_statement_begin_bx:
#=======================================================================================================================
# greater.start                           :(x5.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 46 0
n106_statement_begin_α: mov              r11, 107
                        mov              r10, 34;                             jmp   n107_statement_end_α
n106_statement_begin_β: mov              r11, 107;                            jmp   n2_statement_begin_α
                        .size            n106_statement_begin_bx, .-n106_statement_begin_bx
                        .type            n107_statement_end_bx, @function
n107_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_end_α:   mov              r11, 108
                        mov              r10, 34;                             jmp   n2_statement_begin_α
                        .size            n107_statement_end_bx, .-n107_statement_end_bx
                        .type            n108_statement_begin_bx, @function
n108_statement_begin_bx:
#=======================================================================================================================
# x5.fail                                 :(greater.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 47 0
n108_statement_begin_α: mov              r11, 109
                        mov              r10, 35;                             jmp   n109_statement_end_α
n108_statement_begin_β: mov              r11, 109;                            jmp   n131_statement_begin_α
                        .size            n108_statement_begin_bx, .-n108_statement_begin_bx
                        .type            n109_statement_end_bx, @function
n109_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:   mov              r11, 110
                        mov              r10, 35;                             jmp   n131_statement_begin_α
                        .size            n109_statement_end_bx, .-n109_statement_end_bx
                        .type            n110_statement_begin_bx, @function
n110_statement_begin_bx:
#=======================================================================================================================
# mult.fail                               :(x5.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 48 0
n110_statement_begin_α: mov              r11, 111
                        mov              r10, 36;                             jmp   n111_statement_end_α
n110_statement_begin_β: mov              r11, 111;                            jmp   n6_statement_begin_α
                        .size            n110_statement_begin_bx, .-n110_statement_begin_bx
                        .type            n111_statement_end_bx, @function
n111_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_end_α:   mov              r11, 112
                        mov              r10, 36;                             jmp   n6_statement_begin_α
                        .size            n111_statement_end_bx, .-n111_statement_end_bx
                        .type            n112_statement_begin_bx, @function
n112_statement_begin_bx:
#=======================================================================================================================
# greater.resume                          :(mult.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
n112_statement_begin_α: mov              r11, 113
                        mov              r10, 37;                             jmp   n113_statement_end_α
n112_statement_begin_β: mov              r11, 113;                            jmp   n96_statement_begin_α
                        .size            n112_statement_begin_bx, .-n112_statement_begin_bx
                        .type            n113_statement_end_bx, @function
n113_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:   mov              r11, 114
                        mov              r10, 37;                             jmp   n96_statement_begin_α
                        .size            n113_statement_end_bx, .-n113_statement_end_bx
                        .type            n114_statement_begin_bx, @function
n114_statement_begin_bx:
#=======================================================================================================================
# x5.succeed                              :(mult.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 50 0
n114_statement_begin_α: mov              r11, 115
                        mov              r10, 38;                             jmp   n115_statement_end_α
n114_statement_begin_β: mov              r11, 115;                            jmp   n90_statement_begin_α
                        .size            n114_statement_begin_bx, .-n114_statement_begin_bx
                        .type            n115_statement_end_bx, @function
n115_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_end_α:   mov              r11, 116
                        mov              r10, 38;                             jmp   n90_statement_begin_α
                        .size            n115_statement_end_bx, .-n115_statement_end_bx
                        .type            n116_statement_begin_bx, @function
n116_statement_begin_bx:
#=======================================================================================================================
# mult.succeed    GT(x5.V, mult.V)        :F(mult.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 51 0
n116_statement_begin_α: mov              r11, 117
                        mov              r10, 39;                             jmp   n117_var_α
n116_statement_begin_β: mov              r11, 117;                            jmp   n96_statement_begin_α
                        .size            n116_statement_begin_bx, .-n116_statement_begin_bx
                        .type            n117_var_bx, @function
n117_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:             sub              rsp, 16
                        mov              r11, 118
                        mov              rax, qword ptr [r9 + 0]              # x5.V
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_var_α
                        .size            n117_var_bx, .-n117_var_bx
                        .type            n118_var_bx, @function
n118_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              r11, 119
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_coerce_numeric_α
n118_var_β:             mov              r11, 119
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n116_statement_begin_β
                        .size            n118_var_bx, .-n118_var_bx
                        .type            n119_coerce_numeric_bx, @function
n119_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 120
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_480_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_480_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_480_0
.Lcoerce_numeric_α_480_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_coerce_numeric_α
.Lcoerce_numeric_α_480_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n120_coerce_numeric_α
n119_coerce_numeric_β:  mov              r11, 120
                        add              rsp, 16;                             jmp   n118_var_β
                        .size            n119_coerce_numeric_bx, .-n119_coerce_numeric_bx
                        .type            n120_coerce_numeric_bx, @function
n120_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 121
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_482_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_482_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_482_0
.Lcoerce_numeric_α_482_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_cmp_test_α
.Lcoerce_numeric_α_482_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n121_cmp_test_α
n120_coerce_numeric_β:  mov              r11, 121
                        add              rsp, 16;                             jmp   n119_coerce_numeric_β
                        .size            n120_coerce_numeric_bx, .-n120_coerce_numeric_bx
                        .type            n121_cmp_test_bx, @function
n121_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_cmp_test_α:        sub              rsp, 16
                        mov              r11, 122
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_484_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lcmp_test_α_484_239
                        add              rsp, 16;                             jmp   n120_coerce_numeric_β
.Lcmp_test_α_484_239:                                                         jmp   n122_statement_end_α
.Lcmp_test_α_484_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jg    .Lcmp_test_α_484_240
                        add              rsp, 16;                             jmp   n120_coerce_numeric_β
.Lcmp_test_α_484_240:                                                         jmp   n122_statement_end_α
                        .size            n121_cmp_test_bx, .-n121_cmp_test_bx
                        .type            n122_statement_end_bx, @function
n122_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   mov              r11, 123
                        mov              r10, 39
                        add              rsp, 80;                             jmp   n123_statement_begin_α
                        .size            n122_statement_end_bx, .-n122_statement_end_bx
                        .type            n123_statement_begin_bx, @function
n123_statement_begin_bx:
#=======================================================================================================================
#                 greater.V = mult.V      :(greater.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 52 0
n123_statement_begin_α: mov              r11, 124
                        mov              r10, 40;                             jmp   n124_var_α
n123_statement_begin_β: mov              r11, 124;                            jmp   n133_statement_begin_α
                        .size            n123_statement_begin_bx, .-n123_statement_begin_bx
                        .type            n124_var_bx, @function
n124_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              r11, 125
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_assign_α
                        .size            n124_var_bx, .-n124_var_bx
                        .type            n125_assign_bx, @function
n125_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_α:          mov              r11, 126
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # greater.V
                        mov              qword ptr [r9 + 168], rdx;           jmp   n126_statement_end_α
                        .size            n125_assign_bx, .-n125_assign_bx
                        .type            n126_statement_end_bx, @function
n126_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_end_α:   mov              r11, 127
                        mov              r10, 40
                        add              rsp, 16;                             jmp   n133_statement_begin_α
                        .size            n126_statement_end_bx, .-n126_statement_end_bx
                        .type            n127_statement_begin_bx, @function
n127_statement_begin_bx:
#=======================================================================================================================
# write1.start                            :(greater.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
n127_statement_begin_α: mov              r11, 128
                        mov              r10, 41;                             jmp   n128_statement_end_α
n127_statement_begin_β: mov              r11, 128;                            jmp   n106_statement_begin_α
                        .size            n127_statement_begin_bx, .-n127_statement_begin_bx
                        .type            n128_statement_end_bx, @function
n128_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   mov              r11, 129
                        mov              r10, 41;                             jmp   n106_statement_begin_α
                        .size            n128_statement_end_bx, .-n128_statement_end_bx
                        .type            n129_statement_begin_bx, @function
n129_statement_begin_bx:
#=======================================================================================================================
# write1.resume                           :(greater.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 55 0
n129_statement_begin_α: mov              r11, 130
                        mov              r10, 42;                             jmp   n130_statement_end_α
n129_statement_begin_β: mov              r11, 130;                            jmp   n112_statement_begin_α
                        .size            n129_statement_begin_bx, .-n129_statement_begin_bx
                        .type            n130_statement_end_bx, @function
n130_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:   mov              r11, 131
                        mov              r10, 42;                             jmp   n112_statement_begin_α
                        .size            n130_statement_end_bx, .-n130_statement_end_bx
                        .type            n131_statement_begin_bx, @function
n131_statement_begin_bx:
#=======================================================================================================================
# greater.fail                            :(write1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 56 0
n131_statement_begin_α: mov              r11, 132
                        mov              r10, 43;                             jmp   n132_statement_end_α
n131_statement_begin_β: mov              r11, 132;                            jmp   n200_statement_begin_α
                        .size            n131_statement_begin_bx, .-n131_statement_begin_bx
                        .type            n132_statement_end_bx, @function
n132_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_end_α:   mov              r11, 133
                        mov              r10, 43;                             jmp   n200_statement_begin_α
                        .size            n132_statement_end_bx, .-n132_statement_end_bx
                        .type            n133_statement_begin_bx, @function
n133_statement_begin_bx:
#=======================================================================================================================
# greater.succeed write.V = greater.V
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 57 0
n133_statement_begin_α: mov              r11, 134
                        mov              r10, 44;                             jmp   n134_var_α
n133_statement_begin_β: mov              r11, 134;                            jmp   n137_statement_begin_α
                        .size            n133_statement_begin_bx, .-n133_statement_begin_bx
                        .type            n134_var_bx, @function
n134_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             sub              rsp, 16
                        mov              r11, 135
                        mov              rax, qword ptr [r9 + 160]            # greater.V
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_assign_α
                        .size            n134_var_bx, .-n134_var_bx
                        .type            n135_assign_bx, @function
n135_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:          mov              r11, 136
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # write.V
                        mov              qword ptr [r9 + 184], rdx;           jmp   n136_statement_end_α
                        .size            n135_assign_bx, .-n135_assign_bx
                        .type            n136_statement_end_bx, @function
n136_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_end_α:   mov              r11, 137
                        mov              r10, 44
                        add              rsp, 16;                             jmp   n137_statement_begin_α
                        .size            n136_statement_end_bx, .-n136_statement_end_bx
                        .type            n137_statement_begin_bx, @function
n137_statement_begin_bx:
#=======================================================================================================================
#                 OUTPUT = write.V        :(write1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 58 0
n137_statement_begin_α: mov              r11, 138
                        mov              r10, 45;                             jmp   n138_var_α
n137_statement_begin_β: mov              r11, 138;                            jmp   n204_statement_begin_α
                        .size            n137_statement_begin_bx, .-n137_statement_begin_bx
                        .type            n138_var_bx, @function
n138_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              r11, 139
                        mov              rax, qword ptr [r9 + 176]            # write.V
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_assign_α
                        .size            n138_var_bx, .-n138_var_bx
                        .type            n139_assign_bx, @function
n139_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_assign_α:          mov              r11, 140
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_514_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n140_statement_end_α
.Lassign_α_514_0:       .quad            .Lassign_α_514_0_s
.Lassign_α_514_0_s:     .string          "OUTPUT"
                        .size            n139_assign_bx, .-n139_assign_bx
                        .type            n140_statement_end_bx, @function
n140_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_end_α:   mov              r11, 141
                        mov              r10, 45
                        add              rsp, 16;                             jmp   n204_statement_begin_α
                        .size            n140_statement_end_bx, .-n140_statement_end_bx
                        .type            n141_statement_begin_bx, @function
n141_statement_begin_bx:
#=======================================================================================================================
# write2.start    to3.I = 1               :(to3.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 63 0
n141_statement_begin_α: mov              r11, 142
                        mov              r10, 46;                             jmp   n142_lit_integer_α
n141_statement_begin_β: mov              r11, 142;                            jmp   n151_statement_begin_α
                        .size            n141_statement_begin_bx, .-n141_statement_begin_bx
                        .type            n142_lit_integer_bx, @function
n142_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     sub              rsp, 16
                        mov              r11, 143
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_519_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n143_assign_α
.Llit_integer_α_519_0:  .quad            1
                        .size            n142_lit_integer_bx, .-n142_lit_integer_bx
                        .type            n143_assign_bx, @function
n143_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:          mov              r11, 144
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # to3.I
                        mov              qword ptr [r9 + 200], rdx;           jmp   n144_statement_end_α
                        .size            n143_assign_bx, .-n143_assign_bx
                        .type            n144_statement_end_bx, @function
n144_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_end_α:   mov              r11, 145
                        mov              r10, 46
                        add              rsp, 16;                             jmp   n151_statement_begin_α
                        .size            n144_statement_end_bx, .-n144_statement_end_bx
                        .type            n145_statement_begin_bx, @function
n145_statement_begin_bx:
#=======================================================================================================================
# to3.resume      to3.I = to3.I + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 64 0
n145_statement_begin_α: mov              r11, 146
                        mov              r10, 47;                             jmp   n146_var_α
n145_statement_begin_β: mov              r11, 146;                            jmp   n151_statement_begin_α
                        .size            n145_statement_begin_bx, .-n145_statement_begin_bx
                        .type            n146_var_bx, @function
n146_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:             sub              rsp, 16
                        mov              r11, 147
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_lit_integer_α
                        .size            n146_var_bx, .-n146_var_bx
                        .type            n147_lit_integer_bx, @function
n147_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:     sub              rsp, 16
                        mov              r11, 148
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_526_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n148_binop_α
n147_lit_integer_β:     mov              r11, 148
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n145_statement_begin_β
.Llit_integer_α_526_0:  .quad            1
                        .size            n147_lit_integer_bx, .-n147_lit_integer_bx
                        .type            n148_binop_bx, @function
n148_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_binop_α:           sub              rsp, 16
                        mov              r11, 149
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_527_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_527_7
.Lbinop_α_527_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_527_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_527_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_527_4
.Lbinop_α_527_3:        movq             xmm0, rsi
.Lbinop_α_527_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_527_7:                                                              jmp   n149_assign_α
.Lbinop_α_527_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_527_240
                        add              rsp, 16;                             jmp   n147_lit_integer_β
.Lbinop_α_527_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_assign_α
                        .size            n148_binop_bx, .-n148_binop_bx
                        .type            n149_assign_bx, @function
n149_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_α:          mov              r11, 150
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # to3.I
                        mov              qword ptr [r9 + 200], rdx;           jmp   n150_statement_end_α
                        .size            n149_assign_bx, .-n149_assign_bx
                        .type            n150_statement_end_bx, @function
n150_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:   mov              r11, 151
                        mov              r10, 47
                        add              rsp, 48;                             jmp   n151_statement_begin_α
                        .size            n150_statement_end_bx, .-n150_statement_end_bx
                        .type            n151_statement_begin_bx, @function
n151_statement_begin_bx:
#=======================================================================================================================
# to3.code        LE(to3.I, 2)            :F(write2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 65 0
n151_statement_begin_α: mov              r11, 152
                        mov              r10, 48;                             jmp   n152_var_α
n151_statement_begin_β: mov              r11, 152;                            jmp   n212_statement_begin_α
                        .size            n151_statement_begin_bx, .-n151_statement_begin_bx
                        .type            n152_var_bx, @function
n152_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              r11, 153
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_lit_integer_α
                        .size            n152_var_bx, .-n152_var_bx
                        .type            n153_lit_integer_bx, @function
n153_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     sub              rsp, 16
                        mov              r11, 154
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_534_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_coerce_numeric_α
n153_lit_integer_β:     mov              r11, 154
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n151_statement_begin_β
.Llit_integer_α_534_0:  .quad            2
                        .size            n153_lit_integer_bx, .-n153_lit_integer_bx
                        .type            n154_coerce_numeric_bx, @function
n154_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 155
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_536_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_536_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_536_0
.Lcoerce_numeric_α_536_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_coerce_numeric_α
.Lcoerce_numeric_α_536_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n155_coerce_numeric_α
n154_coerce_numeric_β:  mov              r11, 155
                        add              rsp, 16;                             jmp   n153_lit_integer_β
                        .size            n154_coerce_numeric_bx, .-n154_coerce_numeric_bx
                        .type            n155_coerce_numeric_bx, @function
n155_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 156
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_538_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_538_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_538_0
.Lcoerce_numeric_α_538_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n156_cmp_test_α
.Lcoerce_numeric_α_538_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n156_cmp_test_α
n155_coerce_numeric_β:  mov              r11, 156
                        add              rsp, 16;                             jmp   n154_coerce_numeric_β
                        .size            n155_coerce_numeric_bx, .-n155_coerce_numeric_bx
                        .type            n156_cmp_test_bx, @function
n156_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_cmp_test_α:        sub              rsp, 16
                        mov              r11, 157
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_540_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_540_239
                        add              rsp, 16;                             jmp   n155_coerce_numeric_β
.Lcmp_test_α_540_239:                                                         jmp   n157_statement_end_α
.Lcmp_test_α_540_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jle   .Lcmp_test_α_540_240
                        add              rsp, 16;                             jmp   n155_coerce_numeric_β
.Lcmp_test_α_540_240:                                                         jmp   n157_statement_end_α
                        .size            n156_cmp_test_bx, .-n156_cmp_test_bx
                        .type            n157_statement_end_bx, @function
n157_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   mov              r11, 158
                        mov              r10, 48
                        add              rsp, 80;                             jmp   n158_statement_begin_α
                        .size            n157_statement_end_bx, .-n157_statement_end_bx
                        .type            n158_statement_begin_bx, @function
n158_statement_begin_bx:
#=======================================================================================================================
#                 to4.I = 3               :(to4.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 66 0
n158_statement_begin_α: mov              r11, 159
                        mov              r10, 49;                             jmp   n159_lit_integer_α
n158_statement_begin_β: mov              r11, 159;                            jmp   n168_statement_begin_α
                        .size            n158_statement_begin_bx, .-n158_statement_begin_bx
                        .type            n159_lit_integer_bx, @function
n159_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:     sub              rsp, 16
                        mov              r11, 160
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_545_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n160_assign_α
.Llit_integer_α_545_0:  .quad            3
                        .size            n159_lit_integer_bx, .-n159_lit_integer_bx
                        .type            n160_assign_bx, @function
n160_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:          mov              r11, 161
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # to4.I
                        mov              qword ptr [r9 + 216], rdx;           jmp   n161_statement_end_α
                        .size            n160_assign_bx, .-n160_assign_bx
                        .type            n161_statement_end_bx, @function
n161_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   mov              r11, 162
                        mov              r10, 49
                        add              rsp, 16;                             jmp   n168_statement_begin_α
                        .size            n161_statement_end_bx, .-n161_statement_end_bx
                        .type            n162_statement_begin_bx, @function
n162_statement_begin_bx:
#=======================================================================================================================
# write2.resume   to4.I = to4.I + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 67 0
n162_statement_begin_α: mov              r11, 163
                        mov              r10, 50;                             jmp   n163_var_α
n162_statement_begin_β: mov              r11, 163;                            jmp   n168_statement_begin_α
                        .size            n162_statement_begin_bx, .-n162_statement_begin_bx
                        .type            n163_var_bx, @function
n163_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:             sub              rsp, 16
                        mov              r11, 164
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n164_lit_integer_α
                        .size            n163_var_bx, .-n163_var_bx
                        .type            n164_lit_integer_bx, @function
n164_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_integer_α:     sub              rsp, 16
                        mov              r11, 165
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_552_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n165_binop_α
n164_lit_integer_β:     mov              r11, 165
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n162_statement_begin_β
.Llit_integer_α_552_0:  .quad            1
                        .size            n164_lit_integer_bx, .-n164_lit_integer_bx
                        .type            n165_binop_bx, @function
n165_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_binop_α:           sub              rsp, 16
                        mov              r11, 166
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_553_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_553_7
.Lbinop_α_553_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_553_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_553_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_553_4
.Lbinop_α_553_3:        movq             xmm0, rsi
.Lbinop_α_553_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_553_7:                                                              jmp   n166_assign_α
.Lbinop_α_553_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_553_240
                        add              rsp, 16;                             jmp   n164_lit_integer_β
.Lbinop_α_553_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n166_assign_α
                        .size            n165_binop_bx, .-n165_binop_bx
                        .type            n166_assign_bx, @function
n166_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_assign_α:          mov              r11, 167
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # to4.I
                        mov              qword ptr [r9 + 216], rdx;           jmp   n167_statement_end_α
                        .size            n166_assign_bx, .-n166_assign_bx
                        .type            n167_statement_end_bx, @function
n167_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:   mov              r11, 168
                        mov              r10, 50
                        add              rsp, 48;                             jmp   n168_statement_begin_α
                        .size            n167_statement_end_bx, .-n167_statement_end_bx
                        .type            n168_statement_begin_bx, @function
n168_statement_begin_bx:
#=======================================================================================================================
# to4.code        LE(to4.I, 4)            :F(to3.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 68 0
n168_statement_begin_α: mov              r11, 169
                        mov              r10, 51;                             jmp   n169_var_α
n168_statement_begin_β: mov              r11, 169;                            jmp   n145_statement_begin_α
                        .size            n168_statement_begin_bx, .-n168_statement_begin_bx
                        .type            n169_var_bx, @function
n169_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:             sub              rsp, 16
                        mov              r11, 170
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n170_lit_integer_α
                        .size            n169_var_bx, .-n169_var_bx
                        .type            n170_lit_integer_bx, @function
n170_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_integer_α:     sub              rsp, 16
                        mov              r11, 171
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_560_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n171_coerce_numeric_α
n170_lit_integer_β:     mov              r11, 171
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n168_statement_begin_β
.Llit_integer_α_560_0:  .quad            4
                        .size            n170_lit_integer_bx, .-n170_lit_integer_bx
                        .type            n171_coerce_numeric_bx, @function
n171_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 172
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_562_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_562_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_562_0
.Lcoerce_numeric_α_562_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n172_coerce_numeric_α
.Lcoerce_numeric_α_562_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n172_coerce_numeric_α
n171_coerce_numeric_β:  mov              r11, 172
                        add              rsp, 16;                             jmp   n170_lit_integer_β
                        .size            n171_coerce_numeric_bx, .-n171_coerce_numeric_bx
                        .type            n172_coerce_numeric_bx, @function
n172_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 173
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_564_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_564_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_564_0
.Lcoerce_numeric_α_564_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_cmp_test_α
.Lcoerce_numeric_α_564_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n173_cmp_test_α
n172_coerce_numeric_β:  mov              r11, 173
                        add              rsp, 16;                             jmp   n171_coerce_numeric_β
                        .size            n172_coerce_numeric_bx, .-n172_coerce_numeric_bx
                        .type            n173_cmp_test_bx, @function
n173_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_cmp_test_α:        sub              rsp, 16
                        mov              r11, 174
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_566_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_566_239
                        add              rsp, 16;                             jmp   n172_coerce_numeric_β
.Lcmp_test_α_566_239:                                                         jmp   n174_statement_end_α
.Lcmp_test_α_566_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jle   .Lcmp_test_α_566_240
                        add              rsp, 16;                             jmp   n172_coerce_numeric_β
.Lcmp_test_α_566_240:                                                         jmp   n174_statement_end_α
                        .size            n173_cmp_test_bx, .-n173_cmp_test_bx
                        .type            n174_statement_end_bx, @function
n174_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:   mov              r11, 175
                        mov              r10, 51
                        add              rsp, 80;                             jmp   n175_statement_begin_α
                        .size            n174_statement_end_bx, .-n174_statement_end_bx
                        .type            n175_statement_begin_bx, @function
n175_statement_begin_bx:
#=======================================================================================================================
#                 mult.V = to3.I * to4.I  :F(exception)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 69 0
n175_statement_begin_α: mov              r11, 176
                        mov              r10, 52;                             jmp   n176_var_α
n175_statement_begin_β: mov              r11, 176;                            jmp   n220_statement_begin_α
                        .size            n175_statement_begin_bx, .-n175_statement_begin_bx
                        .type            n176_var_bx, @function
n176_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:             sub              rsp, 16
                        mov              r11, 177
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n177_var_α
                        .size            n176_var_bx, .-n176_var_bx
                        .type            n177_var_bx, @function
n177_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             sub              rsp, 16
                        mov              r11, 178
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n178_binop_α
n177_var_β:             mov              r11, 178
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n175_statement_begin_β
                        .size            n177_var_bx, .-n177_var_bx
                        .type            n178_binop_bx, @function
n178_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_binop_α:           sub              rsp, 16
                        mov              r11, 179
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_573_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_573_7
.Lbinop_α_573_2:        and              edx, 1;                              jz    .Lbinop_α_573_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_573_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_573_4
.Lbinop_α_573_3:        movq             xmm0, rsi
.Lbinop_α_573_4:        cmp              cl, 5;                               je    .Lbinop_α_573_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_573_6
.Lbinop_α_573_5:        movq             xmm1, rdi
.Lbinop_α_573_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_573_7:                                                              jmp   n179_assign_α
.Lbinop_α_573_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_573_240
                        add              rsp, 16;                             jmp   n177_var_β
.Lbinop_α_573_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_assign_α
                        .size            n178_binop_bx, .-n178_binop_bx
                        .type            n179_assign_bx, @function
n179_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:          mov              r11, 180
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # mult.V
                        mov              qword ptr [r9 + 152], rdx;           jmp   n180_statement_end_α
                        .size            n179_assign_bx, .-n179_assign_bx
                        .type            n180_statement_end_bx, @function
n180_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_end_α:   mov              r11, 181
                        mov              r10, 52
                        add              rsp, 48;                             jmp   n181_statement_begin_α
                        .size            n180_statement_end_bx, .-n180_statement_end_bx
                        .type            n181_statement_begin_bx, @function
n181_statement_begin_bx:
#=======================================================================================================================
#                 GT(5, mult.V)           :F(write2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 70 0
n181_statement_begin_α: mov              r11, 182
                        mov              r10, 53;                             jmp   n182_lit_integer_α
n181_statement_begin_β: mov              r11, 182;                            jmp   n162_statement_begin_α
                        .size            n181_statement_begin_bx, .-n181_statement_begin_bx
                        .type            n182_lit_integer_bx, @function
n182_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:     sub              rsp, 16
                        mov              r11, 183
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_579_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n183_var_α
.Llit_integer_α_579_0:  .quad            5
                        .size            n182_lit_integer_bx, .-n182_lit_integer_bx
                        .type            n183_var_bx, @function
n183_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:             sub              rsp, 16
                        mov              r11, 184
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_coerce_numeric_α
n183_var_β:             mov              r11, 184
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n181_statement_begin_β
                        .size            n183_var_bx, .-n183_var_bx
                        .type            n184_coerce_numeric_bx, @function
n184_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 185
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_582_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_582_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_582_0
.Lcoerce_numeric_α_582_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n185_coerce_numeric_α
.Lcoerce_numeric_α_582_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n185_coerce_numeric_α
n184_coerce_numeric_β:  mov              r11, 185
                        add              rsp, 16;                             jmp   n183_var_β
                        .size            n184_coerce_numeric_bx, .-n184_coerce_numeric_bx
                        .type            n185_coerce_numeric_bx, @function
n185_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 186
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_584_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_584_0
                        mov              eax, dword ptr [rsp + 48]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_584_0
.Lcoerce_numeric_α_584_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n186_cmp_test_α
.Lcoerce_numeric_α_584_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n186_cmp_test_α
n185_coerce_numeric_β:  mov              r11, 186
                        add              rsp, 16;                             jmp   n184_coerce_numeric_β
                        .size            n185_coerce_numeric_bx, .-n185_coerce_numeric_bx
                        .type            n186_cmp_test_bx, @function
n186_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_cmp_test_α:        sub              rsp, 16
                        mov              r11, 187
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_586_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lcmp_test_α_586_239
                        add              rsp, 16;                             jmp   n185_coerce_numeric_β
.Lcmp_test_α_586_239:                                                         jmp   n187_statement_end_α
.Lcmp_test_α_586_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jg    .Lcmp_test_α_586_240
                        add              rsp, 16;                             jmp   n185_coerce_numeric_β
.Lcmp_test_α_586_240:                                                         jmp   n187_statement_end_α
                        .size            n186_cmp_test_bx, .-n186_cmp_test_bx
                        .type            n187_statement_end_bx, @function
n187_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:   mov              r11, 188
                        mov              r10, 53
                        add              rsp, 80;                             jmp   n188_statement_begin_α
                        .size            n187_statement_end_bx, .-n187_statement_end_bx
                        .type            n188_statement_begin_bx, @function
n188_statement_begin_bx:
#=======================================================================================================================
#                 greater.V = mult.V
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 71 0
n188_statement_begin_α: mov              r11, 189
                        mov              r10, 54;                             jmp   n189_var_α
n188_statement_begin_β: mov              r11, 189;                            jmp   n192_statement_begin_α
                        .size            n188_statement_begin_bx, .-n188_statement_begin_bx
                        .type            n189_var_bx, @function
n189_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             sub              rsp, 16
                        mov              r11, 190
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_assign_α
                        .size            n189_var_bx, .-n189_var_bx
                        .type            n190_assign_bx, @function
n190_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:          mov              r11, 191
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # greater.V
                        mov              qword ptr [r9 + 168], rdx;           jmp   n191_statement_end_α
                        .size            n190_assign_bx, .-n190_assign_bx
                        .type            n191_statement_end_bx, @function
n191_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_end_α:   mov              r11, 192
                        mov              r10, 54
                        add              rsp, 16;                             jmp   n192_statement_begin_α
                        .size            n191_statement_end_bx, .-n191_statement_end_bx
                        .type            n192_statement_begin_bx, @function
n192_statement_begin_bx:
#=======================================================================================================================
#                 OUTPUT = greater.V      :(write2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 72 0
n192_statement_begin_α: mov              r11, 193
                        mov              r10, 55;                             jmp   n193_var_α
n192_statement_begin_β: mov              r11, 193;                            jmp   n216_statement_begin_α
                        .size            n192_statement_begin_bx, .-n192_statement_begin_bx
                        .type            n193_var_bx, @function
n193_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             sub              rsp, 16
                        mov              r11, 194
                        mov              rax, qword ptr [r9 + 160]            # greater.V
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n194_assign_α
                        .size            n193_var_bx, .-n193_var_bx
                        .type            n194_assign_bx, @function
n194_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_assign_α:          mov              r11, 195
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_598_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n195_statement_end_α
.Lassign_α_598_0:       .quad            .Lassign_α_598_0_s
.Lassign_α_598_0_s:     .string          "OUTPUT"
                        .size            n194_assign_bx, .-n194_assign_bx
                        .type            n195_statement_end_bx, @function
n195_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_end_α:   mov              r11, 196
                        mov              r10, 55
                        add              rsp, 16;                             jmp   n216_statement_begin_α
                        .size            n195_statement_end_bx, .-n195_statement_end_bx
                        .type            n196_statement_begin_bx, @function
n196_statement_begin_bx:
#=======================================================================================================================
# main1           OUTPUT =                :(write1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 74 0
n196_statement_begin_α: mov              r11, 197
                        mov              r10, 56;                             jmp   n197_lit_string_α
n196_statement_begin_β: mov              r11, 197;                            jmp   n127_statement_begin_α
                        .size            n196_statement_begin_bx, .-n196_statement_begin_bx
                        .type            n197_lit_string_bx, @function
n197_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:      sub              rsp, 16
                        mov              r11, 198
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_603_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n198_assign_α
.Llit_string_α_603_0:   .quad            .Llit_string_α_603_0_s
.Llit_string_α_603_0_s: .string          ""
                        .size            n197_lit_string_bx, .-n197_lit_string_bx
                        .type            n198_assign_bx, @function
n198_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_assign_α:          mov              r11, 199
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_604_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n199_statement_end_α
.Lassign_α_604_0:       .quad            .Lassign_α_604_0_s
.Lassign_α_604_0_s:     .string          "OUTPUT"
                        .size            n198_assign_bx, .-n198_assign_bx
                        .type            n199_statement_end_bx, @function
n199_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_end_α:   mov              r11, 200
                        mov              r10, 56
                        add              rsp, 16;                             jmp   n127_statement_begin_α
                        .size            n199_statement_end_bx, .-n199_statement_end_bx
                        .type            n200_statement_begin_bx, @function
n200_statement_begin_bx:
#=======================================================================================================================
# write1.fail     OUTPUT = "Failure."     :(main2)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 75 0
n200_statement_begin_α: mov              r11, 201
                        mov              r10, 57;                             jmp   n201_lit_string_α
n200_statement_begin_β: mov              r11, 201;                            jmp   n208_statement_begin_α
                        .size            n200_statement_begin_bx, .-n200_statement_begin_bx
                        .type            n201_lit_string_bx, @function
n201_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:      sub              rsp, 16
                        mov              r11, 202
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_609_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n202_assign_α
.Llit_string_α_609_0:   .quad            .Llit_string_α_609_0_s
.Llit_string_α_609_0_s: .string          "Failure."
                        .size            n201_lit_string_bx, .-n201_lit_string_bx
                        .type            n202_assign_bx, @function
n202_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_assign_α:          mov              r11, 203
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_610_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n203_statement_end_α
.Lassign_α_610_0:       .quad            .Lassign_α_610_0_s
.Lassign_α_610_0_s:     .string          "OUTPUT"
                        .size            n202_assign_bx, .-n202_assign_bx
                        .type            n203_statement_end_bx, @function
n203_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_end_α:   mov              r11, 204
                        mov              r10, 57
                        add              rsp, 16;                             jmp   n208_statement_begin_α
                        .size            n203_statement_end_bx, .-n203_statement_end_bx
                        .type            n204_statement_begin_bx, @function
n204_statement_begin_bx:
#=======================================================================================================================
# write1.succeed  OUTPUT = "Success!"     :(write1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 76 0
n204_statement_begin_α: mov              r11, 205
                        mov              r10, 58;                             jmp   n205_lit_string_α
n204_statement_begin_β: mov              r11, 205;                            jmp   n129_statement_begin_α
                        .size            n204_statement_begin_bx, .-n204_statement_begin_bx
                        .type            n205_lit_string_bx, @function
n205_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:      sub              rsp, 16
                        mov              r11, 206
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_615_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n206_assign_α
.Llit_string_α_615_0:   .quad            .Llit_string_α_615_0_s
.Llit_string_α_615_0_s: .string          "Success!"
                        .size            n205_lit_string_bx, .-n205_lit_string_bx
                        .type            n206_assign_bx, @function
n206_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_assign_α:          mov              r11, 207
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_616_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n207_statement_end_α
.Lassign_α_616_0:       .quad            .Lassign_α_616_0_s
.Lassign_α_616_0_s:     .string          "OUTPUT"
                        .size            n206_assign_bx, .-n206_assign_bx
                        .type            n207_statement_end_bx, @function
n207_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_statement_end_α:   mov              r11, 208
                        mov              r10, 58
                        add              rsp, 16;                             jmp   n129_statement_begin_α
                        .size            n207_statement_end_bx, .-n207_statement_end_bx
                        .type            n208_statement_begin_bx, @function
n208_statement_begin_bx:
#=======================================================================================================================
# main2           OUTPUT =                :(write2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 77 0
n208_statement_begin_α: mov              r11, 209
                        mov              r10, 59;                             jmp   n209_lit_string_α
n208_statement_begin_β: mov              r11, 209;                            jmp   n141_statement_begin_α
                        .size            n208_statement_begin_bx, .-n208_statement_begin_bx
                        .type            n209_lit_string_bx, @function
n209_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:      sub              rsp, 16
                        mov              r11, 210
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_621_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n210_assign_α
.Llit_string_α_621_0:   .quad            .Llit_string_α_621_0_s
.Llit_string_α_621_0_s: .string          ""
                        .size            n209_lit_string_bx, .-n209_lit_string_bx
                        .type            n210_assign_bx, @function
n210_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_assign_α:          mov              r11, 211
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_622_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n211_statement_end_α
.Lassign_α_622_0:       .quad            .Lassign_α_622_0_s
.Lassign_α_622_0_s:     .string          "OUTPUT"
                        .size            n210_assign_bx, .-n210_assign_bx
                        .type            n211_statement_end_bx, @function
n211_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_statement_end_α:   mov              r11, 212
                        mov              r10, 59
                        add              rsp, 16;                             jmp   n141_statement_begin_α
                        .size            n211_statement_end_bx, .-n211_statement_end_bx
                        .type            n212_statement_begin_bx, @function
n212_statement_begin_bx:
#=======================================================================================================================
# write2.fail     OUTPUT = "Failure."     :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 78 0
n212_statement_begin_α: mov              r11, 213
                        mov              r10, 60;                             jmp   n213_lit_string_α
n212_statement_begin_β: mov              r11, 213;                            jmp   main_γ
                        .size            n212_statement_begin_bx, .-n212_statement_begin_bx
                        .type            n213_lit_string_bx, @function
n213_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:      sub              rsp, 16
                        mov              r11, 214
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_627_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n214_assign_α
.Llit_string_α_627_0:   .quad            .Llit_string_α_627_0_s
.Llit_string_α_627_0_s: .string          "Failure."
                        .size            n213_lit_string_bx, .-n213_lit_string_bx
                        .type            n214_assign_bx, @function
n214_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_assign_α:          mov              r11, 215
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_628_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n215_statement_end_α
.Lassign_α_628_0:       .quad            .Lassign_α_628_0_s
.Lassign_α_628_0_s:     .string          "OUTPUT"
                        .size            n214_assign_bx, .-n214_assign_bx
                        .type            n215_statement_end_bx, @function
n215_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_statement_end_α:   mov              r11, 216
                        mov              r10, 60
                        add              rsp, 16;                             jmp   main_γ
                        .size            n215_statement_end_bx, .-n215_statement_end_bx
                        .type            n216_statement_begin_bx, @function
n216_statement_begin_bx:
#=======================================================================================================================
# write2.succeed  OUTPUT = "Success!"     :(write2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 79 0
n216_statement_begin_α: mov              r11, 217
                        mov              r10, 61;                             jmp   n217_lit_string_α
n216_statement_begin_β: mov              r11, 217;                            jmp   n162_statement_begin_α
                        .size            n216_statement_begin_bx, .-n216_statement_begin_bx
                        .type            n217_lit_string_bx, @function
n217_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:      sub              rsp, 16
                        mov              r11, 218
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_633_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n218_assign_α
.Llit_string_α_633_0:   .quad            .Llit_string_α_633_0_s
.Llit_string_α_633_0_s: .string          "Success!"
                        .size            n217_lit_string_bx, .-n217_lit_string_bx
                        .type            n218_assign_bx, @function
n218_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_assign_α:          mov              r11, 219
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_634_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n219_statement_end_α
.Lassign_α_634_0:       .quad            .Lassign_α_634_0_s
.Lassign_α_634_0_s:     .string          "OUTPUT"
                        .size            n218_assign_bx, .-n218_assign_bx
                        .type            n219_statement_end_bx, @function
n219_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_statement_end_α:   mov              r11, 220
                        mov              r10, 61
                        add              rsp, 16;                             jmp   n162_statement_begin_α
                        .size            n219_statement_end_bx, .-n219_statement_end_bx
                        .type            n220_statement_begin_bx, @function
n220_statement_begin_bx:
#=======================================================================================================================
# exception       TERMINAL = "Exception!" :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 81 0
n220_statement_begin_α: mov              r11, 221
                        mov              r10, 62;                             jmp   n221_lit_string_α
n220_statement_begin_β: mov              r11, 221;                            jmp   main_γ
                        .size            n220_statement_begin_bx, .-n220_statement_begin_bx
                        .type            n221_lit_string_bx, @function
n221_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:      sub              rsp, 16
                        mov              r11, 222
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_639_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n222_assign_α
.Llit_string_α_639_0:   .quad            .Llit_string_α_639_0_s
.Llit_string_α_639_0_s: .string          "Exception!"
                        .size            n221_lit_string_bx, .-n221_lit_string_bx
                        .type            n222_assign_bx, @function
n222_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_assign_α:          mov              r11, 223
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_640_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n223_statement_end_α
.Lassign_α_640_0:       .quad            .Lassign_α_640_0_s
.Lassign_α_640_0_s:     .string          "TERMINAL"
                        .size            n222_assign_bx, .-n222_assign_bx
                        .type            n223_statement_end_bx, @function
n223_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_end_α:   mov              r11, 224
                        mov              r10, 62
                        add              rsp, 16;                             jmp   main_γ
                        .size            n223_statement_end_bx, .-n223_statement_end_bx
                        .type            n224_goto_bx, @function
n224_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_goto_α:            mov              r11, 225;                            jmp   n0_statement_begin_α
n224_goto_β:            mov              r11, 225;                            jmp   main_ω
                        .size            n224_goto_bx, .-n224_goto_bx
                        .type            n225_goto_bx, @function
n225_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_goto_α:            mov              r11, 226;                            jmp   n2_statement_begin_α
n225_goto_β:            mov              r11, 226;                            jmp   main_ω
                        .size            n225_goto_bx, .-n225_goto_bx
                        .type            n226_goto_bx, @function
n226_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_goto_α:            mov              r11, 227;                            jmp   n6_statement_begin_α
n226_goto_β:            mov              r11, 227;                            jmp   main_ω
                        .size            n226_goto_bx, .-n226_goto_bx
                        .type            n227_goto_bx, @function
n227_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_goto_α:            mov              r11, 228;                            jmp   n8_statement_begin_α
n227_goto_β:            mov              r11, 228;                            jmp   main_ω
                        .size            n227_goto_bx, .-n227_goto_bx
                        .type            n228_goto_bx, @function
n228_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_goto_α:            mov              r11, 229;                            jmp   n12_statement_begin_α
n228_goto_β:            mov              r11, 229;                            jmp   main_ω
                        .size            n228_goto_bx, .-n228_goto_bx
                        .type            n229_goto_bx, @function
n229_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_goto_α:            mov              r11, 230;                            jmp   n14_statement_begin_α
n229_goto_β:            mov              r11, 230;                            jmp   main_ω
                        .size            n229_goto_bx, .-n229_goto_bx
                        .type            n230_goto_bx, @function
n230_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_goto_α:            mov              r11, 231;                            jmp   n18_statement_begin_α
n230_goto_β:            mov              r11, 231;                            jmp   main_ω
                        .size            n230_goto_bx, .-n230_goto_bx
                        .type            n231_goto_bx, @function
n231_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_goto_α:            mov              r11, 232;                            jmp   n20_statement_begin_α
n231_goto_β:            mov              r11, 232;                            jmp   main_ω
                        .size            n231_goto_bx, .-n231_goto_bx
                        .type            n232_goto_bx, @function
n232_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_goto_α:            mov              r11, 233;                            jmp   n22_statement_begin_α
n232_goto_β:            mov              r11, 233;                            jmp   main_ω
                        .size            n232_goto_bx, .-n232_goto_bx
                        .type            n233_goto_bx, @function
n233_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_goto_α:            mov              r11, 234;                            jmp   n24_statement_begin_α
n233_goto_β:            mov              r11, 234;                            jmp   main_ω
                        .size            n233_goto_bx, .-n233_goto_bx
                        .type            n234_goto_bx, @function
n234_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_goto_α:            mov              r11, 235;                            jmp   n26_statement_begin_α
n234_goto_β:            mov              r11, 235;                            jmp   main_ω
                        .size            n234_goto_bx, .-n234_goto_bx
                        .type            n235_goto_bx, @function
n235_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_goto_α:            mov              r11, 236;                            jmp   n37_statement_begin_α
n235_goto_β:            mov              r11, 236;                            jmp   main_ω
                        .size            n235_goto_bx, .-n235_goto_bx
                        .type            n236_goto_bx, @function
n236_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_goto_α:            mov              r11, 237;                            jmp   n43_statement_begin_α
n236_goto_β:            mov              r11, 237;                            jmp   main_ω
                        .size            n236_goto_bx, .-n236_goto_bx
                        .type            n237_goto_bx, @function
n237_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_goto_α:            mov              r11, 238;                            jmp   n45_statement_begin_α
n237_goto_β:            mov              r11, 238;                            jmp   main_ω
                        .size            n237_goto_bx, .-n237_goto_bx
                        .type            n238_goto_bx, @function
n238_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_goto_α:            mov              r11, 239;                            jmp   n49_statement_begin_α
n238_goto_β:            mov              r11, 239;                            jmp   main_ω
                        .size            n238_goto_bx, .-n238_goto_bx
                        .type            n239_goto_bx, @function
n239_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_goto_α:            mov              r11, 240;                            jmp   n53_statement_begin_α
n239_goto_β:            mov              r11, 240;                            jmp   main_ω
                        .size            n239_goto_bx, .-n239_goto_bx
                        .type            n240_goto_bx, @function
n240_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_goto_α:            mov              r11, 241;                            jmp   n55_statement_begin_α
n240_goto_β:            mov              r11, 241;                            jmp   main_ω
                        .size            n240_goto_bx, .-n240_goto_bx
                        .type            n241_goto_bx, @function
n241_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_goto_α:            mov              r11, 242;                            jmp   n59_statement_begin_α
n241_goto_β:            mov              r11, 242;                            jmp   main_ω
                        .size            n241_goto_bx, .-n241_goto_bx
                        .type            n242_goto_bx, @function
n242_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_goto_α:            mov              r11, 243;                            jmp   n61_statement_begin_α
n242_goto_β:            mov              r11, 243;                            jmp   main_ω
                        .size            n242_goto_bx, .-n242_goto_bx
                        .type            n243_goto_bx, @function
n243_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_goto_α:            mov              r11, 244;                            jmp   n63_statement_begin_α
n243_goto_β:            mov              r11, 244;                            jmp   main_ω
                        .size            n243_goto_bx, .-n243_goto_bx
                        .type            n244_goto_bx, @function
n244_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_goto_α:            mov              r11, 245;                            jmp   n65_statement_begin_α
n244_goto_β:            mov              r11, 245;                            jmp   main_ω
                        .size            n244_goto_bx, .-n244_goto_bx
                        .type            n245_goto_bx, @function
n245_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_goto_α:            mov              r11, 246;                            jmp   n67_statement_begin_α
n245_goto_β:            mov              r11, 246;                            jmp   main_ω
                        .size            n245_goto_bx, .-n245_goto_bx
                        .type            n246_goto_bx, @function
n246_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_goto_α:            mov              r11, 247;                            jmp   n78_statement_begin_α
n246_goto_β:            mov              r11, 247;                            jmp   main_ω
                        .size            n246_goto_bx, .-n246_goto_bx
                        .type            n247_goto_bx, @function
n247_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_goto_α:            mov              r11, 248;                            jmp   n84_statement_begin_α
n247_goto_β:            mov              r11, 248;                            jmp   main_ω
                        .size            n247_goto_bx, .-n247_goto_bx
                        .type            n248_goto_bx, @function
n248_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_goto_α:            mov              r11, 249;                            jmp   n86_statement_begin_α
n248_goto_β:            mov              r11, 249;                            jmp   main_ω
                        .size            n248_goto_bx, .-n248_goto_bx
                        .type            n249_goto_bx, @function
n249_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_goto_α:            mov              r11, 250;                            jmp   n90_statement_begin_α
n249_goto_β:            mov              r11, 250;                            jmp   main_ω
                        .size            n249_goto_bx, .-n249_goto_bx
                        .type            n250_goto_bx, @function
n250_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_goto_α:            mov              r11, 251;                            jmp   n92_statement_begin_α
n250_goto_β:            mov              r11, 251;                            jmp   main_ω
                        .size            n250_goto_bx, .-n250_goto_bx
                        .type            n251_goto_bx, @function
n251_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_goto_α:            mov              r11, 252;                            jmp   n94_statement_begin_α
n251_goto_β:            mov              r11, 252;                            jmp   main_ω
                        .size            n251_goto_bx, .-n251_goto_bx
                        .type            n252_goto_bx, @function
n252_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_goto_α:            mov              r11, 253;                            jmp   n96_statement_begin_α
n252_goto_β:            mov              r11, 253;                            jmp   main_ω
                        .size            n252_goto_bx, .-n252_goto_bx
                        .type            n253_goto_bx, @function
n253_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_goto_α:            mov              r11, 254;                            jmp   n98_statement_begin_α
n253_goto_β:            mov              r11, 254;                            jmp   main_ω
                        .size            n253_goto_bx, .-n253_goto_bx
                        .type            n254_goto_bx, @function
n254_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_goto_α:            mov              r11, 255;                            jmp   n100_statement_begin_α
n254_goto_β:            mov              r11, 255;                            jmp   main_ω
                        .size            n254_goto_bx, .-n254_goto_bx
                        .type            n255_goto_bx, @function
n255_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_goto_α:            mov              r11, 256;                            jmp   n106_statement_begin_α
n255_goto_β:            mov              r11, 256;                            jmp   main_ω
                        .size            n255_goto_bx, .-n255_goto_bx
                        .type            n256_goto_bx, @function
n256_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_goto_α:            mov              r11, 257;                            jmp   n108_statement_begin_α
n256_goto_β:            mov              r11, 257;                            jmp   main_ω
                        .size            n256_goto_bx, .-n256_goto_bx
                        .type            n257_goto_bx, @function
n257_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_goto_α:            mov              r11, 258;                            jmp   n110_statement_begin_α
n257_goto_β:            mov              r11, 258;                            jmp   main_ω
                        .size            n257_goto_bx, .-n257_goto_bx
                        .type            n258_goto_bx, @function
n258_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_goto_α:            mov              r11, 259;                            jmp   n112_statement_begin_α
n258_goto_β:            mov              r11, 259;                            jmp   main_ω
                        .size            n258_goto_bx, .-n258_goto_bx
                        .type            n259_goto_bx, @function
n259_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_goto_α:            mov              r11, 260;                            jmp   n114_statement_begin_α
n259_goto_β:            mov              r11, 260;                            jmp   main_ω
                        .size            n259_goto_bx, .-n259_goto_bx
                        .type            n260_goto_bx, @function
n260_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_goto_α:            mov              r11, 261;                            jmp   n116_statement_begin_α
n260_goto_β:            mov              r11, 261;                            jmp   main_ω
                        .size            n260_goto_bx, .-n260_goto_bx
                        .type            n261_goto_bx, @function
n261_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_goto_α:            mov              r11, 262;                            jmp   n127_statement_begin_α
n261_goto_β:            mov              r11, 262;                            jmp   main_ω
                        .size            n261_goto_bx, .-n261_goto_bx
                        .type            n262_goto_bx, @function
n262_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_goto_α:            mov              r11, 263;                            jmp   n129_statement_begin_α
n262_goto_β:            mov              r11, 263;                            jmp   main_ω
                        .size            n262_goto_bx, .-n262_goto_bx
                        .type            n263_goto_bx, @function
n263_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_goto_α:            mov              r11, 264;                            jmp   n131_statement_begin_α
n263_goto_β:            mov              r11, 264;                            jmp   main_ω
                        .size            n263_goto_bx, .-n263_goto_bx
                        .type            n264_goto_bx, @function
n264_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_goto_α:            mov              r11, 265;                            jmp   n133_statement_begin_α
n264_goto_β:            mov              r11, 265;                            jmp   main_ω
                        .size            n264_goto_bx, .-n264_goto_bx
                        .type            n265_goto_bx, @function
n265_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_goto_α:            mov              r11, 266;                            jmp   n141_statement_begin_α
n265_goto_β:            mov              r11, 266;                            jmp   main_ω
                        .size            n265_goto_bx, .-n265_goto_bx
                        .type            n266_goto_bx, @function
n266_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_goto_α:            mov              r11, 267;                            jmp   n145_statement_begin_α
n266_goto_β:            mov              r11, 267;                            jmp   main_ω
                        .size            n266_goto_bx, .-n266_goto_bx
                        .type            n267_goto_bx, @function
n267_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_goto_α:            mov              r11, 268;                            jmp   n151_statement_begin_α
n267_goto_β:            mov              r11, 268;                            jmp   main_ω
                        .size            n267_goto_bx, .-n267_goto_bx
                        .type            n268_goto_bx, @function
n268_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_goto_α:            mov              r11, 269;                            jmp   n162_statement_begin_α
n268_goto_β:            mov              r11, 269;                            jmp   main_ω
                        .size            n268_goto_bx, .-n268_goto_bx
                        .type            n269_goto_bx, @function
n269_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_goto_α:            mov              r11, 270;                            jmp   n168_statement_begin_α
n269_goto_β:            mov              r11, 270;                            jmp   main_ω
                        .size            n269_goto_bx, .-n269_goto_bx
                        .type            n270_goto_bx, @function
n270_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_goto_α:            mov              r11, 271;                            jmp   n196_statement_begin_α
n270_goto_β:            mov              r11, 271;                            jmp   main_ω
                        .size            n270_goto_bx, .-n270_goto_bx
                        .type            n271_goto_bx, @function
n271_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_goto_α:            mov              r11, 272;                            jmp   n200_statement_begin_α
n271_goto_β:            mov              r11, 272;                            jmp   main_ω
                        .size            n271_goto_bx, .-n271_goto_bx
                        .type            n272_goto_bx, @function
n272_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_goto_α:            mov              r11, 273;                            jmp   n204_statement_begin_α
n272_goto_β:            mov              r11, 273;                            jmp   main_ω
                        .size            n272_goto_bx, .-n272_goto_bx
                        .type            n273_goto_bx, @function
n273_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_goto_α:            mov              r11, 274;                            jmp   n208_statement_begin_α
n273_goto_β:            mov              r11, 274;                            jmp   main_ω
                        .size            n273_goto_bx, .-n273_goto_bx
                        .type            n274_goto_bx, @function
n274_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_goto_α:            mov              r11, 275;                            jmp   n212_statement_begin_α
n274_goto_β:            mov              r11, 275;                            jmp   main_ω
                        .size            n274_goto_bx, .-n274_goto_bx
                        .type            n275_goto_bx, @function
n275_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_goto_α:            mov              r11, 276;                            jmp   n216_statement_begin_α
n275_goto_β:            mov              r11, 276;                            jmp   main_ω
                        .size            n275_goto_bx, .-n275_goto_bx
                        .type            n276_goto_bx, @function
n276_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_goto_α:            mov              r11, 277;                            jmp   n220_statement_begin_α
n276_goto_β:            mov              r11, 277;                            jmp   main_ω
                        .size            n276_goto_bx, .-n276_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        call             sno_setexit_fire_on_end@PLT
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
