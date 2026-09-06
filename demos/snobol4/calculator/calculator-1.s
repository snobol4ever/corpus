                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/calculator/calculator-1.sno"
                        .file            2 "<included>"
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
                        .type            n0_match_assign_save_bx, @function
n0_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_assign_save_α: sub              rsp, 16
                        mov              r11, 1
                        mov              dword ptr [rsp + 0], r14d;           jmp   n1_match_any_α
n0_match_assign_save_β: mov              r11, 1
                        add              rsp, 16;                             jmp   PAT$0_ω
                        .size            n0_match_assign_save_bx, .-n0_match_assign_save_bx
                        .type            n1_match_any_bx, @function
n1_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_match_any_α:         mov              r11, 2
                        mov              eax, r14d
                        cmp              eax, r15d;                           jl    .Lmatch_any_α_6_239
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lmatch_any_α_6_239:    movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               jne   .Lmatch_any_α_6_240
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lmatch_any_α_6_240:    add              r14d, 1;                             jmp   n2_match_assign_cond_α
n1_match_any_β:         mov              r11, 2
                        sub              r14d, 1
                        add              rsp, 16;                             jmp   PAT$0_ω
                        .size            n1_match_any_bx, .-n1_match_any_bx
                        .type            n2_match_assign_cond_bx, @function
n2_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_assign_cond_α: mov              r11, 3
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   PAT$0_γ
n2_match_assign_cond_β: mov              r11, 3
                        sub              r12, 24;                             jmp   n1_match_any_β
                        .size            n2_match_assign_cond_bx, .-n2_match_assign_cond_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n2_match_assign_cond_β
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
                        sub              rsp, 72
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n9_match_assign_save_bx, @function
n9_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_assign_save_α: sub              rsp, 16
                        mov              r11, 4
                        mov              dword ptr [rsp + 0], r14d;           jmp   n10_match_span_α
n9_match_assign_save_β: mov              r11, 4
                        add              rsp, 16;                             jmp   PAT$1_ω
                        .size            n9_match_assign_save_bx, .-n9_match_assign_save_bx
                        .type            n10_match_span_bx, @function
n10_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_span_α:       sub              rsp, 16
                        mov              r11, 5
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lmatch_span_α_15_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_15_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_15_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_15_0
.Lmatch_span_α_15_1:    cmp              ecx, r14d;                           jg    .Lmatch_span_α_15_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$1_ω
.Lmatch_span_α_15_240:  mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n11_match_assign_cond_α
n10_match_span_β:       mov              r11, 5
                        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$1_ω
                        .size            n10_match_span_bx, .-n10_match_span_bx
                        .type            n11_match_assign_cond_bx, @function
n11_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_match_assign_cond_α:
                        mov              r11, 6
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   PAT$1_γ
n11_match_assign_cond_β:
                        mov              r11, 6
                        sub              r12, 24;                             jmp   n10_match_span_β
                        .size            n11_match_assign_cond_bx, .-n11_match_assign_cond_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n11_match_assign_cond_β
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
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$2:
PAT$2_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 72
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n18_match_alternate_bx, @function
n18_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_match_alternate_α:  mov              r11, 7
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_25_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n23_match_defer_α
.Lmatch_alternate_α_25_21:
                        lea              rax, [rip + .Lmatch_alternate_α_25_22]
                        mov              qword ptr [rbp + -56], rax;          jmp   n22_match_defer_α
.Lmatch_alternate_α_25_22:
                        lea              rax, [rip + .Lmatch_alternate_α_25_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n19_match_lit_α
.Lmatch_alternate_γ_18_s0:
                        mov              r11, 7
                        lea              rax, [rip + .Lmatch_alternate_α_25_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_18_as
.Lmatch_alternate_γ_18_s1:
                        mov              r11, 7
                        lea              rax, [rip + .Lmatch_alternate_α_25_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_18_as
.Lmatch_alternate_γ_18_s2:
                        mov              r11, 7
                        lea              rax, [rip + .Lmatch_alternate_α_25_42]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_18_as
.Lmatch_alternate_α_25_40:
                                                                              jmp   n23_match_defer_β
.Lmatch_alternate_α_25_41:
                                                                              jmp   n22_match_defer_β
.Lmatch_alternate_α_25_42:
                                                                              jmp   n21_match_lit_β
.Lmatch_alternate_γ_18_as:
                        mov              r11, 7;                              jmp   PAT$2_γ
n18_match_alternate_β:  mov              r11, 7
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
.Lmatch_alternate_γ_18_af:
                        mov              r11, 7
.Lmatch_alternate_ω_18_af:
                        mov              r11, 7
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lmatch_alternate_α_25_19:
                                                                              jmp   PAT$2_ω
                        .size            n18_match_alternate_bx, .-n18_match_alternate_bx
                        .type            n19_match_lit_bx, @function
n19_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_match_lit_α:        mov              r11, 8
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_18_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   .Lmatch_alternate_ω_18_af
                        add              r14d, 1;                             jmp   n20_match_defer_α
n19_match_lit_β:        mov              r11, 8
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_18_af
                        .size            n19_match_lit_bx, .-n19_match_lit_bx
                        .type            n20_match_defer_bx, @function
n20_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_match_defer_α:      mov              r11, 9
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_28_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_28_11
.Lmatch_defer_α_28_13:  mov              rax, qword ptr [r9 + 288]            # X
                        mov              rdx, qword ptr [r9 + 296]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_28_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_28_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 296];           jmp   .Lmatch_defer_α_28_10
.Lmatch_defer_α_28_9:   cmp              al, 88;                              jne   .Lmatch_defer_α_28_21
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
                        test             rax, rax;                            je    .Lmatch_defer_α_28_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_28_10
.Lmatch_defer_α_28_21:  xor              eax, eax
.Lmatch_defer_α_28_10:  test             rax, rax;                            je    .Lmatch_defer_α_28_15
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rdx
.Lmatch_defer_α_28_15:
.Lmatch_defer_α_28_11:  test             rax, rax;                            jz    .Lmatch_defer_α_28_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_28_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_28_4]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_28_4]
                        lea              rdx, [rip + .Lmatch_defer_α_28_5];   jmp   rax
.Lmatch_defer_α_28_4:                                                         jmp   n21_match_lit_α
.Lmatch_defer_α_28_5:                                                         jmp   n19_match_lit_β
.Lmatch_defer_α_28_0:   push             r14
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
                        test             eax, eax;                            js    n19_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_28_6]
                        push             rcx
                        push             rax;                                 jmp   n21_match_lit_α
.Lmatch_defer_α_28_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n19_match_lit_β
n20_match_defer_β:      mov              r11, 9
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_28_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_28_12
                                                                              jmp   rax
.Lmatch_defer_β_28_12:                                                        jmp   qword ptr [rsp]
                        .size            n20_match_defer_bx, .-n20_match_defer_bx
                        .type            n21_match_lit_bx, @function
n21_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_match_lit_α:        mov              r11, 10
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n20_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n20_match_defer_β
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_18_s2
n21_match_lit_β:        mov              r11, 10
                        sub              r14d, 1;                             jmp   n20_match_defer_β
                        .size            n21_match_lit_bx, .-n21_match_lit_bx
                        .type            n22_match_defer_bx, @function
n22_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_match_defer_α:      mov              r11, 11
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_31_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_31_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_31_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_31_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_31_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_31_18
.Lmatch_defer_α_31_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S2]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_31_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_31_16:
.Lmatch_defer_α_31_18:  test             rax, rax;                            jz    .Lmatch_defer_α_31_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_31_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_31_4]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_31_4]
                        lea              rdx, [rip + .Lmatch_defer_α_31_5];   jmp   rax
.Lmatch_defer_α_31_4:                                                         jmp   .Lmatch_alternate_γ_18_s1
.Lmatch_defer_α_31_5:                                                         jmp   .Lmatch_alternate_ω_18_af
.Lmatch_defer_α_31_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S2]
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_18_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_31_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_18_s1
.Lmatch_defer_α_31_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_18_af
n22_match_defer_β:      mov              r11, 11
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_31_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_31_12
                                                                              jmp   rax
.Lmatch_defer_β_31_12:                                                        jmp   qword ptr [rsp]
                        .size            n22_match_defer_bx, .-n22_match_defer_bx
                        .type            n23_match_defer_bx, @function
n23_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_match_defer_α:      mov              r11, 12
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_32_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_32_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_32_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_32_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_32_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_32_18
.Lmatch_defer_α_32_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S3]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_32_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_32_16:
.Lmatch_defer_α_32_18:  test             rax, rax;                            jz    .Lmatch_defer_α_32_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_32_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_32_4]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_32_4]
                        lea              rdx, [rip + .Lmatch_defer_α_32_5];   jmp   rax
.Lmatch_defer_α_32_4:                                                         jmp   .Lmatch_alternate_γ_18_s0
.Lmatch_defer_α_32_5:                                                         jmp   .Lmatch_alternate_ω_18_af
.Lmatch_defer_α_32_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S3]
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_18_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_32_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_18_s0
.Lmatch_defer_α_32_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_18_af
n23_match_defer_β:      mov              r11, 12
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_32_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_32_12
                                                                              jmp   rax
.Lmatch_defer_β_32_12:                                                        jmp   qword ptr [rsp]
                        .size            n23_match_defer_bx, .-n23_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_β:
                                                                              jmp   n18_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$2_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$3:
PAT$3_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 104
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n33_match_alternate_bx, @function
n33_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_match_alternate_α:  mov              r11, 13
                        mov              dword ptr [rbp + -104], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_42_21]
                        mov              qword ptr [rbp + -88], rax;          jmp   n40_match_defer_α
.Lmatch_alternate_α_42_21:
                        lea              rax, [rip + .Lmatch_alternate_α_42_22]
                        mov              qword ptr [rbp + -88], rax;          jmp   n38_match_lit_α
.Lmatch_alternate_α_42_22:
                        lea              rax, [rip + .Lmatch_alternate_α_42_19]
                        mov              qword ptr [rbp + -88], rax;          jmp   n34_match_lit_α
.Lmatch_alternate_γ_33_s0:
                        mov              r11, 13
                        lea              rax, [rip + .Lmatch_alternate_α_42_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_33_as
.Lmatch_alternate_γ_33_s1:
                        mov              r11, 13
                        lea              rax, [rip + .Lmatch_alternate_α_42_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_33_as
.Lmatch_alternate_γ_33_s2:
                        mov              r11, 13
                        lea              rax, [rip + .Lmatch_alternate_α_42_42]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_33_as
.Lmatch_alternate_α_42_40:
                                                                              jmp   n40_match_defer_β
.Lmatch_alternate_α_42_41:
                                                                              jmp   n39_match_defer_β
.Lmatch_alternate_α_42_42:
                                                                              jmp   n37_match_assign_cond_β
.Lmatch_alternate_γ_33_as:
                        mov              r11, 13;                             jmp   PAT$3_γ
n33_match_alternate_β:  mov              r11, 13
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
.Lmatch_alternate_γ_33_af:
                        mov              r11, 13
.Lmatch_alternate_ω_33_af:
                        mov              r11, 13
                        mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lmatch_alternate_α_42_19:
                                                                              jmp   PAT$3_ω
                        .size            n33_match_alternate_bx, .-n33_match_alternate_bx
                        .type            n34_match_lit_bx, @function
n34_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_match_lit_α:        mov              r11, 14
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_33_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   .Lmatch_alternate_ω_33_af
                        add              r14d, 1;                             jmp   n35_match_assign_save_α
n34_match_lit_β:        mov              r11, 14
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_33_af
                        .size            n34_match_lit_bx, .-n34_match_lit_bx
                        .type            n35_match_assign_save_bx, @function
n35_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_match_assign_save_α:
                        mov              r11, 15
                        mov              dword ptr [rbp + -48], r14d;         jmp   n36_match_defer_α
n35_match_assign_save_β:
                        mov              r11, 15;                             jmp   n34_match_lit_β
                        .size            n35_match_assign_save_bx, .-n35_match_assign_save_bx
                        .type            n36_match_defer_bx, @function
n36_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_match_defer_α:      mov              r11, 16
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_47_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_47_11
.Lmatch_defer_α_47_13:  mov              rax, qword ptr [r9 + 256]            # F
                        mov              rdx, qword ptr [r9 + 264]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_47_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_47_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 264];           jmp   .Lmatch_defer_α_47_10
.Lmatch_defer_α_47_9:   cmp              al, 88;                              jne   .Lmatch_defer_α_47_21
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
                        test             rax, rax;                            je    .Lmatch_defer_α_47_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_47_10
.Lmatch_defer_α_47_21:  xor              eax, eax
.Lmatch_defer_α_47_10:  test             rax, rax;                            je    .Lmatch_defer_α_47_15
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rdx
.Lmatch_defer_α_47_15:
.Lmatch_defer_α_47_11:  test             rax, rax;                            jz    .Lmatch_defer_α_47_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_47_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_47_4]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_47_4]
                        lea              rdx, [rip + .Lmatch_defer_α_47_5];   jmp   rax
.Lmatch_defer_α_47_4:                                                         jmp   n37_match_assign_cond_α
.Lmatch_defer_α_47_5:                                                         jmp   n35_match_assign_save_β
.Lmatch_defer_α_47_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
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
                        test             eax, eax;                            js    n35_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_47_6]
                        push             rcx
                        push             rax;                                 jmp   n37_match_assign_cond_α
.Lmatch_defer_α_47_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n35_match_assign_save_β
n36_match_defer_β:      mov              r11, 16
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_47_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_47_12
                                                                              jmp   rax
.Lmatch_defer_β_47_12:                                                        jmp   qword ptr [rsp]
                        .size            n36_match_defer_bx, .-n36_match_defer_bx
                        .type            n37_match_assign_cond_bx, @function
n37_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_match_assign_cond_α:
                        mov              r11, 17
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S5]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_33_s2
n37_match_assign_cond_β:
                        mov              r11, 17
                        sub              r12, 24;                             jmp   n36_match_defer_β
                        .size            n37_match_assign_cond_bx, .-n37_match_assign_cond_bx
                        .type            n38_match_lit_bx, @function
n38_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_match_lit_α:        mov              r11, 18
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_33_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   .Lmatch_alternate_ω_33_af
                        add              r14d, 1;                             jmp   n39_match_defer_α
n38_match_lit_β:        mov              r11, 18
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_33_af
                        .size            n38_match_lit_bx, .-n38_match_lit_bx
                        .type            n39_match_defer_bx, @function
n39_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_match_defer_α:      mov              r11, 19
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_52_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_52_11
.Lmatch_defer_α_52_13:  mov              rax, qword ptr [r9 + 256]            # F
                        mov              rdx, qword ptr [r9 + 264]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_52_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_52_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 264];           jmp   .Lmatch_defer_α_52_10
.Lmatch_defer_α_52_9:   cmp              al, 88;                              jne   .Lmatch_defer_α_52_21
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
                        test             rax, rax;                            je    .Lmatch_defer_α_52_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_52_10
.Lmatch_defer_α_52_21:  xor              eax, eax
.Lmatch_defer_α_52_10:  test             rax, rax;                            je    .Lmatch_defer_α_52_15
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rdx
.Lmatch_defer_α_52_15:
.Lmatch_defer_α_52_11:  test             rax, rax;                            jz    .Lmatch_defer_α_52_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_52_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_52_4]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_52_4]
                        lea              rdx, [rip + .Lmatch_defer_α_52_5];   jmp   rax
.Lmatch_defer_α_52_4:                                                         jmp   .Lmatch_alternate_γ_33_s1
.Lmatch_defer_α_52_5:                                                         jmp   n38_match_lit_β
.Lmatch_defer_α_52_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
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
                        test             eax, eax;                            js    n38_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_52_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_33_s1
.Lmatch_defer_α_52_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n38_match_lit_β
n39_match_defer_β:      mov              r11, 19
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_52_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_52_12
                                                                              jmp   rax
.Lmatch_defer_β_52_12:                                                        jmp   qword ptr [rsp]
                        .size            n39_match_defer_bx, .-n39_match_defer_bx
                        .type            n40_match_defer_bx, @function
n40_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_match_defer_α:      mov              r11, 20
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_53_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_53_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_53_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_53_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_53_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_53_18
.Lmatch_defer_α_53_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S6]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_53_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_53_16:
.Lmatch_defer_α_53_18:  test             rax, rax;                            jz    .Lmatch_defer_α_53_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_53_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_53_4]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_53_4]
                        lea              rdx, [rip + .Lmatch_defer_α_53_5];   jmp   rax
.Lmatch_defer_α_53_4:                                                         jmp   .Lmatch_alternate_γ_33_s0
.Lmatch_defer_α_53_5:                                                         jmp   .Lmatch_alternate_ω_33_af
.Lmatch_defer_α_53_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S6]
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_33_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_53_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_33_s0
.Lmatch_defer_α_53_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_33_af
n40_match_defer_β:      mov              r11, 20
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_53_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_53_12
                                                                              jmp   rax
.Lmatch_defer_β_53_12:                                                        jmp   qword ptr [rsp]
                        .size            n40_match_defer_bx, .-n40_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_β:
                                                                              jmp   n33_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$3_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$4:
PAT$4_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 136
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n54_match_defer_bx, @function
n54_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_match_defer_α:      sub              rsp, 16
                        mov              r11, 21
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_65_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_65_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_65_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_65_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_65_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_65_18
.Lmatch_defer_α_65_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S7]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_65_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_65_16:
.Lmatch_defer_α_65_18:  test             rax, rax;                            jz    .Lmatch_defer_α_65_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_65_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_65_4]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_65_4]
                        lea              rdx, [rip + .Lmatch_defer_α_65_5];   jmp   rax
.Lmatch_defer_α_65_4:                                                         jmp   n55_match_alternate_α
.Lmatch_defer_α_65_5:   add              rsp, 16;                             jmp   PAT$4_ω
.Lmatch_defer_α_65_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S7]
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
                        test             eax, eax;                            jns   .Lmatch_defer_α_65_240
                        add              rsp, 16;                             jmp   PAT$4_ω
.Lmatch_defer_α_65_240: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_65_6]
                        push             rcx
                        push             rax;                                 jmp   n55_match_alternate_α
.Lmatch_defer_α_65_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$4_ω
n54_match_defer_β:      mov              r11, 21
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_65_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_65_12
                                                                              jmp   rax
.Lmatch_defer_β_65_12:                                                        jmp   qword ptr [rsp]
                        .size            n54_match_defer_bx, .-n54_match_defer_bx
                        .type            n55_match_alternate_bx, @function
n55_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_match_alternate_α:  mov              r11, 22
                        mov              dword ptr [rbp + -136], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_67_21]
                        mov              qword ptr [rbp + -120], rax;         jmp   n61_match_lit_α
.Lmatch_alternate_α_67_21:
                        lea              rax, [rip + .Lmatch_alternate_α_67_22]
                        mov              qword ptr [rbp + -120], rax;         jmp   n57_match_lit_α
.Lmatch_alternate_α_67_22:
                        lea              rax, [rip + .Lmatch_alternate_α_67_19]
                        mov              qword ptr [rbp + -120], rax;         jmp   n56_match_lit_α
.Lmatch_alternate_γ_55_s0:
                        mov              r11, 22
                        lea              rax, [rip + .Lmatch_alternate_α_67_40]
                        mov              qword ptr [rbp + -128], rax;         jmp   .Lmatch_alternate_γ_55_as
.Lmatch_alternate_γ_55_s1:
                        mov              r11, 22
                        lea              rax, [rip + .Lmatch_alternate_α_67_41]
                        mov              qword ptr [rbp + -128], rax;         jmp   .Lmatch_alternate_γ_55_as
.Lmatch_alternate_γ_55_s2:
                        mov              r11, 22
                        lea              rax, [rip + .Lmatch_alternate_α_67_42]
                        mov              qword ptr [rbp + -128], rax;         jmp   .Lmatch_alternate_γ_55_as
.Lmatch_alternate_α_67_40:
                                                                              jmp   n64_match_assign_cond_β
.Lmatch_alternate_α_67_41:
                                                                              jmp   n60_match_assign_cond_β
.Lmatch_alternate_α_67_42:
                                                                              jmp   n56_match_lit_β
.Lmatch_alternate_γ_55_as:
                        mov              r11, 22;                             jmp   PAT$4_γ
n55_match_alternate_β:  mov              r11, 22
                        mov              rax, qword ptr [rbp + -128];         jmp   rax
.Lmatch_alternate_γ_55_af:
                        mov              r11, 22
.Lmatch_alternate_ω_55_af:
                        mov              r11, 22
                        mov              r14d, dword ptr [rbp + -136]
                        mov              rax, qword ptr [rbp + -120];         jmp   rax
.Lmatch_alternate_α_67_19:
                                                                              jmp   n54_match_defer_β
                        .size            n55_match_alternate_bx, .-n55_match_alternate_bx
                        .type            n56_match_lit_bx, @function
n56_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_match_lit_α:        mov              r11, 23;                             jmp   .Lmatch_alternate_γ_55_s2
n56_match_lit_β:        mov              r11, 23;                             jmp   .Lmatch_alternate_ω_55_af
                        .size            n56_match_lit_bx, .-n56_match_lit_bx
                        .type            n57_match_lit_bx, @function
n57_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_match_lit_α:        mov              r11, 24
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_55_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                             jne   .Lmatch_alternate_ω_55_af
                        add              r14d, 1;                             jmp   n58_match_assign_save_α
n57_match_lit_β:        mov              r11, 24
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_55_af
                        .size            n57_match_lit_bx, .-n57_match_lit_bx
                        .type            n58_match_assign_save_bx, @function
n58_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_match_assign_save_α:
                        mov              r11, 25
                        mov              dword ptr [rbp + -80], r14d;         jmp   n59_match_defer_α
n58_match_assign_save_β:
                        mov              r11, 25;                             jmp   n57_match_lit_β
                        .size            n58_match_assign_save_bx, .-n58_match_assign_save_bx
                        .type            n59_match_defer_bx, @function
n59_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_match_defer_α:      mov              r11, 26
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_74_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_74_11
.Lmatch_defer_α_74_13:  mov              rax, qword ptr [r9 + 272]            # T
                        mov              rdx, qword ptr [r9 + 280]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_74_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_74_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 280];           jmp   .Lmatch_defer_α_74_10
.Lmatch_defer_α_74_9:   cmp              al, 88;                              jne   .Lmatch_defer_α_74_21
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
                        test             rax, rax;                            je    .Lmatch_defer_α_74_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_74_10
.Lmatch_defer_α_74_21:  xor              eax, eax
.Lmatch_defer_α_74_10:  test             rax, rax;                            je    .Lmatch_defer_α_74_15
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rdx
.Lmatch_defer_α_74_15:
.Lmatch_defer_α_74_11:  test             rax, rax;                            jz    .Lmatch_defer_α_74_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_74_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_74_4]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_74_4]
                        lea              rdx, [rip + .Lmatch_defer_α_74_5];   jmp   rax
.Lmatch_defer_α_74_4:                                                         jmp   n60_match_assign_cond_α
.Lmatch_defer_α_74_5:                                                         jmp   n58_match_assign_save_β
.Lmatch_defer_α_74_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
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
                        test             eax, eax;                            js    n58_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_74_6]
                        push             rcx
                        push             rax;                                 jmp   n60_match_assign_cond_α
.Lmatch_defer_α_74_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n58_match_assign_save_β
n59_match_defer_β:      mov              r11, 26
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_74_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_74_12
                                                                              jmp   rax
.Lmatch_defer_β_74_12:                                                        jmp   qword ptr [rsp]
                        .size            n59_match_defer_bx, .-n59_match_defer_bx
                        .type            n60_match_assign_cond_bx, @function
n60_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_match_assign_cond_α:
                        mov              r11, 27
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S9]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_55_s1
n60_match_assign_cond_β:
                        mov              r11, 27
                        sub              r12, 24;                             jmp   n59_match_defer_β
                        .size            n60_match_assign_cond_bx, .-n60_match_assign_cond_bx
                        .type            n61_match_lit_bx, @function
n61_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_match_lit_α:        mov              r11, 28
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_55_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                             jne   .Lmatch_alternate_ω_55_af
                        add              r14d, 1;                             jmp   n62_match_assign_save_α
n61_match_lit_β:        mov              r11, 28
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_55_af
                        .size            n61_match_lit_bx, .-n61_match_lit_bx
                        .type            n62_match_assign_save_bx, @function
n62_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_match_assign_save_α:
                        mov              r11, 29
                        mov              dword ptr [rbp + -48], r14d;         jmp   n63_match_defer_α
n62_match_assign_save_β:
                        mov              r11, 29;                             jmp   n61_match_lit_β
                        .size            n62_match_assign_save_bx, .-n62_match_assign_save_bx
                        .type            n63_match_defer_bx, @function
