                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "A"
.Lgvan1:                .string          "I"
.Lgvan2:                .string          "J"
.Lgvan3:                .string          "G"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         A = ARRAY(20)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_integer_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n5_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_call_α
.Lx87_0:                .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              sub              rsp, 16
                        mov              r11, 3
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd89:             .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd89]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx88_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx88_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_assign_α
n2_call_β:              mov              r11, 3
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # A
                        mov              qword ptr [r9 + 8], rdx;             jmp   n4_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_end_α:     mov              r11, 5
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n5_statement_begin_α
#=======================================================================================================================
#         I = 0
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_begin_α:   mov              r11, 6
                        mov              r10, 2;                              jmp   n6_lit_integer_α
n5_statement_begin_β:   mov              r11, 6;                              jmp   n9_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       sub              rsp, 16
                        mov              r11, 7
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_assign_α
.Lx95_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              r11, 8
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # I
                        mov              qword ptr [r9 + 24], rdx;            jmp   n8_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:     mov              r11, 9
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n9_statement_begin_α
#=======================================================================================================================
# fill    I = LT(I, 20) I + 1                                         :F(churn)
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_begin_α:   mov              r11, 10
                        mov              r10, 3;                              jmp   n10_var_α
n9_statement_begin_β:   mov              r11, 10;                             jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              sub              rsp, 16
                        mov              r11, 11
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      sub              rsp, 16
                        mov              r11, 12
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_coerce_numeric_α
n11_lit_integer_β:      mov              r11, 12
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n9_statement_begin_β
.Lx102_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 13
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx104_1
                        cmp              al, 3;                               jne   .Lx104_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx104_0
.Lx104_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_coerce_numeric_α
.Lx104_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_coerce_numeric_α
n12_coerce_numeric_β:   mov              r11, 13
                        add              rsp, 16;                             jmp   n11_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n13_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 14
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx106_1
                        cmp              al, 3;                               jne   .Lx106_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx106_0
.Lx106_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_cmp_test_α
.Lx106_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_cmp_test_α
n13_coerce_numeric_β:   mov              r11, 14
                        add              rsp, 16;                             jmp   n12_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n14_cmp_test_α:         sub              rsp, 16
                        mov              r11, 15
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx108_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx108_239
                        add              rsp, 16;                             jmp   n13_coerce_numeric_β
.Lx108_239:                                                                   jmp   n15_var_α
.Lx108_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx108_240
                        add              rsp, 16;                             jmp   n13_coerce_numeric_β
.Lx108_240:                                                                   jmp   n15_var_α
n14_cmp_test_β:         mov              r11, 15
                        add              rsp, 16;                             jmp   n13_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              sub              rsp, 16
                        mov              r11, 16
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n16_lit_integer_α
n15_var_β:              mov              r11, 16
                        add              rsp, 16;                             jmp   n14_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_binop_α
n16_lit_integer_β:      mov              r11, 17
                        add              rsp, 16;                             jmp   n15_var_β
.Lx110_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n17_binop_α:            sub              rsp, 16
                        mov              r11, 18
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx111_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx111_7
.Lx111_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx111_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx111_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx111_4
.Lx111_3:               movq             xmm0, rsi
.Lx111_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx111_7:                                                                     jmp   n18_assign_α
.Lx111_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx111_240
                        add              rsp, 16;                             jmp   n16_lit_integer_β
.Lx111_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # I
                        mov              qword ptr [r9 + 24], rdx;            jmp   n19_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    mov              r11, 20
                        mov              r10, 3
                        add              rsp, 128;                            jmp   n20_statement_begin_α
#=======================================================================================================================
#         A<I> = 'elem-' I '-' DUPL('e', 10)
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:  mov              r11, 21
                        mov              r10, 4;                              jmp   n21_var_α
