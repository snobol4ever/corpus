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
.Lgvan0:                .string          "S"
.Lgvan1:                .string          "A"
.Lgvan2:                .string          "T"
.Lgvan3:                .string          "J"
.Lgvan4:                .string          "G"
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
#         S = 'shared-payload-' DUPL('s', 12)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_string_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Lx78_0:                .quad            .Lx78_0_s
.Lx78_0_s:              .string          "shared-payload-"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_lit_integer_α
n2_lit_string_β:        mov              r11, 3
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx79_0:                .quad            .Lx79_0_s
.Lx79_0_s:              .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       sub              rsp, 16
                        mov              r11, 4
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_call_α
n3_lit_integer_β:       mov              r11, 4
                        add              rsp, 16;                             jmp   n2_lit_string_β
.Lx80_0:                .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:              sub              rsp, 16
                        mov              r11, 5
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
.Lrkfnzd82:             .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd82]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx81_240
                        add              rsp, 16;                             jmp   n3_lit_integer_β
.Lx81_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n5_binop_α
n4_call_β:              mov              r11, 5
                        add              rsp, 16;                             jmp   n3_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_α:             sub              rsp, 16
                        mov              r11, 6
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # S
                        mov              qword ptr [r9 + 8], rdx;             jmp   n7_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     mov              r11, 8
                        mov              r10, 1
                        add              rsp, 80;                             jmp   n8_statement_begin_α
#=======================================================================================================================
#         A = ARRAY(3)
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:   mov              r11, 9
                        mov              r10, 2;                              jmp   n9_lit_integer_α
n8_statement_begin_β:   mov              r11, 9;                              jmp   n13_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_call_α
.Lx89_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:             sub              rsp, 16
                        mov              r11, 11
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd91:             .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd91]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx90_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n8_statement_begin_β
.Lx90_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n11_assign_α
n10_call_β:             mov              r11, 11
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n8_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:           mov              r11, 12
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # A
                        mov              qword ptr [r9 + 24], rdx;            jmp   n12_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:    mov              r11, 13
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n13_statement_begin_α
#=======================================================================================================================
#         A<1> = S
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:  mov              r11, 14
                        mov              r10, 3;                              jmp   n14_var_α
n13_statement_begin_β:  mov              r11, 14;                             jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              sub              rsp, 16
                        mov              r11, 15
                        mov              rax, qword ptr [r9 + 16]             # A
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_subscript_α
n15_lit_integer_β:      mov              r11, 16
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n13_statement_begin_β
.Lx98_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n16_subscript_α:        sub              rsp, 16
                        mov              r11, 17
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx99_240
                        add              rsp, 16;                             jmp   n15_lit_integer_β
.Lx99_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n17_var_α
n16_subscript_β:        mov              r11, 17
                        add              rsp, 16;                             jmp   n15_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              sub              rsp, 16
                        mov              r11, 18
                        mov              rax, qword ptr [r9 + 0]              # S
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n18_assign_var_α
n17_var_β:              mov              r11, 18
                        add              rsp, 16;                             jmp   n16_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_var_α:       sub              rsp, 16
                        mov              r11, 19
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx101_240
                        add              rsp, 16;                             jmp   n17_var_β
.Lx101_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n19_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    mov              r11, 20
                        mov              r10, 3
                        add              rsp, 80;                             jmp   n20_statement_begin_α
#=======================================================================================================================
#         T = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:  mov              r11, 21
                        mov              r10, 4;                              jmp   n21_call_α
n20_statement_begin_β:  mov              r11, 21;                             jmp   n24_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:             sub              rsp, 16
                        mov              r11, 22
                        .section         .rodata
.Lrkfnzd107:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd107]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx106_240
                        add              rsp, 16;                             jmp   n20_statement_begin_β
.Lx106_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_assign_α
n21_call_β:             mov              r11, 22
                        add              rsp, 16;                             jmp   n20_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              r11, 23
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # T
                        mov              qword ptr [r9 + 40], rdx;            jmp   n23_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:    mov              r11, 24
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n24_statement_begin_α
#=======================================================================================================================
#         T<'k'> = S
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:  mov              r11, 25
                        mov              r10, 5;                              jmp   n25_var_α
n24_statement_begin_β:  mov              r11, 25;                             jmp   n31_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              sub              rsp, 16
                        mov              r11, 26
                        mov              rax, qword ptr [r9 + 32]             # T
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_subscript_α
n26_lit_string_β:       mov              r11, 27
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n24_statement_begin_β
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          "k"
#-----------------------------------------------------------------------------------------------------------------------
n27_subscript_α:        sub              rsp, 16
                        mov              r11, 28
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx115_240
                        add              rsp, 16;                             jmp   n26_lit_string_β
