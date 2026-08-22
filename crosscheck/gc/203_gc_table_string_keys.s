                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 5
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 5
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "T"
.Lgvan1:                .string          "I"
.Lgvan2:                .string          "J"
.Lgvan3:                .string          "G"
.Lgvan4:                .string          "K"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         T = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_call_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:              sub              rsp, 16
                        mov              r11, 2
                        .section         .rodata
.Lrkfnzd93:             .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd93]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx92_240
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx92_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n2_assign_α
n1_call_β:              mov              r11, 2
                        add              rsp, 16;                             jmp   n0_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # T
                        mov              qword ptr [r9 + 8], rdx;             jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     mov              r11, 4
                        mov              r10, 1
                        add              rsp, 16;                             jmp   n4_statement_begin_α
#=======================================================================================================================
#         I = 0
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:   mov              r11, 5
                        mov              r10, 2;                              jmp   n5_lit_integer_α
n4_statement_begin_β:   mov              r11, 5;                              jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       sub              rsp, 16
                        mov              r11, 6
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_assign_α
.Lx99_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # I
                        mov              qword ptr [r9 + 24], rdx;            jmp   n7_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     mov              r11, 8
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n8_statement_begin_α
#=======================================================================================================================
# mk      I = LT(I, 15) I + 1                                         :F(churn)
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:   mov              r11, 9
                        mov              r10, 3;                              jmp   n9_var_α
n8_statement_begin_β:   mov              r11, 9;                              jmp   n38_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               sub              rsp, 16
                        mov              r11, 10
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      sub              rsp, 16
                        mov              r11, 11
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_coerce_numeric_α
n10_lit_integer_β:      mov              r11, 11
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n8_statement_begin_β
.Lx106_0:               .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 12
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx108_1
                        cmp              al, 3;                               jne   .Lx108_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx108_0
.Lx108_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_coerce_numeric_α
.Lx108_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_coerce_numeric_α
n11_coerce_numeric_β:   mov              r11, 12
                        add              rsp, 16;                             jmp   n10_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 13
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx110_1
                        cmp              al, 3;                               jne   .Lx110_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx110_0
.Lx110_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_cmp_test_α
.Lx110_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_cmp_test_α
n12_coerce_numeric_β:   mov              r11, 13
                        add              rsp, 16;                             jmp   n11_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n13_cmp_test_α:         sub              rsp, 16
                        mov              r11, 14
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx112_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx112_239
                        add              rsp, 16;                             jmp   n12_coerce_numeric_β
.Lx112_239:                                                                   jmp   n14_var_α
.Lx112_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx112_240
                        add              rsp, 16;                             jmp   n12_coerce_numeric_β
.Lx112_240:                                                                   jmp   n14_var_α
n13_cmp_test_β:         mov              r11, 14
                        add              rsp, 16;                             jmp   n12_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              sub              rsp, 16
                        mov              r11, 15
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n15_lit_integer_α
n14_var_β:              mov              r11, 15
                        add              rsp, 16;                             jmp   n13_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_binop_α
n15_lit_integer_β:      mov              r11, 16
                        add              rsp, 16;                             jmp   n14_var_β
.Lx114_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:            sub              rsp, 16
                        mov              r11, 17
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx115_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx115_7
.Lx115_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx115_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx115_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx115_4
.Lx115_3:               movq             xmm0, rsi
.Lx115_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx115_7:                                                                     jmp   n17_assign_α
.Lx115_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx115_240
                        add              rsp, 16;                             jmp   n15_lit_integer_β
.Lx115_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              r11, 18
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # I
                        mov              qword ptr [r9 + 24], rdx;            jmp   n18_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_end_α:    mov              r11, 19
                        mov              r10, 3
                        add              rsp, 128;                            jmp   n19_statement_begin_α
#=======================================================================================================================
#         T<'key-' I> = 'val-' I '-' DUPL('v', 6)
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_begin_α:  mov              r11, 20
                        mov              r10, 4;                              jmp   n20_var_α
n19_statement_begin_β:  mov              r11, 20;                             jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              sub              rsp, 16
                        mov              r11, 21
                        mov              rax, qword ptr [r9 + 0]              # T
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n21_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       sub              rsp, 16
                        mov              r11, 22
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_var_α
n21_lit_string_β:       mov              r11, 22
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n19_statement_begin_β
.Lx122_0:               .quad            .Lx122_0_s
.Lx122_0_s:             .string          "key-"
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              sub              rsp, 16
                        mov              r11, 23
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_binop_α
n22_var_β:              mov              r11, 23
                        add              rsp, 16;                             jmp   n21_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n23_binop_α:            sub              rsp, 16
                        mov              r11, 24
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_subscript_α
n23_binop_β:            mov              r11, 24
                        add              rsp, 16;                             jmp   n22_var_β
