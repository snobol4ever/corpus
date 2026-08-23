                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "a"
.Lgvan1:                .string          "b"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         <stmt 1, line 2: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_integer_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_assign_α
.Lx51_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # a
                        mov              qword ptr [r9 + 8], rdx;             jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     mov              r11, 4
                        mov              r10, 1
                        add              rsp, 16;                             jmp   n4_statement_begin_α
#=======================================================================================================================
#         <stmt 2, line 3: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:   mov              r11, 5
                        mov              r10, 2;                              jmp   n5_lit_integer_α
n4_statement_begin_β:   mov              r11, 5;                              jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       sub              rsp, 16
                        mov              r11, 6
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_assign_α
.Lx57_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # b
                        mov              qword ptr [r9 + 24], rdx;            jmp   n7_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     mov              r11, 8
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n8_statement_begin_α
#=======================================================================================================================
#         <stmt 5, line 8: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:   mov              r11, 9
                        mov              r10, 5;                              jmp   n9_var_α
n8_statement_begin_β:   mov              r11, 9;                              jmp   n19_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               sub              rsp, 16
                        mov              r11, 10
                        mov              rax, qword ptr [r9 + 0]              # a
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              sub              rsp, 16
                        mov              r11, 11
                        mov              rax, qword ptr [r9 + 16]             # b
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n11_coerce_numeric_α
n10_var_β:              mov              r11, 11
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 12
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx66_1
                        cmp              al, 3;                               jne   .Lx66_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx66_0
.Lx66_1:                mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_coerce_numeric_α
.Lx66_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 109
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_coerce_numeric_α
n11_coerce_numeric_β:   mov              r11, 12
                        add              rsp, 16;                             jmp   n10_var_β
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 13
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx68_1
                        cmp              al, 3;                               jne   .Lx68_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx68_0
.Lx68_1:                mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_cmp_test_α
.Lx68_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 110
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_cmp_test_α
n12_coerce_numeric_β:   mov              r11, 13
                        add              rsp, 16;                             jmp   n11_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n13_cmp_test_α:         sub              rsp, 16
                        mov              r11, 14
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx70_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jge   .Lx70_239
                        add              rsp, 16;                             jmp   n12_coerce_numeric_β
.Lx70_239:                                                                    jmp   n14_lit_string_α
.Lx70_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jns   .Lx70_240
                        add              rsp, 16;                             jmp   n12_coerce_numeric_β
.Lx70_240:                                                                    jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx71_0:                .quad            .Lx71_0_s
.Lx71_0_s:              .string          "ge"
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              r11, 16
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_statement_end_α
.Lx72_0:                .quad            .Lx72_0_s
.Lx72_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 6
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n17_assign_α
.Lx73_0:                .quad            .Lx73_0_s
.Lx73_0_s:              .string          "not ge"
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              r11, 18
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              rdi, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_statement_end_α
.Lx74_0:                .quad            .Lx74_0_s
.Lx74_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_end_α:    mov              r11, 19
                        mov              r10, 5
                        add              rsp, 96;                             jmp   n19_statement_begin_α
#=======================================================================================================================
#         <stmt 6, line 9: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_begin_α:  mov              r11, 20
                        mov              r10, 6;                              jmp   n20_lit_integer_α
n19_statement_begin_β:  mov              r11, 20;                             jmp   n23_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_assign_α
.Lx79_0:                .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              r11, 22
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # a
                        mov              qword ptr [r9 + 8], rdx;             jmp   n22_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:    mov              r11, 23
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n23_statement_begin_α
#=======================================================================================================================
#         <stmt 9, line 14: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:  mov              r11, 24
                        mov              r10, 9;                              jmp   n24_var_α
n23_statement_begin_β:  mov              r11, 24;                             jmp   n34_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              sub              rsp, 16
                        mov              r11, 25
                        mov              rax, qword ptr [r9 + 0]              # a
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              sub              rsp, 16
                        mov              r11, 26
                        mov              rax, qword ptr [r9 + 16]             # b
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n26_coerce_numeric_α
n25_var_β:              mov              r11, 26
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n31_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 27
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx88_1
                        cmp              al, 3;                               jne   .Lx88_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx88_0