n20_statement_begin_β:  mov              r11, 21;                             jmp   n35_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              sub              rsp, 16
                        mov              r11, 22
                        mov              rax, qword ptr [r9 + 0]              # A
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              sub              rsp, 16
                        mov              r11, 23
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_subscript_α
n22_var_β:              mov              r11, 23
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n20_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n23_subscript_α:        sub              rsp, 16
                        mov              r11, 24
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx119_240
                        add              rsp, 16;                             jmp   n22_var_β
.Lx119_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n24_lit_string_α
n23_subscript_β:        mov              r11, 24
                        add              rsp, 16;                             jmp   n22_var_β
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_var_α
n24_lit_string_β:       mov              r11, 25
                        add              rsp, 16;                             jmp   n23_subscript_β
.Lx120_0:               .quad            .Lx120_0_s
.Lx120_0_s:             .string          "elem-"
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              sub              rsp, 16
                        mov              r11, 26
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n26_binop_α
n25_var_β:              mov              r11, 26
                        add              rsp, 16;                             jmp   n24_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:            sub              rsp, 16
                        mov              r11, 27
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_lit_string_α
n26_binop_β:            mov              r11, 27
                        add              rsp, 16;                             jmp   n25_var_β
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_binop_α
n27_lit_string_β:       mov              r11, 28
                        add              rsp, 16;                             jmp   n26_binop_β
.Lx123_0:               .quad            .Lx123_0_s
.Lx123_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:            sub              rsp, 16
                        mov              r11, 29
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n29_lit_string_α
n28_binop_β:            mov              r11, 29
                        add              rsp, 16;                             jmp   n27_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_lit_integer_α
n29_lit_string_β:       mov              r11, 30
                        add              rsp, 16;                             jmp   n28_binop_β
.Lx125_0:               .quad            .Lx125_0_s
.Lx125_0_s:             .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_call_α
n30_lit_integer_β:      mov              r11, 31
                        add              rsp, 16;                             jmp   n29_lit_string_β
.Lx126_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:             sub              rsp, 16
                        mov              r11, 32
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd128:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd128]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx127_240
                        add              rsp, 16;                             jmp   n30_lit_integer_β
.Lx127_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n32_binop_α
n31_call_β:             mov              r11, 32
                        add              rsp, 16;                             jmp   n30_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:            sub              rsp, 16
                        mov              r11, 33
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n33_assign_var_α
n32_binop_β:            mov              r11, 33
                        add              rsp, 32;                             jmp   n30_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_var_α:       sub              rsp, 16
                        mov              r11, 34
                        mov              rdi, qword ptr [rsp + 160]           # subscript
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx130_240
                        add              rsp, 16;                             jmp   n32_binop_β
.Lx130_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n34_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    mov              r11, 35
                        mov              r10, 4
                        add              rsp, 208;                            jmp   n35_statement_begin_α
#=======================================================================================================================
#         :(fill)
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:  mov              r11, 36
                        mov              r10, 5;                              jmp   n36_statement_end_α
n35_statement_begin_β:  mov              r11, 36;                             jmp   n9_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 37
                        mov              r10, 5;                              jmp   n9_statement_begin_α
#=======================================================================================================================
# churn   J = 0
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:  mov              r11, 38
                        mov              r10, 6;                              jmp   n38_lit_integer_α
n37_statement_begin_β:  mov              r11, 38;                             jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      sub              rsp, 16
                        mov              r11, 39
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_assign_α
.Lx139_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              r11, 40
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # J
                        mov              qword ptr [r9 + 40], rdx;            jmp   n40_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 41
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n41_statement_begin_α
#=======================================================================================================================
# cl      J = LT(J, 300) J + 1                                        :F(chk)
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:  mov              r11, 42
                        mov              r10, 7;                              jmp   n42_var_α
n41_statement_begin_β:  mov              r11, 42;                             jmp   n64_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              sub              rsp, 16
                        mov              r11, 43
                        mov              rax, qword ptr [r9 + 32]             # J
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_coerce_numeric_α
n43_lit_integer_β:      mov              r11, 44
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n41_statement_begin_β
.Lx146_0:               .quad            300
#-----------------------------------------------------------------------------------------------------------------------
n44_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 45
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx148_1
                        cmp              al, 3;                               jne   .Lx148_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx148_0