#-----------------------------------------------------------------------------------------------------------------------
n24_subscript_α:        sub              rsp, 16
                        mov              r11, 25
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx125_240
                        add              rsp, 16;                             jmp   n23_binop_β
.Lx125_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n25_lit_string_α
n24_subscript_β:        mov              r11, 25
                        add              rsp, 16;                             jmp   n23_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       sub              rsp, 16
                        mov              r11, 26
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_var_α
n25_lit_string_β:       mov              r11, 26
                        add              rsp, 16;                             jmp   n24_subscript_β
.Lx126_0:               .quad            .Lx126_0_s
.Lx126_0_s:             .string          "val-"
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              sub              rsp, 16
                        mov              r11, 27
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n27_binop_α
n26_var_β:              mov              r11, 27
                        add              rsp, 16;                             jmp   n25_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_α:            sub              rsp, 16
                        mov              r11, 28
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_lit_string_α
n27_binop_β:            mov              r11, 28
                        add              rsp, 16;                             jmp   n26_var_β
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       sub              rsp, 16
                        mov              r11, 29
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n29_binop_α
n28_lit_string_β:       mov              r11, 29
                        add              rsp, 16;                             jmp   n27_binop_β
.Lx129_0:               .quad            .Lx129_0_s
.Lx129_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:            sub              rsp, 16
                        mov              r11, 30
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n30_lit_string_α
n29_binop_β:            mov              r11, 30
                        add              rsp, 16;                             jmp   n28_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_lit_integer_α
n30_lit_string_β:       mov              r11, 31
                        add              rsp, 16;                             jmp   n29_binop_β
.Lx131_0:               .quad            .Lx131_0_s
.Lx131_0_s:             .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      sub              rsp, 16
                        mov              r11, 32
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_call_α
n31_lit_integer_β:      mov              r11, 32
                        add              rsp, 16;                             jmp   n30_lit_string_β
.Lx132_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:             sub              rsp, 16
                        mov              r11, 33
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
.Lrkfnzd134:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd134]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx133_240
                        add              rsp, 16;                             jmp   n31_lit_integer_β
.Lx133_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n33_binop_α
n32_call_β:             mov              r11, 33
                        add              rsp, 16;                             jmp   n31_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_α:            sub              rsp, 16
                        mov              r11, 34
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n34_assign_var_α
n33_binop_β:            mov              r11, 34
                        add              rsp, 32;                             jmp   n31_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_var_α:       sub              rsp, 16
                        mov              r11, 35
                        mov              rdi, qword ptr [rsp + 160]           # subscript
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx136_240
                        add              rsp, 16;                             jmp   n33_binop_β
.Lx136_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    mov              r11, 36
                        mov              r10, 4
                        add              rsp, 240;                            jmp   n36_statement_begin_α
#=======================================================================================================================
#         :(mk)
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:  mov              r11, 37
                        mov              r10, 5;                              jmp   n37_statement_end_α
n36_statement_begin_β:  mov              r11, 37;                             jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_end_α:    mov              r11, 38
                        mov              r10, 5;                              jmp   n8_statement_begin_α
#=======================================================================================================================
# churn   J = 0
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:  mov              r11, 39
                        mov              r10, 6;                              jmp   n39_lit_integer_α
n38_statement_begin_β:  mov              r11, 39;                             jmp   n42_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      sub              rsp, 16
                        mov              r11, 40
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_assign_α
.Lx145_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              r11, 41
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # J
                        mov              qword ptr [r9 + 40], rdx;            jmp   n41_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:    mov              r11, 42
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n42_statement_begin_α
#=======================================================================================================================
# cl      J = LT(J, 300) J + 1                                        :F(rd)
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:  mov              r11, 43
                        mov              r10, 7;                              jmp   n43_var_α
n42_statement_begin_β:  mov              r11, 43;                             jmp   n63_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              r11, 44
                        mov              rax, qword ptr [r9 + 32]             # J
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_coerce_numeric_α
n44_lit_integer_β:      mov              r11, 45
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n42_statement_begin_β
.Lx152_0:               .quad            300
#-----------------------------------------------------------------------------------------------------------------------
n45_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 46
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx154_1
                        cmp              al, 3;                               jne   .Lx154_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx154_0