.Lx88_1:                mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_coerce_numeric_α
.Lx88_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 109
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_coerce_numeric_α
n26_coerce_numeric_β:   mov              r11, 27
                        add              rsp, 16;                             jmp   n25_var_β
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 28
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx90_1
                        cmp              al, 3;                               jne   .Lx90_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx90_0
.Lx90_1:                mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_cmp_test_α
.Lx90_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 110
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_cmp_test_α
n27_coerce_numeric_β:   mov              r11, 28
                        add              rsp, 16;                             jmp   n26_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n28_cmp_test_α:         sub              rsp, 16
                        mov              r11, 29
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx92_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jge   .Lx92_239
                        add              rsp, 16;                             jmp   n27_coerce_numeric_β
.Lx92_239:                                                                    jmp   n29_lit_string_α
.Lx92_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jns   .Lx92_240
                        add              rsp, 16;                             jmp   n27_coerce_numeric_β
.Lx92_240:                                                                    jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_assign_α
.Lx93_0:                .quad            .Lx93_0_s
.Lx93_0_s:              .string          "ge"
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              r11, 31
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_statement_end_α
.Lx94_0:                .quad            .Lx94_0_s
.Lx94_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              r11, 32
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 6
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n32_assign_α
.Lx95_0:                .quad            .Lx95_0_s
.Lx95_0_s:              .string          "not ge"
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              r11, 33
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              rdi, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_statement_end_α
.Lx96_0:                .quad            .Lx96_0_s
.Lx96_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:    mov              r11, 34
                        mov              r10, 9
                        add              rsp, 96;                             jmp   n34_statement_begin_α
#=======================================================================================================================
#         <stmt 10, line 15: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_begin_α:  mov              r11, 35
                        mov              r10, 10;                             jmp   n35_lit_integer_α
n34_statement_begin_β:  mov              r11, 35;                             jmp   n38_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      sub              rsp, 16
                        mov              r11, 36
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_assign_α
.Lx101_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:           mov              r11, 37
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # a
                        mov              qword ptr [r9 + 8], rdx;             jmp   n37_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_end_α:    mov              r11, 38
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n38_statement_begin_α
#=======================================================================================================================
#         <stmt 13, line 20: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:  mov              r11, 39
                        mov              r10, 13;                             jmp   n39_var_α
n38_statement_begin_β:  mov              r11, 39;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              sub              rsp, 16
                        mov              r11, 40
                        mov              rax, qword ptr [r9 + 0]              # a
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:              sub              rsp, 16
                        mov              r11, 41
                        mov              rax, qword ptr [r9 + 16]             # b
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n41_coerce_numeric_α
n40_var_β:              mov              r11, 41
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 42
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx110_1
                        cmp              al, 3;                               jne   .Lx110_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx110_0
.Lx110_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_coerce_numeric_α
.Lx110_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 109
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n42_coerce_numeric_α
n41_coerce_numeric_β:   mov              r11, 42
                        add              rsp, 16;                             jmp   n40_var_β
#-----------------------------------------------------------------------------------------------------------------------
n42_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 43
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx112_1
                        cmp              al, 3;                               jne   .Lx112_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx112_0
.Lx112_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_cmp_test_α
.Lx112_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 110
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_cmp_test_α
n42_coerce_numeric_β:   mov              r11, 43
                        add              rsp, 16;                             jmp   n41_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n43_cmp_test_α:         sub              rsp, 16
                        mov              r11, 44
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx114_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jge   .Lx114_239
                        add              rsp, 16;                             jmp   n42_coerce_numeric_β
.Lx114_239:                                                                   jmp   n44_lit_string_α
.Lx114_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jns   .Lx114_240
                        add              rsp, 16;                             jmp   n42_coerce_numeric_β
.Lx114_240:                                                                   jmp   n44_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_assign_α
.Lx115_0:               .quad            .Lx115_0_s
.Lx115_0_s:             .string          "ge"
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              r11, 46
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n48_statement_end_α
.Lx116_0:               .quad            .Lx116_0_s
.Lx116_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       mov              r11, 47
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 6
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n47_assign_α
.Lx117_0:               .quad            .Lx117_0_s
.Lx117_0_s:             .string          "not ge"
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 48
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              rdi, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n48_statement_end_α
.Lx118_0:               .quad            .Lx118_0_s
.Lx118_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 49
                        mov              r10, 13
                        add              rsp, 96;                             jmp   main_γ
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