.Lx115_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n28_var_α
n27_subscript_β:        mov              r11, 28
                        add              rsp, 16;                             jmp   n26_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              sub              rsp, 16
                        mov              r11, 29
                        mov              rax, qword ptr [r9 + 0]              # S
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n29_assign_var_α
n28_var_β:              mov              r11, 29
                        add              rsp, 16;                             jmp   n27_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_var_α:       sub              rsp, 16
                        mov              r11, 30
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx117_240
                        add              rsp, 16;                             jmp   n28_var_β
.Lx117_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:    mov              r11, 31
                        mov              r10, 5
                        add              rsp, 80;                             jmp   n31_statement_begin_α
#=======================================================================================================================
#         J = 0
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_begin_α:  mov              r11, 32
                        mov              r10, 6;                              jmp   n32_lit_integer_α
n31_statement_begin_β:  mov              r11, 32;                             jmp   n35_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      sub              rsp, 16
                        mov              r11, 33
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_assign_α
.Lx122_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              r11, 34
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # J
                        mov              qword ptr [r9 + 56], rdx;            jmp   n34_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    mov              r11, 35
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n35_statement_begin_α
#=======================================================================================================================
# cl      J = LT(J, 250) J + 1                                        :F(rd)
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:  mov              r11, 36
                        mov              r10, 7;                              jmp   n36_var_α
n35_statement_begin_β:  mov              r11, 36;                             jmp   n58_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              sub              rsp, 16
                        mov              r11, 37
                        mov              rax, qword ptr [r9 + 48]             # J
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_coerce_numeric_α
n37_lit_integer_β:      mov              r11, 38
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n35_statement_begin_β
.Lx129_0:               .quad            250
#-----------------------------------------------------------------------------------------------------------------------
n38_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 39
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx131_1
                        cmp              al, 3;                               jne   .Lx131_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx131_0
.Lx131_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_coerce_numeric_α
.Lx131_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n39_coerce_numeric_α
n38_coerce_numeric_β:   mov              r11, 39
                        add              rsp, 16;                             jmp   n37_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n39_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 40
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx133_1
                        cmp              al, 3;                               jne   .Lx133_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx133_0
.Lx133_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_cmp_test_α
.Lx133_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n40_cmp_test_α
n39_coerce_numeric_β:   mov              r11, 40
                        add              rsp, 16;                             jmp   n38_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n40_cmp_test_α:         sub              rsp, 16
                        mov              r11, 41
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx135_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx135_239
                        add              rsp, 16;                             jmp   n39_coerce_numeric_β
.Lx135_239:                                                                   jmp   n41_var_α
.Lx135_0:               lea              rdi, [rsp + 32]                      # a
                        lea              rsi, [rsp + 16]                      # b
                        call             rt_cmp_d@PLT
                        test             eax, eax;                            js    .Lx135_240
                        add              rsp, 16;                             jmp   n39_coerce_numeric_β
.Lx135_240:                                                                   jmp   n41_var_α
n40_cmp_test_β:         mov              r11, 41
                        add              rsp, 16;                             jmp   n39_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              sub              rsp, 16
                        mov              r11, 42
                        mov              rax, qword ptr [r9 + 48]             # J
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_lit_integer_α
n41_var_β:              mov              r11, 42
                        add              rsp, 16;                             jmp   n40_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      sub              rsp, 16
                        mov              r11, 43
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_binop_α
n42_lit_integer_β:      mov              r11, 43
                        add              rsp, 16;                             jmp   n41_var_β
.Lx137_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n43_binop_α:            sub              rsp, 16
                        mov              r11, 44
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx138_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx138_7
.Lx138_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx138_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx138_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx138_4
.Lx138_3:               movq             xmm0, rsi
.Lx138_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx138_7:                                                                     jmp   n44_assign_α
.Lx138_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx138_240
                        add              rsp, 16;                             jmp   n42_lit_integer_β
.Lx138_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:           mov              r11, 45
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # J
                        mov              qword ptr [r9 + 56], rdx;            jmp   n45_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:    mov              r11, 46
                        mov              r10, 7
                        add              rsp, 128;                            jmp   n46_statement_begin_α
#=======================================================================================================================
#         G = 'alias-junk' J DUPL('j', 18)
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:  mov              r11, 47
                        mov              r10, 8;                              jmp   n47_lit_string_α
n46_statement_begin_β:  mov              r11, 47;                             jmp   n56_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       sub              rsp, 16
                        mov              r11, 48
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_var_α
.Lx144_0:               .quad            .Lx144_0_s
.Lx144_0_s:             .string          "alias-junk"
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              sub              rsp, 16
                        mov              r11, 49
                        mov              rax, qword ptr [r9 + 48]             # J
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_binop_α
n48_var_β:              mov              r11, 49
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n46_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:            sub              rsp, 16
                        mov              r11, 50
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n50_lit_string_α
n49_binop_β:            mov              r11, 50
                        add              rsp, 16;                             jmp   n48_var_β
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       sub              rsp, 16
                        mov              r11, 51
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_lit_integer_α
n50_lit_string_β:       mov              r11, 51
                        add              rsp, 16;                             jmp   n49_binop_β