n63_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_match_defer_α:      mov              r11, 30
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_81_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_81_11
.Lmatch_defer_α_81_13:  mov              rax, qword ptr [r9 + 272]            # T
                        mov              rdx, qword ptr [r9 + 280]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_81_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_81_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 280];           jmp   .Lmatch_defer_α_81_10
.Lmatch_defer_α_81_9:   cmp              al, 88;                              jne   .Lmatch_defer_α_81_21
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
                        test             rax, rax;                            je    .Lmatch_defer_α_81_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_81_10
.Lmatch_defer_α_81_21:  xor              eax, eax
.Lmatch_defer_α_81_10:  test             rax, rax;                            je    .Lmatch_defer_α_81_15
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rdx
.Lmatch_defer_α_81_15:
.Lmatch_defer_α_81_11:  test             rax, rax;                            jz    .Lmatch_defer_α_81_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_81_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_81_4]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_81_4]
                        lea              rdx, [rip + .Lmatch_defer_α_81_5];   jmp   rax
.Lmatch_defer_α_81_4:                                                         jmp   n64_match_assign_cond_α
.Lmatch_defer_α_81_5:                                                         jmp   n62_match_assign_save_β
.Lmatch_defer_α_81_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
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
                        test             eax, eax;                            js    n62_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_81_6]
                        push             rcx
                        push             rax;                                 jmp   n64_match_assign_cond_α
.Lmatch_defer_α_81_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n62_match_assign_save_β
n63_match_defer_β:      mov              r11, 30
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_81_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_81_12
                                                                              jmp   rax
.Lmatch_defer_β_81_12:                                                        jmp   qword ptr [rsp]
                        .size            n63_match_defer_bx, .-n63_match_defer_bx
                        .type            n64_match_assign_cond_bx, @function
n64_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_match_assign_cond_α:
                        mov              r11, 31
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S10]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_55_s0
n64_match_assign_cond_β:
                        mov              r11, 31
                        sub              r12, 24;                             jmp   n63_match_defer_β
                        .size            n64_match_assign_cond_bx, .-n64_match_assign_cond_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_β:
                                                                              jmp   n55_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$4_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$5:
PAT$5_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 136
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n84_match_defer_bx, @function
n84_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_match_defer_α:      sub              rsp, 16
                        mov              r11, 32
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_95_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_95_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_95_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_95_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_95_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_95_18
.Lmatch_defer_α_95_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S11]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_95_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_95_16:
.Lmatch_defer_α_95_18:  test             rax, rax;                            jz    .Lmatch_defer_α_95_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_95_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_95_4]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_95_4]
                        lea              rdx, [rip + .Lmatch_defer_α_95_5];   jmp   rax
.Lmatch_defer_α_95_4:                                                         jmp   n85_match_alternate_α
.Lmatch_defer_α_95_5:   add              rsp, 16;                             jmp   PAT$5_ω
.Lmatch_defer_α_95_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S11]
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
                        test             eax, eax;                            jns   .Lmatch_defer_α_95_240
                        add              rsp, 16;                             jmp   PAT$5_ω
.Lmatch_defer_α_95_240: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_95_6]
                        push             rcx
                        push             rax;                                 jmp   n85_match_alternate_α
.Lmatch_defer_α_95_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$5_ω
n84_match_defer_β:      mov              r11, 32
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_95_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_95_12
                                                                              jmp   rax
.Lmatch_defer_β_95_12:                                                        jmp   qword ptr [rsp]
                        .size            n84_match_defer_bx, .-n84_match_defer_bx
                        .type            n85_match_alternate_bx, @function
n85_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_match_alternate_α:  mov              r11, 33
                        mov              dword ptr [rbp + -136], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_97_21]
                        mov              qword ptr [rbp + -120], rax;         jmp   n91_match_lit_α
.Lmatch_alternate_α_97_21:
                        lea              rax, [rip + .Lmatch_alternate_α_97_22]
                        mov              qword ptr [rbp + -120], rax;         jmp   n87_match_lit_α
.Lmatch_alternate_α_97_22:
                        lea              rax, [rip + .Lmatch_alternate_α_97_19]
                        mov              qword ptr [rbp + -120], rax;         jmp   n86_match_lit_α
.Lmatch_alternate_γ_85_s0:
                        mov              r11, 33
                        lea              rax, [rip + .Lmatch_alternate_α_97_40]
                        mov              qword ptr [rbp + -128], rax;         jmp   .Lmatch_alternate_γ_85_as
.Lmatch_alternate_γ_85_s1:
                        mov              r11, 33
                        lea              rax, [rip + .Lmatch_alternate_α_97_41]
                        mov              qword ptr [rbp + -128], rax;         jmp   .Lmatch_alternate_γ_85_as
.Lmatch_alternate_γ_85_s2:
                        mov              r11, 33
                        lea              rax, [rip + .Lmatch_alternate_α_97_42]
                        mov              qword ptr [rbp + -128], rax;         jmp   .Lmatch_alternate_γ_85_as
.Lmatch_alternate_α_97_40:
                                                                              jmp   n94_match_assign_cond_β
.Lmatch_alternate_α_97_41:
                                                                              jmp   n90_match_assign_cond_β
.Lmatch_alternate_α_97_42:
                                                                              jmp   n86_match_lit_β
.Lmatch_alternate_γ_85_as:
                        mov              r11, 33;                             jmp   PAT$5_γ
n85_match_alternate_β:  mov              r11, 33
                        mov              rax, qword ptr [rbp + -128];         jmp   rax
.Lmatch_alternate_γ_85_af:
                        mov              r11, 33
.Lmatch_alternate_ω_85_af:
                        mov              r11, 33
                        mov              r14d, dword ptr [rbp + -136]
                        mov              rax, qword ptr [rbp + -120];         jmp   rax
.Lmatch_alternate_α_97_19:
                                                                              jmp   n84_match_defer_β
                        .size            n85_match_alternate_bx, .-n85_match_alternate_bx
                        .type            n86_match_lit_bx, @function
n86_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_match_lit_α:        mov              r11, 34;                             jmp   .Lmatch_alternate_γ_85_s2
n86_match_lit_β:        mov              r11, 34;                             jmp   .Lmatch_alternate_ω_85_af
                        .size            n86_match_lit_bx, .-n86_match_lit_bx
                        .type            n87_match_lit_bx, @function
n87_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_match_lit_α:        mov              r11, 35
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_85_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   .Lmatch_alternate_ω_85_af
                        add              r14d, 1;                             jmp   n88_match_assign_save_α
n87_match_lit_β:        mov              r11, 35
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_85_af
                        .size            n87_match_lit_bx, .-n87_match_lit_bx
                        .type            n88_match_assign_save_bx, @function
n88_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_match_assign_save_α:
                        mov              r11, 36
                        mov              dword ptr [rbp + -80], r14d;         jmp   n89_match_defer_α
n88_match_assign_save_β:
                        mov              r11, 36;                             jmp   n87_match_lit_β
                        .size            n88_match_assign_save_bx, .-n88_match_assign_save_bx
                        .type            n89_match_defer_bx, @function
n89_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_match_defer_α:      mov              r11, 37
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_104_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_104_11
.Lmatch_defer_α_104_13: mov              rax, qword ptr [r9 + 288]            # X
                        mov              rdx, qword ptr [r9 + 296]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_104_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_104_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 296];           jmp   .Lmatch_defer_α_104_10
.Lmatch_defer_α_104_9:  cmp              al, 88;                              jne   .Lmatch_defer_α_104_21
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
                        test             rax, rax;                            je    .Lmatch_defer_α_104_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_104_10
.Lmatch_defer_α_104_21: xor              eax, eax
.Lmatch_defer_α_104_10: test             rax, rax;                            je    .Lmatch_defer_α_104_15
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rdx
.Lmatch_defer_α_104_15:
.Lmatch_defer_α_104_11: test             rax, rax;                            jz    .Lmatch_defer_α_104_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_104_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_104_4]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_104_4]
                        lea              rdx, [rip + .Lmatch_defer_α_104_5];  jmp   rax
.Lmatch_defer_α_104_4:                                                        jmp   n90_match_assign_cond_α
.Lmatch_defer_α_104_5:                                                        jmp   n88_match_assign_save_β
.Lmatch_defer_α_104_0:  push             r14
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
                        test             eax, eax;                            js    n88_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_104_6]
                        push             rcx
                        push             rax;                                 jmp   n90_match_assign_cond_α
.Lmatch_defer_α_104_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n88_match_assign_save_β
n89_match_defer_β:      mov              r11, 37
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_104_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_104_12
                                                                              jmp   rax
.Lmatch_defer_β_104_12:                                                       jmp   qword ptr [rsp]
                        .size            n89_match_defer_bx, .-n89_match_defer_bx
                        .type            n90_match_assign_cond_bx, @function
n90_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_match_assign_cond_α:
                        mov              r11, 38
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S12]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_85_s1
n90_match_assign_cond_β:
                        mov              r11, 38
                        sub              r12, 24;                             jmp   n89_match_defer_β
                        .size            n90_match_assign_cond_bx, .-n90_match_assign_cond_bx
                        .type            n91_match_lit_bx, @function
n91_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_match_lit_α:        mov              r11, 39
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_85_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   .Lmatch_alternate_ω_85_af
                        add              r14d, 1;                             jmp   n92_match_assign_save_α
n91_match_lit_β:        mov              r11, 39
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_85_af
                        .size            n91_match_lit_bx, .-n91_match_lit_bx
                        .type            n92_match_assign_save_bx, @function
n92_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_match_assign_save_α:
                        mov              r11, 40
                        mov              dword ptr [rbp + -48], r14d;         jmp   n93_match_defer_α
n92_match_assign_save_β:
                        mov              r11, 40;                             jmp   n91_match_lit_β
                        .size            n92_match_assign_save_bx, .-n92_match_assign_save_bx
                        .type            n93_match_defer_bx, @function
n93_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_match_defer_α:      mov              r11, 41
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_111_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_111_11
.Lmatch_defer_α_111_13: mov              rax, qword ptr [r9 + 288]            # X
                        mov              rdx, qword ptr [r9 + 296]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_111_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_111_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 296];           jmp   .Lmatch_defer_α_111_10
.Lmatch_defer_α_111_9:  cmp              al, 88;                              jne   .Lmatch_defer_α_111_21
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
                        test             rax, rax;                            je    .Lmatch_defer_α_111_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_111_10
.Lmatch_defer_α_111_21: xor              eax, eax
.Lmatch_defer_α_111_10: test             rax, rax;                            je    .Lmatch_defer_α_111_15
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rdx
.Lmatch_defer_α_111_15:
.Lmatch_defer_α_111_11: test             rax, rax;                            jz    .Lmatch_defer_α_111_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_111_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_111_4]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_111_4]
                        lea              rdx, [rip + .Lmatch_defer_α_111_5];  jmp   rax
.Lmatch_defer_α_111_4:                                                        jmp   n94_match_assign_cond_α
.Lmatch_defer_α_111_5:                                                        jmp   n92_match_assign_save_β
.Lmatch_defer_α_111_0:  push             r14
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
                        test             eax, eax;                            js    n92_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_111_6]
                        push             rcx
                        push             rax;                                 jmp   n94_match_assign_cond_α
.Lmatch_defer_α_111_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n92_match_assign_save_β
n93_match_defer_β:      mov              r11, 41
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_111_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_111_12
                                                                              jmp   rax
.Lmatch_defer_β_111_12:                                                       jmp   qword ptr [rsp]
                        .size            n93_match_defer_bx, .-n93_match_defer_bx
                        .type            n94_match_assign_cond_bx, @function
n94_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_match_assign_cond_α:
                        mov              r11, 42
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S13]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_85_s0
n94_match_assign_cond_β:
                        mov              r11, 42
                        sub              r12, 24;                             jmp   n93_match_defer_β
                        .size            n94_match_assign_cond_bx, .-n94_match_assign_cond_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_β:
                                                                              jmp   n85_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$5_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$6:
PAT$6_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 40
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n114_match_defer_bx, @function
n114_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_match_defer_α:     sub              rsp, 16
                        mov              r11, 43
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_116_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_116_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_116_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_116_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_116_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_116_18
.Lmatch_defer_α_116_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S14]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_116_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_116_16:
.Lmatch_defer_α_116_18: test             rax, rax;                            jz    .Lmatch_defer_α_116_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_116_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_116_4]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_116_4]
                        lea              rdx, [rip + .Lmatch_defer_α_116_5];  jmp   rax
.Lmatch_defer_α_116_4:                                                        jmp   n115_match_fence0_α
.Lmatch_defer_α_116_5:  add              rsp, 16;                             jmp   PAT$6_ω
.Lmatch_defer_α_116_0:  push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S14]
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
                        test             eax, eax;                            jns   .Lmatch_defer_α_116_240
                        add              rsp, 16;                             jmp   PAT$6_ω
.Lmatch_defer_α_116_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_116_6]
                        push             rcx
                        push             rax;                                 jmp   n115_match_fence0_α
.Lmatch_defer_α_116_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$6_ω
n114_match_defer_β:     mov              r11, 43
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_116_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_116_12
                                                                              jmp   rax
.Lmatch_defer_β_116_12:                                                       jmp   qword ptr [rsp]
                        .size            n114_match_defer_bx, .-n114_match_defer_bx
                        .type            n115_match_fence0_bx, @function
n115_match_fence0_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_match_fence0_α:    mov              r11, 44
                        mov              rsp, rbp
                        sub              rsp, 40;                             jmp   PAT$6_γ
n115_match_fence0_β:    mov              r11, 44;                             jmp   PAT$6_ω
                        .size            n115_match_fence0_bx, .-n115_match_fence0_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_β:
                                                                              jmp   PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$6_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$7:
PAT$7_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n119_match_pos_bx, @function
n119_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_match_pos_α:       mov              r11, 45
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$7_ω
                                                                              jmp   n120_match_arbno_α
n119_match_pos_β:       mov              r11, 45;                             jmp   PAT$7_ω
                        .size            n119_match_pos_bx, .-n119_match_pos_bx
                        .type            n120_match_arbno_bx, @function
n120_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_match_arbno_α:     mov              r11, 46
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n121_match_rpos_α
n120_match_arbno_β:     mov              r11, 46
                        mov              r12, qword ptr [rbp + -40];          jmp   n122_match_defer_α
.Lmatch_arbno_γ_120_as: mov              r11, 46
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n124_match_defer_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n121_match_rpos_α
.Lmatch_arbno_γ_120_af: mov              r11, 46
.Lmatch_arbno_ω_120_af: mov              r11, 46
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n119_match_pos_β
                        .size            n120_match_arbno_bx, .-n120_match_arbno_bx
                        .type            n121_match_rpos_bx, @function
n121_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_match_rpos_α:      mov              r11, 47
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n120_match_arbno_β
                                                                              jmp   PAT$7_γ
n121_match_rpos_β:      mov              r11, 47;                             jmp   n120_match_arbno_β
                        .size            n121_match_rpos_bx, .-n121_match_rpos_bx
                        .type            n122_match_defer_bx, @function
n122_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_match_defer_α:     mov              r11, 48
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_130_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_130_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_130_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_130_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_130_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_130_18
.Lmatch_defer_α_130_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S15]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_130_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_130_16:
.Lmatch_defer_α_130_18: test             rax, rax;                            jz    .Lmatch_defer_α_130_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_130_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_130_4]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_130_4]
                        lea              rdx, [rip + .Lmatch_defer_α_130_5];  jmp   rax
.Lmatch_defer_α_130_4:                                                        jmp   n123_match_assign_save_α
.Lmatch_defer_α_130_5:                                                        jmp   .Lmatch_arbno_ω_120_af
.Lmatch_defer_α_130_0:  push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S15]
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
                        test             eax, eax;                            js    .Lmatch_arbno_ω_120_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_130_6]
                        push             rcx
                        push             rax;                                 jmp   n123_match_assign_save_α
.Lmatch_defer_α_130_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_arbno_ω_120_af
n122_match_defer_β:     mov              r11, 48
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_130_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_130_12
                                                                              jmp   rax
.Lmatch_defer_β_130_12:                                                       jmp   qword ptr [rsp]
                        .size            n122_match_defer_bx, .-n122_match_defer_bx
                        .type            n123_match_assign_save_bx, @function
n123_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_match_assign_save_α:
                        mov              r11, 49
                        mov              dword ptr [rbp + -80], r14d;         jmp   n124_match_defer_α
n123_match_assign_save_β:
                        mov              r11, 49;                             jmp   n122_match_defer_β
                        .size            n123_match_assign_save_bx, .-n123_match_assign_save_bx
                        .type            n124_match_defer_bx, @function
n124_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_match_defer_α:     mov              r11, 50
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_133_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_133_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_133_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_133_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_133_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_133_18
.Lmatch_defer_α_133_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_133_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_133_16:
.Lmatch_defer_α_133_18: test             rax, rax;                            jz    .Lmatch_defer_α_133_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_133_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_133_4]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_133_4]
                        lea              rdx, [rip + .Lmatch_defer_α_133_5];  jmp   rax
.Lmatch_defer_α_133_4:                                                        jmp   n125_match_assign_cond_α
.Lmatch_defer_α_133_5:                                                        jmp   n123_match_assign_save_β
.Lmatch_defer_α_133_0:  push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S16]
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
                        test             eax, eax;                            js    n123_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_133_6]
                        push             rcx
                        push             rax;                                 jmp   n125_match_assign_cond_α
.Lmatch_defer_α_133_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n123_match_assign_save_β
n124_match_defer_β:     mov              r11, 50
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_133_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_133_12
                                                                              jmp   rax
.Lmatch_defer_β_133_12:                                                       jmp   qword ptr [rsp]
                        .size            n124_match_defer_bx, .-n124_match_defer_bx
                        .type            n125_match_assign_cond_bx, @function
n125_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_match_assign_cond_α:
                        mov              r11, 51
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S17]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_arbno_γ_120_as
n125_match_assign_cond_β:
                        mov              r11, 51
                        sub              r12, 24;                             jmp   n124_match_defer_β
                        .size            n125_match_assign_cond_bx, .-n125_match_assign_cond_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_β:
                                                                              jmp   n121_match_rpos_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$7_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 32
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 32
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 11
                        call             rt_label_table_install@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
                        .section         .rodata
.Lgvan0:                .string          "EMIT"
.Lgvan1:                .string          "PSH"
.Lgvan2:                .string          "DRF"
.Lgvan3:                .string          "nm"
.Lgvan4:                .string          "ADD"
.Lgvan5:                .string          "SUB"
.Lgvan6:                .string          "MUL"
.Lgvan7:                .string          "DIV"
.Lgvan8:                .string          "NEG"
.Lgvan9:                .string          "S"
.Lgvan10:               .string          "sp"
.Lgvan11:               .string          "dm"
.Lgvan12:               .string          "vars"
.Lgvan13:               .string          "V"
.Lgvan14:               .string          "I"
.Lgvan15:               .string          "A"
.Lgvan16:               .string          "F"
.Lgvan17:               .string          "T"
.Lgvan18:               .string          "X"
.Lgvan19:               .string          "eol"
.Lgvan20:               .string          "C"
.Lgvan21:               .string          "src"
.Lgvan22:               .string          "t0"
.Lgvan23:               .string          "t1"
.Lgvan24:               .string          "PAT$2$V0"
.Lgvan25:               .string          "PAT$2$V1"
.Lgvan26:               .string          "PAT$3$V0"
.Lgvan27:               .string          "PAT$4$V0"
.Lgvan28:               .string          "PAT$5$V0"
.Lgvan29:               .string          "PAT$6$V0"
.Lgvan30:               .string          "PAT$7$V0"
.Lgvan31:               .string          "PAT$7$V1"
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
                        .quad            .Lgvan14
                        .quad            .Lgvan15
                        .quad            .Lgvan16
                        .quad            .Lgvan17
                        .quad            .Lgvan18
                        .quad            .Lgvan19
                        .quad            .Lgvan20
                        .quad            .Lgvan21
                        .quad            .Lgvan22
                        .quad            .Lgvan23
                        .quad            .Lgvan24
                        .quad            .Lgvan25
                        .quad            .Lgvan26
                        .quad            .Lgvan27
                        .quad            .Lgvan28
                        .quad            .Lgvan29
                        .quad            .Lgvan30
                        .quad            .Lgvan31
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "EMIT"
.Llbln1:                .string          "PSH"
.Llbln2:                .string          "DRF"
.Llbln3:                .string          "ADD"
.Llbln4:                .string          "SUB"
.Llbln5:                .string          "MUL"
.Llbln6:                .string          "DIV"
.Llbln7:                .string          "NEG"
.Llbln8:                .string          "FNS_end"
.Llbln9:                .string          "bad"
.Llbln10:               .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .quad            .Llbln2
                        .quad            .Llbln3
                        .quad            .Llbln4
                        .quad            .Llbln5
                        .quad            .Llbln6
                        .quad            .Llbln7
                        .quad            .Llbln8
                        .quad            .Llbln9
                        .quad            .Llbln10
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
                        .type            n136_statement_begin_bx, @function
