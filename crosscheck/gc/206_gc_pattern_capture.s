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
.Lgvan0:                .string          "R"
.Lgvan1:                .string          "I"
.Lgvan2:                .string          "S"
.Lgvan3:                .string          "V1"
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
#         R =
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_string_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_assign_α
.Lx76_0:                .quad            .Lx76_0_s
.Lx76_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # R
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
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_assign_α
.Lx82_0:                .quad            0
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
# lp      I = LT(I, 60) I + 1                                         :F(done)
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:   mov              r11, 9
                        mov              r10, 3;                              jmp   n9_var_α
n8_statement_begin_β:   mov              r11, 9;                              jmp   n65_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_coerce_numeric_α
n10_lit_integer_β:      mov              r11, 11
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n8_statement_begin_β
.Lx89_0:                .quad            60
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 12
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx91_1
                        cmp              al, 3;                               jne   .Lx91_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx91_0
.Lx91_1:                mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_coerce_numeric_α
.Lx91_0:                lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_coerce_numeric_α
n11_coerce_numeric_β:   mov              r11, 12
                        add              rsp, 16;                             jmp   n10_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 13
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx93_1
                        cmp              al, 3;                               jne   .Lx93_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx93_0
.Lx93_1:                mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_cmp_test_α
.Lx93_0:                lea              rdi, [rsp + 32]
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
                        cmp              dl, 3;                               jne   .Lx95_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx95_239
                        add              rsp, 16;                             jmp   n12_coerce_numeric_β
.Lx95_239:                                                                    jmp   n14_var_α
.Lx95_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx95_240
                        add              rsp, 16;                             jmp   n12_coerce_numeric_β
.Lx95_240:                                                                    jmp   n14_var_α
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
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_binop_α
n15_lit_integer_β:      mov              r11, 16
                        add              rsp, 16;                             jmp   n14_var_β
.Lx97_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:            sub              rsp, 16
                        mov              r11, 17
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx98_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx98_7
.Lx98_2:                mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx98_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx98_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx98_4
.Lx98_3:                movq             xmm0, rsi
.Lx98_4:                cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx98_7:                                                                      jmp   n17_assign_α
.Lx98_0:                mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx98_240
                        add              rsp, 16;                             jmp   n15_lit_integer_β
.Lx98_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_assign_α
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
#         S = 'ab' I 'cd' DUPL('m', 5)
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_begin_α:  mov              r11, 20
                        mov              r10, 4;                              jmp   n20_lit_string_α
n19_statement_begin_β:  mov              r11, 20;                             jmp   n31_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_var_α
.Lx104_0:               .quad            .Lx104_0_s
.Lx104_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              sub              rsp, 16
                        mov              r11, 22
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_binop_α
n21_var_β:              mov              r11, 22
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n19_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:            sub              rsp, 16
                        mov              r11, 23
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_lit_string_α
n22_binop_β:            mov              r11, 23
                        add              rsp, 16;                             jmp   n21_var_β
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_binop_α
n23_lit_string_β:       mov              r11, 24
                        add              rsp, 16;                             jmp   n22_binop_β
.Lx107_0:               .quad            .Lx107_0_s
.Lx107_0_s:             .string          "cd"
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:            sub              rsp, 16
                        mov              r11, 25
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n25_lit_string_α
n24_binop_β:            mov              r11, 25
                        add              rsp, 16;                             jmp   n23_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       sub              rsp, 16
                        mov              r11, 26
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_lit_integer_α
n25_lit_string_β:       mov              r11, 26
                        add              rsp, 16;                             jmp   n24_binop_β
.Lx109_0:               .quad            .Lx109_0_s
.Lx109_0_s:             .string          "m"
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_call_α
n26_lit_integer_β:      mov              r11, 27
                        add              rsp, 16;                             jmp   n25_lit_string_β
.Lx110_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n27_call_α:             sub              rsp, 16
                        mov              r11, 28
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
.Lrkfnzd112:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd112]
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
                        cmp              al, 104;                             jne   .Lx111_240
                        add              rsp, 16;                             jmp   n26_lit_integer_β