.Lx147_0:               .quad            .Lx147_0_s
.Lx147_0_s:             .string          "j"
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      sub              rsp, 16
                        mov              r11, 52
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_call_α
n51_lit_integer_β:      mov              r11, 52
                        add              rsp, 16;                             jmp   n50_lit_string_β
.Lx148_0:               .quad            18
#-----------------------------------------------------------------------------------------------------------------------
n52_call_α:             sub              rsp, 16
                        mov              r11, 53
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
.Lrkfnzd150:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd150]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx149_240
                        add              rsp, 16;                             jmp   n51_lit_integer_β
.Lx149_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n53_binop_α
n52_call_β:             mov              r11, 53
                        add              rsp, 16;                             jmp   n51_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_α:            sub              rsp, 16
                        mov              r11, 54
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n54_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:           mov              r11, 55
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # G
                        mov              qword ptr [r9 + 72], rdx;            jmp   n55_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_end_α:    mov              r11, 56
                        mov              r10, 8
                        add              rsp, 112;                            jmp   n56_statement_begin_α
#=======================================================================================================================
#         :(cl)
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_begin_α:  mov              r11, 57
                        mov              r10, 9;                              jmp   n57_statement_end_α
n56_statement_begin_β:  mov              r11, 57;                             jmp   n35_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:    mov              r11, 58
                        mov              r10, 9;                              jmp   n35_statement_begin_α
#=======================================================================================================================
# rd      OUTPUT = S
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_begin_α:  mov              r11, 59
                        mov              r10, 10;                             jmp   n59_var_α
n58_statement_begin_β:  mov              r11, 59;                             jmp   n62_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              sub              rsp, 16
                        mov              r11, 60
                        mov              rax, qword ptr [r9 + 0]              # S
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 61
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n61_statement_end_α
.Lx162_0:               .quad            .Lx162_0_s
.Lx162_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    mov              r11, 62
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n62_statement_begin_α
#=======================================================================================================================
#         OUTPUT = A<1>
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:  mov              r11, 63
                        mov              r10, 11;                             jmp   n63_var_α
n62_statement_begin_β:  mov              r11, 63;                             jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              sub              rsp, 16
                        mov              r11, 64
                        mov              rax, qword ptr [r9 + 16]             # A
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      sub              rsp, 16
                        mov              r11, 65
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n65_subscript_α
n64_lit_integer_β:      mov              r11, 65
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n62_statement_begin_β
.Lx168_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n65_subscript_α:        sub              rsp, 16
                        mov              r11, 66
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx169_240
                        add              rsp, 16;                             jmp   n64_lit_integer_β
.Lx169_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_deref_α
n65_subscript_β:        mov              r11, 66
                        add              rsp, 16;                             jmp   n64_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n66_deref_α:            sub              rsp, 16
                        mov              r11, 67
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx170_240
                        add              rsp, 16;                             jmp   n65_subscript_β
.Lx170_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              r11, 68
                        mov              rsi, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_statement_end_α
.Lx171_0:               .quad            .Lx171_0_s
.Lx171_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    mov              r11, 69
                        mov              r10, 11
                        add              rsp, 64;                             jmp   n69_statement_begin_α
#=======================================================================================================================
#         OUTPUT = T<'k'>
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:  mov              r11, 70
                        mov              r10, 12;                             jmp   n70_var_α
n69_statement_begin_β:  mov              r11, 70;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              r11, 71
                        mov              rax, qword ptr [r9 + 32]             # T
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       sub              rsp, 16
                        mov              r11, 72
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_subscript_α
n71_lit_string_β:       mov              r11, 72
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n69_statement_begin_β
.Lx177_0:               .quad            .Lx177_0_s
.Lx177_0_s:             .string          "k"
#-----------------------------------------------------------------------------------------------------------------------
n72_subscript_α:        sub              rsp, 16
                        mov              r11, 73
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx178_240
                        add              rsp, 16;                             jmp   n71_lit_string_β
.Lx178_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_deref_α
n72_subscript_β:        mov              r11, 73
                        add              rsp, 16;                             jmp   n71_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n73_deref_α:            sub              rsp, 16
                        mov              r11, 74
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx179_240
                        add              rsp, 16;                             jmp   n72_subscript_β
.Lx179_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              r11, 75
                        mov              rsi, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n75_statement_end_α
.Lx180_0:               .quad            .Lx180_0_s
.Lx180_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 76
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