.Lx148_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_coerce_numeric_α
.Lx148_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_coerce_numeric_α
n44_coerce_numeric_β:   mov              r11, 45
                        add              rsp, 16;                             jmp   n43_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n45_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 46
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx150_1
                        cmp              al, 3;                               jne   .Lx150_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx150_0
.Lx150_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_cmp_test_α
.Lx150_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n46_cmp_test_α
n45_coerce_numeric_β:   mov              r11, 46
                        add              rsp, 16;                             jmp   n44_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n46_cmp_test_α:         sub              rsp, 16
                        mov              r11, 47
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx152_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx152_239
                        add              rsp, 16;                             jmp   n45_coerce_numeric_β
.Lx152_239:                                                                   jmp   n47_var_α
.Lx152_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx152_240
                        add              rsp, 16;                             jmp   n45_coerce_numeric_β
.Lx152_240:                                                                   jmp   n47_var_α
n46_cmp_test_β:         mov              r11, 47
                        add              rsp, 16;                             jmp   n45_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              sub              rsp, 16
                        mov              r11, 48
                        mov              rax, qword ptr [r9 + 32]             # J
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n48_lit_integer_α
n47_var_β:              mov              r11, 48
                        add              rsp, 16;                             jmp   n46_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_binop_α
n48_lit_integer_β:      mov              r11, 49
                        add              rsp, 16;                             jmp   n47_var_β
.Lx154_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:            sub              rsp, 16
                        mov              r11, 50
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx155_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx155_7
.Lx155_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx155_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx155_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx155_4
.Lx155_3:               movq             xmm0, rsi
.Lx155_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx155_7:                                                                     jmp   n50_assign_α
.Lx155_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx155_240
                        add              rsp, 16;                             jmp   n48_lit_integer_β
.Lx155_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n50_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # J
                        mov              qword ptr [r9 + 40], rdx;            jmp   n51_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_end_α:    mov              r11, 52
                        mov              r10, 7
                        add              rsp, 128;                            jmp   n52_statement_begin_α
#=======================================================================================================================
#         G = 'junk' J DUPL('z', 30)
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_begin_α:  mov              r11, 53
                        mov              r10, 8;                              jmp   n53_lit_string_α
n52_statement_begin_β:  mov              r11, 53;                             jmp   n62_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_var_α
.Lx161_0:               .quad            .Lx161_0_s
.Lx161_0_s:             .string          "junk"
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              r11, 55
                        mov              rax, qword ptr [r9 + 32]             # J
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_binop_α
n54_var_β:              mov              r11, 55
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n52_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n55_binop_α:            sub              rsp, 16
                        mov              r11, 56
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n56_lit_string_α
n55_binop_β:            mov              r11, 56
                        add              rsp, 16;                             jmp   n54_var_β
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       sub              rsp, 16
                        mov              r11, 57
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_lit_integer_α
n56_lit_string_β:       mov              r11, 57
                        add              rsp, 16;                             jmp   n55_binop_β
.Lx164_0:               .quad            .Lx164_0_s
.Lx164_0_s:             .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_call_α
n57_lit_integer_β:      mov              r11, 58
                        add              rsp, 16;                             jmp   n56_lit_string_β
.Lx165_0:               .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n58_call_α:             sub              rsp, 16
                        mov              r11, 59
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd167:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd167]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx166_240
                        add              rsp, 16;                             jmp   n57_lit_integer_β
.Lx166_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_binop_α
n58_call_β:             mov              r11, 59
                        add              rsp, 16;                             jmp   n57_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:            sub              rsp, 16
                        mov              r11, 60
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n60_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 61
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # G
                        mov              qword ptr [r9 + 56], rdx;            jmp   n61_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    mov              r11, 62
                        mov              r10, 8
                        add              rsp, 112;                            jmp   n62_statement_begin_α