.Lx154_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_coerce_numeric_α
.Lx154_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n46_coerce_numeric_α
n45_coerce_numeric_β:   mov              r11, 46
                        add              rsp, 16;                             jmp   n44_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n46_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 47
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx156_1
                        cmp              al, 3;                               jne   .Lx156_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx156_0
.Lx156_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_cmp_test_α
.Lx156_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n47_cmp_test_α
n46_coerce_numeric_β:   mov              r11, 47
                        add              rsp, 16;                             jmp   n45_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n47_cmp_test_α:         sub              rsp, 16
                        mov              r11, 48
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx158_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx158_239
                        add              rsp, 16;                             jmp   n46_coerce_numeric_β
.Lx158_239:                                                                   jmp   n48_var_α
.Lx158_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx158_240
                        add              rsp, 16;                             jmp   n46_coerce_numeric_β
.Lx158_240:                                                                   jmp   n48_var_α
n47_cmp_test_β:         mov              r11, 48
                        add              rsp, 16;                             jmp   n46_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              sub              rsp, 16
                        mov              r11, 49
                        mov              rax, qword ptr [r9 + 32]             # J
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_lit_integer_α
n48_var_β:              mov              r11, 49
                        add              rsp, 16;                             jmp   n47_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      sub              rsp, 16
                        mov              r11, 50
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_binop_α
n49_lit_integer_β:      mov              r11, 50
                        add              rsp, 16;                             jmp   n48_var_β
.Lx160_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n50_binop_α:            sub              rsp, 16
                        mov              r11, 51
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx161_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx161_7
.Lx161_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx161_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx161_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx161_4
.Lx161_3:               movq             xmm0, rsi
.Lx161_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx161_7:                                                                     jmp   n51_assign_α
.Lx161_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx161_240
                        add              rsp, 16;                             jmp   n49_lit_integer_β
.Lx161_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 52
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # J
                        mov              qword ptr [r9 + 40], rdx;            jmp   n52_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 53
                        mov              r10, 7
                        add              rsp, 128;                            jmp   n53_statement_begin_α
#=======================================================================================================================
#         G = DUPL('w', 25) J
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:  mov              r11, 54
                        mov              r10, 8;                              jmp   n54_lit_string_α
n53_statement_begin_β:  mov              r11, 54;                             jmp   n61_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       sub              rsp, 16
                        mov              r11, 55
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_lit_integer_α
.Lx167_0:               .quad            .Lx167_0_s
.Lx167_0_s:             .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      sub              rsp, 16
                        mov              r11, 56
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_call_α
n55_lit_integer_β:      mov              r11, 56
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n53_statement_begin_β
.Lx168_0:               .quad            25
#-----------------------------------------------------------------------------------------------------------------------
n56_call_α:             sub              rsp, 16
                        mov              r11, 57
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
.Lrkfnzd170:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd170]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx169_240
                        add              rsp, 16;                             jmp   n55_lit_integer_β
.Lx169_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_var_α
n56_call_β:             mov              r11, 57
                        add              rsp, 16;                             jmp   n55_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              sub              rsp, 16
                        mov              r11, 58
                        mov              rax, qword ptr [r9 + 32]             # J
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n58_binop_α
n57_var_β:              mov              r11, 58
                        add              rsp, 32;                             jmp   n55_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:            sub              rsp, 16
                        mov              r11, 59
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              r11, 60
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # G
                        mov              qword ptr [r9 + 56], rdx;            jmp   n60_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    mov              r11, 61
                        mov              r10, 8
                        add              rsp, 80;                             jmp   n61_statement_begin_α
#=======================================================================================================================
#         :(cl)
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:  mov              r11, 62
                        mov              r10, 9;                              jmp   n62_statement_end_α
n61_statement_begin_β:  mov              r11, 62;                             jmp   n42_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:    mov              r11, 63
                        mov              r10, 9;                              jmp   n42_statement_begin_α
#=======================================================================================================================
# rd      K = 2 + 1
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_begin_α:  mov              r11, 64
                        mov              r10, 10;                             jmp   n64_lit_integer_α
n63_statement_begin_β:  mov              r11, 64;                             jmp   n67_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      sub              rsp, 16
                        mov              r11, 65
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n65_assign_α
.Lx182_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:           mov              r11, 66
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # K
                        mov              qword ptr [r9 + 72], rdx;            jmp   n66_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    mov              r11, 67
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n67_statement_begin_α
#=======================================================================================================================
#         OUTPUT = T<'key-' K>
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:  mov              r11, 68
                        mov              r10, 11;                             jmp   n68_var_α
