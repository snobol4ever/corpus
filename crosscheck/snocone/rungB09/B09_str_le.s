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
                        mov              r10, 1;                              jmp   n1_lit_string_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_assign_α
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          "apple"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 0]             # lit_string
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
                        mov              r10, 2;                              jmp   n5_lit_string_α
n4_statement_begin_β:   mov              r11, 5;                              jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        sub              rsp, 16
                        mov              r11, 6
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_assign_α
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          "banana"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rsp + 0]             # lit_string
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n11_coerce_string_α
n10_var_β:              mov              r11, 11
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_string_α:    sub              rsp, 16
                        mov              r11, 12
                        lea              rdi, [rsp + 32]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rdx, 128
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_str_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_coerce_string_α
n11_coerce_string_β:    mov              r11, 12
                        add              rsp, 16;                             jmp   n10_var_β
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_string_α:    sub              rsp, 16
                        mov              r11, 13
                        lea              rdi, [rsp + 32]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rdx, 129
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_str_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_cmp_test_α
n12_coerce_string_β:    mov              r11, 13
                        add              rsp, 16;                             jmp   n11_coerce_string_β
#-----------------------------------------------------------------------------------------------------------------------
n13_cmp_test_α:         sub              rsp, 16
                        mov              r11, 14
                        mov              eax, dword ptr [rsp + 32]            # coerce_string
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx78_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lx78_239
                        add              rsp, 16;                             jmp   n12_coerce_string_β
.Lx78_239:                                                                    jmp   n14_lit_string_α
.Lx78_0:                lea              rdi, [rsp + 32]                      # a
                        lea              rsi, [rsp + 16]                      # b
                        call             rt_cmp_d@PLT
                        test             eax, eax;                            jle   .Lx78_240
                        add              rsp, 16;                             jmp   n12_coerce_string_β
.Lx78_240:                                                                    jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx79_0:                .quad            .Lx79_0_s
.Lx79_0_s:              .string          "le"
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              r11, 16
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_statement_end_α
.Lx80_0:                .quad            .Lx80_0_s
.Lx80_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 6
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n17_assign_α
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "not le"
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              r11, 18
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              rdi, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_statement_end_α
.Lx82_0:                .quad            .Lx82_0_s
.Lx82_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_end_α:    mov              r11, 19
                        mov              r10, 5
                        add              rsp, 96;                             jmp   n19_statement_begin_α
#=======================================================================================================================
#         <stmt 6, line 9: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_begin_α:  mov              r11, 20
                        mov              r10, 6;                              jmp   n20_lit_string_α
n19_statement_begin_β:  mov              r11, 20;                             jmp   n23_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_assign_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              r11, 22
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # a
                        mov              qword ptr [r9 + 8], rdx;             jmp   n22_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:    mov              r11, 23
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n23_statement_begin_α
#=======================================================================================================================
#         <stmt 7, line 10: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:  mov              r11, 24
                        mov              r10, 7;                              jmp   n24_lit_string_α
n23_statement_begin_β:  mov              r11, 24;                             jmp   n27_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_assign_α
.Lx93_0:                .quad            .Lx93_0_s
.Lx93_0_s:              .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 26
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # b
                        mov              qword ptr [r9 + 24], rdx;            jmp   n26_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:    mov              r11, 27
                        mov              r10, 7
                        add              rsp, 16;                             jmp   n27_statement_begin_α
#=======================================================================================================================
#         <stmt 10, line 15: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_begin_α:  mov              r11, 28
                        mov              r10, 10;                             jmp   n28_var_α
n27_statement_begin_β:  mov              r11, 28;                             jmp   n38_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              sub              rsp, 16
                        mov              r11, 29
                        mov              rax, qword ptr [r9 + 0]              # a
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              sub              rsp, 16
                        mov              r11, 30
                        mov              rax, qword ptr [r9 + 16]             # b
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_coerce_string_α
n29_var_β:              mov              r11, 30
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_coerce_string_α:    sub              rsp, 16
                        mov              r11, 31
                        lea              rdi, [rsp + 32]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rdx, 128
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_str_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_coerce_string_α
n30_coerce_string_β:    mov              r11, 31
                        add              rsp, 16;                             jmp   n29_var_β
#-----------------------------------------------------------------------------------------------------------------------
n31_coerce_string_α:    sub              rsp, 16
                        mov              r11, 32
                        lea              rdi, [rsp + 32]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rdx, 129
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_str_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n32_cmp_test_α
n31_coerce_string_β:    mov              r11, 32
                        add              rsp, 16;                             jmp   n30_coerce_string_β
#-----------------------------------------------------------------------------------------------------------------------
n32_cmp_test_α:         sub              rsp, 16
                        mov              r11, 33
                        mov              eax, dword ptr [rsp + 32]            # coerce_string
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx106_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lx106_239
                        add              rsp, 16;                             jmp   n31_coerce_string_β
