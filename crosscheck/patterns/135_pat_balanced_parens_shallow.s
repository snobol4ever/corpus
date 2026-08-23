                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 40
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n0_match_len_α:         mov              r11, 1
                        mov              eax, r14d
                        add              eax, 0
                        cmp              eax, r15d;                           jg    PAT$0_ω
                        add              r14d, 0;                             jmp   PAT$0_γ
n0_match_len_β:         mov              r11, 1
                        sub              r14d, 0;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n0_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$0_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$1:
PAT$1_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 56
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n2_match_lit_α:         mov              r11, 2
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    PAT$1_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   PAT$1_ω
                        add              r14d, 1;                             jmp   n3_match_fence1_α
n2_match_lit_β:         mov              r11, 2
                        sub              r14d, 1;                             jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_match_fence1_α:      mov              r11, 3
                        mov              qword ptr [rbp + -48], rsp
                        sub              rsp, 0;                              jmp   n5_match_alternate_α
n3_match_fence1_as:     mov              r11, 3
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -48];          jmp   n4_match_lit_α
n3_match_fence1_af:     mov              r11, 3
                        add              rsp, 0
n3_match_fence1_β:      mov              r11, 3
                        mov              rsp, qword ptr [rbp + -48];          jmp   n2_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_lit_α:         mov              r11, 4
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n3_match_fence1_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n3_match_fence1_β
                        add              r14d, 1;                             jmp   PAT$1_γ
n4_match_lit_β:         mov              r11, 4
                        sub              r14d, 1;                             jmp   n3_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_alternate_α:   mov              r11, 5
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx15_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n7_match_defer_α
.Lx15_21:               lea              rax, [rip + .Lx15_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n6_match_defer_α
n5_match_alternate_s0:  mov              r11, 5
                        lea              rax, [rip + .Lx15_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_match_alternate_as
n5_match_alternate_s1:  mov              r11, 5
                        lea              rax, [rip + .Lx15_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_match_alternate_as
.Lx15_40:                                                                     jmp   n7_match_defer_β
.Lx15_41:                                                                     jmp   n6_match_defer_β
n5_match_alternate_as:  mov              r11, 5;                              jmp   n3_match_fence1_as
n5_match_alternate_β:   mov              r11, 5
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n5_match_alternate_af:  mov              r11, 5
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx15_19:               add              rsp, 32;                             jmp   n3_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n6_match_defer_α:       mov              r11, 6
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx16_16
                        mov              rax, qword ptr [rdx + 0]
.Lx16_16:               test             rax, rax;                            jz    .Lx16_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx16_5]
                        push             rcx
                        lea              rcx, [rip + .Lx16_4]
                        push             rcx;                                 jmp   rax
.Lx16_4:                                                                      jmp   n5_match_alternate_s1
.Lx16_5:                                                                      jmp   n5_match_alternate_af
.Lx16_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S0]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n5_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx16_6]
                        push             rcx
                        push             rax;                                 jmp   n5_match_alternate_s1
.Lx16_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n5_match_alternate_af
n6_match_defer_β:       mov              r11, 6
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx16_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx16_12
                                                                              jmp   rax
.Lx16_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n7_match_defer_α:       mov              r11, 7
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx17_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx17_11
.Lx17_13:               mov              rax, qword ptr [r9 + 16]             # B
                        mov              rdx, qword ptr [r9 + 24]
                        cmp              al, 8;                               jne   .Lx17_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx17_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 24];            jmp   .Lx17_10
.Lx17_9:                cmp              al, 88;                              jne   .Lx17_21
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_xpat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx17_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx17_10
.Lx17_21:               xor              eax, eax
.Lx17_10:               test             rax, rax;                            je    .Lx17_15
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rdx
.Lx17_15:
.Lx17_11:               test             rax, rax;                            jz    .Lx17_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx17_5]
                        push             rcx
                        lea              rcx, [rip + .Lx17_4]
                        push             rcx;                                 jmp   rax
.Lx17_4:                                                                      jmp   n5_match_alternate_s0
.Lx17_5:                                                                      jmp   n5_match_alternate_af
.Lx17_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
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
                        test             eax, eax;                            js    n5_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx17_6]
                        push             rcx
                        push             rax;                                 jmp   n5_match_alternate_s0
.Lx17_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n5_match_alternate_af
n7_match_defer_β:       mov              r11, 7
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx17_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx17_12
                                                                              jmp   rax
.Lx17_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$1_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
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
.Lgvan0:                .string          "eps"
.Lgvan1:                .string          "B"
.Lgvan2:                .string          "s"
.Lgvan3:                .string          "PAT$1$V0"
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
                        sub              rsp, 0
#=======================================================================================================================
#         eps  = LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:  mov              r11, 8
                        mov              r10, 1;                              jmp   n19_lit_string_α
n18_statement_begin_β:  mov              r11, 8;                              jmp   n23_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       sub              rsp, 16
                        mov              r11, 9
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_call_α
.Lx55_0:                .quad            .Lx55_0_s
.Lx55_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             sub              rsp, 16
                        mov              r11, 10
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd57:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd57]
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
                        cmp              al, 104;                             jne   .Lx56_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_β
.Lx56_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n21_assign_α
n20_call_β:             mov              r11, 10
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # eps
                        mov              qword ptr [r9 + 8], rdx;             jmp   n22_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:    mov              r11, 12
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n23_statement_begin_α
#=======================================================================================================================
#         B    = '(' FENCE(*B | eps) ')'
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:  mov              r11, 13
                        mov              r10, 2;                              jmp   n24_var_α