n67_statement_begin_β:  mov              r11, 68;                             jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              sub              rsp, 16
                        mov              r11, 69
                        mov              rax, qword ptr [r9 + 0]              # T
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       sub              rsp, 16
                        mov              r11, 70
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_var_α
n69_lit_string_β:       mov              r11, 70
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n67_statement_begin_β
.Lx189_0:               .quad            .Lx189_0_s
.Lx189_0_s:             .string          "key-"
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              r11, 71
                        mov              rax, qword ptr [r9 + 64]             # K
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_binop_α
n70_var_β:              mov              r11, 71
                        add              rsp, 16;                             jmp   n69_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n71_binop_α:            sub              rsp, 16
                        mov              r11, 72
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n72_subscript_α
n71_binop_β:            mov              r11, 72
                        add              rsp, 16;                             jmp   n70_var_β
#-----------------------------------------------------------------------------------------------------------------------
n72_subscript_α:        sub              rsp, 16
                        mov              r11, 73
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx192_240
                        add              rsp, 16;                             jmp   n71_binop_β
.Lx192_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_deref_α
n72_subscript_β:        mov              r11, 73
                        add              rsp, 16;                             jmp   n71_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n73_deref_α:            sub              rsp, 16
                        mov              r11, 74
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx193_240
                        add              rsp, 16;                             jmp   n72_subscript_β
.Lx193_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              r11, 75
                        mov              rsi, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n75_statement_end_α
.Lx194_0:               .quad            .Lx194_0_s
.Lx194_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 76
                        mov              r10, 11
                        add              rsp, 96;                             jmp   n76_statement_begin_α
#=======================================================================================================================
#         OUTPUT = T<'key-' 15>
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:  mov              r11, 77
                        mov              r10, 12;                             jmp   n77_var_α
n76_statement_begin_β:  mov              r11, 77;                             jmp   n83_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              sub              rsp, 16
                        mov              r11, 78
                        mov              rax, qword ptr [r9 + 0]              # T
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       sub              rsp, 16
                        mov              r11, 79
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_subscript_α
n78_lit_string_β:       mov              r11, 79
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
.Lx200_0:               .quad            .Lx200_0_s
.Lx200_0_s:             .string          "key-15"
#-----------------------------------------------------------------------------------------------------------------------
n79_subscript_α:        sub              rsp, 16
                        mov              r11, 80
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx201_240
                        add              rsp, 16;                             jmp   n78_lit_string_β
.Lx201_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_deref_α
n79_subscript_β:        mov              r11, 80
                        add              rsp, 16;                             jmp   n78_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n80_deref_α:            sub              rsp, 16
                        mov              r11, 81
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx202_240
                        add              rsp, 16;                             jmp   n79_subscript_β
.Lx202_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n81_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              r11, 82
                        mov              rsi, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n82_statement_end_α
.Lx203_0:               .quad            .Lx203_0_s
.Lx203_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:    mov              r11, 83
                        mov              r10, 12
                        add              rsp, 64;                             jmp   n83_statement_begin_α
#=======================================================================================================================
#         OUTPUT = T<'key-' 7>
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_begin_α:  mov              r11, 84
                        mov              r10, 13;                             jmp   n84_var_α
n83_statement_begin_β:  mov              r11, 84;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              sub              rsp, 16
                        mov              r11, 85
                        mov              rax, qword ptr [r9 + 0]              # T
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_subscript_α
n85_lit_string_β:       mov              r11, 86
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n83_statement_begin_β
.Lx209_0:               .quad            .Lx209_0_s
.Lx209_0_s:             .string          "key-7"
#-----------------------------------------------------------------------------------------------------------------------
n86_subscript_α:        sub              rsp, 16
                        mov              r11, 87
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx210_240
                        add              rsp, 16;                             jmp   n85_lit_string_β
.Lx210_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n87_deref_α
n86_subscript_β:        mov              r11, 87
                        add              rsp, 16;                             jmp   n85_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n87_deref_α:            sub              rsp, 16
                        mov              r11, 88
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx211_240
                        add              rsp, 16;                             jmp   n86_subscript_β
.Lx211_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:           mov              r11, 89
                        mov              rsi, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n89_statement_end_α
.Lx212_0:               .quad            .Lx212_0_s
.Lx212_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:    mov              r11, 90
                        mov              r10, 13
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