#=======================================================================================================================
#         :(cl)
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:  mov              r11, 63
                        mov              r10, 9;                              jmp   n63_statement_end_α
n62_statement_begin_β:  mov              r11, 63;                             jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:    mov              r11, 64
                        mov              r10, 9;                              jmp   n41_statement_begin_α
#=======================================================================================================================
# chk     OUTPUT = A<1>
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:  mov              r11, 65
                        mov              r10, 10;                             jmp   n65_var_α
n64_statement_begin_β:  mov              r11, 65;                             jmp   n71_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              sub              rsp, 16
                        mov              r11, 66
                        mov              rax, qword ptr [r9 + 0]              # A
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:      sub              rsp, 16
                        mov              r11, 67
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_subscript_α
n66_lit_integer_β:      mov              r11, 67
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_β
.Lx179_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n67_subscript_α:        sub              rsp, 16
                        mov              r11, 68
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx180_240
                        add              rsp, 16;                             jmp   n66_lit_integer_β
.Lx180_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_deref_α
n67_subscript_β:        mov              r11, 68
                        add              rsp, 16;                             jmp   n66_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n68_deref_α:            sub              rsp, 16
                        mov              r11, 69
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx181_240
                        add              rsp, 16;                             jmp   n67_subscript_β
.Lx181_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:           mov              r11, 70
                        mov              rsi, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n70_statement_end_α
.Lx182_0:               .quad            .Lx182_0_s
.Lx182_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:    mov              r11, 71
                        mov              r10, 10
                        add              rsp, 64;                             jmp   n71_statement_begin_α
#=======================================================================================================================
#         OUTPUT = A<10>
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_begin_α:  mov              r11, 72
                        mov              r10, 11;                             jmp   n72_var_α
n71_statement_begin_β:  mov              r11, 72;                             jmp   n78_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              sub              rsp, 16
                        mov              r11, 73
                        mov              rax, qword ptr [r9 + 0]              # A
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:      sub              rsp, 16
                        mov              r11, 74
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_subscript_α
n73_lit_integer_β:      mov              r11, 74
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n71_statement_begin_β
.Lx188_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n74_subscript_α:        sub              rsp, 16
                        mov              r11, 75
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx189_240
                        add              rsp, 16;                             jmp   n73_lit_integer_β
.Lx189_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_deref_α
n74_subscript_β:        mov              r11, 75
                        add              rsp, 16;                             jmp   n73_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n75_deref_α:            sub              rsp, 16
                        mov              r11, 76
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx190_240
                        add              rsp, 16;                             jmp   n74_subscript_β
.Lx190_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n76_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:           mov              r11, 77
                        mov              rsi, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n77_statement_end_α
.Lx191_0:               .quad            .Lx191_0_s
.Lx191_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:    mov              r11, 78
                        mov              r10, 11
                        add              rsp, 64;                             jmp   n78_statement_begin_α
#=======================================================================================================================
#         OUTPUT = A<20>
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:  mov              r11, 79
                        mov              r10, 12;                             jmp   n79_var_α
n78_statement_begin_β:  mov              r11, 79;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              r11, 80
                        mov              rax, qword ptr [r9 + 0]              # A
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:      sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_subscript_α
n80_lit_integer_β:      mov              r11, 81
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n78_statement_begin_β
.Lx197_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n81_subscript_α:        sub              rsp, 16
                        mov              r11, 82
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx198_240
                        add              rsp, 16;                             jmp   n80_lit_integer_β
.Lx198_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_deref_α
n81_subscript_β:        mov              r11, 82
                        add              rsp, 16;                             jmp   n80_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n82_deref_α:            sub              rsp, 16
                        mov              r11, 83
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx199_240
                        add              rsp, 16;                             jmp   n81_subscript_β
.Lx199_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:           mov              r11, 84
                        mov              rsi, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n84_statement_end_α
.Lx200_0:               .quad            .Lx200_0_s
.Lx200_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    mov              r11, 85
                        mov              r10, 12
                        add              rsp, 64;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
