                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "j3"
.Lgvan1:                .string          "a"
.Lgvan2:                .string          "b"
.Lgvan3:                .string          "c"
.Lgvan4:                .string          "I"
.Lgvan5:                .string          "R"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         DEFINE('j3(a,b,c)')                                         :(j_end)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_define_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n15_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_define_α:            mov              r11, 2
                        mov              rdi, qword ptr [rip + .Lx57_0]
                        mov              rsi, qword ptr [rip + .Lx57_1]
                        mov              edx, 3
                        mov              ecx, 3
                        mov              r8d, 0
                        lea              r9, [rip + n3_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx57_0]
                        lea              rsi, [rip + j3_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n2_statement_end_α
n1_define_β:            mov              r11, 2;                              jmp   n0_statement_begin_β
.Lx57_0:                .quad            .Lx57_0_s
.Lx57_0_s:              .string          "j3"
.Lx57_1:                .quad            .Lx57_1_s
.Lx57_1_s:              .string          "a,b,c"
                                                                              jmp   .Lx58_245
#-----------------------------------------------------------------------------------------------------------------------
j3_α:                   sub              rsp, 96
                        mov              rax, qword ptr [r9 + 0]              # j3
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 96]
                        cmp              rdx, 0;                              jbe   .Lx58_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # a
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx58_41
.Lx58_10:               mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx58_41:               cmp              rdx, 1;                              jbe   .Lx58_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 32]             # b
                        mov              qword ptr [r9 + 32], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 40]
                        mov              qword ptr [r9 + 40], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx58_42
.Lx58_11:               mov              rax, qword ptr [r9 + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
.Lx58_42:               cmp              rdx, 2;                              jbe   .Lx58_12
                        mov              rdi, qword ptr [rcx + 40]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # c
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx58_43
.Lx58_12:               mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx58_43:               lea              rcx, [rip + j3_γ]
                        lea              rax, [rip + j3_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n3_statement_begin_α];   jmp   rax
j3_γ:                   mov              rdi, qword ptr [r9 + 0]              # j3
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 96]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx58_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # a
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx58_110
.Lx58_80:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx58_110:              cmp              rdx, 1;                              jbe   .Lx58_81
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # b
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx58_111
.Lx58_81:               mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx58_111:              cmp              rdx, 2;                              jbe   .Lx58_82
                        mov              rax, qword ptr [rcx + 40]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # c
                        mov              rax, qword ptr [rcx + 40]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx58_112
.Lx58_82:               mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 56], rax
.Lx58_112:              mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 96
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
j3_ω:                   mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 96]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # j3
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx58_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # a
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx58_180
.Lx58_150:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx58_180:              cmp              rdx, 1;                              jbe   .Lx58_151
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # b
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx58_181
.Lx58_151:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx58_181:              cmp              rdx, 2;                              jbe   .Lx58_152
                        mov              rax, qword ptr [rcx + 40]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # c
                        mov              rax, qword ptr [rcx + 40]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx58_182
.Lx58_152:              mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 56], rax
.Lx58_182:              mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 96
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx58_245:
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_end_α:     mov              r11, 3
                        mov              r10, 1;                              jmp   n15_statement_begin_α
#=======================================================================================================================
# j3      j3 = a '|' b '|' c                                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_begin_α:   mov              r11, 4
                        mov              r10, 2;                              jmp   n4_var_α
n3_statement_begin_β:   mov              r11, 4;                              jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               sub              rsp, 16
                        mov              r11, 5
                        mov              rax, qword ptr [r9 + 16]             # a
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        sub              rsp, 16
                        mov              r11, 6
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_binop_α
n5_lit_string_β:        mov              r11, 6
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n3_statement_begin_β
.Lx64_0:                .quad            .Lx64_0_s
.Lx64_0_s:              .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n6_binop_α:             sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_var_α
n6_binop_β:             mov              r11, 7
                        add              rsp, 16;                             jmp   n5_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               sub              rsp, 16
                        mov              r11, 8
                        mov              rax, qword ptr [r9 + 32]             # b
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n8_binop_α
n7_var_β:               mov              r11, 8
                        add              rsp, 16;                             jmp   n6_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:             sub              rsp, 16
                        mov              r11, 9
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_lit_string_α
n8_binop_β:             mov              r11, 9
                        add              rsp, 16;                             jmp   n7_var_β
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_binop_α
n9_lit_string_β:        mov              r11, 10
                        add              rsp, 16;                             jmp   n8_binop_β