n136_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('EMIT()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n136_statement_begin_α: mov              r11, 52
                        mov              r10, 1;                              jmp   n137_define_α
n136_statement_begin_β: mov              r11, 52;                             jmp   n139_statement_begin_α
                        .size            n136_statement_begin_bx, .-n136_statement_begin_bx
                        .type            n137_define_bx, @function
n137_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_define_α:          mov              r11, 53
                        mov              rdi, qword ptr [rip + .Ldefine_α_487_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_487_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + EMIT_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_487_0]
                        lea              rsi, [rip + EMIT_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n138_statement_end_α
n137_define_β:          mov              r11, 53;                             jmp   n136_statement_begin_β
.Ldefine_α_487_0:       .quad            .Ldefine_α_487_0_s
.Ldefine_α_487_0_s:     .string          "EMIT"
.Ldefine_α_487_1:       .quad            .Ldefine_α_487_1_s
.Ldefine_α_487_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_488_245
#-----------------------------------------------------------------------------------------------------------------------
EMIT_α:                 sub              rsp, 48
                        mov              rax, qword ptr [r9 + 0]              # EMIT
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_488_230
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_488_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_488_230:                                                           jmp   .Ldefine_α_488_231
.Ldefine_α_488_232:     .quad            .Ldefine_α_488_232_s
.Ldefine_α_488_232_s:   .string          "EMIT"
.Ldefine_α_488_231:     lea              rcx, [rip + EMIT_γ]
                        lea              rax, [rip + EMIT_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + LBL__EMIT];              jmp   rax
EMIT_γ:                 mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_488_235
                        push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_488_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_488_235:                                                           jmp   .Ldefine_α_488_236
.Ldefine_α_488_237:     .quad            .Ldefine_α_488_237_s
.Ldefine_α_488_237_s:   .string          "EMIT"
.Ldefine_α_488_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48;                             jmp   rcx
EMIT_ω:                 mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_488_245:
                        .size            n137_define_bx, .-n137_define_bx
                        .type            n138_statement_end_bx, @function
n138_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_end_α:   mov              r11, 54
                        mov              r10, 1;                              jmp   n139_statement_begin_α
                        .size            n138_statement_end_bx, .-n138_statement_end_bx
                        .type            n139_statement_begin_bx, @function
n139_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('PSH()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n139_statement_begin_α: mov              r11, 55
                        mov              r10, 2;                              jmp   n140_define_α
n139_statement_begin_β: mov              r11, 55;                             jmp   n142_statement_begin_α
                        .size            n139_statement_begin_bx, .-n139_statement_begin_bx
                        .type            n140_define_bx, @function
n140_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_define_α:          mov              r11, 56
                        mov              rdi, qword ptr [rip + .Ldefine_α_494_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_494_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + PSH_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_494_0]
                        lea              rsi, [rip + PSH_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n141_statement_end_α
n140_define_β:          mov              r11, 56;                             jmp   n139_statement_begin_β
.Ldefine_α_494_0:       .quad            .Ldefine_α_494_0_s
.Ldefine_α_494_0_s:     .string          "PSH"
.Ldefine_α_494_1:       .quad            .Ldefine_α_494_1_s
.Ldefine_α_494_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_495_245
#-----------------------------------------------------------------------------------------------------------------------
PSH_α:                  sub              rsp, 48
                        mov              rax, qword ptr [r9 + 16]             # PSH
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_495_230
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_495_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_495_230:                                                           jmp   .Ldefine_α_495_231
.Ldefine_α_495_232:     .quad            .Ldefine_α_495_232_s
.Ldefine_α_495_232_s:   .string          "PSH"
.Ldefine_α_495_231:     lea              rcx, [rip + PSH_γ]
                        lea              rax, [rip + PSH_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + LBL__PSH];               jmp   rax
PSH_γ:                  mov              rdi, qword ptr [r9 + 16]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_495_235
                        push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_495_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_495_235:                                                           jmp   .Ldefine_α_495_236
.Ldefine_α_495_237:     .quad            .Ldefine_α_495_237_s
.Ldefine_α_495_237_s:   .string          "PSH"
.Ldefine_α_495_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48;                             jmp   rcx
PSH_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_495_245:
                        .size            n140_define_bx, .-n140_define_bx
                        .type            n141_statement_end_bx, @function
n141_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:   mov              r11, 57
                        mov              r10, 2;                              jmp   n142_statement_begin_α
                        .size            n141_statement_end_bx, .-n141_statement_end_bx
                        .type            n142_statement_begin_bx, @function
n142_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('DRF(nm)')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n142_statement_begin_α: mov              r11, 58
                        mov              r10, 3;                              jmp   n143_define_α
n142_statement_begin_β: mov              r11, 58;                             jmp   n145_statement_begin_α
                        .size            n142_statement_begin_bx, .-n142_statement_begin_bx
                        .type            n143_define_bx, @function
n143_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_define_α:          mov              r11, 59
                        mov              rdi, qword ptr [rip + .Ldefine_α_501_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_501_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + DRF_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_501_0]
                        lea              rsi, [rip + DRF_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n144_statement_end_α
n143_define_β:          mov              r11, 59;                             jmp   n142_statement_begin_β
.Ldefine_α_501_0:       .quad            .Ldefine_α_501_0_s
.Ldefine_α_501_0_s:     .string          "DRF"
.Ldefine_α_501_1:       .quad            .Ldefine_α_501_1_s
.Ldefine_α_501_1_s:     .string          "nm"
                                                                              jmp   .Ldefine_α_502_245
#-----------------------------------------------------------------------------------------------------------------------
DRF_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 32]             # DRF
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_502_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # nm
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_502_41
.Ldefine_α_502_10:      mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Ldefine_α_502_41:      mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_502_230
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_502_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_502_230:                                                           jmp   .Ldefine_α_502_231
.Ldefine_α_502_232:     .quad            .Ldefine_α_502_232_s
.Ldefine_α_502_232_s:   .string          "DRF"
.Ldefine_α_502_231:     lea              rcx, [rip + DRF_γ]
                        lea              rax, [rip + DRF_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + LBL__DRF];               jmp   rax
DRF_γ:                  mov              rdi, qword ptr [r9 + 32]             # DRF
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_502_235
                        push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_502_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_502_235:                                                           jmp   .Ldefine_α_502_236
.Ldefine_α_502_237:     .quad            .Ldefine_α_502_237_s
.Ldefine_α_502_237_s:   .string          "DRF"
.Ldefine_α_502_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_502_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Ldefine_α_502_110
.Ldefine_α_502_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Ldefine_α_502_110:     mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64;                             jmp   rcx
DRF_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_502_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Ldefine_α_502_180
.Ldefine_α_502_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Ldefine_α_502_180:     mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_502_245:
                        .size            n143_define_bx, .-n143_define_bx
                        .type            n144_statement_end_bx, @function
n144_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_end_α:   mov              r11, 60
                        mov              r10, 3;                              jmp   n145_statement_begin_α
                        .size            n144_statement_end_bx, .-n144_statement_end_bx
                        .type            n145_statement_begin_bx, @function
n145_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('ADD()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n145_statement_begin_α: mov              r11, 61
                        mov              r10, 4;                              jmp   n146_define_α
n145_statement_begin_β: mov              r11, 61;                             jmp   n148_statement_begin_α
                        .size            n145_statement_begin_bx, .-n145_statement_begin_bx
                        .type            n146_define_bx, @function
n146_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_define_α:          mov              r11, 62
                        mov              rdi, qword ptr [rip + .Ldefine_α_508_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_508_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + ADD_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_508_0]
                        lea              rsi, [rip + ADD_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n147_statement_end_α
n146_define_β:          mov              r11, 62;                             jmp   n145_statement_begin_β
.Ldefine_α_508_0:       .quad            .Ldefine_α_508_0_s
.Ldefine_α_508_0_s:     .string          "ADD"
.Ldefine_α_508_1:       .quad            .Ldefine_α_508_1_s
.Ldefine_α_508_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_509_245
#-----------------------------------------------------------------------------------------------------------------------
ADD_α:                  sub              rsp, 48
                        mov              rax, qword ptr [r9 + 64]             # ADD
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_509_230
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_509_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_509_230:                                                           jmp   .Ldefine_α_509_231
.Ldefine_α_509_232:     .quad            .Ldefine_α_509_232_s
.Ldefine_α_509_232_s:   .string          "ADD"
.Ldefine_α_509_231:     lea              rcx, [rip + ADD_γ]
                        lea              rax, [rip + ADD_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + LBL__ADD];               jmp   rax
ADD_γ:                  mov              rdi, qword ptr [r9 + 64]
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_509_235
                        push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_509_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_509_235:                                                           jmp   .Ldefine_α_509_236
.Ldefine_α_509_237:     .quad            .Ldefine_α_509_237_s
.Ldefine_α_509_237_s:   .string          "ADD"
.Ldefine_α_509_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48;                             jmp   rcx
ADD_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_509_245:
                        .size            n146_define_bx, .-n146_define_bx
                        .type            n147_statement_end_bx, @function
n147_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_end_α:   mov              r11, 63
                        mov              r10, 4;                              jmp   n148_statement_begin_α
                        .size            n147_statement_end_bx, .-n147_statement_end_bx
                        .type            n148_statement_begin_bx, @function
n148_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('SUB()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n148_statement_begin_α: mov              r11, 64
                        mov              r10, 5;                              jmp   n149_define_α
n148_statement_begin_β: mov              r11, 64;                             jmp   n151_statement_begin_α
                        .size            n148_statement_begin_bx, .-n148_statement_begin_bx
                        .type            n149_define_bx, @function
n149_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_define_α:          mov              r11, 65
                        mov              rdi, qword ptr [rip + .Ldefine_α_515_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_515_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + SUB_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_515_0]
                        lea              rsi, [rip + SUB_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n150_statement_end_α
n149_define_β:          mov              r11, 65;                             jmp   n148_statement_begin_β
.Ldefine_α_515_0:       .quad            .Ldefine_α_515_0_s
.Ldefine_α_515_0_s:     .string          "SUB"
.Ldefine_α_515_1:       .quad            .Ldefine_α_515_1_s
.Ldefine_α_515_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_516_245
#-----------------------------------------------------------------------------------------------------------------------
SUB_α:                  sub              rsp, 48
                        mov              rax, qword ptr [r9 + 80]             # SUB
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_516_230
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_516_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_516_230:                                                           jmp   .Ldefine_α_516_231
.Ldefine_α_516_232:     .quad            .Ldefine_α_516_232_s
.Ldefine_α_516_232_s:   .string          "SUB"
.Ldefine_α_516_231:     lea              rcx, [rip + SUB_γ]
                        lea              rax, [rip + SUB_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + LBL__SUB];               jmp   rax
SUB_γ:                  mov              rdi, qword ptr [r9 + 80]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_516_235
                        push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_516_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_516_235:                                                           jmp   .Ldefine_α_516_236
.Ldefine_α_516_237:     .quad            .Ldefine_α_516_237_s
.Ldefine_α_516_237_s:   .string          "SUB"
.Ldefine_α_516_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 88], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48;                             jmp   rcx
SUB_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 88], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_516_245:
                        .size            n149_define_bx, .-n149_define_bx
                        .type            n150_statement_end_bx, @function
n150_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:   mov              r11, 66
                        mov              r10, 5;                              jmp   n151_statement_begin_α
                        .size            n150_statement_end_bx, .-n150_statement_end_bx
                        .type            n151_statement_begin_bx, @function
n151_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('MUL()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n151_statement_begin_α: mov              r11, 67
                        mov              r10, 6;                              jmp   n152_define_α
n151_statement_begin_β: mov              r11, 67;                             jmp   n154_statement_begin_α
                        .size            n151_statement_begin_bx, .-n151_statement_begin_bx
                        .type            n152_define_bx, @function
n152_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_define_α:          mov              r11, 68
                        mov              rdi, qword ptr [rip + .Ldefine_α_522_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_522_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + MUL_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_522_0]
                        lea              rsi, [rip + MUL_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n153_statement_end_α
n152_define_β:          mov              r11, 68;                             jmp   n151_statement_begin_β
.Ldefine_α_522_0:       .quad            .Ldefine_α_522_0_s
.Ldefine_α_522_0_s:     .string          "MUL"
.Ldefine_α_522_1:       .quad            .Ldefine_α_522_1_s
.Ldefine_α_522_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_523_245
#-----------------------------------------------------------------------------------------------------------------------
MUL_α:                  sub              rsp, 48
                        mov              rax, qword ptr [r9 + 96]             # MUL
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 96], 0
                        mov              qword ptr [r9 + 104], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_523_230
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_523_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_523_230:                                                           jmp   .Ldefine_α_523_231
.Ldefine_α_523_232:     .quad            .Ldefine_α_523_232_s
.Ldefine_α_523_232_s:   .string          "MUL"
.Ldefine_α_523_231:     lea              rcx, [rip + MUL_γ]
                        lea              rax, [rip + MUL_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + LBL__MUL];               jmp   rax
MUL_γ:                  mov              rdi, qword ptr [r9 + 96]
                        mov              rsi, qword ptr [r9 + 104]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_523_235
                        push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_523_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_523_235:                                                           jmp   .Ldefine_α_523_236
.Ldefine_α_523_237:     .quad            .Ldefine_α_523_237_s
.Ldefine_α_523_237_s:   .string          "MUL"
.Ldefine_α_523_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48;                             jmp   rcx
MUL_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_523_245:
                        .size            n152_define_bx, .-n152_define_bx
                        .type            n153_statement_end_bx, @function
n153_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:   mov              r11, 69
                        mov              r10, 6;                              jmp   n154_statement_begin_α
                        .size            n153_statement_end_bx, .-n153_statement_end_bx
                        .type            n154_statement_begin_bx, @function
n154_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('DIV()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n154_statement_begin_α: mov              r11, 70
                        mov              r10, 7;                              jmp   n155_define_α
n154_statement_begin_β: mov              r11, 70;                             jmp   n157_statement_begin_α
                        .size            n154_statement_begin_bx, .-n154_statement_begin_bx
                        .type            n155_define_bx, @function
n155_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_define_α:          mov              r11, 71
                        mov              rdi, qword ptr [rip + .Ldefine_α_529_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_529_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + DIV_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_529_0]
                        lea              rsi, [rip + DIV_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n156_statement_end_α
n155_define_β:          mov              r11, 71;                             jmp   n154_statement_begin_β
.Ldefine_α_529_0:       .quad            .Ldefine_α_529_0_s
.Ldefine_α_529_0_s:     .string          "DIV"
.Ldefine_α_529_1:       .quad            .Ldefine_α_529_1_s
.Ldefine_α_529_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_530_245
#-----------------------------------------------------------------------------------------------------------------------
DIV_α:                  sub              rsp, 48
                        mov              rax, qword ptr [r9 + 112]            # DIV
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_530_230
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_530_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_530_230:                                                           jmp   .Ldefine_α_530_231
.Ldefine_α_530_232:     .quad            .Ldefine_α_530_232_s
.Ldefine_α_530_232_s:   .string          "DIV"
.Ldefine_α_530_231:     lea              rcx, [rip + DIV_γ]
                        lea              rax, [rip + DIV_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + LBL__DIV];               jmp   rax
DIV_γ:                  mov              rdi, qword ptr [r9 + 112]
                        mov              rsi, qword ptr [r9 + 120]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_530_235
                        push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_530_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_530_235:                                                           jmp   .Ldefine_α_530_236
.Ldefine_α_530_237:     .quad            .Ldefine_α_530_237_s
.Ldefine_α_530_237_s:   .string          "DIV"
.Ldefine_α_530_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48;                             jmp   rcx
DIV_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_530_245:
                        .size            n155_define_bx, .-n155_define_bx
                        .type            n156_statement_end_bx, @function
n156_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:   mov              r11, 72
                        mov              r10, 7;                              jmp   n157_statement_begin_α
                        .size            n156_statement_end_bx, .-n156_statement_end_bx
                        .type            n157_statement_begin_bx, @function
n157_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('NEG()')                         :(FNS_end)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n157_statement_begin_α: mov              r11, 73
                        mov              r10, 8;                              jmp   n158_define_α
n157_statement_begin_β: mov              r11, 73;                             jmp   n321_statement_begin_α
                        .size            n157_statement_begin_bx, .-n157_statement_begin_bx
                        .type            n158_define_bx, @function
n158_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_define_α:          mov              r11, 74
                        mov              rdi, qword ptr [rip + .Ldefine_α_536_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_536_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + NEG_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_536_0]
                        lea              rsi, [rip + NEG_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n159_statement_end_α
n158_define_β:          mov              r11, 74;                             jmp   n157_statement_begin_β
.Ldefine_α_536_0:       .quad            .Ldefine_α_536_0_s
.Ldefine_α_536_0_s:     .string          "NEG"
.Ldefine_α_536_1:       .quad            .Ldefine_α_536_1_s
.Ldefine_α_536_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_537_245
#-----------------------------------------------------------------------------------------------------------------------
NEG_α:                  sub              rsp, 48
                        mov              rax, qword ptr [r9 + 128]            # NEG
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_537_230
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_537_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_537_230:                                                           jmp   .Ldefine_α_537_231
.Ldefine_α_537_232:     .quad            .Ldefine_α_537_232_s
.Ldefine_α_537_232_s:   .string          "NEG"
.Ldefine_α_537_231:     lea              rcx, [rip + NEG_γ]
                        lea              rax, [rip + NEG_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + LBL__NEG];               jmp   rax
NEG_γ:                  mov              rdi, qword ptr [r9 + 128]
                        mov              rsi, qword ptr [r9 + 136]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_537_235
                        push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_537_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_537_235:                                                           jmp   .Ldefine_α_537_236
.Ldefine_α_537_237:     .quad            .Ldefine_α_537_237_s
.Ldefine_α_537_237_s:   .string          "NEG"
.Ldefine_α_537_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48;                             jmp   rcx
NEG_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_537_245:
                        .size            n158_define_bx, .-n158_define_bx
                        .type            n159_statement_end_bx, @function
n159_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   mov              r11, 75
                        mov              r10, 8;                              jmp   n321_statement_begin_α
                        .size            n159_statement_end_bx, .-n159_statement_end_bx
                        .type            n160_statement_begin_bx, @function
n160_statement_begin_bx:
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
LBL__EMIT:              mov              r11, 76
                        mov              r10, 9;                              jmp   n161_var_α
n160_statement_begin_β: mov              r11, 76;                             jmp   n168_statement_begin_α
                        .size            n160_statement_begin_bx, .-n160_statement_begin_bx
                        .type            n161_var_bx, @function
n161_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             sub              rsp, 16
                        mov              r11, 77
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n162_lit_integer_α
                        .size            n161_var_bx, .-n161_var_bx
                        .type            n162_lit_integer_bx, @function
n162_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:     sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_543_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n163_subscript_α
n162_lit_integer_β:     mov              r11, 78
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n160_statement_begin_β
.Llit_integer_α_543_0:  .quad            1
                        .size            n162_lit_integer_bx, .-n162_lit_integer_bx
                        .type            n163_subscript_bx, @function
n163_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_subscript_α:       sub              rsp, 16
                        mov              r11, 79
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_544_240
                        add              rsp, 16;                             jmp   n162_lit_integer_β
.Lsubscript_α_544_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n164_deref_α
n163_subscript_β:       mov              r11, 79
                        add              rsp, 16;                             jmp   n162_lit_integer_β
                        .size            n163_subscript_bx, .-n163_subscript_bx
                        .type            n164_deref_bx, @function
n164_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_deref_α:           sub              rsp, 16
                        mov              r11, 80
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_545_240
                        add              rsp, 16;                             jmp   n163_subscript_β
.Lderef_α_545_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_call_α
n164_deref_β:           mov              r11, 80
                        add              rsp, 16;                             jmp   n163_subscript_β
                        .size            n164_deref_bx, .-n164_deref_bx
                        .type            n165_call_bx, @function
n165_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_call_α:            sub              rsp, 16
                        mov              r11, 81
                        lea              rcx, [rip + .Lcall_α_sig547z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig547z:       .quad            1
                        .quad            .Lcall_α_547_2
                        .quad            .Lcall_α_547_2
                        .quad            16
.Lcall_α_547_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_547_29
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
.Lcall_α_547_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_547_240
                        add              rsp, 16;                             jmp   n164_deref_β
.Lcall_α_547_240:                                                             jmp   n166_assign_α
n165_call_β:            mov              r11, 81;                             jmp   n164_deref_β
.Lcall_β_547_0:         .quad            .Lcall_β_547_0_s
.Lcall_β_547_0_s:       .string          "DRF"
                        .size            n165_call_bx, .-n165_call_bx
                        .type            n166_assign_bx, @function
n166_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_assign_α:          mov              r11, 82
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_548_0]
                        .section         .rodata
.Lassign_α_548_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_548_1_s]
                        mov              r8, 9
                        mov              r9, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_548_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n167_statement_end_α
.Lassign_α_548_0:       .quad            .Lassign_α_548_0_s
.Lassign_α_548_0_s:     .string          "OUTPUT"
                        .size            n166_assign_bx, .-n166_assign_bx
                        .type            n167_statement_end_bx, @function
n167_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:   mov              r11, 83
                        mov              r10, 9
                        add              rsp, 80;                             jmp   n168_statement_begin_α
                        .size            n167_statement_end_bx, .-n167_statement_end_bx
                        .type            n168_statement_begin_bx, @function
n168_statement_begin_bx:
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n168_statement_begin_α: mov              r11, 84
                        mov              r10, 10;                             jmp   n169_lit_integer_α
n168_statement_begin_β: mov              r11, 84;                             jmp   n172_statement_begin_α
                        .size            n168_statement_begin_bx, .-n168_statement_begin_bx
                        .type            n169_lit_integer_bx, @function
n169_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_553_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n170_assign_α
.Llit_integer_α_553_0:  .quad            0
                        .size            n169_lit_integer_bx, .-n169_lit_integer_bx
                        .type            n170_assign_bx, @function
n170_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_assign_α:          mov              r11, 86
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_554_0]
                        .section         .rodata
.Lassign_α_554_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_554_1_s]
                        mov              r8, 10
                        mov              r9, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n171_statement_end_α
.Lassign_α_554_0:       .quad            .Lassign_α_554_0_s
.Lassign_α_554_0_s:     .string          "sp"
                        .size            n170_assign_bx, .-n170_assign_bx
                        .type            n171_statement_end_bx, @function
n171_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_end_α:   mov              r11, 87
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n172_statement_begin_α
                        .size            n171_statement_end_bx, .-n171_statement_end_bx
                        .type            n172_statement_begin_bx, @function
n172_statement_begin_bx:
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n172_statement_begin_α: mov              r11, 88
                        mov              r10, 11;                             jmp   n173_lit_name_α
n172_statement_begin_β: mov              r11, 88;                             jmp   NRETURN
                        .size            n172_statement_begin_bx, .-n172_statement_begin_bx
                        .type            n173_lit_name_bx, @function
n173_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_name_α:        sub              rsp, 16
                        mov              r11, 89
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_559_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n174_assign_α
.Llit_name_α_559_0:     .quad            .Llit_name_α_559_0_s
.Llit_name_α_559_0_s:   .string          "dm"
                        .size            n173_lit_name_bx, .-n173_lit_name_bx
                        .type            n174_assign_bx, @function
n174_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_assign_α:          mov              r11, 90
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # EMIT
                        mov              qword ptr [r9 + 8], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_560_0]
                        .section         .rodata
.Lassign_α_560_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_560_1_s]
                        mov              r8, 11
                        mov              r9, 11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n175_statement_end_α
.Lassign_α_560_0:       .quad            .Lassign_α_560_0_s
.Lassign_α_560_0_s:     .string          "EMIT"
                        .size            n174_assign_bx, .-n174_assign_bx
                        .type            n175_statement_end_bx, @function
n175_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:   mov              r11, 91
                        mov              r10, 11
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n175_statement_end_bx, .-n175_statement_end_bx
                        .type            n176_statement_begin_bx, @function
n176_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_begin_α: mov              r11, 92
                        mov              r10, 0;                              jmp   n177_statement_end_α
n176_statement_begin_β: mov              r11, 92;                             jmp   LBL__PSH
                        .size            n176_statement_begin_bx, .-n176_statement_begin_bx
                        .type            n177_statement_end_bx, @function
n177_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:   mov              r11, 93
                        mov              r10, 12;                             jmp   LBL__PSH
                        .size            n177_statement_end_bx, .-n177_statement_end_bx
                        .type            n178_statement_begin_bx, @function
n178_statement_begin_bx:
#=======================================================================================================================
# PSH     PSH = .S[sp = sp + 1]                   :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
LBL__PSH:               mov              r11, 94
                        mov              r10, 13;                             jmp   n179_var_α
n178_statement_begin_β: mov              r11, 94;                             jmp   NRETURN
                        .size            n178_statement_begin_bx, .-n178_statement_begin_bx
                        .type            n179_var_bx, @function
n179_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             sub              rsp, 16
                        mov              r11, 95
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_var_α
                        .size            n179_var_bx, .-n179_var_bx
                        .type            n180_var_bx, @function
n180_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             sub              rsp, 16
                        mov              r11, 96
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n181_lit_integer_α
n180_var_β:             mov              r11, 96
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n178_statement_begin_β
                        .size            n180_var_bx, .-n180_var_bx
                        .type            n181_lit_integer_bx, @function
n181_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:     sub              rsp, 16
                        mov              r11, 97
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_571_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n182_binop_α
n181_lit_integer_β:     mov              r11, 97
                        add              rsp, 16;                             jmp   n180_var_β
.Llit_integer_α_571_0:  .quad            1
                        .size            n181_lit_integer_bx, .-n181_lit_integer_bx
                        .type            n182_binop_bx, @function
n182_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_binop_α:           sub              rsp, 16
                        mov              r11, 98
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_572_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_572_7
.Lbinop_α_572_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_572_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_572_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_572_4
.Lbinop_α_572_3:        movq             xmm0, rsi
.Lbinop_α_572_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_572_7:                                                              jmp   n183_assign_α
.Lbinop_α_572_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_572_240
                        add              rsp, 16;                             jmp   n181_lit_integer_β
.Lbinop_α_572_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n183_assign_α
n182_binop_β:           mov              r11, 98
                        add              rsp, 16;                             jmp   n181_lit_integer_β
                        .size            n182_binop_bx, .-n182_binop_bx
                        .type            n183_assign_bx, @function
n183_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_assign_α:          mov              r11, 99
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_573_0]
                        .section         .rodata
.Lassign_α_573_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_573_1_s]
                        mov              r8, 13
                        mov              r9, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n184_subscript_α
.Lassign_α_573_0:       .quad            .Lassign_α_573_0_s
.Lassign_α_573_0_s:     .string          "sp"
                        .size            n183_assign_bx, .-n183_assign_bx
                        .type            n184_subscript_bx, @function
n184_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_subscript_α:       sub              rsp, 16
                        mov              r11, 100
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # assign
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_574_240
                        add              rsp, 16;                             jmp   n182_binop_β
.Lsubscript_α_574_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_assign_α
                        .size            n184_subscript_bx, .-n184_subscript_bx
                        .type            n185_assign_bx, @function
n185_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:          mov              r11, 101
                        mov              rax, qword ptr [rsp + 0]             # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # PSH
                        mov              qword ptr [r9 + 24], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_575_0]
                        .section         .rodata
.Lassign_α_575_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_575_1_s]
                        mov              r8, 13
                        mov              r9, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n186_statement_end_α
.Lassign_α_575_0:       .quad            .Lassign_α_575_0_s
.Lassign_α_575_0_s:     .string          "PSH"
                        .size            n185_assign_bx, .-n185_assign_bx
                        .type            n186_statement_end_bx, @function
n186_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_end_α:   mov              r11, 102
                        mov              r10, 13
                        add              rsp, 80;                             jmp   NRETURN
                        .size            n186_statement_end_bx, .-n186_statement_end_bx
                        .type            n187_statement_begin_bx, @function
n187_statement_begin_bx:
#=======================================================================================================================
# DRF     DRF = nm
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
LBL__DRF:               mov              r11, 103
                        mov              r10, 14;                             jmp   n188_var_α
n187_statement_begin_β: mov              r11, 103;                            jmp   n191_statement_begin_α
                        .size            n187_statement_begin_bx, .-n187_statement_begin_bx
                        .type            n188_var_bx, @function
n188_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:             sub              rsp, 16
                        mov              r11, 104
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_assign_α
                        .size            n188_var_bx, .-n188_var_bx
                        .type            n189_assign_bx, @function
n189_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_α:          mov              r11, 105
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_581_0]
                        .section         .rodata