.Lx111_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n28_binop_α
n27_call_β:             mov              r11, 28
                        add              rsp, 16;                             jmp   n26_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:            sub              rsp, 16
                        mov              r11, 29
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # call
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:           mov              r11, 30
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # S
                        mov              qword ptr [r9 + 40], rdx;            jmp   n30_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:    mov              r11, 31
                        mov              r10, 4
                        add              rsp, 144;                            jmp   n31_statement_begin_α
#=======================================================================================================================
#         S 'ab' BREAK('c') . V1 'cd'                                 :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_begin_α:  mov              r11, 32
                        mov              r10, 5;                              jmp   n32_var_α
n31_statement_begin_β:  mov              r11, 32;                             jmp   n61_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              sub              rsp, 16
                        mov              r11, 33
                        mov              rax, qword ptr [r9 + 32]             # S
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n33_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_match_begin_α:      mov              r11, 34
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx121_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx121_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n34_match_lit_α
n33_match_begin_β:      mov              r11, 34
.Lx121_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx121_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx121_1
                                                                              jmp   .Lx121_0
.Lx121_1:
n33_match_begin_af:     mov              r11, 34
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 16;                             jmp   n61_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_match_lit_α:        mov              r11, 35
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n33_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97;                             jne   n33_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98;                             jne   n33_match_begin_β
                        add              r14d, 2;                             jmp   n35_match_assign_save_α
n34_match_lit_β:        mov              r11, 35
                        sub              r14d, 2;                             jmp   n33_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 36
                        mov              dword ptr [rsp + 0], r14d;           jmp   n36_match_break_α
n35_match_assign_save_β:
                        mov              r11, 36
                        add              rsp, 16;                             jmp   n34_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n36_match_break_α:      sub              rsp, 16
                        mov              r11, 37
                        movsxd           rcx, r14d
.Lx127_0:               cmp              ecx, r15d;                           jl    .Lx127_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n34_match_lit_β
.Lx127_240:             movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 99;                             je    .Lx127_1
                        add              ecx, 1;                              jmp   .Lx127_0
.Lx127_1:               mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx;                           jmp   n37_match_assign_cond_α
n36_match_break_β:      mov              r11, 37
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n34_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n37_match_assign_cond_α:
                        mov              r11, 38
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n38_match_lit_α
n37_match_assign_cond_β:
                        mov              r11, 38
                        sub              r12, 24;                             jmp   n36_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_lit_α:        mov              r11, 39
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n37_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 99;                             jne   n37_match_assign_cond_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 100;                            jne   n37_match_assign_cond_β
                        add              r14d, 2;                             jmp   n39_match_end_α
n38_match_lit_β:        mov              r11, 39
                        sub              r14d, 2;                             jmp   n37_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n39_match_end_α:        mov              r11, 40
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rax, qword ptr [rbp + -32]           # outer_Δ
                        mov              rcx, qword ptr [rbp + -16]           # outer_Σ
                        push             rax
                        push             rcx
                        lea              rcx, [rsp + 0]
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx133_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n33_match_begin_af
.Lx133_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n40_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 41
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n41_statement_begin_α
#=======================================================================================================================
#         G = 'junk' DUPL('w', 40) I
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:  mov              r11, 42
                        mov              r10, 6;                              jmp   n42_lit_string_α
n41_statement_begin_β:  mov              r11, 42;                             jmp   n51_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       sub              rsp, 16
                        mov              r11, 43
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_lit_string_α
.Lx138_0:               .quad            .Lx138_0_s
.Lx138_0_s:             .string          "junk"
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_lit_integer_α
n43_lit_string_β:       mov              r11, 44
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n41_statement_begin_β
.Lx139_0:               .quad            .Lx139_0_s
.Lx139_0_s:             .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_call_α
n44_lit_integer_β:      mov              r11, 45
                        add              rsp, 16;                             jmp   n43_lit_string_β
.Lx140_0:               .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:             sub              rsp, 16
                        mov              r11, 46
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
.Lrkfnzd142:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd142]
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
                        cmp              al, 104;                             jne   .Lx141_240
                        add              rsp, 16;                             jmp   n44_lit_integer_β
