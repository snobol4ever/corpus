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
.Lgvan0:                .string          "subject"
.Lgvan1:                .string          "pat"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 0;                              jmp   n1_statement_end_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n2_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_statement_end_α:     mov              r11, 2
                        mov              r10, 1;                              jmp   n2_statement_begin_α
#=======================================================================================================================
#         subject = 'xabc'
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_begin_α:   mov              r11, 3
                        mov              r10, 2;                              jmp   n3_lit_string_α
n2_statement_begin_β:   mov              r11, 3;                              jmp   n6_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        sub              rsp, 16
                        mov              r11, 4
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_assign_α
.Lx32_0:                .quad            .Lx32_0_s
.Lx32_0_s:              .string          "xabc"
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 5
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # subject
                        mov              qword ptr [r9 + 8], rdx;             jmp   n5_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_end_α:     mov              r11, 6
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n6_statement_begin_α
#=======================================================================================================================
#         pat = 'a' 'b' 'c'
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_begin_α:   mov              r11, 7
                        mov              r10, 3;                              jmp   n7_lit_string_α
n6_statement_begin_β:   mov              r11, 7;                              jmp   n10_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        sub              rsp, 16
                        mov              r11, 8
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n8_assign_α
.Lx38_0:                .quad            .Lx38_0_s
.Lx38_0_s:              .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              r11, 9
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # pat
                        mov              qword ptr [r9 + 24], rdx;            jmp   n9_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_end_α:     mov              r11, 10
                        mov              r10, 3
                        add              rsp, 16;                             jmp   n10_statement_begin_α
#=======================================================================================================================
#         subject pat              :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_begin_α:  mov              r11, 11
                        mov              r10, 4;                              jmp   n11_var_α
n10_statement_begin_β:  mov              r11, 11;                             jmp   n22_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              sub              rsp, 16
                        mov              r11, 12
                        mov              rax, qword ptr [r9 + 0]              # subject
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              sub              rsp, 16
                        mov              r11, 13
                        mov              rax, qword ptr [r9 + 16]             # pat
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n13_assign_α
n12_var_β:              mov              r11, 13
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n22_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n14_match_begin_α
n13_assign_β:           mov              r11, 14;                             jmp   n12_var_β
.Lx46_0:                .quad            .Lx46_0_s
.Lx46_0_s:              .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n14_match_begin_α:      mov              r11, 15
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
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
.Lx48_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx48_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n15_match_defer_α
n14_match_begin_β:      mov              r11, 15
.Lx48_13:               lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx48_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx48_1
                                                                              jmp   .Lx48_0
.Lx48_1:
n14_match_begin_af:     mov              r11, 15
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
                        pop              rbp;                                 jmp   n13_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_defer_α:      mov              r11, 16
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx49_14
                        mov              rax, qword ptr [rdx + 0]
.Lx49_14:               test             rax, rax;                            jz    .Lx49_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx49_5]
                        push             rcx
                        lea              rcx, [rip + .Lx49_4]
                        push             rcx;                                 jmp   rax
.Lx49_4:                                                                      jmp   n16_match_end_α
.Lx49_5:                                                                      jmp   n14_match_begin_β
.Lx49_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n14_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx49_6]
                        push             rcx
                        push             rax;                                 jmp   n16_match_end_α
.Lx49_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n14_match_begin_β
n15_match_defer_β:      mov              r11, 16
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx49_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx49_12
                                                                              jmp   rax
.Lx49_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n16_match_end_α:        mov              r11, 17
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
                        test             rax, rax;                            je    .Lx51_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n14_match_begin_af
.Lx51_13:               add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n17_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:    mov              r11, 18
                        mov              r10, 4
                        add              rsp, 32;                             jmp   n18_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS W02/002: nested seq match succeeded'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:  mov              r11, 19
                        mov              r10, 5;                              jmp   n19_lit_string_α
n18_statement_begin_β:  mov              r11, 19;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       sub              rsp, 16
                        mov              r11, 20
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_assign_α
.Lx56_0:                .quad            .Lx56_0_s
.Lx56_0_s:              .string          "PASS W02/002: nested seq match succeeded"
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              r11, 21
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_statement_end_α
.Lx57_0:                .quad            .Lx57_0_s
.Lx57_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:    mov              r11, 22
                        mov              r10, 5
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e001    OUTPUT = 'FAIL W02/002: nested seq match should succeed'
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_begin_α:  mov              r11, 23
                        mov              r10, 6;                              jmp   n23_lit_string_α
n22_statement_begin_β:  mov              r11, 23;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 45
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_assign_α
.Lx62_0:                .quad            .Lx62_0_s
.Lx62_0_s:              .string          "FAIL W02/002: nested seq match should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              r11, 25
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n25_statement_end_α
.Lx63_0:                .quad            .Lx63_0_s
.Lx63_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:    mov              r11, 26
                        mov              r10, 6
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
                        .section         .rodata
.S0:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