.Lassign_α_581_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_581_1_s]
                        mov              r8, 14
                        mov              r9, 14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n190_statement_end_α
.Lassign_α_581_0:       .quad            .Lassign_α_581_0_s
.Lassign_α_581_0_s:     .string          "DRF"
                        .size            n189_assign_bx, .-n189_assign_bx
                        .type            n190_statement_end_bx, @function
n190_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:   mov              r11, 106
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n191_statement_begin_α
                        .size            n190_statement_end_bx, .-n190_statement_end_bx
                        .type            n191_statement_begin_bx, @function
n191_statement_begin_bx:
#=======================================================================================================================
#         nm ? POS(0) ANY(&LCASE) RPOS(0)         :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n191_statement_begin_α: mov              r11, 107
                        mov              r10, 15;                             jmp   n192_var_α
n191_statement_begin_β: mov              r11, 107;                            jmp   RETURN
                        .size            n191_statement_begin_bx, .-n191_statement_begin_bx
                        .type            n192_var_bx, @function
n192_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:             sub              rsp, 16
                        mov              r11, 108
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n193_match_begin_α
                        .size            n192_var_bx, .-n192_var_bx
                        .type            n193_match_begin_bx, @function
n193_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_match_begin_α:     mov              r11, 109
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
.Lmatch_begin_α_588_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_588_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n194_match_pos_α
n193_match_begin_β:     mov              r11, 109
.Lmatch_begin_α_588_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_588_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_588_1
                                                                              jmp   .Lmatch_begin_α_588_0
.Lmatch_begin_β_588_1:
.Lmatch_begin_γ_193_af: mov              r11, 109
.Lmatch_begin_ω_193_af: mov              r11, 109
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
                        add              rsp, 16;                             jmp   RETURN
                        .size            n193_match_begin_bx, .-n193_match_begin_bx
                        .type            n194_match_pos_bx, @function
n194_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_match_pos_α:       mov              r11, 110
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n193_match_begin_β
                                                                              jmp   n195_match_any_α
n194_match_pos_β:       mov              r11, 110;                            jmp   n193_match_begin_β
                        .size            n194_match_pos_bx, .-n194_match_pos_bx
                        .type            n195_match_any_bx, @function
n195_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_match_any_α:       mov              r11, 111
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n193_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n193_match_begin_β
                        add              r14d, 1;                             jmp   n196_match_rpos_α
n195_match_any_β:       mov              r11, 111
                        sub              r14d, 1;                             jmp   n193_match_begin_β
                        .size            n195_match_any_bx, .-n195_match_any_bx
                        .type            n196_match_rpos_bx, @function
n196_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_match_rpos_α:      mov              r11, 112
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n195_match_any_β
                                                                              jmp   n197_match_end_α
                        .size            n196_match_rpos_bx, .-n196_match_rpos_bx
                        .type            n197_match_end_bx, @function
n197_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_match_end_α:       mov              r11, 113
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
                        test             rax, rax;                            je    .Lmatch_end_α_594_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_193_af
.Lmatch_end_α_594_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n198_statement_end_α
                        .size            n197_match_end_bx, .-n197_match_end_bx
                        .type            n198_statement_end_bx, @function
n198_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_end_α:   mov              r11, 114
                        mov              r10, 15
                        add              rsp, 16;                             jmp   n199_statement_begin_α
                        .size            n198_statement_end_bx, .-n198_statement_end_bx
                        .type            n199_statement_begin_bx, @function
n199_statement_begin_bx:
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n199_statement_begin_α: mov              r11, 115
                        mov              r10, 16;                             jmp   n200_var_α
n199_statement_begin_β: mov              r11, 115;                            jmp   RETURN
                        .size            n199_statement_begin_bx, .-n199_statement_begin_bx
                        .type            n200_var_bx, @function
n200_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:             sub              rsp, 16
                        mov              r11, 116
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_var_α
                        .size            n200_var_bx, .-n200_var_bx
                        .type            n201_var_bx, @function
n201_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             sub              rsp, 16
                        mov              r11, 117
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_subscript_α
n201_var_β:             mov              r11, 117
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n199_statement_begin_β
                        .size            n201_var_bx, .-n201_var_bx
                        .type            n202_subscript_bx, @function
n202_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_subscript_α:       sub              rsp, 16
                        mov              r11, 118
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_601_240
                        add              rsp, 16;                             jmp   n201_var_β
.Lsubscript_α_601_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_deref_α
n202_subscript_β:       mov              r11, 118
                        add              rsp, 16;                             jmp   n201_var_β
                        .size            n202_subscript_bx, .-n202_subscript_bx
                        .type            n203_deref_bx, @function
n203_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_deref_α:           sub              rsp, 16
                        mov              r11, 119
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_602_240
                        add              rsp, 16;                             jmp   n202_subscript_β
.Lderef_α_602_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n204_assign_α
                        .size            n203_deref_bx, .-n203_deref_bx
                        .type            n204_assign_bx, @function
n204_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_assign_α:          mov              r11, 120
                        mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_603_0]
                        .section         .rodata
.Lassign_α_603_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_603_1_s]
                        mov              r8, 16
                        mov              r9, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n205_statement_end_α
.Lassign_α_603_0:       .quad            .Lassign_α_603_0_s
.Lassign_α_603_0_s:     .string          "DRF"
                        .size            n204_assign_bx, .-n204_assign_bx
                        .type            n205_statement_end_bx, @function
n205_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_end_α:   mov              r11, 121
                        mov              r10, 16
                        add              rsp, 64;                             jmp   RETURN
                        .size            n205_statement_end_bx, .-n205_statement_end_bx
                        .type            n206_statement_begin_bx, @function
n206_statement_begin_bx:
#=======================================================================================================================
# ADD     S[sp = sp - 1] = DRF(S[sp]) + DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
LBL__ADD:               mov              r11, 122
                        mov              r10, 17;                             jmp   n207_var_α
n206_statement_begin_β: mov              r11, 122;                            jmp   n227_statement_begin_α
                        .size            n206_statement_begin_bx, .-n206_statement_begin_bx
                        .type            n207_var_bx, @function
n207_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             sub              rsp, 16
                        mov              r11, 123
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_var_α
                        .size            n207_var_bx, .-n207_var_bx
                        .type            n208_var_bx, @function
n208_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             sub              rsp, 16
                        mov              r11, 124
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_lit_integer_α
n208_var_β:             mov              r11, 124
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n206_statement_begin_β
                        .size            n208_var_bx, .-n208_var_bx
                        .type            n209_lit_integer_bx, @function
n209_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_integer_α:     sub              rsp, 16
                        mov              r11, 125
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_610_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n210_binop_α
n209_lit_integer_β:     mov              r11, 125
                        add              rsp, 16;                             jmp   n208_var_β
.Llit_integer_α_610_0:  .quad            1
                        .size            n209_lit_integer_bx, .-n209_lit_integer_bx
                        .type            n210_binop_bx, @function
n210_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_binop_α:           sub              rsp, 16
                        mov              r11, 126
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_611_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_611_7
.Lbinop_α_611_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_611_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_611_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_611_4
.Lbinop_α_611_3:        movq             xmm0, rsi
.Lbinop_α_611_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_611_7:                                                              jmp   n211_assign_α
.Lbinop_α_611_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_611_240
                        add              rsp, 16;                             jmp   n209_lit_integer_β
.Lbinop_α_611_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n211_assign_α
n210_binop_β:           mov              r11, 126
                        add              rsp, 16;                             jmp   n209_lit_integer_β
                        .size            n210_binop_bx, .-n210_binop_bx
                        .type            n211_assign_bx, @function
n211_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_assign_α:          mov              r11, 127
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_612_0]
                        .section         .rodata
.Lassign_α_612_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_612_1_s]
                        mov              r8, 17
                        mov              r9, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n212_var_α
.Lassign_α_612_0:       .quad            .Lassign_α_612_0_s
.Lassign_α_612_0_s:     .string          "sp"
                        .size            n211_assign_bx, .-n211_assign_bx
                        .type            n212_var_bx, @function
n212_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_var_α:             sub              rsp, 16
                        mov              r11, 128
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n213_var_α
n212_var_β:             mov              r11, 128
                        add              rsp, 16;                             jmp   n210_binop_β
                        .size            n212_var_bx, .-n212_var_bx
                        .type            n213_var_bx, @function
n213_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:             sub              rsp, 16
                        mov              r11, 129
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_subscript_α
n213_var_β:             mov              r11, 129
                        add              rsp, 16;                             jmp   n212_var_β
                        .size            n213_var_bx, .-n213_var_bx
                        .type            n214_subscript_bx, @function
n214_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_subscript_α:       sub              rsp, 16
                        mov              r11, 130
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_615_240
                        add              rsp, 16;                             jmp   n213_var_β
.Lsubscript_α_615_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_deref_α
n214_subscript_β:       mov              r11, 130
                        add              rsp, 16;                             jmp   n213_var_β
                        .size            n214_subscript_bx, .-n214_subscript_bx
                        .type            n215_deref_bx, @function
n215_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_deref_α:           sub              rsp, 16
                        mov              r11, 131
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_616_240
                        add              rsp, 16;                             jmp   n214_subscript_β
.Lderef_α_616_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_call_α
n215_deref_β:           mov              r11, 131
                        add              rsp, 16;                             jmp   n214_subscript_β
                        .size            n215_deref_bx, .-n215_deref_bx
                        .type            n216_call_bx, @function
n216_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_call_α:            sub              rsp, 16
                        mov              r11, 132
                        lea              rcx, [rip + .Lcall_α_sig618z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig618z:       .quad            1
                        .quad            .Lcall_α_618_2
                        .quad            .Lcall_α_618_2
                        .quad            16
.Lcall_α_618_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_618_29
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
.Lcall_α_618_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_618_240
                        add              rsp, 16;                             jmp   n215_deref_β
.Lcall_α_618_240:                                                             jmp   n217_var_α
n216_call_β:            mov              r11, 132;                            jmp   n215_deref_β
.Lcall_β_618_0:         .quad            .Lcall_β_618_0_s
.Lcall_β_618_0_s:       .string          "DRF"
                        .size            n216_call_bx, .-n216_call_bx
                        .type            n217_var_bx, @function
n217_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_var_α:             sub              rsp, 16
                        mov              r11, 133
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n218_var_α
n217_var_β:             mov              r11, 133
                        add              rsp, 32;                             jmp   n215_deref_β
                        .size            n217_var_bx, .-n217_var_bx
                        .type            n218_var_bx, @function
n218_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:             sub              rsp, 16
                        mov              r11, 134
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_lit_integer_α
n218_var_β:             mov              r11, 134
                        add              rsp, 16;                             jmp   n217_var_β
                        .size            n218_var_bx, .-n218_var_bx
                        .type            n219_lit_integer_bx, @function
n219_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_integer_α:     sub              rsp, 16
                        mov              r11, 135
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_621_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n220_binop_α
n219_lit_integer_β:     mov              r11, 135
                        add              rsp, 16;                             jmp   n218_var_β
.Llit_integer_α_621_0:  .quad            1
                        .size            n219_lit_integer_bx, .-n219_lit_integer_bx
                        .type            n220_binop_bx, @function
n220_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_binop_α:           sub              rsp, 16
                        mov              r11, 136
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_622_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_622_7
.Lbinop_α_622_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_622_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_622_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_622_4
.Lbinop_α_622_3:        movq             xmm0, rsi
.Lbinop_α_622_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_622_7:                                                              jmp   n221_subscript_α
.Lbinop_α_622_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_622_240
                        add              rsp, 16;                             jmp   n219_lit_integer_β
.Lbinop_α_622_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_subscript_α
n220_binop_β:           mov              r11, 136
                        add              rsp, 16;                             jmp   n219_lit_integer_β
                        .size            n220_binop_bx, .-n220_binop_bx
                        .type            n221_subscript_bx, @function
n221_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_subscript_α:       sub              rsp, 16
                        mov              r11, 137
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_623_240
                        add              rsp, 16;                             jmp   n220_binop_β
.Lsubscript_α_623_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n222_deref_α
n221_subscript_β:       mov              r11, 137
                        add              rsp, 16;                             jmp   n220_binop_β
                        .size            n221_subscript_bx, .-n221_subscript_bx
                        .type            n222_deref_bx, @function
n222_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_deref_α:           sub              rsp, 16
                        mov              r11, 138
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_624_240
                        add              rsp, 16;                             jmp   n221_subscript_β
.Lderef_α_624_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_call_α
n222_deref_β:           mov              r11, 138
                        add              rsp, 16;                             jmp   n221_subscript_β
                        .size            n222_deref_bx, .-n222_deref_bx
                        .type            n223_call_bx, @function
n223_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:            sub              rsp, 16
                        mov              r11, 139
                        lea              rcx, [rip + .Lcall_α_sig626z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig626z:       .quad            1
                        .quad            .Lcall_α_626_2
                        .quad            .Lcall_α_626_2
                        .quad            16
.Lcall_α_626_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_626_29
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
.Lcall_α_626_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_626_240
                        add              rsp, 16;                             jmp   n222_deref_β
.Lcall_α_626_240:                                                             jmp   n224_binop_α
n223_call_β:            mov              r11, 139;                            jmp   n222_deref_β
.Lcall_β_626_0:         .quad            .Lcall_β_626_0_s
.Lcall_β_626_0_s:       .string          "DRF"
                        .size            n223_call_bx, .-n223_call_bx
                        .type            n224_binop_bx, @function
n224_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_binop_α:           sub              rsp, 16
                        mov              r11, 140
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_627_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_627_7
.Lbinop_α_627_2:        and              edx, 1;                              jz    .Lbinop_α_627_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_627_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_627_4
.Lbinop_α_627_3:        movq             xmm0, rsi
.Lbinop_α_627_4:        cmp              cl, 5;                               je    .Lbinop_α_627_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_627_6
.Lbinop_α_627_5:        movq             xmm1, rdi
.Lbinop_α_627_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_627_7:                                                              jmp   n225_assign_var_α
.Lbinop_α_627_0:        mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_627_240
                        add              rsp, 32;                             jmp   n222_deref_β
.Lbinop_α_627_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n225_assign_var_α
n224_binop_β:           mov              r11, 140
                        add              rsp, 32;                             jmp   n222_deref_β
                        .size            n224_binop_bx, .-n224_binop_bx
                        .type            n225_assign_var_bx, @function
n225_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_assign_var_α:      sub              rsp, 16
                        mov              r11, 141
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_629_0
                        test             rsi, rsi;                            je    .Lassign_var_α_629_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_629_238
                        add              rsp, 16;                             jmp   n224_binop_β
.Lassign_var_α_629_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_statement_end_α
.Lassign_var_α_629_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_629_239
                        add              rsp, 16;                             jmp   n224_binop_β
.Lassign_var_α_629_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_629_240
                        add              rsp, 16;                             jmp   n224_binop_β
.Lassign_var_α_629_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_statement_end_α
                        .size            n225_assign_var_bx, .-n225_assign_var_bx
                        .type            n226_statement_end_bx, @function
n226_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_end_α:   mov              r11, 142
                        mov              r10, 17
                        add              rsp, 288;                            jmp   n227_statement_begin_α
                        .size            n226_statement_end_bx, .-n226_statement_end_bx
                        .type            n227_statement_begin_bx, @function
n227_statement_begin_bx:
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n227_statement_begin_α: mov              r11, 143
                        mov              r10, 18;                             jmp   n228_lit_name_α
n227_statement_begin_β: mov              r11, 143;                            jmp   NRETURN
                        .size            n227_statement_begin_bx, .-n227_statement_begin_bx
                        .type            n228_lit_name_bx, @function
n228_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_name_α:        sub              rsp, 16
                        mov              r11, 144
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_634_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_assign_α
.Llit_name_α_634_0:     .quad            .Llit_name_α_634_0_s
.Llit_name_α_634_0_s:   .string          "dm"
                        .size            n228_lit_name_bx, .-n228_lit_name_bx
                        .type            n229_assign_bx, @function
n229_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_assign_α:          mov              r11, 145
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ADD
                        mov              qword ptr [r9 + 72], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_635_0]
                        .section         .rodata
.Lassign_α_635_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_635_1_s]
                        mov              r8, 18
                        mov              r9, 18
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n230_statement_end_α
.Lassign_α_635_0:       .quad            .Lassign_α_635_0_s
.Lassign_α_635_0_s:     .string          "ADD"
                        .size            n229_assign_bx, .-n229_assign_bx
                        .type            n230_statement_end_bx, @function
n230_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_end_α:   mov              r11, 146
                        mov              r10, 18
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n230_statement_end_bx, .-n230_statement_end_bx
                        .type            n231_statement_begin_bx, @function
n231_statement_begin_bx:
#=======================================================================================================================
# SUB     S[sp = sp - 1] = DRF(S[sp]) - DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
LBL__SUB:               mov              r11, 147
                        mov              r10, 19;                             jmp   n232_var_α
n231_statement_begin_β: mov              r11, 147;                            jmp   n252_statement_begin_α
                        .size            n231_statement_begin_bx, .-n231_statement_begin_bx
                        .type            n232_var_bx, @function
n232_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:             sub              rsp, 16
                        mov              r11, 148
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n233_var_α
                        .size            n232_var_bx, .-n232_var_bx
                        .type            n233_var_bx, @function
n233_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             sub              rsp, 16
                        mov              r11, 149
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_lit_integer_α
n233_var_β:             mov              r11, 149
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n231_statement_begin_β
                        .size            n233_var_bx, .-n233_var_bx
                        .type            n234_lit_integer_bx, @function
n234_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_integer_α:     sub              rsp, 16
                        mov              r11, 150
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_642_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n235_binop_α
n234_lit_integer_β:     mov              r11, 150
                        add              rsp, 16;                             jmp   n233_var_β
.Llit_integer_α_642_0:  .quad            1
                        .size            n234_lit_integer_bx, .-n234_lit_integer_bx
                        .type            n235_binop_bx, @function
n235_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_binop_α:           sub              rsp, 16
                        mov              r11, 151
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_643_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_643_7
.Lbinop_α_643_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_643_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_643_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_643_4
.Lbinop_α_643_3:        movq             xmm0, rsi
.Lbinop_α_643_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_643_7:                                                              jmp   n236_assign_α
.Lbinop_α_643_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_643_240
                        add              rsp, 16;                             jmp   n234_lit_integer_β
.Lbinop_α_643_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_assign_α
n235_binop_β:           mov              r11, 151
                        add              rsp, 16;                             jmp   n234_lit_integer_β
                        .size            n235_binop_bx, .-n235_binop_bx
                        .type            n236_assign_bx, @function
n236_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_assign_α:          mov              r11, 152
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_644_0]
                        .section         .rodata
.Lassign_α_644_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_644_1_s]
                        mov              r8, 19
                        mov              r9, 19
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n237_var_α
.Lassign_α_644_0:       .quad            .Lassign_α_644_0_s
.Lassign_α_644_0_s:     .string          "sp"
                        .size            n236_assign_bx, .-n236_assign_bx
                        .type            n237_var_bx, @function
n237_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:             sub              rsp, 16
                        mov              r11, 153
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n238_var_α
n237_var_β:             mov              r11, 153
                        add              rsp, 16;                             jmp   n235_binop_β
                        .size            n237_var_bx, .-n237_var_bx
                        .type            n238_var_bx, @function
n238_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             sub              rsp, 16
                        mov              r11, 154
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_subscript_α
n238_var_β:             mov              r11, 154
                        add              rsp, 16;                             jmp   n237_var_β
                        .size            n238_var_bx, .-n238_var_bx
                        .type            n239_subscript_bx, @function
n239_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_subscript_α:       sub              rsp, 16
                        mov              r11, 155
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_647_240
                        add              rsp, 16;                             jmp   n238_var_β
.Lsubscript_α_647_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_deref_α
n239_subscript_β:       mov              r11, 155
                        add              rsp, 16;                             jmp   n238_var_β
                        .size            n239_subscript_bx, .-n239_subscript_bx
                        .type            n240_deref_bx, @function
n240_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_deref_α:           sub              rsp, 16
                        mov              r11, 156
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_648_240
                        add              rsp, 16;                             jmp   n239_subscript_β
.Lderef_α_648_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_call_α
n240_deref_β:           mov              r11, 156
                        add              rsp, 16;                             jmp   n239_subscript_β
                        .size            n240_deref_bx, .-n240_deref_bx
                        .type            n241_call_bx, @function
n241_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_call_α:            sub              rsp, 16
                        mov              r11, 157
                        lea              rcx, [rip + .Lcall_α_sig650z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig650z:       .quad            1
                        .quad            .Lcall_α_650_2
                        .quad            .Lcall_α_650_2
                        .quad            16
.Lcall_α_650_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_650_29
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
.Lcall_α_650_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_650_240
                        add              rsp, 16;                             jmp   n240_deref_β
.Lcall_α_650_240:                                                             jmp   n242_var_α
n241_call_β:            mov              r11, 157;                            jmp   n240_deref_β
.Lcall_β_650_0:         .quad            .Lcall_β_650_0_s
.Lcall_β_650_0_s:       .string          "DRF"
                        .size            n241_call_bx, .-n241_call_bx
                        .type            n242_var_bx, @function
n242_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             sub              rsp, 16
                        mov              r11, 158
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_var_α
n242_var_β:             mov              r11, 158
                        add              rsp, 32;                             jmp   n240_deref_β
                        .size            n242_var_bx, .-n242_var_bx
                        .type            n243_var_bx, @function
n243_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:             sub              rsp, 16
                        mov              r11, 159
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_lit_integer_α
n243_var_β:             mov              r11, 159
                        add              rsp, 16;                             jmp   n242_var_β
                        .size            n243_var_bx, .-n243_var_bx
                        .type            n244_lit_integer_bx, @function
n244_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:     sub              rsp, 16
                        mov              r11, 160
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_653_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n245_binop_α
n244_lit_integer_β:     mov              r11, 160
                        add              rsp, 16;                             jmp   n243_var_β
.Llit_integer_α_653_0:  .quad            1
                        .size            n244_lit_integer_bx, .-n244_lit_integer_bx
                        .type            n245_binop_bx, @function
n245_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_binop_α:           sub              rsp, 16
                        mov              r11, 161
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_654_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_654_7
.Lbinop_α_654_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_654_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_654_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_654_4
.Lbinop_α_654_3:        movq             xmm0, rsi
.Lbinop_α_654_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_654_7:                                                              jmp   n246_subscript_α
.Lbinop_α_654_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_654_240
                        add              rsp, 16;                             jmp   n244_lit_integer_β
.Lbinop_α_654_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n246_subscript_α
n245_binop_β:           mov              r11, 161
                        add              rsp, 16;                             jmp   n244_lit_integer_β
                        .size            n245_binop_bx, .-n245_binop_bx
                        .type            n246_subscript_bx, @function
n246_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_subscript_α:       sub              rsp, 16
                        mov              r11, 162
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_655_240
                        add              rsp, 16;                             jmp   n245_binop_β
.Lsubscript_α_655_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n247_deref_α
n246_subscript_β:       mov              r11, 162
                        add              rsp, 16;                             jmp   n245_binop_β
                        .size            n246_subscript_bx, .-n246_subscript_bx
                        .type            n247_deref_bx, @function
n247_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_deref_α:           sub              rsp, 16
                        mov              r11, 163
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_656_240
                        add              rsp, 16;                             jmp   n246_subscript_β
.Lderef_α_656_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n248_call_α
n247_deref_β:           mov              r11, 163
                        add              rsp, 16;                             jmp   n246_subscript_β
                        .size            n247_deref_bx, .-n247_deref_bx
                        .type            n248_call_bx, @function
n248_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_call_α:            sub              rsp, 16
                        mov              r11, 164
                        lea              rcx, [rip + .Lcall_α_sig658z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig658z:       .quad            1
                        .quad            .Lcall_α_658_2
                        .quad            .Lcall_α_658_2
                        .quad            16
.Lcall_α_658_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_658_29
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
.Lcall_α_658_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_658_240
                        add              rsp, 16;                             jmp   n247_deref_β
.Lcall_α_658_240:                                                             jmp   n249_binop_α
n248_call_β:            mov              r11, 164;                            jmp   n247_deref_β
.Lcall_β_658_0:         .quad            .Lcall_β_658_0_s
.Lcall_β_658_0_s:       .string          "DRF"
                        .size            n248_call_bx, .-n248_call_bx
                        .type            n249_binop_bx, @function
n249_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_binop_α:           sub              rsp, 16
                        mov              r11, 165
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_659_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_659_7
.Lbinop_α_659_2:        and              edx, 1;                              jz    .Lbinop_α_659_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_659_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_659_4
.Lbinop_α_659_3:        movq             xmm0, rsi
.Lbinop_α_659_4:        cmp              cl, 5;                               je    .Lbinop_α_659_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_659_6
.Lbinop_α_659_5:        movq             xmm1, rdi
.Lbinop_α_659_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_659_7:                                                              jmp   n250_assign_var_α
.Lbinop_α_659_0:        mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_659_240
                        add              rsp, 32;                             jmp   n247_deref_β
.Lbinop_α_659_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_assign_var_α
n249_binop_β:           mov              r11, 165
                        add              rsp, 32;                             jmp   n247_deref_β
                        .size            n249_binop_bx, .-n249_binop_bx
                        .type            n250_assign_var_bx, @function
n250_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_assign_var_α:      sub              rsp, 16
                        mov              r11, 166
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_661_0
                        test             rsi, rsi;                            je    .Lassign_var_α_661_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_661_238
                        add              rsp, 16;                             jmp   n249_binop_β
.Lassign_var_α_661_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_statement_end_α
.Lassign_var_α_661_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_661_239
                        add              rsp, 16;                             jmp   n249_binop_β
.Lassign_var_α_661_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_661_240
                        add              rsp, 16;                             jmp   n249_binop_β
.Lassign_var_α_661_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_statement_end_α
                        .size            n250_assign_var_bx, .-n250_assign_var_bx
                        .type            n251_statement_end_bx, @function
n251_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_statement_end_α:   mov              r11, 167
                        mov              r10, 19
                        add              rsp, 288;                            jmp   n252_statement_begin_α
                        .size            n251_statement_end_bx, .-n251_statement_end_bx
                        .type            n252_statement_begin_bx, @function
n252_statement_begin_bx:
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n252_statement_begin_α: mov              r11, 168
                        mov              r10, 20;                             jmp   n253_lit_name_α
n252_statement_begin_β: mov              r11, 168;                            jmp   NRETURN
                        .size            n252_statement_begin_bx, .-n252_statement_begin_bx
                        .type            n253_lit_name_bx, @function
n253_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_name_α:        sub              rsp, 16
                        mov              r11, 169
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_666_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n254_assign_α
.Llit_name_α_666_0:     .quad            .Llit_name_α_666_0_s
.Llit_name_α_666_0_s:   .string          "dm"
                        .size            n253_lit_name_bx, .-n253_lit_name_bx
                        .type            n254_assign_bx, @function
n254_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_assign_α:          mov              r11, 170
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # SUB
                        mov              qword ptr [r9 + 88], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_667_0]
                        .section         .rodata
.Lassign_α_667_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_667_1_s]
                        mov              r8, 20
                        mov              r9, 20
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n255_statement_end_α
.Lassign_α_667_0:       .quad            .Lassign_α_667_0_s
.Lassign_α_667_0_s:     .string          "SUB"
                        .size            n254_assign_bx, .-n254_assign_bx
                        .type            n255_statement_end_bx, @function