.Lx68_0:                .quad            .Lx68_0_s
.Lx68_0_s:              .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:            sub              rsp, 16
                        mov              r11, 11
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n11_var_α
n10_binop_β:            mov              r11, 11
                        add              rsp, 16;                             jmp   n9_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              sub              rsp, 16
                        mov              r11, 12
                        mov              rax, qword ptr [r9 + 48]             # c
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_binop_α
n11_var_β:              mov              r11, 12
                        add              rsp, 16;                             jmp   n10_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:            sub              rsp, 16
                        mov              r11, 13
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # j3
                        mov              qword ptr [r9 + 8], rdx;             jmp   n14_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_end_α:    mov              r11, 15
                        mov              r10, 2
                        add              rsp, 144;                            jmp   RETURN
#=======================================================================================================================
# j_end  <stmt 3, line 5: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_begin_α:  mov              r11, 16
                        mov              r10, 3;                              jmp   n16_statement_end_α
n15_statement_begin_β:  mov              r11, 16;                             jmp   n17_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:    mov              r11, 17
                        mov              r10, 3;                              jmp   n17_statement_begin_α
#=======================================================================================================================
#         I = 0
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_begin_α:  mov              r11, 18
                        mov              r10, 4;                              jmp   n18_lit_integer_α
n17_statement_begin_β:  mov              r11, 18;                             jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx81_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # I
                        mov              qword ptr [r9 + 72], rdx;            jmp   n20_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:    mov              r11, 21
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n21_statement_begin_α
#=======================================================================================================================
# lp      I = LT(I, 80) I + 1                                         :F(done)
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:  mov              r11, 22
                        mov              r10, 5;                              jmp   n22_var_α
n21_statement_begin_β:  mov              r11, 22;                             jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              sub              rsp, 16
                        mov              r11, 23
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:      sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_coerce_numeric_α
n23_lit_integer_β:      mov              r11, 24
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n21_statement_begin_β
.Lx88_0:                .quad            80
#-----------------------------------------------------------------------------------------------------------------------
n24_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 25
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx90_1
                        cmp              al, 3;                               jne   .Lx90_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx90_0
.Lx90_1:                mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_coerce_numeric_α
.Lx90_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n25_coerce_numeric_α
n24_coerce_numeric_β:   mov              r11, 25
                        add              rsp, 16;                             jmp   n23_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n25_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 26
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx92_1
                        cmp              al, 3;                               jne   .Lx92_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx92_0
.Lx92_1:                mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_cmp_test_α
.Lx92_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n26_cmp_test_α
n25_coerce_numeric_β:   mov              r11, 26
                        add              rsp, 16;                             jmp   n24_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n26_cmp_test_α:         sub              rsp, 16
                        mov              r11, 27
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx94_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx94_239
                        add              rsp, 16;                             jmp   n25_coerce_numeric_β
.Lx94_239:                                                                    jmp   n27_var_α
.Lx94_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx94_240
                        add              rsp, 16;                             jmp   n25_coerce_numeric_β
.Lx94_240:                                                                    jmp   n27_var_α
n26_cmp_test_β:         mov              r11, 27
                        add              rsp, 16;                             jmp   n25_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              sub              rsp, 16
                        mov              r11, 28
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n28_lit_integer_α
n27_var_β:              mov              r11, 28
                        add              rsp, 16;                             jmp   n26_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      sub              rsp, 16
                        mov              r11, 29
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n29_binop_α
n28_lit_integer_β:      mov              r11, 29
                        add              rsp, 16;                             jmp   n27_var_β
.Lx96_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:            sub              rsp, 16
                        mov              r11, 30
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx97_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx97_7
.Lx97_2:                mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx97_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx97_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx97_4
.Lx97_3:                movq             xmm0, rsi
.Lx97_4:                cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx97_7:                                                                      jmp   n30_assign_α
.Lx97_0:                mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx97_240
                        add              rsp, 16;                             jmp   n28_lit_integer_β
.Lx97_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              r11, 31
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # I
                        mov              qword ptr [r9 + 72], rdx;            jmp   n31_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    mov              r11, 32
                        mov              r10, 5
                        add              rsp, 128;                            jmp   n32_statement_begin_α