n23_statement_begin_β:  mov              r11, 13;                             jmp   n31_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              sub              rsp, 16
                        mov              r11, 14
                        mov              rax, qword ptr [r9 + 0]              # eps
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n25_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # PAT$1$V0
                        mov              qword ptr [r9 + 56], rdx;            jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_lit_string_α
n26_lit_string_β:       mov              r11, 16
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n23_statement_begin_β
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_call_α
n27_lit_string_β:       mov              r11, 17
                        add              rsp, 16;                             jmp   n26_lit_string_β
.Lx66_0:                .quad            .Lx66_0_s
.Lx66_0_s:              .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_α:             sub              rsp, 16
                        mov              r11, 18
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
.Lrkfnzd68:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd68]
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
                        cmp              al, 104;                             jne   .Lx67_240
                        add              rsp, 16;                             jmp   n27_lit_string_β
.Lx67_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n29_assign_α
n28_call_β:             mov              r11, 18
                        add              rsp, 16;                             jmp   n27_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # B
                        mov              qword ptr [r9 + 24], rdx;            jmp   n30_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:    mov              r11, 20
                        mov              r10, 2
                        add              rsp, 64;                             jmp   n31_statement_begin_α
#=======================================================================================================================
#         s    = '((()))'
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_begin_α:  mov              r11, 21
                        mov              r10, 3;                              jmp   n32_lit_string_α
n31_statement_begin_β:  mov              r11, 21;                             jmp   n35_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       sub              rsp, 16
                        mov              r11, 22
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_assign_α
.Lx74_0:                .quad            .Lx74_0_s
.Lx74_0_s:              .string          "((()))"
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              r11, 23
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # s
                        mov              qword ptr [r9 + 40], rdx;            jmp   n34_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    mov              r11, 24
                        mov              r10, 3
                        add              rsp, 16;                             jmp   n35_statement_begin_α
#=======================================================================================================================
#         s POS(0) *B RPOS(0)                                   :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:  mov              r11, 25
                        mov              r10, 4;                              jmp   n36_var_α
n35_statement_begin_β:  mov              r11, 25;                             jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              sub              rsp, 16
                        mov              r11, 26
                        mov              rax, qword ptr [r9 + 32]             # s
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_match_begin_α:      mov              r11, 27
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
.Lx82_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx82_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n38_match_pos_α
n37_match_begin_β:      mov              r11, 27
.Lx82_13:               lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx82_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx82_1
                                                                              jmp   .Lx82_0
.Lx82_1:
n37_match_begin_af:     mov              r11, 27
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
                        add              rsp, 16;                             jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_match_pos_α:        mov              r11, 28
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n37_match_begin_β
                                                                              jmp   n39_match_defer_α
n38_match_pos_β:        mov              r11, 28;                             jmp   n37_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n39_match_defer_α:      sub              rsp, 16
                        mov              r11, 29
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx84_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx84_11
.Lx84_13:               mov              rax, qword ptr [r9 + 16]             # B
                        mov              rdx, qword ptr [r9 + 24]
                        cmp              al, 8;                               jne   .Lx84_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx84_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 24];            jmp   .Lx84_10
.Lx84_9:                cmp              al, 88;                              jne   .Lx84_21
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_xpat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx84_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx84_10
.Lx84_21:               xor              eax, eax
.Lx84_10:               test             rax, rax;                            je    .Lx84_15
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rdx
.Lx84_15:
.Lx84_11:               test             rax, rax;                            jz    .Lx84_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx84_5]
                        push             rcx
                        lea              rcx, [rip + .Lx84_4]
                        push             rcx;                                 jmp   rax
.Lx84_4:                                                                      jmp   n40_match_rpos_α
.Lx84_5:                add              rsp, 16;                             jmp   n37_match_begin_β
.Lx84_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
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
                        test             eax, eax;                            jns   .Lx84_240
                        add              rsp, 16;                             jmp   n37_match_begin_β
.Lx84_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx84_6]
                        push             rcx
                        push             rax;                                 jmp   n40_match_rpos_α
.Lx84_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n37_match_begin_β
n39_match_defer_β:      mov              r11, 29
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx84_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx84_12
                                                                              jmp   rax
.Lx84_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n40_match_rpos_α:       mov              r11, 30
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n39_match_defer_β
                                                                              jmp   n41_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n41_match_end_α:        mov              r11, 31
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
                        test             rax, rax;                            je    .Lx87_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n37_match_begin_af
.Lx87_13:               add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n42_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    mov              r11, 32
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n43_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = 'balanced ' s                                :(END)
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:  mov              r11, 33
                        mov              r10, 5;                              jmp   n44_lit_string_α
n43_statement_begin_β:  mov              r11, 33;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_var_α
.Lx92_0:                .quad            .Lx92_0_s
.Lx92_0_s:              .string          "balanced "
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              sub              rsp, 16
                        mov              r11, 35
                        mov              rax, qword ptr [r9 + 32]             # s
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_binop_α
n45_var_β:              mov              r11, 35
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n43_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n46_binop_α:            sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n47_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 37
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n48_statement_end_α
.Lx95_0:                .quad            .Lx95_0_s
.Lx95_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 38
                        mov              r10, 5
                        add              rsp, 48;                             jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:  mov              r11, 39
                        mov              r10, 6;                              jmp   n50_lit_string_α
n49_statement_begin_β:  mov              r11, 39;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       sub              rsp, 16
                        mov              r11, 40
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_assign_α
.Lx100_0:               .quad            .Lx100_0_s
.Lx100_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 41
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_statement_end_α
.Lx101_0:               .quad            .Lx101_0_s
.Lx101_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 42
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "PAT$0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__PAT$0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            48
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "PAT$1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__PAT$1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            128
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "PAT$1$V0"
.S1:                    .string          "B"
                        .text
                        .section         .note.GNU-stack,"",@progbits