n255_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_end_α:   mov              r11, 171
                        mov              r10, 20
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n255_statement_end_bx, .-n255_statement_end_bx
                        .type            n256_statement_begin_bx, @function
n256_statement_begin_bx:
#=======================================================================================================================
# MUL     S[sp = sp - 1] = DRF(S[sp]) * DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
LBL__MUL:               mov              r11, 172
                        mov              r10, 21;                             jmp   n257_var_α
n256_statement_begin_β: mov              r11, 172;                            jmp   n277_statement_begin_α
                        .size            n256_statement_begin_bx, .-n256_statement_begin_bx
                        .type            n257_var_bx, @function
n257_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:             sub              rsp, 16
                        mov              r11, 173
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n258_var_α
                        .size            n257_var_bx, .-n257_var_bx
                        .type            n258_var_bx, @function
n258_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:             sub              rsp, 16
                        mov              r11, 174
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_lit_integer_α
n258_var_β:             mov              r11, 174
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n256_statement_begin_β
                        .size            n258_var_bx, .-n258_var_bx
                        .type            n259_lit_integer_bx, @function
n259_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_integer_α:     sub              rsp, 16
                        mov              r11, 175
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_674_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n260_binop_α
n259_lit_integer_β:     mov              r11, 175
                        add              rsp, 16;                             jmp   n258_var_β
.Llit_integer_α_674_0:  .quad            1
                        .size            n259_lit_integer_bx, .-n259_lit_integer_bx
                        .type            n260_binop_bx, @function
n260_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_binop_α:           sub              rsp, 16
                        mov              r11, 176
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_675_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_675_7
.Lbinop_α_675_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_675_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_675_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_675_4
.Lbinop_α_675_3:        movq             xmm0, rsi
.Lbinop_α_675_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_675_7:                                                              jmp   n261_assign_α
.Lbinop_α_675_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_675_240
                        add              rsp, 16;                             jmp   n259_lit_integer_β
.Lbinop_α_675_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n261_assign_α
n260_binop_β:           mov              r11, 176
                        add              rsp, 16;                             jmp   n259_lit_integer_β
                        .size            n260_binop_bx, .-n260_binop_bx
                        .type            n261_assign_bx, @function
n261_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_assign_α:          mov              r11, 177
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_676_0]
                        .section         .rodata
.Lassign_α_676_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_676_1_s]
                        mov              r8, 21
                        mov              r9, 21
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n262_var_α
.Lassign_α_676_0:       .quad            .Lassign_α_676_0_s
.Lassign_α_676_0_s:     .string          "sp"
                        .size            n261_assign_bx, .-n261_assign_bx
                        .type            n262_var_bx, @function
n262_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_var_α:             sub              rsp, 16
                        mov              r11, 178
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n263_var_α
n262_var_β:             mov              r11, 178
                        add              rsp, 16;                             jmp   n260_binop_β
                        .size            n262_var_bx, .-n262_var_bx
                        .type            n263_var_bx, @function
n263_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:             sub              rsp, 16
                        mov              r11, 179
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n264_subscript_α
n263_var_β:             mov              r11, 179
                        add              rsp, 16;                             jmp   n262_var_β
                        .size            n263_var_bx, .-n263_var_bx
                        .type            n264_subscript_bx, @function
n264_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_subscript_α:       sub              rsp, 16
                        mov              r11, 180
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_679_240
                        add              rsp, 16;                             jmp   n263_var_β
.Lsubscript_α_679_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n265_deref_α
n264_subscript_β:       mov              r11, 180
                        add              rsp, 16;                             jmp   n263_var_β
                        .size            n264_subscript_bx, .-n264_subscript_bx
                        .type            n265_deref_bx, @function
n265_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_deref_α:           sub              rsp, 16
                        mov              r11, 181
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_680_240
                        add              rsp, 16;                             jmp   n264_subscript_β
.Lderef_α_680_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_call_α
n265_deref_β:           mov              r11, 181
                        add              rsp, 16;                             jmp   n264_subscript_β
                        .size            n265_deref_bx, .-n265_deref_bx
                        .type            n266_call_bx, @function
n266_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_call_α:            sub              rsp, 16
                        mov              r11, 182
                        lea              rcx, [rip + .Lcall_α_sig682z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig682z:       .quad            1
                        .quad            .Lcall_α_682_2
                        .quad            .Lcall_α_682_2
                        .quad            16
.Lcall_α_682_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_682_29
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
.Lcall_α_682_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_682_240
                        add              rsp, 16;                             jmp   n265_deref_β
.Lcall_α_682_240:                                                             jmp   n267_var_α
n266_call_β:            mov              r11, 182;                            jmp   n265_deref_β
.Lcall_β_682_0:         .quad            .Lcall_β_682_0_s
.Lcall_β_682_0_s:       .string          "DRF"
                        .size            n266_call_bx, .-n266_call_bx
                        .type            n267_var_bx, @function
n267_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:             sub              rsp, 16
                        mov              r11, 183
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n268_var_α
n267_var_β:             mov              r11, 183
                        add              rsp, 32;                             jmp   n265_deref_β
                        .size            n267_var_bx, .-n267_var_bx
                        .type            n268_var_bx, @function
n268_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:             sub              rsp, 16
                        mov              r11, 184
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_lit_integer_α
n268_var_β:             mov              r11, 184
                        add              rsp, 16;                             jmp   n267_var_β
                        .size            n268_var_bx, .-n268_var_bx
                        .type            n269_lit_integer_bx, @function
n269_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_integer_α:     sub              rsp, 16
                        mov              r11, 185
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_685_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n270_binop_α
n269_lit_integer_β:     mov              r11, 185
                        add              rsp, 16;                             jmp   n268_var_β
.Llit_integer_α_685_0:  .quad            1
                        .size            n269_lit_integer_bx, .-n269_lit_integer_bx
                        .type            n270_binop_bx, @function
n270_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_binop_α:           sub              rsp, 16
                        mov              r11, 186
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_686_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_686_7
.Lbinop_α_686_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_686_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_686_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_686_4
.Lbinop_α_686_3:        movq             xmm0, rsi
.Lbinop_α_686_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_686_7:                                                              jmp   n271_subscript_α
.Lbinop_α_686_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_686_240
                        add              rsp, 16;                             jmp   n269_lit_integer_β
.Lbinop_α_686_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n271_subscript_α
n270_binop_β:           mov              r11, 186
                        add              rsp, 16;                             jmp   n269_lit_integer_β
                        .size            n270_binop_bx, .-n270_binop_bx
                        .type            n271_subscript_bx, @function
n271_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_subscript_α:       sub              rsp, 16
                        mov              r11, 187
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_687_240
                        add              rsp, 16;                             jmp   n270_binop_β
.Lsubscript_α_687_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n272_deref_α
n271_subscript_β:       mov              r11, 187
                        add              rsp, 16;                             jmp   n270_binop_β
                        .size            n271_subscript_bx, .-n271_subscript_bx
                        .type            n272_deref_bx, @function
n272_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_deref_α:           sub              rsp, 16
                        mov              r11, 188
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_688_240
                        add              rsp, 16;                             jmp   n271_subscript_β
.Lderef_α_688_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_call_α
n272_deref_β:           mov              r11, 188
                        add              rsp, 16;                             jmp   n271_subscript_β
                        .size            n272_deref_bx, .-n272_deref_bx
                        .type            n273_call_bx, @function
n273_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_call_α:            sub              rsp, 16
                        mov              r11, 189
                        lea              rcx, [rip + .Lcall_α_sig690z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig690z:       .quad            1
                        .quad            .Lcall_α_690_2
                        .quad            .Lcall_α_690_2
                        .quad            16
.Lcall_α_690_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_690_29
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
.Lcall_α_690_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_690_240
                        add              rsp, 16;                             jmp   n272_deref_β
.Lcall_α_690_240:                                                             jmp   n274_binop_α
n273_call_β:            mov              r11, 189;                            jmp   n272_deref_β
.Lcall_β_690_0:         .quad            .Lcall_β_690_0_s
.Lcall_β_690_0_s:       .string          "DRF"
                        .size            n273_call_bx, .-n273_call_bx
                        .type            n274_binop_bx, @function
n274_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_binop_α:           sub              rsp, 16
                        mov              r11, 190
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_691_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_691_7
.Lbinop_α_691_2:        and              edx, 1;                              jz    .Lbinop_α_691_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_691_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_691_4
.Lbinop_α_691_3:        movq             xmm0, rsi
.Lbinop_α_691_4:        cmp              cl, 5;                               je    .Lbinop_α_691_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_691_6
.Lbinop_α_691_5:        movq             xmm1, rdi
.Lbinop_α_691_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_691_7:                                                              jmp   n275_assign_var_α
.Lbinop_α_691_0:        mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
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
                        cmp              al, 104;                             jne   .Lbinop_α_691_240
                        add              rsp, 32;                             jmp   n272_deref_β
.Lbinop_α_691_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n275_assign_var_α
n274_binop_β:           mov              r11, 190
                        add              rsp, 32;                             jmp   n272_deref_β
                        .size            n274_binop_bx, .-n274_binop_bx
                        .type            n275_assign_var_bx, @function
n275_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_assign_var_α:      sub              rsp, 16
                        mov              r11, 191
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_693_0
                        test             rsi, rsi;                            je    .Lassign_var_α_693_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_693_238
                        add              rsp, 16;                             jmp   n274_binop_β
.Lassign_var_α_693_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_statement_end_α
.Lassign_var_α_693_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_693_239
                        add              rsp, 16;                             jmp   n274_binop_β
.Lassign_var_α_693_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_693_240
                        add              rsp, 16;                             jmp   n274_binop_β
.Lassign_var_α_693_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_statement_end_α
                        .size            n275_assign_var_bx, .-n275_assign_var_bx
                        .type            n276_statement_end_bx, @function
n276_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_end_α:   mov              r11, 192
                        mov              r10, 21
                        add              rsp, 288;                            jmp   n277_statement_begin_α
                        .size            n276_statement_end_bx, .-n276_statement_end_bx
                        .type            n277_statement_begin_bx, @function
n277_statement_begin_bx:
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n277_statement_begin_α: mov              r11, 193
                        mov              r10, 22;                             jmp   n278_lit_name_α
n277_statement_begin_β: mov              r11, 193;                            jmp   NRETURN
                        .size            n277_statement_begin_bx, .-n277_statement_begin_bx
                        .type            n278_lit_name_bx, @function
n278_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_name_α:        sub              rsp, 16
                        mov              r11, 194
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_698_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n279_assign_α
.Llit_name_α_698_0:     .quad            .Llit_name_α_698_0_s
.Llit_name_α_698_0_s:   .string          "dm"
                        .size            n278_lit_name_bx, .-n278_lit_name_bx
                        .type            n279_assign_bx, @function
n279_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_assign_α:          mov              r11, 195
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # MUL
                        mov              qword ptr [r9 + 104], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_699_0]
                        .section         .rodata
.Lassign_α_699_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_699_1_s]
                        mov              r8, 22
                        mov              r9, 22
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n280_statement_end_α
.Lassign_α_699_0:       .quad            .Lassign_α_699_0_s
.Lassign_α_699_0_s:     .string          "MUL"
                        .size            n279_assign_bx, .-n279_assign_bx
                        .type            n280_statement_end_bx, @function
n280_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_end_α:   mov              r11, 196
                        mov              r10, 22
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n280_statement_end_bx, .-n280_statement_end_bx
                        .type            n281_statement_begin_bx, @function
n281_statement_begin_bx:
#=======================================================================================================================
# DIV     S[sp = sp - 1] = DRF(S[sp]) / DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
LBL__DIV:               mov              r11, 197
                        mov              r10, 23;                             jmp   n282_var_α
n281_statement_begin_β: mov              r11, 197;                            jmp   n302_statement_begin_α
                        .size            n281_statement_begin_bx, .-n281_statement_begin_bx
                        .type            n282_var_bx, @function
n282_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:             sub              rsp, 16
                        mov              r11, 198
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n283_var_α
                        .size            n282_var_bx, .-n282_var_bx
                        .type            n283_var_bx, @function
n283_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             sub              rsp, 16
                        mov              r11, 199
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n284_lit_integer_α
n283_var_β:             mov              r11, 199
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n281_statement_begin_β
                        .size            n283_var_bx, .-n283_var_bx
                        .type            n284_lit_integer_bx, @function
n284_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_integer_α:     sub              rsp, 16
                        mov              r11, 200
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_706_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n285_binop_α
n284_lit_integer_β:     mov              r11, 200
                        add              rsp, 16;                             jmp   n283_var_β
.Llit_integer_α_706_0:  .quad            1
                        .size            n284_lit_integer_bx, .-n284_lit_integer_bx
                        .type            n285_binop_bx, @function
n285_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_binop_α:           sub              rsp, 16
                        mov              r11, 201
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_707_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_707_7
.Lbinop_α_707_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_707_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_707_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_707_4
.Lbinop_α_707_3:        movq             xmm0, rsi
.Lbinop_α_707_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_707_7:                                                              jmp   n286_assign_α
.Lbinop_α_707_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_707_240
                        add              rsp, 16;                             jmp   n284_lit_integer_β
.Lbinop_α_707_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n286_assign_α
n285_binop_β:           mov              r11, 201
                        add              rsp, 16;                             jmp   n284_lit_integer_β
                        .size            n285_binop_bx, .-n285_binop_bx
                        .type            n286_assign_bx, @function
n286_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_assign_α:          mov              r11, 202
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_708_0]
                        .section         .rodata
.Lassign_α_708_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_708_1_s]
                        mov              r8, 23
                        mov              r9, 23
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n287_var_α
.Lassign_α_708_0:       .quad            .Lassign_α_708_0_s
.Lassign_α_708_0_s:     .string          "sp"
                        .size            n286_assign_bx, .-n286_assign_bx
                        .type            n287_var_bx, @function
n287_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:             sub              rsp, 16
                        mov              r11, 203
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n288_var_α
n287_var_β:             mov              r11, 203
                        add              rsp, 16;                             jmp   n285_binop_β
                        .size            n287_var_bx, .-n287_var_bx
                        .type            n288_var_bx, @function
n288_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             sub              rsp, 16
                        mov              r11, 204
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_subscript_α
n288_var_β:             mov              r11, 204
                        add              rsp, 16;                             jmp   n287_var_β
                        .size            n288_var_bx, .-n288_var_bx
                        .type            n289_subscript_bx, @function
n289_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_subscript_α:       sub              rsp, 16
                        mov              r11, 205
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_711_240
                        add              rsp, 16;                             jmp   n288_var_β
.Lsubscript_α_711_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n290_deref_α
n289_subscript_β:       mov              r11, 205
                        add              rsp, 16;                             jmp   n288_var_β
                        .size            n289_subscript_bx, .-n289_subscript_bx
                        .type            n290_deref_bx, @function
n290_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_deref_α:           sub              rsp, 16
                        mov              r11, 206
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_712_240
                        add              rsp, 16;                             jmp   n289_subscript_β
.Lderef_α_712_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n291_call_α
n290_deref_β:           mov              r11, 206
                        add              rsp, 16;                             jmp   n289_subscript_β
                        .size            n290_deref_bx, .-n290_deref_bx
                        .type            n291_call_bx, @function
n291_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_call_α:            sub              rsp, 16
                        mov              r11, 207
                        lea              rcx, [rip + .Lcall_α_sig714z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig714z:       .quad            1
                        .quad            .Lcall_α_714_2
                        .quad            .Lcall_α_714_2
                        .quad            16
.Lcall_α_714_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_714_29
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
.Lcall_α_714_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_714_240
                        add              rsp, 16;                             jmp   n290_deref_β
.Lcall_α_714_240:                                                             jmp   n292_var_α
n291_call_β:            mov              r11, 207;                            jmp   n290_deref_β
.Lcall_β_714_0:         .quad            .Lcall_β_714_0_s
.Lcall_β_714_0_s:       .string          "DRF"
                        .size            n291_call_bx, .-n291_call_bx
                        .type            n292_var_bx, @function
n292_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:             sub              rsp, 16
                        mov              r11, 208
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_var_α
n292_var_β:             mov              r11, 208
                        add              rsp, 32;                             jmp   n290_deref_β
                        .size            n292_var_bx, .-n292_var_bx
                        .type            n293_var_bx, @function
n293_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:             sub              rsp, 16
                        mov              r11, 209
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_lit_integer_α
n293_var_β:             mov              r11, 209
                        add              rsp, 16;                             jmp   n292_var_β
                        .size            n293_var_bx, .-n293_var_bx
                        .type            n294_lit_integer_bx, @function
n294_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_integer_α:     sub              rsp, 16
                        mov              r11, 210
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_717_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n295_binop_α
n294_lit_integer_β:     mov              r11, 210
                        add              rsp, 16;                             jmp   n293_var_β
.Llit_integer_α_717_0:  .quad            1
                        .size            n294_lit_integer_bx, .-n294_lit_integer_bx
                        .type            n295_binop_bx, @function
n295_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_binop_α:           sub              rsp, 16
                        mov              r11, 211
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_718_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_718_7
.Lbinop_α_718_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_718_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_718_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_718_4
.Lbinop_α_718_3:        movq             xmm0, rsi
.Lbinop_α_718_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_718_7:                                                              jmp   n296_subscript_α
.Lbinop_α_718_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_718_240
                        add              rsp, 16;                             jmp   n294_lit_integer_β
.Lbinop_α_718_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_subscript_α
n295_binop_β:           mov              r11, 211
                        add              rsp, 16;                             jmp   n294_lit_integer_β
                        .size            n295_binop_bx, .-n295_binop_bx
                        .type            n296_subscript_bx, @function
n296_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_subscript_α:       sub              rsp, 16
                        mov              r11, 212
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_719_240
                        add              rsp, 16;                             jmp   n295_binop_β
.Lsubscript_α_719_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n297_deref_α
n296_subscript_β:       mov              r11, 212
                        add              rsp, 16;                             jmp   n295_binop_β
                        .size            n296_subscript_bx, .-n296_subscript_bx
                        .type            n297_deref_bx, @function
n297_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_deref_α:           sub              rsp, 16
                        mov              r11, 213
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_720_240
                        add              rsp, 16;                             jmp   n296_subscript_β
.Lderef_α_720_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_call_α
n297_deref_β:           mov              r11, 213
                        add              rsp, 16;                             jmp   n296_subscript_β
                        .size            n297_deref_bx, .-n297_deref_bx
                        .type            n298_call_bx, @function
n298_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_call_α:            sub              rsp, 16
                        mov              r11, 214
                        lea              rcx, [rip + .Lcall_α_sig722z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig722z:       .quad            1
                        .quad            .Lcall_α_722_2
                        .quad            .Lcall_α_722_2
                        .quad            16
.Lcall_α_722_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_722_29
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
.Lcall_α_722_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_722_240
                        add              rsp, 16;                             jmp   n297_deref_β
.Lcall_α_722_240:                                                             jmp   n299_binop_α
n298_call_β:            mov              r11, 214;                            jmp   n297_deref_β
.Lcall_β_722_0:         .quad            .Lcall_β_722_0_s
.Lcall_β_722_0_s:       .string          "DRF"
                        .size            n298_call_bx, .-n298_call_bx
                        .type            n299_binop_bx, @function
n299_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_binop_α:           sub              rsp, 16
                        mov              r11, 215
                        mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_723_240
                        add              rsp, 32;                             jmp   n297_deref_β
.Lbinop_α_723_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n300_assign_var_α
n299_binop_β:           mov              r11, 215
                        add              rsp, 32;                             jmp   n297_deref_β
                        .size            n299_binop_bx, .-n299_binop_bx
                        .type            n300_assign_var_bx, @function
n300_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_assign_var_α:      sub              rsp, 16
                        mov              r11, 216
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_725_0
                        test             rsi, rsi;                            je    .Lassign_var_α_725_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_725_238
                        add              rsp, 16;                             jmp   n299_binop_β
.Lassign_var_α_725_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n301_statement_end_α
.Lassign_var_α_725_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_725_239
                        add              rsp, 16;                             jmp   n299_binop_β
.Lassign_var_α_725_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_725_240
                        add              rsp, 16;                             jmp   n299_binop_β
.Lassign_var_α_725_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n301_statement_end_α
                        .size            n300_assign_var_bx, .-n300_assign_var_bx
                        .type            n301_statement_end_bx, @function
n301_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_end_α:   mov              r11, 217
                        mov              r10, 23
                        add              rsp, 288;                            jmp   n302_statement_begin_α
                        .size            n301_statement_end_bx, .-n301_statement_end_bx
                        .type            n302_statement_begin_bx, @function
n302_statement_begin_bx:
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n302_statement_begin_α: mov              r11, 218
                        mov              r10, 24;                             jmp   n303_lit_name_α
n302_statement_begin_β: mov              r11, 218;                            jmp   NRETURN
                        .size            n302_statement_begin_bx, .-n302_statement_begin_bx
                        .type            n303_lit_name_bx, @function
n303_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_name_α:        sub              rsp, 16
                        mov              r11, 219
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_730_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n304_assign_α
.Llit_name_α_730_0:     .quad            .Llit_name_α_730_0_s
.Llit_name_α_730_0_s:   .string          "dm"
                        .size            n303_lit_name_bx, .-n303_lit_name_bx
                        .type            n304_assign_bx, @function
n304_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_assign_α:          mov              r11, 220
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # DIV
                        mov              qword ptr [r9 + 120], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_731_0]
                        .section         .rodata
.Lassign_α_731_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_731_1_s]
                        mov              r8, 24
                        mov              r9, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n305_statement_end_α
.Lassign_α_731_0:       .quad            .Lassign_α_731_0_s
.Lassign_α_731_0_s:     .string          "DIV"
                        .size            n304_assign_bx, .-n304_assign_bx
                        .type            n305_statement_end_bx, @function