.Lx106_239:                                                                   jmp   n33_lit_string_α
.Lx106_0:               lea              rdi, [rsp + 32]                      # a
                        lea              rsi, [rsp + 16]                      # b
                        call             rt_cmp_d@PLT
                        test             eax, eax;                            jle   .Lx106_240
                        add              rsp, 16;                             jmp   n31_coerce_string_β
.Lx106_240:                                                                   jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
.Lx107_0:               .quad            .Lx107_0_s
.Lx107_0_s:             .string          "le"
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              r11, 35
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_statement_end_α
.Lx108_0:               .quad            .Lx108_0_s
.Lx108_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 6
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n36_assign_α
.Lx109_0:               .quad            .Lx109_0_s
.Lx109_0_s:             .string          "not le"
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:           mov              r11, 37
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              rdi, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_statement_end_α
.Lx110_0:               .quad            .Lx110_0_s
.Lx110_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_end_α:    mov              r11, 38
                        mov              r10, 10
                        add              rsp, 96;                             jmp   n38_statement_begin_α
#=======================================================================================================================
#         <stmt 11, line 16: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:  mov              r11, 39
                        mov              r10, 11;                             jmp   n39_lit_string_α
n38_statement_begin_β:  mov              r11, 39;                             jmp   n42_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       sub              rsp, 16
                        mov              r11, 40
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_assign_α
.Lx115_0:               .quad            .Lx115_0_s
.Lx115_0_s:             .string          "zebra"
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              r11, 41
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # a
                        mov              qword ptr [r9 + 8], rdx;             jmp   n41_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:    mov              r11, 42
                        mov              r10, 11
                        add              rsp, 16;                             jmp   n42_statement_begin_α
#=======================================================================================================================
#         <stmt 12, line 17: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:  mov              r11, 43
                        mov              r10, 12;                             jmp   n43_lit_string_α
n42_statement_begin_β:  mov              r11, 43;                             jmp   n46_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_assign_α
.Lx121_0:               .quad            .Lx121_0_s
.Lx121_0_s:             .string          "apple"
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:           mov              r11, 45
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # b
                        mov              qword ptr [r9 + 24], rdx;            jmp   n45_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:    mov              r11, 46
                        mov              r10, 12
                        add              rsp, 16;                             jmp   n46_statement_begin_α
#=======================================================================================================================
#         <stmt 15, line 22: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:  mov              r11, 47
                        mov              r10, 15;                             jmp   n47_var_α
n46_statement_begin_β:  mov              r11, 47;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              sub              rsp, 16
                        mov              r11, 48
                        mov              rax, qword ptr [r9 + 0]              # a
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n48_var_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              sub              rsp, 16
                        mov              r11, 49
                        mov              rax, qword ptr [r9 + 16]             # b
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_coerce_string_α
n48_var_β:              mov              r11, 49
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_coerce_string_α:    sub              rsp, 16
                        mov              r11, 50
                        lea              rdi, [rsp + 32]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rdx, 128
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_str_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n50_coerce_string_α
n49_coerce_string_β:    mov              r11, 50
                        add              rsp, 16;                             jmp   n48_var_β
#-----------------------------------------------------------------------------------------------------------------------
n50_coerce_string_α:    sub              rsp, 16
                        mov              r11, 51
                        lea              rdi, [rsp + 32]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rdx, 129
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_str_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_cmp_test_α
n50_coerce_string_β:    mov              r11, 51
                        add              rsp, 16;                             jmp   n49_coerce_string_β
#-----------------------------------------------------------------------------------------------------------------------
n51_cmp_test_α:         sub              rsp, 16
                        mov              r11, 52
                        mov              eax, dword ptr [rsp + 32]            # coerce_string
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx134_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lx134_239
                        add              rsp, 16;                             jmp   n50_coerce_string_β
.Lx134_239:                                                                   jmp   n52_lit_string_α
.Lx134_0:               lea              rdi, [rsp + 32]                      # a
                        lea              rsi, [rsp + 16]                      # b
                        call             rt_cmp_d@PLT
                        test             eax, eax;                            jle   .Lx134_240
                        add              rsp, 16;                             jmp   n50_coerce_string_β
.Lx134_240:                                                                   jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_assign_α
.Lx135_0:               .quad            .Lx135_0_s
.Lx135_0_s:             .string          "le"
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:           mov              r11, 54
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n56_statement_end_α
.Lx136_0:               .quad            .Lx136_0_s
.Lx136_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       mov              r11, 55
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 6
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n55_assign_α
.Lx137_0:               .quad            .Lx137_0_s
.Lx137_0_s:             .string          "not le"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              r11, 56
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              rdi, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n56_statement_end_α
.Lx138_0:               .quad            .Lx138_0_s
.Lx138_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    mov              r11, 57
                        mov              r10, 15
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