.Lx141_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_binop_α
n45_call_β:             mov              r11, 46
                        add              rsp, 16;                             jmp   n44_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n46_binop_α:            sub              rsp, 16
                        mov              r11, 47
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # call
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n47_var_α
n46_binop_β:            mov              r11, 47
                        add              rsp, 32;                             jmp   n44_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              sub              rsp, 16
                        mov              r11, 48
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n48_binop_α
n47_var_β:              mov              r11, 48
                        add              rsp, 16;                             jmp   n46_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n48_binop_α:            sub              rsp, 16
                        mov              r11, 49
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:           mov              r11, 50
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # G
                        mov              qword ptr [r9 + 72], rdx;            jmp   n50_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:    mov              r11, 51
                        mov              r10, 6
                        add              rsp, 112;                            jmp   n51_statement_begin_α
#=======================================================================================================================
#         R = R ',' V1
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:  mov              r11, 52
                        mov              r10, 7;                              jmp   n52_var_α
n51_statement_begin_β:  mov              r11, 52;                             jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              sub              rsp, 16
                        mov              r11, 53
                        mov              rax, qword ptr [r9 + 0]              # R
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_binop_α
n53_lit_string_β:       mov              r11, 54
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n51_statement_begin_β
.Lx152_0:               .quad            .Lx152_0_s
.Lx152_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_α:            sub              rsp, 16
                        mov              r11, 55
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n55_var_α
n54_binop_β:            mov              r11, 55
                        add              rsp, 16;                             jmp   n53_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              sub              rsp, 16
                        mov              r11, 56
                        mov              rax, qword ptr [r9 + 48]             # V1
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_binop_α
n55_var_β:              mov              r11, 56
                        add              rsp, 16;                             jmp   n54_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:            sub              rsp, 16
                        mov              r11, 57
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              r11, 58
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # R
                        mov              qword ptr [r9 + 8], rdx;             jmp   n58_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    mov              r11, 59
                        mov              r10, 7
                        add              rsp, 80;                             jmp   n59_statement_begin_α
#=======================================================================================================================
#         :(lp)
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:  mov              r11, 60
                        mov              r10, 8;                              jmp   n60_statement_end_α
n59_statement_begin_β:  mov              r11, 60;                             jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    mov              r11, 61
                        mov              r10, 8;                              jmp   n8_statement_begin_α
#=======================================================================================================================
# bad     OUTPUT = 'MATCH FAILED'                                     :(END)
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:  mov              r11, 62
                        mov              r10, 9;                              jmp   n62_lit_string_α
n61_statement_begin_β:  mov              r11, 62;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 12
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_assign_α
.Lx165_0:               .quad            .Lx165_0_s
.Lx165_0_s:             .string          "MATCH FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              r11, 64
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n64_statement_end_α
.Lx166_0:               .quad            .Lx166_0_s
.Lx166_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    mov              r11, 65
                        mov              r10, 9
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# done    OUTPUT = V1
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 66
                        mov              r10, 10;                             jmp   n66_var_α
n65_statement_begin_β:  mov              r11, 66;                             jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              sub              rsp, 16
                        mov              r11, 67
                        mov              rax, qword ptr [r9 + 48]             # V1
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              r11, 68
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n68_statement_end_α
.Lx172_0:               .quad            .Lx172_0_s
.Lx172_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    mov              r11, 69
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n69_statement_begin_α
#=======================================================================================================================
#         OUTPUT = SIZE(R)
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:  mov              r11, 70
                        mov              r10, 11;                             jmp   n70_var_α
n69_statement_begin_β:  mov              r11, 70;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              r11, 71
                        mov              rax, qword ptr [r9 + 0]              # R
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_call_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:             sub              rsp, 16
                        mov              r11, 72
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd179:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd179]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx178_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n69_statement_begin_β
.Lx178_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_assign_α
n71_call_β:             mov              r11, 72
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n69_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:           mov              r11, 73
                        mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_statement_end_α
.Lx180_0:               .quad            .Lx180_0_s
.Lx180_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:    mov              r11, 74
                        mov              r10, 11
                        add              rsp, 32;                             jmp   main_γ
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
                        .section         .rodata
.S0:                    .string          "V1"
                        .text
                        .section         .note.GNU-stack,"",@progbits