n305_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_statement_end_α:   mov              r11, 221
                        mov              r10, 24
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n305_statement_end_bx, .-n305_statement_end_bx
                        .type            n306_statement_begin_bx, @function
n306_statement_begin_bx:
#=======================================================================================================================
# NEG     S[sp] = -DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
LBL__NEG:               mov              r11, 222
                        mov              r10, 25;                             jmp   n307_var_α
n306_statement_begin_β: mov              r11, 222;                            jmp   n317_statement_begin_α
                        .size            n306_statement_begin_bx, .-n306_statement_begin_bx
                        .type            n307_var_bx, @function
n307_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_var_α:             sub              rsp, 16
                        mov              r11, 223
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n308_var_α
                        .size            n307_var_bx, .-n307_var_bx
                        .type            n308_var_bx, @function
n308_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             sub              rsp, 16
                        mov              r11, 224
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n309_var_α
n308_var_β:             mov              r11, 224
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n306_statement_begin_β
                        .size            n308_var_bx, .-n308_var_bx
                        .type            n309_var_bx, @function
n309_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             sub              rsp, 16
                        mov              r11, 225
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_var_α
n309_var_β:             mov              r11, 225
                        add              rsp, 16;                             jmp   n308_var_β
                        .size            n309_var_bx, .-n309_var_bx
                        .type            n310_var_bx, @function
n310_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:             sub              rsp, 16
                        mov              r11, 226
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_subscript_α
n310_var_β:             mov              r11, 226
                        add              rsp, 16;                             jmp   n309_var_β
                        .size            n310_var_bx, .-n310_var_bx
                        .type            n311_subscript_bx, @function
n311_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_subscript_α:       sub              rsp, 16
                        mov              r11, 227
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_740_240
                        add              rsp, 16;                             jmp   n310_var_β
.Lsubscript_α_740_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_deref_α
n311_subscript_β:       mov              r11, 227
                        add              rsp, 16;                             jmp   n310_var_β
                        .size            n311_subscript_bx, .-n311_subscript_bx
                        .type            n312_deref_bx, @function
n312_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_deref_α:           sub              rsp, 16
                        mov              r11, 228
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_741_240
                        add              rsp, 16;                             jmp   n311_subscript_β
.Lderef_α_741_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n313_call_α
n312_deref_β:           mov              r11, 228
                        add              rsp, 16;                             jmp   n311_subscript_β
                        .size            n312_deref_bx, .-n312_deref_bx
                        .type            n313_call_bx, @function
n313_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_call_α:            sub              rsp, 16
                        mov              r11, 229
                        lea              rcx, [rip + .Lcall_α_sig743z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig743z:       .quad            1
                        .quad            .Lcall_α_743_2
                        .quad            .Lcall_α_743_2
                        .quad            16
.Lcall_α_743_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_743_29
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
.Lcall_α_743_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_743_240
                        add              rsp, 16;                             jmp   n312_deref_β
.Lcall_α_743_240:                                                             jmp   n314_unop_α
n313_call_β:            mov              r11, 229;                            jmp   n312_deref_β
.Lcall_β_743_0:         .quad            .Lcall_β_743_0_s
.Lcall_β_743_0_s:       .string          "DRF"
                        .size            n313_call_bx, .-n313_call_bx
                        .type            n314_unop_bx, @function
n314_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_unop_α:            sub              rsp, 16
                        mov              r11, 230
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_assign_var_α
n314_unop_β:            mov              r11, 230
                        add              rsp, 32;                             jmp   n312_deref_β
                        .size            n314_unop_bx, .-n314_unop_bx
                        .type            n315_assign_var_bx, @function
n315_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_assign_var_α:      sub              rsp, 16
                        mov              r11, 231
                        mov              rdi, qword ptr [rsp + 128]           # var
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        cmp              dil, 24;                             jne   .Lassign_var_α_746_0
                        test             rsi, rsi;                            je    .Lassign_var_α_746_0
                        mov              r8, qword ptr [rsp + 16]             # unop
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_746_238
                        add              rsp, 16;                             jmp   n314_unop_β
.Lassign_var_α_746_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_statement_end_α
.Lassign_var_α_746_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_746_239
                        add              rsp, 16;                             jmp   n314_unop_β
.Lassign_var_α_746_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # unop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_746_240
                        add              rsp, 16;                             jmp   n314_unop_β
.Lassign_var_α_746_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_statement_end_α
                        .size            n315_assign_var_bx, .-n315_assign_var_bx
                        .type            n316_statement_end_bx, @function
n316_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_statement_end_α:   mov              r11, 232
                        mov              r10, 25
                        add              rsp, 144;                            jmp   n317_statement_begin_α
                        .size            n316_statement_end_bx, .-n316_statement_end_bx
                        .type            n317_statement_begin_bx, @function
n317_statement_begin_bx:
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n317_statement_begin_α: mov              r11, 233
                        mov              r10, 26;                             jmp   n318_lit_name_α
n317_statement_begin_β: mov              r11, 233;                            jmp   NRETURN
                        .size            n317_statement_begin_bx, .-n317_statement_begin_bx
                        .type            n318_lit_name_bx, @function
n318_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_name_α:        sub              rsp, 16
                        mov              r11, 234
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_751_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n319_assign_α
.Llit_name_α_751_0:     .quad            .Llit_name_α_751_0_s
.Llit_name_α_751_0_s:   .string          "dm"
                        .size            n318_lit_name_bx, .-n318_lit_name_bx
                        .type            n319_assign_bx, @function
n319_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_assign_α:          mov              r11, 235
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # NEG
                        mov              qword ptr [r9 + 136], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_752_0]
                        .section         .rodata
.Lassign_α_752_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_752_1_s]
                        mov              r8, 26
                        mov              r9, 26
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n320_statement_end_α
.Lassign_α_752_0:       .quad            .Lassign_α_752_0_s
.Lassign_α_752_0_s:     .string          "NEG"
                        .size            n319_assign_bx, .-n319_assign_bx
                        .type            n320_statement_end_bx, @function
n320_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_end_α:   mov              r11, 236
                        mov              r10, 26
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n320_statement_end_bx, .-n320_statement_end_bx
                        .type            n321_statement_begin_bx, @function
n321_statement_begin_bx:
#=======================================================================================================================
# FNS_end
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n321_statement_begin_α: mov              r11, 237
                        mov              r10, 27;                             jmp   n322_statement_end_α
n321_statement_begin_β: mov              r11, 237;                            jmp   n323_statement_begin_α
                        .size            n321_statement_begin_bx, .-n321_statement_begin_bx
                        .type            n322_statement_end_bx, @function
n322_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_statement_end_α:   mov              r11, 238
                        mov              r10, 27;                             jmp   n323_statement_begin_α
                        .size            n322_statement_end_bx, .-n322_statement_end_bx
                        .type            n323_statement_begin_bx, @function
n323_statement_begin_bx:
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 29 0
n323_statement_begin_α: mov              r11, 239
                        mov              r10, 28;                             jmp   n324_lit_integer_α
n323_statement_begin_β: mov              r11, 239;                            jmp   n328_statement_begin_α
                        .size            n323_statement_begin_bx, .-n323_statement_begin_bx
                        .type            n324_lit_integer_bx, @function
n324_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_integer_α:     sub              rsp, 16
                        mov              r11, 240
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_761_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n325_call_α
.Llit_integer_α_761_0:  .quad            65536
                        .size            n324_lit_integer_bx, .-n324_lit_integer_bx
                        .type            n325_call_bx, @function
n325_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_call_α:            sub              rsp, 16
                        mov              r11, 241
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd763:     .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd763]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 327696
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_762_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n323_statement_begin_β
.Lcall_α_762_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n326_assign_α
n325_call_β:            mov              r11, 241
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n323_statement_begin_β
                        .size            n325_call_bx, .-n325_call_bx
                        .type            n326_assign_bx, @function
n326_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_assign_α:          mov              r11, 242
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # S
                        mov              qword ptr [r9 + 152], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_764_0]
                        .section         .rodata
.Lassign_α_764_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_764_1_s]
                        mov              r8, 29
                        mov              r9, 28
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n327_statement_end_α
.Lassign_α_764_0:       .quad            .Lassign_α_764_0_s
.Lassign_α_764_0_s:     .string          "S"
                        .size            n326_assign_bx, .-n326_assign_bx
                        .type            n327_statement_end_bx, @function
n327_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_end_α:   mov              r11, 243
                        mov              r10, 28
                        add              rsp, 32;                             jmp   n328_statement_begin_α
                        .size            n327_statement_end_bx, .-n327_statement_end_bx
                        .type            n328_statement_begin_bx, @function
n328_statement_begin_bx:
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n328_statement_begin_α: mov              r11, 244
                        mov              r10, 29;                             jmp   n329_lit_string_α
n328_statement_begin_β: mov              r11, 244;                            jmp   n333_statement_begin_α
                        .size            n328_statement_begin_bx, .-n328_statement_begin_bx
                        .type            n329_lit_string_bx, @function
n329_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:      sub              rsp, 16
                        mov              r11, 245
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_769_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n330_call_α
.Llit_string_α_769_0:   .quad            .Llit_string_α_769_0_s
.Llit_string_α_769_0_s: .string          "PAT$0"
                        .size            n329_lit_string_bx, .-n329_lit_string_bx
                        .type            n330_call_bx, @function
n330_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_call_α:            sub              rsp, 16
                        mov              r11, 246
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd771:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd771]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_770_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n328_statement_begin_β
.Lcall_α_770_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_assign_α
n330_call_β:            mov              r11, 246
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n328_statement_begin_β
                        .size            n330_call_bx, .-n330_call_bx
                        .type            n331_assign_bx, @function
n331_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_assign_α:          mov              r11, 247
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # V
                        mov              qword ptr [r9 + 216], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_772_0]
                        .section         .rodata
.Lassign_α_772_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_772_1_s]
                        mov              r8, 30
                        mov              r9, 29
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n332_statement_end_α
.Lassign_α_772_0:       .quad            .Lassign_α_772_0_s
.Lassign_α_772_0_s:     .string          "V"
                        .size            n331_assign_bx, .-n331_assign_bx
                        .type            n332_statement_end_bx, @function
n332_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_statement_end_α:   mov              r11, 248
                        mov              r10, 29
                        add              rsp, 32;                             jmp   n333_statement_begin_α
                        .size            n332_statement_end_bx, .-n332_statement_end_bx
                        .type            n333_statement_begin_bx, @function
n333_statement_begin_bx:
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n333_statement_begin_α: mov              r11, 249
                        mov              r10, 30;                             jmp   n334_lit_string_α
n333_statement_begin_β: mov              r11, 249;                            jmp   n338_statement_begin_α
                        .size            n333_statement_begin_bx, .-n333_statement_begin_bx
                        .type            n334_lit_string_bx, @function
n334_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_string_α:      sub              rsp, 16
                        mov              r11, 250
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_777_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n335_call_α
.Llit_string_α_777_0:   .quad            .Llit_string_α_777_0_s
.Llit_string_α_777_0_s: .string          "PAT$1"
                        .size            n334_lit_string_bx, .-n334_lit_string_bx
                        .type            n335_call_bx, @function
n335_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_call_α:            sub              rsp, 16
                        mov              r11, 251
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd779:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd779]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_778_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n333_statement_begin_β
.Lcall_α_778_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n336_assign_α
n335_call_β:            mov              r11, 251
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n333_statement_begin_β
                        .size            n335_call_bx, .-n335_call_bx
                        .type            n336_assign_bx, @function
n336_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_assign_α:          mov              r11, 252
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # I
                        mov              qword ptr [r9 + 232], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_780_0]
                        .section         .rodata
.Lassign_α_780_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_780_1_s]
                        mov              r8, 31
                        mov              r9, 30
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n337_statement_end_α
.Lassign_α_780_0:       .quad            .Lassign_α_780_0_s
.Lassign_α_780_0_s:     .string          "I"
                        .size            n336_assign_bx, .-n336_assign_bx
                        .type            n337_statement_end_bx, @function
n337_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_statement_end_α:   mov              r11, 253
                        mov              r10, 30
                        add              rsp, 32;                             jmp   n338_statement_begin_α
                        .size            n337_statement_end_bx, .-n337_statement_end_bx
                        .type            n338_statement_begin_bx, @function
n338_statement_begin_bx:
#=======================================================================================================================
#         A = V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n338_statement_begin_α: mov              r11, 254
                        mov              r10, 31;                             jmp   n339_var_α
n338_statement_begin_β: mov              r11, 254;                            jmp   n348_statement_begin_α
                        .size            n338_statement_begin_bx, .-n338_statement_begin_bx
                        .type            n339_var_bx, @function
n339_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_var_α:             sub              rsp, 16
                        mov              r11, 255
                        mov              rax, qword ptr [r9 + 208]            # V
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n340_assign_α
                        .size            n339_var_bx, .-n339_var_bx
                        .type            n340_assign_bx, @function
n340_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_assign_α:          mov              r11, 256
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 392], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_786_0]
                        .section         .rodata
.Lassign_α_786_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_786_1_s]
                        mov              r8, 32
                        mov              r9, 31
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n341_var_α
.Lassign_α_786_0:       .quad            .Lassign_α_786_0_s
.Lassign_α_786_0_s:     .string          "PAT$2$V0"
                        .size            n340_assign_bx, .-n340_assign_bx
                        .type            n341_var_bx, @function
n341_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_var_α:             sub              rsp, 16
                        mov              r11, 257
                        mov              rax, qword ptr [r9 + 224]            # I
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n342_assign_α
n341_var_β:             mov              r11, 257
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n338_statement_begin_β
                        .size            n341_var_bx, .-n341_var_bx
                        .type            n342_assign_bx, @function
n342_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_assign_α:          mov              r11, 258
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 408], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_788_0]
                        .section         .rodata
.Lassign_α_788_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_788_1_s]
                        mov              r8, 32
                        mov              r9, 31
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n343_lit_string_α
.Lassign_α_788_0:       .quad            .Lassign_α_788_0_s
.Lassign_α_788_0_s:     .string          "PAT$2$V1"
                        .size            n342_assign_bx, .-n342_assign_bx
                        .type            n343_lit_string_bx, @function
n343_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:      sub              rsp, 16
                        mov              r11, 259
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_789_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n344_lit_string_α
n343_lit_string_β:      mov              r11, 259
                        add              rsp, 16;                             jmp   n341_var_β
.Llit_string_α_789_0:   .quad            .Llit_string_α_789_0_s
.Llit_string_α_789_0_s: .string          "PAT$2"
                        .size            n343_lit_string_bx, .-n343_lit_string_bx
                        .type            n344_lit_string_bx, @function
n344_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_string_α:      sub              rsp, 16
                        mov              r11, 260
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_790_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n345_call_α
n344_lit_string_β:      mov              r11, 260
                        add              rsp, 16;                             jmp   n343_lit_string_β
.Llit_string_α_790_0:   .quad            .Llit_string_α_790_0_s
.Llit_string_α_790_0_s: .string          "2"
                        .size            n344_lit_string_bx, .-n344_lit_string_bx
                        .type            n345_call_bx, @function
n345_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_call_α:            sub              rsp, 16
                        mov              r11, 261
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
.Lcall_α_rkfnzd792:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd792]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_791_240
                        add              rsp, 16;                             jmp   n344_lit_string_β
.Lcall_α_791_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n346_assign_α
n345_call_β:            mov              r11, 261
                        add              rsp, 16;                             jmp   n344_lit_string_β
                        .size            n345_call_bx, .-n345_call_bx
                        .type            n346_assign_bx, @function
n346_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_assign_α:          mov              r11, 262
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # A
                        mov              qword ptr [r9 + 248], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_793_0]
                        .section         .rodata
.Lassign_α_793_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_793_1_s]
                        mov              r8, 32
                        mov              r9, 31
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n347_statement_end_α
.Lassign_α_793_0:       .quad            .Lassign_α_793_0_s
.Lassign_α_793_0_s:     .string          "A"
                        .size            n346_assign_bx, .-n346_assign_bx
                        .type            n347_statement_end_bx, @function
n347_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_statement_end_α:   mov              r11, 263
                        mov              r10, 31
                        add              rsp, 80;                             jmp   n348_statement_begin_α
                        .size            n347_statement_end_bx, .-n347_statement_end_bx
                        .type            n348_statement_begin_bx, @function
n348_statement_begin_bx:
#=======================================================================================================================
#         F = A | FENCE('+' *F) | FENCE('-' *F . *NEG())
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n348_statement_begin_α: mov              r11, 264
                        mov              r10, 32;                             jmp   n349_var_α
n348_statement_begin_β: mov              r11, 264;                            jmp   n356_statement_begin_α
                        .size            n348_statement_begin_bx, .-n348_statement_begin_bx
                        .type            n349_var_bx, @function
n349_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_var_α:             sub              rsp, 16
                        mov              r11, 265
                        mov              rax, qword ptr [r9 + 240]            # A
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n350_assign_α
                        .size            n349_var_bx, .-n349_var_bx
                        .type            n350_assign_bx, @function
n350_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_assign_α:          mov              r11, 266
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 424], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_799_0]
                        .section         .rodata
.Lassign_α_799_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_799_1_s]
                        mov              r8, 33
                        mov              r9, 32
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n351_lit_string_α
.Lassign_α_799_0:       .quad            .Lassign_α_799_0_s
.Lassign_α_799_0_s:     .string          "PAT$3$V0"
                        .size            n350_assign_bx, .-n350_assign_bx
                        .type            n351_lit_string_bx, @function
n351_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:      sub              rsp, 16
                        mov              r11, 267
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_800_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n352_lit_string_α
n351_lit_string_β:      mov              r11, 267
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n348_statement_begin_β
.Llit_string_α_800_0:   .quad            .Llit_string_α_800_0_s
.Llit_string_α_800_0_s: .string          "PAT$3"
                        .size            n351_lit_string_bx, .-n351_lit_string_bx
                        .type            n352_lit_string_bx, @function
n352_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:      sub              rsp, 16
                        mov              r11, 268
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_801_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n353_call_α
n352_lit_string_β:      mov              r11, 268
                        add              rsp, 16;                             jmp   n351_lit_string_β
.Llit_string_α_801_0:   .quad            .Llit_string_α_801_0_s
.Llit_string_α_801_0_s: .string          "1"
                        .size            n352_lit_string_bx, .-n352_lit_string_bx
                        .type            n353_call_bx, @function
n353_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_call_α:            sub              rsp, 16
                        mov              r11, 269
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
.Lcall_α_rkfnzd803:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd803]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_802_240
                        add              rsp, 16;                             jmp   n352_lit_string_β
.Lcall_α_802_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n354_assign_α
n353_call_β:            mov              r11, 269
                        add              rsp, 16;                             jmp   n352_lit_string_β
                        .size            n353_call_bx, .-n353_call_bx
                        .type            n354_assign_bx, @function
n354_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_assign_α:          mov              r11, 270
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # F
                        mov              qword ptr [r9 + 264], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_804_0]
                        .section         .rodata
.Lassign_α_804_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_804_1_s]
                        mov              r8, 33
                        mov              r9, 32
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n355_statement_end_α
.Lassign_α_804_0:       .quad            .Lassign_α_804_0_s
.Lassign_α_804_0_s:     .string          "F"
                        .size            n354_assign_bx, .-n354_assign_bx
                        .type            n355_statement_end_bx, @function
n355_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_statement_end_α:   mov              r11, 271
                        mov              r10, 32
                        add              rsp, 64;                             jmp   n356_statement_begin_α
                        .size            n355_statement_end_bx, .-n355_statement_end_bx
                        .type            n356_statement_begin_bx, @function
n356_statement_begin_bx:
#=======================================================================================================================
#         T = F ( FENCE('*' *T . *MUL()) | FENCE('/' *T . *DIV()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n356_statement_begin_α: mov              r11, 272
                        mov              r10, 33;                             jmp   n357_var_α
n356_statement_begin_β: mov              r11, 272;                            jmp   n364_statement_begin_α
                        .size            n356_statement_begin_bx, .-n356_statement_begin_bx
                        .type            n357_var_bx, @function
n357_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_var_α:             sub              rsp, 16
                        mov              r11, 273
                        mov              rax, qword ptr [r9 + 256]            # F
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n358_assign_α
                        .size            n357_var_bx, .-n357_var_bx
                        .type            n358_assign_bx, @function
n358_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_assign_α:          mov              r11, 274
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 440], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_810_0]
                        .section         .rodata
.Lassign_α_810_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_810_1_s]
                        mov              r8, 34
                        mov              r9, 33
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n359_lit_string_α
.Lassign_α_810_0:       .quad            .Lassign_α_810_0_s
.Lassign_α_810_0_s:     .string          "PAT$4$V0"
                        .size            n358_assign_bx, .-n358_assign_bx
                        .type            n359_lit_string_bx, @function
n359_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:      sub              rsp, 16
                        mov              r11, 275
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_811_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n360_lit_string_α
n359_lit_string_β:      mov              r11, 275
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n356_statement_begin_β
.Llit_string_α_811_0:   .quad            .Llit_string_α_811_0_s
.Llit_string_α_811_0_s: .string          "PAT$4"
                        .size            n359_lit_string_bx, .-n359_lit_string_bx
                        .type            n360_lit_string_bx, @function
n360_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:      sub              rsp, 16
                        mov              r11, 276
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_812_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n361_call_α
n360_lit_string_β:      mov              r11, 276
                        add              rsp, 16;                             jmp   n359_lit_string_β
.Llit_string_α_812_0:   .quad            .Llit_string_α_812_0_s
.Llit_string_α_812_0_s: .string          "1"
                        .size            n360_lit_string_bx, .-n360_lit_string_bx
                        .type            n361_call_bx, @function
n361_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_call_α:            sub              rsp, 16
                        mov              r11, 277
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
.Lcall_α_rkfnzd814:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd814]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_813_240
                        add              rsp, 16;                             jmp   n360_lit_string_β
.Lcall_α_813_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n362_assign_α
n361_call_β:            mov              r11, 277
                        add              rsp, 16;                             jmp   n360_lit_string_β
                        .size            n361_call_bx, .-n361_call_bx
                        .type            n362_assign_bx, @function
n362_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_assign_α:          mov              r11, 278
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # T
                        mov              qword ptr [r9 + 280], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_815_0]
                        .section         .rodata
.Lassign_α_815_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_815_1_s]
                        mov              r8, 34
                        mov              r9, 33
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n363_statement_end_α
.Lassign_α_815_0:       .quad            .Lassign_α_815_0_s
.Lassign_α_815_0_s:     .string          "T"
                        .size            n362_assign_bx, .-n362_assign_bx
                        .type            n363_statement_end_bx, @function
n363_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_end_α:   mov              r11, 279
                        mov              r10, 33
                        add              rsp, 64;                             jmp   n364_statement_begin_α
                        .size            n363_statement_end_bx, .-n363_statement_end_bx
                        .type            n364_statement_begin_bx, @function
n364_statement_begin_bx:
#=======================================================================================================================
#         X = T ( FENCE('+' *X . *ADD()) | FENCE('-' *X . *SUB()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n364_statement_begin_α: mov              r11, 280
                        mov              r10, 34;                             jmp   n365_var_α
n364_statement_begin_β: mov              r11, 280;                            jmp   n372_statement_begin_α
                        .size            n364_statement_begin_bx, .-n364_statement_begin_bx
                        .type            n365_var_bx, @function
n365_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:             sub              rsp, 16
                        mov              r11, 281
                        mov              rax, qword ptr [r9 + 272]            # T
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n366_assign_α
                        .size            n365_var_bx, .-n365_var_bx
                        .type            n366_assign_bx, @function
n366_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_assign_α:          mov              r11, 282
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 456], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_821_0]
                        .section         .rodata
.Lassign_α_821_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_821_1_s]
                        mov              r8, 35
                        mov              r9, 34
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n367_lit_string_α
.Lassign_α_821_0:       .quad            .Lassign_α_821_0_s
.Lassign_α_821_0_s:     .string          "PAT$5$V0"
                        .size            n366_assign_bx, .-n366_assign_bx
                        .type            n367_lit_string_bx, @function
n367_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:      sub              rsp, 16
                        mov              r11, 283
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_822_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n368_lit_string_α
n367_lit_string_β:      mov              r11, 283
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n364_statement_begin_β
.Llit_string_α_822_0:   .quad            .Llit_string_α_822_0_s
.Llit_string_α_822_0_s: .string          "PAT$5"
                        .size            n367_lit_string_bx, .-n367_lit_string_bx
                        .type            n368_lit_string_bx, @function
n368_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:      sub              rsp, 16
                        mov              r11, 284
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_823_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n369_call_α
n368_lit_string_β:      mov              r11, 284
                        add              rsp, 16;                             jmp   n367_lit_string_β