#=======================================================================================================================
#         R = j3('A' I, DUPL('b', 10) I, 'C' I)
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:  mov              r11, 33
                        mov              r10, 6;                              jmp   n33_lit_string_α
n32_statement_begin_β:  mov              r11, 33;                             jmp   n47_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_var_α
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              sub              rsp, 16
                        mov              r11, 35
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_binop_α
n34_var_β:              mov              r11, 35
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n32_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n35_binop_α:            sub              rsp, 16
                        mov              r11, 36
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n36_lit_string_α
n35_binop_β:            mov              r11, 36
                        add              rsp, 16;                             jmp   n34_var_β
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       sub              rsp, 16
                        mov              r11, 37
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_lit_integer_α
n36_lit_string_β:       mov              r11, 37
                        add              rsp, 16;                             jmp   n35_binop_β
.Lx106_0:               .quad            .Lx106_0_s
.Lx106_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_call_α
n37_lit_integer_β:      mov              r11, 38
                        add              rsp, 16;                             jmp   n36_lit_string_β
.Lx107_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             sub              rsp, 16
                        mov              r11, 39
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
.Lrkfnzd109:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd109]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx108_240
                        add              rsp, 16;                             jmp   n37_lit_integer_β
.Lx108_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_var_α
n38_call_β:             mov              r11, 39
                        add              rsp, 16;                             jmp   n37_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              sub              rsp, 16
                        mov              r11, 40
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_binop_α
n39_var_β:              mov              r11, 40
                        add              rsp, 32;                             jmp   n37_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n40_binop_α:            sub              rsp, 16
                        mov              r11, 41
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n41_lit_string_α
n40_binop_β:            mov              r11, 41
                        add              rsp, 16;                             jmp   n39_var_β
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       sub              rsp, 16
                        mov              r11, 42
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_var_α
n41_lit_string_β:       mov              r11, 42
                        add              rsp, 16;                             jmp   n40_binop_β
.Lx112_0:               .quad            .Lx112_0_s
.Lx112_0_s:             .string          "C"
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              sub              rsp, 16
                        mov              r11, 43
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_binop_α
n42_var_β:              mov              r11, 43
                        add              rsp, 16;                             jmp   n41_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n43_binop_α:            sub              rsp, 16
                        mov              r11, 44
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n44_call_α
n43_binop_β:            mov              r11, 44
                        add              rsp, 16;                             jmp   n42_var_β
#-----------------------------------------------------------------------------------------------------------------------
n44_call_α:             sub              rsp, 16
                        mov              r11, 45
                        lea              rcx, [rip + .Lsig116z]
                        lea              rax, [rip + j3_α];                   jmp   rax
.Lsig116z:              .quad            3
                        .quad            .Lx116_2
                        .quad            .Lx116_2
                        .quad            144
                        .quad            64
                        .quad            16
.Lx116_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx116_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx116_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx116_240
                        add              rsp, 16;                             jmp   n43_binop_β
.Lx116_240:                                                                   jmp   n45_assign_α
n44_call_β:             mov              r11, 45;                             jmp   n43_binop_β
.Lx116_0:               .quad            .Lx116_0_s
.Lx116_0_s:             .string          "j3"
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              r11, 46
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # R
                        mov              qword ptr [r9 + 88], rdx;            jmp   n46_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 47
                        mov              r10, 6
                        add              rsp, 192;                            jmp   n47_statement_begin_α
#=======================================================================================================================
#         :(lp)
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:  mov              r11, 48
                        mov              r10, 7;                              jmp   n48_statement_end_α
n47_statement_begin_β:  mov              r11, 48;                             jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 49
                        mov              r10, 7;                              jmp   n21_statement_begin_α
#=======================================================================================================================
# done    OUTPUT = R
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:  mov              r11, 50
                        mov              r10, 8;                              jmp   n50_var_α
n49_statement_begin_β:  mov              r11, 50;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              sub              rsp, 16
                        mov              r11, 51
                        mov              rax, qword ptr [r9 + 80]             # R
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 52
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_statement_end_α
.Lx127_0:               .quad            .Lx127_0_s
.Lx127_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 53
                        mov              r10, 8
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 54
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lseala1:               .string          "j3"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            j3_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + j3_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