.Llit_string_α_823_0:   .quad            .Llit_string_α_823_0_s
.Llit_string_α_823_0_s: .string          "1"
                        .size            n368_lit_string_bx, .-n368_lit_string_bx
                        .type            n369_call_bx, @function
n369_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_call_α:            sub              rsp, 16
                        mov              r11, 285
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
.Lcall_α_rkfnzd825:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd825]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_824_240
                        add              rsp, 16;                             jmp   n368_lit_string_β
.Lcall_α_824_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n370_assign_α
n369_call_β:            mov              r11, 285
                        add              rsp, 16;                             jmp   n368_lit_string_β
                        .size            n369_call_bx, .-n369_call_bx
                        .type            n370_assign_bx, @function
n370_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_assign_α:          mov              r11, 286
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # X
                        mov              qword ptr [r9 + 296], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_826_0]
                        .section         .rodata
.Lassign_α_826_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_826_1_s]
                        mov              r8, 35
                        mov              r9, 34
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n371_statement_end_α
.Lassign_α_826_0:       .quad            .Lassign_α_826_0_s
.Lassign_α_826_0_s:     .string          "X"
                        .size            n370_assign_bx, .-n370_assign_bx
                        .type            n371_statement_end_bx, @function
n371_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_statement_end_α:   mov              r11, 287
                        mov              r10, 34
                        add              rsp, 64;                             jmp   n372_statement_begin_α
                        .size            n371_statement_end_bx, .-n371_statement_end_bx
                        .type            n372_statement_begin_bx, @function
n372_statement_begin_bx:
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n372_statement_begin_α: mov              r11, 288
                        mov              r10, 35;                             jmp   n373_lit_integer_α
n372_statement_begin_β: mov              r11, 288;                            jmp   n381_statement_begin_α
                        .size            n372_statement_begin_bx, .-n372_statement_begin_bx
                        .type            n373_lit_integer_bx, @function
n373_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_integer_α:     sub              rsp, 16
                        mov              r11, 289
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_831_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n374_call_α
.Llit_integer_α_831_0:  .quad            10
                        .size            n373_lit_integer_bx, .-n373_lit_integer_bx
                        .type            n374_call_bx, @function
n374_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:            sub              rsp, 16
                        mov              r11, 290
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd290: .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd290]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262144
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_832_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n372_statement_begin_β
.Lcall_α_832_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n375_assign_α
n374_call_β:            mov              r11, 290
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n372_statement_begin_β
                        .size            n374_call_bx, .-n374_call_bx
                        .type            n375_assign_bx, @function
n375_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_assign_α:          mov              r11, 291
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # PAT$6$V0
                        mov              qword ptr [r9 + 472], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_833_0]
                        .section         .rodata
.Lassign_α_833_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_833_1_s]
                        mov              r8, 36
                        mov              r9, 35
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n376_lit_string_α
.Lassign_α_833_0:       .quad            .Lassign_α_833_0_s
.Lassign_α_833_0_s:     .string          "PAT$6$V0"
                        .size            n375_assign_bx, .-n375_assign_bx
                        .type            n376_lit_string_bx, @function
n376_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:      sub              rsp, 16
                        mov              r11, 292
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_834_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n377_lit_string_α
n376_lit_string_β:      mov              r11, 292
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n372_statement_begin_β
.Llit_string_α_834_0:   .quad            .Llit_string_α_834_0_s
.Llit_string_α_834_0_s: .string          "PAT$6"
                        .size            n376_lit_string_bx, .-n376_lit_string_bx
                        .type            n377_lit_string_bx, @function
n377_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:      sub              rsp, 16
                        mov              r11, 293
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_835_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n378_call_α
n377_lit_string_β:      mov              r11, 293
                        add              rsp, 16;                             jmp   n376_lit_string_β
.Llit_string_α_835_0:   .quad            .Llit_string_α_835_0_s
.Llit_string_α_835_0_s: .string          "1"
                        .size            n377_lit_string_bx, .-n377_lit_string_bx
                        .type            n378_call_bx, @function
n378_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:            sub              rsp, 16
                        mov              r11, 294
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
.Lcall_α_rkfnzd837:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd837]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_836_240
                        add              rsp, 16;                             jmp   n377_lit_string_β
.Lcall_α_836_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n379_assign_α
n378_call_β:            mov              r11, 294
                        add              rsp, 16;                             jmp   n377_lit_string_β
                        .size            n378_call_bx, .-n378_call_bx
                        .type            n379_assign_bx, @function
n379_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_assign_α:          mov              r11, 295
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # eol
                        mov              qword ptr [r9 + 312], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_838_0]
                        .section         .rodata
.Lassign_α_838_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_838_1_s]
                        mov              r8, 36
                        mov              r9, 35
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n380_statement_end_α
.Lassign_α_838_0:       .quad            .Lassign_α_838_0_s
.Lassign_α_838_0_s:     .string          "eol"
                        .size            n379_assign_bx, .-n379_assign_bx
                        .type            n380_statement_end_bx, @function
n380_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_statement_end_α:   mov              r11, 296
                        mov              r10, 35
                        add              rsp, 80;                             jmp   n381_statement_begin_α
                        .size            n380_statement_end_bx, .-n380_statement_end_bx
                        .type            n381_statement_begin_bx, @function
n381_statement_begin_bx:
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol . *EMIT()) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n381_statement_begin_α: mov              r11, 297
                        mov              r10, 36;                             jmp   n382_var_α
n381_statement_begin_β: mov              r11, 297;                            jmp   n391_statement_begin_α
                        .size            n381_statement_begin_bx, .-n381_statement_begin_bx
                        .type            n382_var_bx, @function
n382_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_var_α:             sub              rsp, 16
                        mov              r11, 298
                        mov              rax, qword ptr [r9 + 288]            # X
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n383_assign_α
                        .size            n382_var_bx, .-n382_var_bx
                        .type            n383_assign_bx, @function
n383_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_assign_α:          mov              r11, 299
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # PAT$7$V0
                        mov              qword ptr [r9 + 488], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_844_0]
                        .section         .rodata
.Lassign_α_844_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_844_1_s]
                        mov              r8, 37
                        mov              r9, 36
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n384_var_α
.Lassign_α_844_0:       .quad            .Lassign_α_844_0_s
.Lassign_α_844_0_s:     .string          "PAT$7$V0"
                        .size            n383_assign_bx, .-n383_assign_bx
                        .type            n384_var_bx, @function
n384_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_var_α:             sub              rsp, 16
                        mov              r11, 300
                        mov              rax, qword ptr [r9 + 304]            # eol
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n385_assign_α
n384_var_β:             mov              r11, 300
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n381_statement_begin_β
                        .size            n384_var_bx, .-n384_var_bx
                        .type            n385_assign_bx, @function
n385_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_assign_α:          mov              r11, 301
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # PAT$7$V1
                        mov              qword ptr [r9 + 504], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_846_0]
                        .section         .rodata
.Lassign_α_846_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_846_1_s]
                        mov              r8, 37
                        mov              r9, 36
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n386_lit_string_α
.Lassign_α_846_0:       .quad            .Lassign_α_846_0_s
.Lassign_α_846_0_s:     .string          "PAT$7$V1"
                        .size            n385_assign_bx, .-n385_assign_bx
                        .type            n386_lit_string_bx, @function
n386_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:      sub              rsp, 16
                        mov              r11, 302
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_847_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n387_lit_string_α
n386_lit_string_β:      mov              r11, 302
                        add              rsp, 16;                             jmp   n384_var_β
.Llit_string_α_847_0:   .quad            .Llit_string_α_847_0_s
.Llit_string_α_847_0_s: .string          "PAT$7"
                        .size            n386_lit_string_bx, .-n386_lit_string_bx
                        .type            n387_lit_string_bx, @function
n387_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_lit_string_α:      sub              rsp, 16
                        mov              r11, 303
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_848_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n388_call_α
n387_lit_string_β:      mov              r11, 303
                        add              rsp, 16;                             jmp   n386_lit_string_β
.Llit_string_α_848_0:   .quad            .Llit_string_α_848_0_s
.Llit_string_α_848_0_s: .string          "2"
                        .size            n387_lit_string_bx, .-n387_lit_string_bx
                        .type            n388_call_bx, @function
n388_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_call_α:            sub              rsp, 16
                        mov              r11, 304
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
.Lcall_α_rkfnzd850:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd850]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_849_240
                        add              rsp, 16;                             jmp   n387_lit_string_β
.Lcall_α_849_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n389_assign_α
n388_call_β:            mov              r11, 304
                        add              rsp, 16;                             jmp   n387_lit_string_β
                        .size            n388_call_bx, .-n388_call_bx
                        .type            n389_assign_bx, @function
n389_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_assign_α:          mov              r11, 305
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # C
                        mov              qword ptr [r9 + 328], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_851_0]
                        .section         .rodata
.Lassign_α_851_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_851_1_s]
                        mov              r8, 37
                        mov              r9, 36
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n390_statement_end_α
.Lassign_α_851_0:       .quad            .Lassign_α_851_0_s
.Lassign_α_851_0_s:     .string          "C"
                        .size            n389_assign_bx, .-n389_assign_bx
                        .type            n390_statement_end_bx, @function
n390_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_statement_end_α:   mov              r11, 306
                        mov              r10, 36
                        add              rsp, 80;                             jmp   n391_statement_begin_α
                        .size            n390_statement_end_bx, .-n390_statement_end_bx
                        .type            n391_statement_begin_bx, @function
n391_statement_begin_bx:
#=======================================================================================================================
#         &TRIM = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
n391_statement_begin_α: mov              r11, 307
                        mov              r10, 37;                             jmp   n392_lit_integer_α
n391_statement_begin_β: mov              r11, 307;                            jmp   n395_statement_begin_α
                        .size            n391_statement_begin_bx, .-n391_statement_begin_bx
                        .type            n392_lit_integer_bx, @function
n392_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_integer_α:     sub              rsp, 16
                        mov              r11, 308
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_856_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n393_kw_assign_snobol4_α
.Llit_integer_α_856_0:  .quad            0
                        .size            n392_lit_integer_bx, .-n392_lit_integer_bx
                        .type            n393_kw_assign_snobol4_bx, @function
n393_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 309
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_857_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_857_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n391_statement_begin_β
.Lkw_assign_snobol4_α_857_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n394_statement_end_α
.Lkw_assign_snobol4_α_857_0:
                        .quad            1
                        .size            n393_kw_assign_snobol4_bx, .-n393_kw_assign_snobol4_bx
                        .type            n394_statement_end_bx, @function
n394_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_end_α:   mov              r11, 310
                        mov              r10, 37
                        add              rsp, 32;                             jmp   n395_statement_begin_α
                        .size            n394_statement_end_bx, .-n394_statement_end_bx
                        .type            n395_statement_begin_bx, @function
n395_statement_begin_bx:
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n395_statement_begin_α: mov              r11, 311
                        mov              r10, 38;                             jmp   n396_call_α
n395_statement_begin_β: mov              r11, 311;                            jmp   n399_statement_begin_α
                        .size            n395_statement_begin_bx, .-n395_statement_begin_bx
                        .type            n396_call_bx, @function
n396_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_call_α:            sub              rsp, 16
                        mov              r11, 312
                        .section         .rodata
.Lcall_α_rkfnzd863:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd863]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 327748
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lcall_α_862_240
                        add              rsp, 16;                             jmp   n395_statement_begin_β
.Lcall_α_862_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n397_assign_α
n396_call_β:            mov              r11, 312
                        add              rsp, 16;                             jmp   n395_statement_begin_β
                        .size            n396_call_bx, .-n396_call_bx
                        .type            n397_assign_bx, @function
n397_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_assign_α:          mov              r11, 313
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # vars
                        mov              qword ptr [r9 + 200], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_864_0]
                        .section         .rodata
.Lassign_α_864_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_864_1_s]
                        mov              r8, 40
                        mov              r9, 38
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n398_statement_end_α
.Lassign_α_864_0:       .quad            .Lassign_α_864_0_s
.Lassign_α_864_0_s:     .string          "vars"
                        .size            n397_assign_bx, .-n397_assign_bx
                        .type            n398_statement_end_bx, @function
n398_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_statement_end_α:   mov              r11, 314
                        mov              r10, 38
                        add              rsp, 16;                             jmp   n399_statement_begin_α
                        .size            n398_statement_end_bx, .-n398_statement_end_bx
                        .type            n399_statement_begin_bx, @function
n399_statement_begin_bx:
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n399_statement_begin_α: mov              r11, 315
                        mov              r10, 39;                             jmp   n400_var_α
n399_statement_begin_β: mov              r11, 315;                            jmp   n405_statement_begin_α
                        .size            n399_statement_begin_bx, .-n399_statement_begin_bx
                        .type            n400_var_bx, @function
n400_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:             sub              rsp, 16
                        mov              r11, 316
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n401_lit_string_α
                        .size            n400_var_bx, .-n400_var_bx
                        .type            n401_lit_string_bx, @function
n401_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:      sub              rsp, 16
                        mov              r11, 317
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_870_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n402_lit_integer_α
n401_lit_string_β:      mov              r11, 317
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n399_statement_begin_β
.Llit_string_α_870_0:   .quad            .Llit_string_α_870_0_s
.Llit_string_α_870_0_s: .string          "x"
                        .size            n401_lit_string_bx, .-n401_lit_string_bx
                        .type            n402_lit_integer_bx, @function
n402_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_integer_α:     sub              rsp, 16
                        mov              r11, 318
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_871_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n403_assign_var_α
n402_lit_integer_β:     mov              r11, 318
                        add              rsp, 16;                             jmp   n401_lit_string_β
.Llit_integer_α_871_0:  .quad            1
                        .size            n402_lit_integer_bx, .-n402_lit_integer_bx
                        .type            n403_assign_var_bx, @function
n403_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_assign_var_α:      sub              rsp, 16
                        mov              r11, 319
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_873_0
                        test             rsi, rsi;                            je    .Lassign_var_α_873_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_873_238
                        add              rsp, 16;                             jmp   n402_lit_integer_β
.Lassign_var_α_873_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n404_statement_end_α
.Lassign_var_α_873_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_873_239
                        add              rsp, 16;                             jmp   n402_lit_integer_β
.Lassign_var_α_873_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_873_240
                        add              rsp, 16;                             jmp   n402_lit_integer_β
.Lassign_var_α_873_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n404_statement_end_α
                        .size            n403_assign_var_bx, .-n403_assign_var_bx
                        .type            n404_statement_end_bx, @function
n404_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_statement_end_α:   mov              r11, 320
                        mov              r10, 39
                        add              rsp, 64;                             jmp   n405_statement_begin_α
                        .size            n404_statement_end_bx, .-n404_statement_end_bx
                        .type            n405_statement_begin_bx, @function
n405_statement_begin_bx:
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 42 0
n405_statement_begin_α: mov              r11, 321
                        mov              r10, 40;                             jmp   n406_var_α
n405_statement_begin_β: mov              r11, 321;                            jmp   n411_statement_begin_α
                        .size            n405_statement_begin_bx, .-n405_statement_begin_bx
                        .type            n406_var_bx, @function
n406_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_var_α:             sub              rsp, 16
                        mov              r11, 322
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n407_lit_string_α
                        .size            n406_var_bx, .-n406_var_bx
                        .type            n407_lit_string_bx, @function
n407_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:      sub              rsp, 16
                        mov              r11, 323
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_879_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n408_lit_integer_α
n407_lit_string_β:      mov              r11, 323
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n405_statement_begin_β
.Llit_string_α_879_0:   .quad            .Llit_string_α_879_0_s
.Llit_string_α_879_0_s: .string          "y"
                        .size            n407_lit_string_bx, .-n407_lit_string_bx
                        .type            n408_lit_integer_bx, @function
n408_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_integer_α:     sub              rsp, 16
                        mov              r11, 324
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_880_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n409_assign_var_α
n408_lit_integer_β:     mov              r11, 324
                        add              rsp, 16;                             jmp   n407_lit_string_β
.Llit_integer_α_880_0:  .quad            2
                        .size            n408_lit_integer_bx, .-n408_lit_integer_bx
                        .type            n409_assign_var_bx, @function
n409_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_assign_var_α:      sub              rsp, 16
                        mov              r11, 325
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_882_0
                        test             rsi, rsi;                            je    .Lassign_var_α_882_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_882_238
                        add              rsp, 16;                             jmp   n408_lit_integer_β
.Lassign_var_α_882_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n410_statement_end_α
.Lassign_var_α_882_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_882_239
                        add              rsp, 16;                             jmp   n408_lit_integer_β
.Lassign_var_α_882_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_882_240
                        add              rsp, 16;                             jmp   n408_lit_integer_β
.Lassign_var_α_882_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n410_statement_end_α
                        .size            n409_assign_var_bx, .-n409_assign_var_bx
                        .type            n410_statement_end_bx, @function
n410_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_statement_end_α:   mov              r11, 326
                        mov              r10, 40
                        add              rsp, 64;                             jmp   n411_statement_begin_α
                        .size            n410_statement_end_bx, .-n410_statement_end_bx
                        .type            n411_statement_begin_bx, @function
n411_statement_begin_bx:
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 43 0
n411_statement_begin_α: mov              r11, 327
                        mov              r10, 41;                             jmp   n412_var_α
n411_statement_begin_β: mov              r11, 327;                            jmp   n417_statement_begin_α
                        .size            n411_statement_begin_bx, .-n411_statement_begin_bx
                        .type            n412_var_bx, @function
n412_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_var_α:             sub              rsp, 16
                        mov              r11, 328
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n413_lit_string_α
                        .size            n412_var_bx, .-n412_var_bx
                        .type            n413_lit_string_bx, @function
n413_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_string_α:      sub              rsp, 16
                        mov              r11, 329
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_888_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n414_lit_integer_α
n413_lit_string_β:      mov              r11, 329
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n411_statement_begin_β
.Llit_string_α_888_0:   .quad            .Llit_string_α_888_0_s
.Llit_string_α_888_0_s: .string          "z"
                        .size            n413_lit_string_bx, .-n413_lit_string_bx
                        .type            n414_lit_integer_bx, @function
n414_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_integer_α:     sub              rsp, 16
                        mov              r11, 330
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_889_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n415_assign_var_α
n414_lit_integer_β:     mov              r11, 330
                        add              rsp, 16;                             jmp   n413_lit_string_β
.Llit_integer_α_889_0:  .quad            3
                        .size            n414_lit_integer_bx, .-n414_lit_integer_bx
                        .type            n415_assign_var_bx, @function
n415_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_assign_var_α:      sub              rsp, 16
                        mov              r11, 331
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_891_0
                        test             rsi, rsi;                            je    .Lassign_var_α_891_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_891_238
                        add              rsp, 16;                             jmp   n414_lit_integer_β
.Lassign_var_α_891_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n416_statement_end_α
.Lassign_var_α_891_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_891_239
                        add              rsp, 16;                             jmp   n414_lit_integer_β
.Lassign_var_α_891_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_891_240
                        add              rsp, 16;                             jmp   n414_lit_integer_β
.Lassign_var_α_891_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n416_statement_end_α
                        .size            n415_assign_var_bx, .-n415_assign_var_bx
                        .type            n416_statement_end_bx, @function
n416_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_statement_end_α:   mov              r11, 332
                        mov              r10, 41
                        add              rsp, 64;                             jmp   n417_statement_begin_α
                        .size            n416_statement_end_bx, .-n416_statement_end_bx
                        .type            n417_statement_begin_bx, @function
n417_statement_begin_bx:
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 45 0
n417_statement_begin_α: mov              r11, 333
                        mov              r10, 42;                             jmp   n418_lit_name_α
n417_statement_begin_β: mov              r11, 333;                            jmp   n423_statement_begin_α
                        .size            n417_statement_begin_bx, .-n417_statement_begin_bx
                        .type            n418_lit_name_bx, @function
n418_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_name_α:        sub              rsp, 16
                        mov              r11, 334
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_896_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n419_lit_integer_α
.Llit_name_α_896_0:     .quad            .Llit_name_α_896_0_s
.Llit_name_α_896_0_s:   .string          "INPUT"
                        .size            n418_lit_name_bx, .-n418_lit_name_bx
                        .type            n419_lit_integer_bx, @function
n419_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_integer_α:     sub              rsp, 16
                        mov              r11, 335
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_897_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n420_lit_string_α
n419_lit_integer_β:     mov              r11, 335
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n417_statement_begin_β
.Llit_integer_α_897_0:  .quad            9
                        .size            n419_lit_integer_bx, .-n419_lit_integer_bx
                        .type            n420_lit_string_bx, @function
n420_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_string_α:      sub              rsp, 16
                        mov              r11, 336
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_898_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n421_call_α
n420_lit_string_β:      mov              r11, 336
                        add              rsp, 16;                             jmp   n419_lit_integer_β
.Llit_string_α_898_0:   .quad            .Llit_string_α_898_0_s
.Llit_string_α_898_0_s: .string          "[-f0 -r4194304]"
                        .size            n420_lit_string_bx, .-n420_lit_string_bx
                        .type            n421_call_bx, @function
n421_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_call_α:            sub              rsp, 16
                        mov              r11, 337
                        sub              rsp, 48
                        mov              r8, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], r8
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], r8
                        .section         .rodata
.Lcall_α_bynamefnzd337: .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd337]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 327680
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_899_240
                        add              rsp, 16;                             jmp   n420_lit_string_β
.Lcall_α_899_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n422_statement_end_α
n421_call_β:            mov              r11, 337
                        add              rsp, 16;                             jmp   n420_lit_string_β
                        .size            n421_call_bx, .-n421_call_bx
                        .type            n422_statement_end_bx, @function
n422_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_statement_end_α:   mov              r11, 338
                        mov              r10, 42
                        add              rsp, 64;                             jmp   n423_statement_begin_α
                        .size            n422_statement_end_bx, .-n422_statement_end_bx
                        .type            n423_statement_begin_bx, @function
n423_statement_begin_bx:
#=======================================================================================================================
#         src = INPUT
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 46 0
n423_statement_begin_α: mov              r11, 339
                        mov              r10, 43;                             jmp   n424_var_α
n423_statement_begin_β: mov              r11, 339;                            jmp   n427_statement_begin_α
                        .size            n423_statement_begin_bx, .-n423_statement_begin_bx
                        .type            n424_var_bx, @function
n424_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:             sub              rsp, 16
                        mov              r11, 340
                        mov              rdi, qword ptr [rip + .Lvar_α_904_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_904_240
                        add              rsp, 16;                             jmp   n423_statement_begin_β
.Lvar_α_904_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n425_assign_α
.Lvar_α_904_0:          .quad            .Lvar_α_904_0_s
.Lvar_α_904_0_s:        .string          "INPUT"
                        .size            n424_var_bx, .-n424_var_bx
                        .type            n425_assign_bx, @function
n425_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_assign_α:          mov              r11, 341
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # src
                        mov              qword ptr [r9 + 344], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_905_0]
                        .section         .rodata
.Lassign_α_905_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_905_1_s]
                        mov              r8, 46
                        mov              r9, 43
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n426_statement_end_α
.Lassign_α_905_0:       .quad            .Lassign_α_905_0_s
.Lassign_α_905_0_s:     .string          "src"
                        .size            n425_assign_bx, .-n425_assign_bx
                        .type            n426_statement_end_bx, @function
n426_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_statement_end_α:   mov              r11, 342
                        mov              r10, 43
                        add              rsp, 16;                             jmp   n427_statement_begin_α
                        .size            n426_statement_end_bx, .-n426_statement_end_bx
                        .type            n427_statement_begin_bx, @function
n427_statement_begin_bx:
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
n427_statement_begin_α: mov              r11, 343
                        mov              r10, 44;                             jmp   n428_call_α
n427_statement_begin_β: mov              r11, 343;                            jmp   n431_statement_begin_α
                        .size            n427_statement_begin_bx, .-n427_statement_begin_bx
                        .type            n428_call_bx, @function
n428_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_call_α:            sub              rsp, 16
                        mov              r11, 344
                        .section         .rodata
.Lcall_α_rkfnzd911:     .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd911]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lcall_α_910_240
                        add              rsp, 16;                             jmp   n427_statement_begin_β
.Lcall_α_910_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n429_assign_α
n428_call_β:            mov              r11, 344
                        add              rsp, 16;                             jmp   n427_statement_begin_β
                        .size            n428_call_bx, .-n428_call_bx
                        .type            n429_assign_bx, @function
n429_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_assign_α:          mov              r11, 345
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # t0
                        mov              qword ptr [r9 + 360], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_912_0]
                        .section         .rodata
.Lassign_α_912_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_912_1_s]
                        mov              r8, 49
                        mov              r9, 44
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n430_statement_end_α
.Lassign_α_912_0:       .quad            .Lassign_α_912_0_s
.Lassign_α_912_0_s:     .string          "t0"
                        .size            n429_assign_bx, .-n429_assign_bx
                        .type            n430_statement_end_bx, @function
n430_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_statement_end_α:   mov              r11, 346
                        mov              r10, 44
                        add              rsp, 16;                             jmp   n431_statement_begin_α
                        .size            n430_statement_end_bx, .-n430_statement_end_bx
                        .type            n431_statement_begin_bx, @function
n431_statement_begin_bx:
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 50 0
n431_statement_begin_α: mov              r11, 347
                        mov              r10, 45;                             jmp   n432_var_α
n431_statement_begin_β: mov              r11, 347;                            jmp   n453_statement_begin_α
                        .size            n431_statement_begin_bx, .-n431_statement_begin_bx
                        .type            n432_var_bx, @function
n432_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_var_α:             sub              rsp, 16
                        mov              r11, 348
                        mov              rax, qword ptr [r9 + 336]            # src
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n433_var_α
                        .size            n432_var_bx, .-n432_var_bx
                        .type            n433_var_bx, @function
n433_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_var_α:             sub              rsp, 16
                        mov              r11, 349
                        mov              rax, qword ptr [r9 + 320]            # C
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n434_assign_α
n433_var_β:             mov              r11, 349
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n453_statement_begin_α
                        .size            n433_var_bx, .-n433_var_bx
                        .type            n434_assign_bx, @function
n434_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_assign_α:          mov              r11, 350
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_919_0]
                        .section         .rodata
.Lassign_α_919_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_919_1_s]
                        mov              r8, 50
                        mov              r9, 45
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_919_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n435_match_begin_α
n434_assign_β:          mov              r11, 350;                            jmp   n433_var_β
.Lassign_α_919_0:       .quad            .Lassign_α_919_0_s
.Lassign_α_919_0_s:     .string          "PATV$0"
                        .size            n434_assign_bx, .-n434_assign_bx
                        .type            n435_match_begin_bx, @function
n435_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_match_begin_α:     mov              r11, 351
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
.Lmatch_begin_α_921_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_921_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n436_match_defer_α
n435_match_begin_β:     mov              r11, 351
.Lmatch_begin_α_921_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_921_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_921_1
                                                                              jmp   .Lmatch_begin_α_921_0
.Lmatch_begin_β_921_1:
.Lmatch_begin_γ_435_af: mov              r11, 351
.Lmatch_begin_ω_435_af: mov              r11, 351
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
                        pop              rbp;                                 jmp   n434_assign_β
                        .size            n435_match_begin_bx, .-n435_match_begin_bx
                        .type            n436_match_defer_bx, @function
n436_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_match_defer_α:     mov              r11, 352
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S18]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_922_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_922_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_922_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_922_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_922_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_922_23
                                                                              jmp   .Lmatch_defer_α_922_22
.Lmatch_defer_α_922_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_922_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_922_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_922_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_922_0
.Lmatch_defer_α_922_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_922_0
.Lmatch_defer_α_922_22: push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S18]
                        mov              esi, r14d
                        mov              rdx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_probe_run@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lmatch_defer_α_922_23: test             rax, rax;                            jz    .Lmatch_defer_α_922_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_922_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_922_4]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_922_4]
                        lea              rdx, [rip + .Lmatch_defer_α_922_5];  jmp   rax
.Lmatch_defer_α_922_4:                                                        jmp   n437_match_end_α
.Lmatch_defer_α_922_5:                                                        jmp   n435_match_begin_β
.Lmatch_defer_α_922_0:  mov              eax, edx
                        test             eax, eax;                            js    n435_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_922_6]
                        push             rcx
                        push             rax;                                 jmp   n437_match_end_α
.Lmatch_defer_α_922_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n435_match_begin_β
n436_match_defer_β:     mov              r11, 352
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_922_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_922_12
                                                                              jmp   rax
.Lmatch_defer_β_922_12:                                                       jmp   qword ptr [rsp]
                        .size            n436_match_defer_bx, .-n436_match_defer_bx
                        .type            n437_match_end_bx, @function
n437_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_match_end_α:       mov              r11, 353
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
                        test             rax, rax;                            je    .Lmatch_end_α_924_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_435_af
.Lmatch_end_α_924_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n438_statement_end_α
                        .size            n437_match_end_bx, .-n437_match_end_bx
                        .type            n438_statement_end_bx, @function
n438_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_statement_end_α:   mov              r11, 354
                        mov              r10, 45
                        add              rsp, 32;                             jmp   n439_statement_begin_α
                        .size            n438_statement_end_bx, .-n438_statement_end_bx
                        .type            n439_statement_begin_bx, @function
n439_statement_begin_bx:
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 51 0
n439_statement_begin_α: mov              r11, 355
                        mov              r10, 46;                             jmp   n440_call_α
n439_statement_begin_β: mov              r11, 355;                            jmp   n443_statement_begin_α
                        .size            n439_statement_begin_bx, .-n439_statement_begin_bx
                        .type            n440_call_bx, @function
n440_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_call_α:            sub              rsp, 16
                        mov              r11, 356
                        .section         .rodata
.Lcall_α_rkfnzd930:     .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd930]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lcall_α_929_240
                        add              rsp, 16;                             jmp   n439_statement_begin_β
.Lcall_α_929_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n441_assign_α
n440_call_β:            mov              r11, 356
                        add              rsp, 16;                             jmp   n439_statement_begin_β
                        .size            n440_call_bx, .-n440_call_bx
                        .type            n441_assign_bx, @function
n441_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_assign_α:          mov              r11, 357
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # t1
                        mov              qword ptr [r9 + 376], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_931_0]
                        .section         .rodata
.Lassign_α_931_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_931_1_s]
                        mov              r8, 51
                        mov              r9, 46
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n442_statement_end_α
.Lassign_α_931_0:       .quad            .Lassign_α_931_0_s
.Lassign_α_931_0_s:     .string          "t1"
                        .size            n441_assign_bx, .-n441_assign_bx
                        .type            n442_statement_end_bx, @function
n442_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_statement_end_α:   mov              r11, 358
                        mov              r10, 46
                        add              rsp, 16;                             jmp   n443_statement_begin_α
                        .size            n442_statement_end_bx, .-n442_statement_end_bx
                        .type            n443_statement_begin_bx, @function
n443_statement_begin_bx:
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000        :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 52 0
n443_statement_begin_α: mov              r11, 359
                        mov              r10, 47;                             jmp   n444_lit_string_α
n443_statement_begin_β: mov              r11, 359;                            jmp   main_γ
                        .size            n443_statement_begin_bx, .-n443_statement_begin_bx
                        .type            n444_lit_string_bx, @function
n444_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:      sub              rsp, 16
                        mov              r11, 360
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_936_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n445_var_α
.Llit_string_α_936_0:   .quad            .Llit_string_α_936_0_s
.Llit_string_α_936_0_s: .string          "match_ms="
                        .size            n444_lit_string_bx, .-n444_lit_string_bx
                        .type            n445_var_bx, @function
n445_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_var_α:             sub              rsp, 16
                        mov              r11, 361
                        mov              rax, qword ptr [r9 + 368]            # t1
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n446_var_α
n445_var_β:             mov              r11, 361
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n443_statement_begin_β
                        .size            n445_var_bx, .-n445_var_bx
                        .type            n446_var_bx, @function
n446_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_var_α:             sub              rsp, 16
                        mov              r11, 362
                        mov              rax, qword ptr [r9 + 352]            # t0
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n447_binop_α
n446_var_β:             mov              r11, 362
                        add              rsp, 16;                             jmp   n445_var_β
                        .size            n446_var_bx, .-n446_var_bx
                        .type            n447_binop_bx, @function
n447_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_binop_α:           sub              rsp, 16
                        mov              r11, 363
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_939_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_939_7
.Lbinop_α_939_2:        and              edx, 1;                              jz    .Lbinop_α_939_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_939_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_939_4
.Lbinop_α_939_3:        movq             xmm0, rsi
.Lbinop_α_939_4:        cmp              cl, 5;                               je    .Lbinop_α_939_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_939_6
.Lbinop_α_939_5:        movq             xmm1, rdi
.Lbinop_α_939_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_939_7:                                                              jmp   n448_lit_integer_α
.Lbinop_α_939_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_939_240
                        add              rsp, 16;                             jmp   n446_var_β
.Lbinop_α_939_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n448_lit_integer_α
n447_binop_β:           mov              r11, 363
                        add              rsp, 16;                             jmp   n446_var_β
                        .size            n447_binop_bx, .-n447_binop_bx
                        .type            n448_lit_integer_bx, @function
n448_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:     sub              rsp, 16
                        mov              r11, 364
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_940_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n449_binop_α
n448_lit_integer_β:     mov              r11, 364
                        add              rsp, 16;                             jmp   n447_binop_β
.Llit_integer_α_940_0:  .quad            1000000
                        .size            n448_lit_integer_bx, .-n448_lit_integer_bx
                        .type            n449_binop_bx, @function
n449_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_binop_α:           sub              rsp, 16
                        mov              r11, 365
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_941_240
                        add              rsp, 16;                             jmp   n448_lit_integer_β
.Lbinop_α_941_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n450_binop_α
n449_binop_β:           mov              r11, 365
                        add              rsp, 16;                             jmp   n448_lit_integer_β
                        .size            n449_binop_bx, .-n449_binop_bx
                        .type            n450_binop_bx, @function
n450_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_binop_α:           sub              rsp, 16
                        mov              r11, 366
                        mov              rdi, qword ptr [rsp + 96]            # lit_string
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n451_assign_α
                        .size            n450_binop_bx, .-n450_binop_bx
                        .type            n451_assign_bx, @function
n451_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_assign_α:          mov              r11, 367
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_943_0]
                        .section         .rodata
.Lassign_α_943_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_943_1_s]
                        mov              r8, 52
                        mov              r9, 47
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_943_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n452_statement_end_α
.Lassign_α_943_0:       .quad            .Lassign_α_943_0_s
.Lassign_α_943_0_s:     .string          "TERMINAL"
                        .size            n451_assign_bx, .-n451_assign_bx
                        .type            n452_statement_end_bx, @function
n452_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_statement_end_α:   mov              r11, 368
                        mov              r10, 47
                        add              rsp, 112;                            jmp   main_γ
                        .size            n452_statement_end_bx, .-n452_statement_end_bx
                        .type            n453_statement_begin_bx, @function
n453_statement_begin_bx:
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 53 0
n453_statement_begin_α: mov              r11, 369
                        mov              r10, 48;                             jmp   n454_call_α
n453_statement_begin_β: mov              r11, 369;                            jmp   n457_statement_begin_α
                        .size            n453_statement_begin_bx, .-n453_statement_begin_bx
                        .type            n454_call_bx, @function
n454_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_call_α:            sub              rsp, 16
                        mov              r11, 370
                        .section         .rodata
.Lcall_α_rkfnzd949:     .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd949]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262213
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lcall_α_948_240
                        add              rsp, 16;                             jmp   n453_statement_begin_β
.Lcall_α_948_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n455_assign_α
n454_call_β:            mov              r11, 370
                        add              rsp, 16;                             jmp   n453_statement_begin_β
                        .size            n454_call_bx, .-n454_call_bx
                        .type            n455_assign_bx, @function
n455_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_assign_α:          mov              r11, 371
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # t1
                        mov              qword ptr [r9 + 376], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_950_0]
                        .section         .rodata
.Lassign_α_950_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_950_1_s]
                        mov              r8, 53
                        mov              r9, 48
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n456_statement_end_α
.Lassign_α_950_0:       .quad            .Lassign_α_950_0_s
.Lassign_α_950_0_s:     .string          "t1"
                        .size            n455_assign_bx, .-n455_assign_bx
                        .type            n456_statement_end_bx, @function
n456_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_statement_end_α:   mov              r11, 372
                        mov              r10, 48
                        add              rsp, 16;                             jmp   n457_statement_begin_α
                        .size            n456_statement_end_bx, .-n456_statement_end_bx
                        .type            n457_statement_begin_bx, @function
n457_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
n457_statement_begin_α: mov              r11, 373
                        mov              r10, 49;                             jmp   n458_lit_string_α
n457_statement_begin_β: mov              r11, 373;                            jmp   n461_statement_begin_α
                        .size            n457_statement_begin_bx, .-n457_statement_begin_bx
                        .type            n458_lit_string_bx, @function
n458_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_string_α:      sub              rsp, 16
                        mov              r11, 374
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_955_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n459_assign_α
.Llit_string_α_955_0:   .quad            .Llit_string_α_955_0_s
.Llit_string_α_955_0_s: .string          "Boo!"
                        .size            n458_lit_string_bx, .-n458_lit_string_bx
                        .type            n459_assign_bx, @function
n459_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_assign_α:          mov              r11, 375
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_956_0]
                        .section         .rodata
.Lassign_α_956_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_956_1_s]
                        mov              r8, 54
                        mov              r9, 49
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_956_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n460_statement_end_α
.Lassign_α_956_0:       .quad            .Lassign_α_956_0_s
.Lassign_α_956_0_s:     .string          "OUTPUT"
                        .size            n459_assign_bx, .-n459_assign_bx
                        .type            n460_statement_end_bx, @function
n460_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_statement_end_α:   mov              r11, 376
                        mov              r10, 49
                        add              rsp, 16;                             jmp   n461_statement_begin_α
                        .size            n460_statement_end_bx, .-n460_statement_end_bx
                        .type            n461_statement_begin_bx, @function
n461_statement_begin_bx:
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 55 0
n461_statement_begin_α: mov              r11, 377
                        mov              r10, 50;                             jmp   n462_lit_string_α
n461_statement_begin_β: mov              r11, 377;                            jmp   main_γ
                        .size            n461_statement_begin_bx, .-n461_statement_begin_bx
                        .type            n462_lit_string_bx, @function
n462_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_string_α:      sub              rsp, 16
                        mov              r11, 378
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_961_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n463_var_α
.Llit_string_α_961_0:   .quad            .Llit_string_α_961_0_s
.Llit_string_α_961_0_s: .string          "match_ms="
                        .size            n462_lit_string_bx, .-n462_lit_string_bx
                        .type            n463_var_bx, @function
n463_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_var_α:             sub              rsp, 16
                        mov              r11, 379
                        mov              rax, qword ptr [r9 + 368]            # t1
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n464_var_α
n463_var_β:             mov              r11, 379
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n461_statement_begin_β
                        .size            n463_var_bx, .-n463_var_bx
                        .type            n464_var_bx, @function
n464_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_var_α:             sub              rsp, 16
                        mov              r11, 380
                        mov              rax, qword ptr [r9 + 352]            # t0
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n465_binop_α
n464_var_β:             mov              r11, 380
                        add              rsp, 16;                             jmp   n463_var_β
                        .size            n464_var_bx, .-n464_var_bx
                        .type            n465_binop_bx, @function
n465_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_binop_α:           sub              rsp, 16
                        mov              r11, 381
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_964_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_964_7
.Lbinop_α_964_2:        and              edx, 1;                              jz    .Lbinop_α_964_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_964_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_964_4
.Lbinop_α_964_3:        movq             xmm0, rsi
.Lbinop_α_964_4:        cmp              cl, 5;                               je    .Lbinop_α_964_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_964_6
.Lbinop_α_964_5:        movq             xmm1, rdi
.Lbinop_α_964_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_964_7:                                                              jmp   n466_lit_integer_α
.Lbinop_α_964_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_964_240
                        add              rsp, 16;                             jmp   n464_var_β
.Lbinop_α_964_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n466_lit_integer_α
n465_binop_β:           mov              r11, 381
                        add              rsp, 16;                             jmp   n464_var_β
                        .size            n465_binop_bx, .-n465_binop_bx
                        .type            n466_lit_integer_bx, @function
n466_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n466_lit_integer_α:     sub              rsp, 16
                        mov              r11, 382
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_965_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n467_binop_α
n466_lit_integer_β:     mov              r11, 382
                        add              rsp, 16;                             jmp   n465_binop_β
.Llit_integer_α_965_0:  .quad            1000000
                        .size            n466_lit_integer_bx, .-n466_lit_integer_bx
                        .type            n467_binop_bx, @function
n467_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n467_binop_α:           sub              rsp, 16
                        mov              r11, 383
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_966_240
                        add              rsp, 16;                             jmp   n466_lit_integer_β
.Lbinop_α_966_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n468_binop_α
n467_binop_β:           mov              r11, 383
                        add              rsp, 16;                             jmp   n466_lit_integer_β
                        .size            n467_binop_bx, .-n467_binop_bx
                        .type            n468_binop_bx, @function
n468_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n468_binop_α:           sub              rsp, 16
                        mov              r11, 384
                        mov              rdi, qword ptr [rsp + 96]            # lit_string
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n469_assign_α
                        .size            n468_binop_bx, .-n468_binop_bx
                        .type            n469_assign_bx, @function
n469_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n469_assign_α:          mov              r11, 385
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_968_0]
                        .section         .rodata
.Lassign_α_968_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_968_1_s]
                        mov              r8, 55
                        mov              r9, 50
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_968_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n470_statement_end_α
.Lassign_α_968_0:       .quad            .Lassign_α_968_0_s
.Lassign_α_968_0_s:     .string          "TERMINAL"
                        .size            n469_assign_bx, .-n469_assign_bx
                        .type            n470_statement_end_bx, @function
n470_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n470_statement_end_α:   mov              r11, 386
                        mov              r10, 50
                        add              rsp, 112;                            jmp   main_γ
                        .size            n470_statement_end_bx, .-n470_statement_end_bx
                        .type            n471_goto_bx, @function
n471_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n471_goto_α:            mov              r11, 387;                            jmp   LBL__EMIT
n471_goto_β:            mov              r11, 387;                            jmp   main_ω
                        .size            n471_goto_bx, .-n471_goto_bx
                        .type            n472_goto_bx, @function
n472_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n472_goto_α:            mov              r11, 388;                            jmp   LBL__PSH
n472_goto_β:            mov              r11, 388;                            jmp   main_ω
                        .size            n472_goto_bx, .-n472_goto_bx
                        .type            n473_goto_bx, @function
n473_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n473_goto_α:            mov              r11, 389;                            jmp   LBL__DRF
n473_goto_β:            mov              r11, 389;                            jmp   main_ω
                        .size            n473_goto_bx, .-n473_goto_bx
                        .type            n474_goto_bx, @function
n474_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n474_goto_α:            mov              r11, 390;                            jmp   LBL__ADD
n474_goto_β:            mov              r11, 390;                            jmp   main_ω
                        .size            n474_goto_bx, .-n474_goto_bx
                        .type            n475_goto_bx, @function
n475_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n475_goto_α:            mov              r11, 391;                            jmp   LBL__SUB
n475_goto_β:            mov              r11, 391;                            jmp   main_ω
                        .size            n475_goto_bx, .-n475_goto_bx
                        .type            n476_goto_bx, @function
n476_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n476_goto_α:            mov              r11, 392;                            jmp   LBL__MUL
n476_goto_β:            mov              r11, 392;                            jmp   main_ω
                        .size            n476_goto_bx, .-n476_goto_bx
                        .type            n477_goto_bx, @function
n477_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n477_goto_α:            mov              r11, 393;                            jmp   LBL__DIV
n477_goto_β:            mov              r11, 393;                            jmp   main_ω
                        .size            n477_goto_bx, .-n477_goto_bx
                        .type            n478_goto_bx, @function
n478_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n478_goto_α:            mov              r11, 394;                            jmp   LBL__NEG
n478_goto_β:            mov              r11, 394;                            jmp   main_ω
                        .size            n478_goto_bx, .-n478_goto_bx
                        .type            n479_goto_bx, @function
n479_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n479_goto_α:            mov              r11, 395;                            jmp   n321_statement_begin_α
n479_goto_β:            mov              r11, 395;                            jmp   main_ω
                        .size            n479_goto_bx, .-n479_goto_bx
                        .type            n480_goto_bx, @function
n480_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n480_goto_α:            mov              r11, 396;                            jmp   n453_statement_begin_α
n480_goto_β:            mov              r11, 396;                            jmp   main_ω
                        .size            n480_goto_bx, .-n480_goto_bx
                        .type            n481_define_bx, @function
n481_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 397
                        mov              edi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_set_rtntype_role@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
                        .size            n481_define_bx, .-n481_define_bx
                        .type            n482_define_bx, @function
n482_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 398
                        mov              edi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_set_rtntype_role@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              rcx;                                 jmp   rcx
                        .size            n482_define_bx, .-n482_define_bx
                        .type            n483_lit_string_bx, @function
n483_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 399
                        push             rax
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 1
                        pop              rax;                                 jmp   RETURN
                        .size            n483_lit_string_bx, .-n483_lit_string_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
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
.Lstartup_pname0:       .string          "LBL__EMIT"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__EMIT
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4352
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__PSH"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            LBL__PSH
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4352
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "LBL__DRF"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            LBL__DRF
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4352
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "LBL__ADD"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            LBL__ADD
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4352
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "LBL__SUB"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            LBL__SUB
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4352
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "LBL__MUL"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            LBL__MUL
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4352
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "LBL__DIV"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            LBL__DIV
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4352
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "LBL__NEG"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            LBL__NEG
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4352
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala8:               .string          "EMIT"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            EMIT_α
                        lea              rdi, [rip + .Lseala8]
                        mov              rsi, qword ptr [rip + EMIT_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala9:               .string          "PSH"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            PSH_α
                        lea              rdi, [rip + .Lseala9]
                        mov              rsi, qword ptr [rip + PSH_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala10:              .string          "DRF"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            DRF_α
                        lea              rdi, [rip + .Lseala10]
                        mov              rsi, qword ptr [rip + DRF_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala11:              .string          "ADD"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ADD_α
                        lea              rdi, [rip + .Lseala11]
                        mov              rsi, qword ptr [rip + ADD_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala12:              .string          "SUB"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            SUB_α
                        lea              rdi, [rip + .Lseala12]
                        mov              rsi, qword ptr [rip + SUB_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala13:              .string          "MUL"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            MUL_α
                        lea              rdi, [rip + .Lseala13]
                        mov              rsi, qword ptr [rip + MUL_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala14:              .string          "DIV"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            DIV_α
                        lea              rdi, [rip + .Lseala14]
                        mov              rsi, qword ptr [rip + DIV_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala15:              .string          "NEG"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            NEG_α
                        lea              rdi, [rip + .Lseala15]
                        mov              rsi, qword ptr [rip + NEG_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "PAT$0"
                        .align           8
.Lstartup_prec16:
                        .quad            .Lstartup_pname16
                        .quad            FN__PAT$0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            96
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec16]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "PAT$1"
                        .align           8
.Lstartup_prec17:
                        .quad            .Lstartup_pname17
                        .quad            FN__PAT$1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            80
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec17]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          "PAT$2"
                        .align           8
.Lstartup_prec18:
                        .quad            .Lstartup_pname18
                        .quad            FN__PAT$2
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
                        lea              rdi, [rip + .Lstartup_prec18]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname19:      .string          "PAT$3"
                        .align           8
.Lstartup_prec19:
                        .quad            .Lstartup_pname19
                        .quad            FN__PAT$3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            176
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec19]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname20:      .string          "PAT$4"
                        .align           8
.Lstartup_prec20:
                        .quad            .Lstartup_pname20
                        .quad            FN__PAT$4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            224
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec20]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname21:      .string          "PAT$5"
                        .align           8
.Lstartup_prec21:
                        .quad            .Lstartup_pname21
                        .quad            FN__PAT$5
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            224
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec21]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname22:      .string          "PAT$6"
                        .align           8
.Lstartup_prec22:
                        .quad            .Lstartup_pname22
                        .quad            FN__PAT$6
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            64
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec22]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname23:      .string          "PAT$7"
                        .align           8
.Lstartup_prec23:
                        .quad            .Lstartup_pname23
                        .quad            FN__PAT$7
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            224
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec23]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "*PSH"
.S1:                    .string          "X"
.S2:                    .string          "PAT$2$V1"
.S3:                    .string          "PAT$2$V0"
.S4:                    .string          "F"
.S5:                    .string          "*NEG"
.S6:                    .string          "PAT$3$V0"
.S7:                    .string          "PAT$4$V0"
.S8:                    .string          "T"
.S9:                    .string          "*DIV"
.S10:                   .string          "*MUL"
.S11:                   .string          "PAT$5$V0"
.S12:                   .string          "*SUB"
.S13:                   .string          "*ADD"
.S14:                   .string          "PAT$6$V0"
.S15:                   .string          "PAT$7$V0"
.S16:                   .string          "PAT$7$V1"
.S17:                   .string          "*EMIT"
.S18:                   .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C1:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .text
                        .section         .note.GNU-stack,"",@progbits
