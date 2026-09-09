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
                        push             rcx;                                 jmp   rax
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
                        push             rcx;                                 jmp   rax
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
                        push             rcx;                                 jmp   rax
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
                        push             rcx;                                 jmp   rax
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
                        push             rcx;                                 jmp   rax
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
                        push             rcx;                                 jmp   rax
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
                        push             rcx;                                 jmp   rax
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
                        push             rcx;                                 jmp   rax
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
                        push             rcx;                                 jmp   rax
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
                        push             rcx;                                 jmp   rax
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
                        push             rcx;                                 jmp   rax
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
                        push             rcx;                                 jmp   rax
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
                        push             rcx;                                 jmp   rax
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
                        push             rcx;                                 jmp   rax
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
                        push             rcx;                                 jmp   rax
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
                        .type            n136_lit_integer_bx, @function
n136_lit_integer_bx:
#=======================================================================================================================
#         DEFINE('EMIT()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n136_lit_integer_α:     sub              rsp, 16
                        mov              r11, 52
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_488_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n137_lit_integer_α
.Llit_integer_α_488_0:  .quad            18446744073709551615
                        .size            n136_lit_integer_bx, .-n136_lit_integer_bx
                        .type            n137_lit_integer_bx, @function
n137_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:     sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_489_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n138_lit_string_α
.Llit_integer_α_489_0:  .quad            0
                        .size            n137_lit_integer_bx, .-n137_lit_integer_bx
                        .type            n138_lit_string_bx, @function
n138_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 35
                        mov              rax, qword ptr [rip + .Llit_string_α_490_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n139_call_α
.Llit_string_α_490_0:   .quad            .Llit_string_α_490_0_s
.Llit_string_α_490_0_s: .string          "snobol4/calculator/calculator-1.sno"
                        .size            n138_lit_string_bx, .-n138_lit_string_bx
                        .type            n139_call_bx, @function
n139_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_call_α:            sub              rsp, 16
                        mov              r11, 55
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
.Lcall_α_rkfnzd492:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd492]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_491_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n140_statement_begin_α
.Lcall_α_491_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_statement_begin_α
n139_call_β:            mov              r11, 55
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n140_statement_begin_α
                        .size            n139_call_bx, .-n139_call_bx
                        .type            n140_statement_begin_bx, @function
n140_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_begin_α: mov              r11, 56
                        mov              r10, 1;                              jmp   n141_define_α
n140_statement_begin_β: mov              r11, 56
                        add              rsp, 64;                             jmp   n143_statement_begin_α
                        .size            n140_statement_begin_bx, .-n140_statement_begin_bx
                        .type            n141_define_bx, @function
n141_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_define_α:          mov              r11, 57
                        mov              rdi, qword ptr [rip + .Ldefine_α_496_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_496_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_496_0]
                        lea              rsi, [rip + EMIT_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__EMIT]
                        mov              rcx, qword ptr [rip + body_cell$EMIT@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n142_statement_end_α
n141_define_β:          mov              r11, 57;                             jmp   n140_statement_begin_β
.Ldefine_α_496_0:       .quad            .Ldefine_α_496_0_s
.Ldefine_α_496_0_s:     .string          "EMIT"
.Ldefine_α_496_1:       .quad            .Ldefine_α_496_1_s
.Ldefine_α_496_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_497_245
#-----------------------------------------------------------------------------------------------------------------------
EMIT_α:                 sub              rsp, 48
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 0]              # EMIT
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_497_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_497_230
.Ldefine_α_497_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_497_232]
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
.Ldefine_α_497_230:                                                           jmp   .Ldefine_α_497_231
.Ldefine_α_497_232:     .quad            .Ldefine_α_497_232_s
.Ldefine_α_497_232_s:   .string          "EMIT"
.Ldefine_α_497_231:     lea              rcx, [rip + EMIT_γ]
                        lea              rax, [rip + EMIT_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$EMIT:         .quad            LBL__EMIT
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$EMIT@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
EMIT_γ:                 mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_497_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_497_235
.Ldefine_α_497_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_497_237]
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
.Ldefine_α_497_235:                                                           jmp   .Ldefine_α_497_236
.Ldefine_α_497_237:     .quad            .Ldefine_α_497_237_s
.Ldefine_α_497_237_s:   .string          "EMIT"
.Ldefine_α_497_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
EMIT_ω:                 mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_497_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_497_249
.Ldefine_α_497_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_497_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
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
.Ldefine_α_497_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_497_245:
                        .size            n141_define_bx, .-n141_define_bx
                        .type            n142_statement_end_bx, @function
n142_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_end_α:   mov              r11, 58
                        mov              r10, 1
                        add              rsp, 64;                             jmp   n143_statement_begin_α
                        .size            n142_statement_end_bx, .-n142_statement_end_bx
                        .type            n143_statement_begin_bx, @function
n143_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('PSH()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n143_statement_begin_α: mov              r11, 59
                        mov              r10, 2;                              jmp   n144_define_α
n143_statement_begin_β: mov              r11, 59;                             jmp   n146_statement_begin_α
                        .size            n143_statement_begin_bx, .-n143_statement_begin_bx
                        .type            n144_define_bx, @function
n144_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_define_α:          mov              r11, 60
                        mov              rdi, qword ptr [rip + .Ldefine_α_503_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_503_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_503_0]
                        lea              rsi, [rip + PSH_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__PSH]
                        mov              rcx, qword ptr [rip + body_cell$PSH@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n145_statement_end_α
n144_define_β:          mov              r11, 60;                             jmp   n143_statement_begin_β
.Ldefine_α_503_0:       .quad            .Ldefine_α_503_0_s
.Ldefine_α_503_0_s:     .string          "PSH"
.Ldefine_α_503_1:       .quad            .Ldefine_α_503_1_s
.Ldefine_α_503_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_504_245
#-----------------------------------------------------------------------------------------------------------------------
PSH_α:                  sub              rsp, 48
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 16]             # PSH
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_504_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_504_230
.Ldefine_α_504_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_504_232]
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
.Ldefine_α_504_230:                                                           jmp   .Ldefine_α_504_231
.Ldefine_α_504_232:     .quad            .Ldefine_α_504_232_s
.Ldefine_α_504_232_s:   .string          "PSH"
.Ldefine_α_504_231:     lea              rcx, [rip + PSH_γ]
                        lea              rax, [rip + PSH_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$PSH:          .quad            LBL__PSH
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$PSH@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
PSH_γ:                  mov              rdi, qword ptr [r9 + 16]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_504_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_504_235
.Ldefine_α_504_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_504_237]
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
.Ldefine_α_504_235:                                                           jmp   .Ldefine_α_504_236
.Ldefine_α_504_237:     .quad            .Ldefine_α_504_237_s
.Ldefine_α_504_237_s:   .string          "PSH"
.Ldefine_α_504_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
PSH_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_504_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_504_249
.Ldefine_α_504_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_504_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
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
.Ldefine_α_504_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_504_245:
                        .size            n144_define_bx, .-n144_define_bx
                        .type            n145_statement_end_bx, @function
n145_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_end_α:   mov              r11, 61
                        mov              r10, 2;                              jmp   n146_statement_begin_α
                        .size            n145_statement_end_bx, .-n145_statement_end_bx
                        .type            n146_statement_begin_bx, @function
n146_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('DRF(nm)')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n146_statement_begin_α: mov              r11, 62
                        mov              r10, 3;                              jmp   n147_define_α
n146_statement_begin_β: mov              r11, 62;                             jmp   n149_statement_begin_α
                        .size            n146_statement_begin_bx, .-n146_statement_begin_bx
                        .type            n147_define_bx, @function
n147_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_define_α:          mov              r11, 63
                        mov              rdi, qword ptr [rip + .Ldefine_α_510_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_510_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_510_0]
                        lea              rsi, [rip + DRF_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__DRF]
                        mov              rcx, qword ptr [rip + body_cell$DRF@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n148_statement_end_α
n147_define_β:          mov              r11, 63;                             jmp   n146_statement_begin_β
.Ldefine_α_510_0:       .quad            .Ldefine_α_510_0_s
.Ldefine_α_510_0_s:     .string          "DRF"
.Ldefine_α_510_1:       .quad            .Ldefine_α_510_1_s
.Ldefine_α_510_1_s:     .string          "nm"
                                                                              jmp   .Ldefine_α_511_245
#-----------------------------------------------------------------------------------------------------------------------
DRF_α:                  sub              rsp, 64
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 32]             # DRF
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_511_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # nm
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_511_41
.Ldefine_α_511_10:      mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Ldefine_α_511_41:      push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_511_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_511_230
.Ldefine_α_511_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_511_232]
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
.Ldefine_α_511_230:                                                           jmp   .Ldefine_α_511_231
.Ldefine_α_511_232:     .quad            .Ldefine_α_511_232_s
.Ldefine_α_511_232_s:   .string          "DRF"
.Ldefine_α_511_231:     lea              rcx, [rip + DRF_γ]
                        lea              rax, [rip + DRF_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$DRF:          .quad            LBL__DRF
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$DRF@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
DRF_γ:                  mov              rdi, qword ptr [r9 + 32]             # DRF
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_511_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_511_235
.Ldefine_α_511_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_511_237]
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
.Ldefine_α_511_235:                                                           jmp   .Ldefine_α_511_236
.Ldefine_α_511_237:     .quad            .Ldefine_α_511_237_s
.Ldefine_α_511_237_s:   .string          "DRF"
.Ldefine_α_511_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_511_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Ldefine_α_511_110
.Ldefine_α_511_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Ldefine_α_511_110:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
DRF_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_511_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Ldefine_α_511_180
.Ldefine_α_511_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Ldefine_α_511_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_511_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_511_249
.Ldefine_α_511_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_511_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
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
.Ldefine_α_511_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_511_245:
                        .size            n147_define_bx, .-n147_define_bx
                        .type            n148_statement_end_bx, @function
n148_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:   mov              r11, 64
                        mov              r10, 3;                              jmp   n149_statement_begin_α
                        .size            n148_statement_end_bx, .-n148_statement_end_bx
                        .type            n149_statement_begin_bx, @function
n149_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('ADD()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n149_statement_begin_α: mov              r11, 65
                        mov              r10, 4;                              jmp   n150_define_α
n149_statement_begin_β: mov              r11, 65;                             jmp   n152_statement_begin_α
                        .size            n149_statement_begin_bx, .-n149_statement_begin_bx
                        .type            n150_define_bx, @function
n150_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_define_α:          mov              r11, 66
                        mov              rdi, qword ptr [rip + .Ldefine_α_517_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_517_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_517_0]
                        lea              rsi, [rip + ADD_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__ADD]
                        mov              rcx, qword ptr [rip + body_cell$ADD@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n151_statement_end_α
n150_define_β:          mov              r11, 66;                             jmp   n149_statement_begin_β
.Ldefine_α_517_0:       .quad            .Ldefine_α_517_0_s
.Ldefine_α_517_0_s:     .string          "ADD"
.Ldefine_α_517_1:       .quad            .Ldefine_α_517_1_s
.Ldefine_α_517_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_518_245
#-----------------------------------------------------------------------------------------------------------------------
ADD_α:                  sub              rsp, 48
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 64]             # ADD
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_518_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_518_230
.Ldefine_α_518_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_518_232]
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
.Ldefine_α_518_230:                                                           jmp   .Ldefine_α_518_231
.Ldefine_α_518_232:     .quad            .Ldefine_α_518_232_s
.Ldefine_α_518_232_s:   .string          "ADD"
.Ldefine_α_518_231:     lea              rcx, [rip + ADD_γ]
                        lea              rax, [rip + ADD_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$ADD:          .quad            LBL__ADD
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$ADD@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
ADD_γ:                  mov              rdi, qword ptr [r9 + 64]
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_518_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_518_235
.Ldefine_α_518_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_518_237]
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
.Ldefine_α_518_235:                                                           jmp   .Ldefine_α_518_236
.Ldefine_α_518_237:     .quad            .Ldefine_α_518_237_s
.Ldefine_α_518_237_s:   .string          "ADD"
.Ldefine_α_518_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ADD_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_518_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_518_249
.Ldefine_α_518_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_518_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
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
.Ldefine_α_518_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_518_245:
                        .size            n150_define_bx, .-n150_define_bx
                        .type            n151_statement_end_bx, @function
n151_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   mov              r11, 67
                        mov              r10, 4;                              jmp   n152_statement_begin_α
                        .size            n151_statement_end_bx, .-n151_statement_end_bx
                        .type            n152_statement_begin_bx, @function
n152_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('SUB()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n152_statement_begin_α: mov              r11, 68
                        mov              r10, 5;                              jmp   n153_define_α
n152_statement_begin_β: mov              r11, 68;                             jmp   n155_statement_begin_α
                        .size            n152_statement_begin_bx, .-n152_statement_begin_bx
                        .type            n153_define_bx, @function
n153_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_define_α:          mov              r11, 69
                        mov              rdi, qword ptr [rip + .Ldefine_α_524_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_524_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_524_0]
                        lea              rsi, [rip + SUB_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__SUB]
                        mov              rcx, qword ptr [rip + body_cell$SUB@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n154_statement_end_α
n153_define_β:          mov              r11, 69;                             jmp   n152_statement_begin_β
.Ldefine_α_524_0:       .quad            .Ldefine_α_524_0_s
.Ldefine_α_524_0_s:     .string          "SUB"
.Ldefine_α_524_1:       .quad            .Ldefine_α_524_1_s
.Ldefine_α_524_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_525_245
#-----------------------------------------------------------------------------------------------------------------------
SUB_α:                  sub              rsp, 48
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 80]             # SUB
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_525_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_525_230
.Ldefine_α_525_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_525_232]
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
.Ldefine_α_525_230:                                                           jmp   .Ldefine_α_525_231
.Ldefine_α_525_232:     .quad            .Ldefine_α_525_232_s
.Ldefine_α_525_232_s:   .string          "SUB"
.Ldefine_α_525_231:     lea              rcx, [rip + SUB_γ]
                        lea              rax, [rip + SUB_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$SUB:          .quad            LBL__SUB
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$SUB@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
SUB_γ:                  mov              rdi, qword ptr [r9 + 80]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_525_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_525_235
.Ldefine_α_525_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_525_237]
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
.Ldefine_α_525_235:                                                           jmp   .Ldefine_α_525_236
.Ldefine_α_525_237:     .quad            .Ldefine_α_525_237_s
.Ldefine_α_525_237_s:   .string          "SUB"
.Ldefine_α_525_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 88], rax
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
SUB_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 88], rax
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_525_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_525_249
.Ldefine_α_525_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_525_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
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
.Ldefine_α_525_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_525_245:
                        .size            n153_define_bx, .-n153_define_bx
                        .type            n154_statement_end_bx, @function
n154_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_end_α:   mov              r11, 70
                        mov              r10, 5;                              jmp   n155_statement_begin_α
                        .size            n154_statement_end_bx, .-n154_statement_end_bx
                        .type            n155_statement_begin_bx, @function
n155_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('MUL()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n155_statement_begin_α: mov              r11, 71
                        mov              r10, 6;                              jmp   n156_define_α
n155_statement_begin_β: mov              r11, 71;                             jmp   n158_statement_begin_α
                        .size            n155_statement_begin_bx, .-n155_statement_begin_bx
                        .type            n156_define_bx, @function
n156_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_define_α:          mov              r11, 72
                        mov              rdi, qword ptr [rip + .Ldefine_α_531_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_531_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_531_0]
                        lea              rsi, [rip + MUL_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__MUL]
                        mov              rcx, qword ptr [rip + body_cell$MUL@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n157_statement_end_α
n156_define_β:          mov              r11, 72;                             jmp   n155_statement_begin_β
.Ldefine_α_531_0:       .quad            .Ldefine_α_531_0_s
.Ldefine_α_531_0_s:     .string          "MUL"
.Ldefine_α_531_1:       .quad            .Ldefine_α_531_1_s
.Ldefine_α_531_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_532_245
#-----------------------------------------------------------------------------------------------------------------------
MUL_α:                  sub              rsp, 48
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 96]             # MUL
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 96], 0
                        mov              qword ptr [r9 + 104], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_532_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_532_230
.Ldefine_α_532_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_532_232]
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
.Ldefine_α_532_230:                                                           jmp   .Ldefine_α_532_231
.Ldefine_α_532_232:     .quad            .Ldefine_α_532_232_s
.Ldefine_α_532_232_s:   .string          "MUL"
.Ldefine_α_532_231:     lea              rcx, [rip + MUL_γ]
                        lea              rax, [rip + MUL_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$MUL:          .quad            LBL__MUL
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$MUL@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
MUL_γ:                  mov              rdi, qword ptr [r9 + 96]
                        mov              rsi, qword ptr [r9 + 104]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_532_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_532_235
.Ldefine_α_532_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_532_237]
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
.Ldefine_α_532_235:                                                           jmp   .Ldefine_α_532_236
.Ldefine_α_532_237:     .quad            .Ldefine_α_532_237_s
.Ldefine_α_532_237_s:   .string          "MUL"
.Ldefine_α_532_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
MUL_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_532_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_532_249
.Ldefine_α_532_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_532_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
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
.Ldefine_α_532_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_532_245:
                        .size            n156_define_bx, .-n156_define_bx
                        .type            n157_statement_end_bx, @function
n157_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   mov              r11, 73
                        mov              r10, 6;                              jmp   n158_statement_begin_α
                        .size            n157_statement_end_bx, .-n157_statement_end_bx
                        .type            n158_statement_begin_bx, @function
n158_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('DIV()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n158_statement_begin_α: mov              r11, 74
                        mov              r10, 7;                              jmp   n159_define_α
n158_statement_begin_β: mov              r11, 74;                             jmp   n161_statement_begin_α
                        .size            n158_statement_begin_bx, .-n158_statement_begin_bx
                        .type            n159_define_bx, @function
n159_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_define_α:          mov              r11, 75
                        mov              rdi, qword ptr [rip + .Ldefine_α_538_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_538_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_538_0]
                        lea              rsi, [rip + DIV_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__DIV]
                        mov              rcx, qword ptr [rip + body_cell$DIV@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n160_statement_end_α
n159_define_β:          mov              r11, 75;                             jmp   n158_statement_begin_β
.Ldefine_α_538_0:       .quad            .Ldefine_α_538_0_s
.Ldefine_α_538_0_s:     .string          "DIV"
.Ldefine_α_538_1:       .quad            .Ldefine_α_538_1_s
.Ldefine_α_538_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_539_245
#-----------------------------------------------------------------------------------------------------------------------
DIV_α:                  sub              rsp, 48
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 112]            # DIV
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_539_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_539_230
.Ldefine_α_539_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_539_232]
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
.Ldefine_α_539_230:                                                           jmp   .Ldefine_α_539_231
.Ldefine_α_539_232:     .quad            .Ldefine_α_539_232_s
.Ldefine_α_539_232_s:   .string          "DIV"
.Ldefine_α_539_231:     lea              rcx, [rip + DIV_γ]
                        lea              rax, [rip + DIV_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$DIV:          .quad            LBL__DIV
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$DIV@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
DIV_γ:                  mov              rdi, qword ptr [r9 + 112]
                        mov              rsi, qword ptr [r9 + 120]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_539_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_539_235
.Ldefine_α_539_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_539_237]
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
.Ldefine_α_539_235:                                                           jmp   .Ldefine_α_539_236
.Ldefine_α_539_237:     .quad            .Ldefine_α_539_237_s
.Ldefine_α_539_237_s:   .string          "DIV"
.Ldefine_α_539_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
DIV_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_539_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_539_249
.Ldefine_α_539_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_539_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
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
.Ldefine_α_539_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_539_245:
                        .size            n159_define_bx, .-n159_define_bx
                        .type            n160_statement_end_bx, @function
n160_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_end_α:   mov              r11, 76
                        mov              r10, 7;                              jmp   n161_statement_begin_α
                        .size            n160_statement_end_bx, .-n160_statement_end_bx
                        .type            n161_statement_begin_bx, @function
n161_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('NEG()')                         :(FNS_end)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n161_statement_begin_α: mov              r11, 77
                        mov              r10, 8;                              jmp   n162_define_α
n161_statement_begin_β: mov              r11, 77;                             jmp   n325_statement_begin_α
                        .size            n161_statement_begin_bx, .-n161_statement_begin_bx
                        .type            n162_define_bx, @function
n162_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_define_α:          mov              r11, 78
                        mov              rdi, qword ptr [rip + .Ldefine_α_545_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_545_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_545_0]
                        lea              rsi, [rip + NEG_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__NEG]
                        mov              rcx, qword ptr [rip + body_cell$NEG@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n163_statement_end_α
n162_define_β:          mov              r11, 78;                             jmp   n161_statement_begin_β
.Ldefine_α_545_0:       .quad            .Ldefine_α_545_0_s
.Ldefine_α_545_0_s:     .string          "NEG"
.Ldefine_α_545_1:       .quad            .Ldefine_α_545_1_s
.Ldefine_α_545_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_546_245
#-----------------------------------------------------------------------------------------------------------------------
NEG_α:                  sub              rsp, 48
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 128]            # NEG
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_546_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_546_230
.Ldefine_α_546_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_546_232]
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
.Ldefine_α_546_230:                                                           jmp   .Ldefine_α_546_231
.Ldefine_α_546_232:     .quad            .Ldefine_α_546_232_s
.Ldefine_α_546_232_s:   .string          "NEG"
.Ldefine_α_546_231:     lea              rcx, [rip + NEG_γ]
                        lea              rax, [rip + NEG_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$NEG:          .quad            LBL__NEG
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$NEG@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
NEG_γ:                  mov              rdi, qword ptr [r9 + 128]
                        mov              rsi, qword ptr [r9 + 136]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_546_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_546_235
.Ldefine_α_546_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_546_237]
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
.Ldefine_α_546_235:                                                           jmp   .Ldefine_α_546_236
.Ldefine_α_546_237:     .quad            .Ldefine_α_546_237_s
.Ldefine_α_546_237_s:   .string          "NEG"
.Ldefine_α_546_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
NEG_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_546_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_546_249
.Ldefine_α_546_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_546_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
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
.Ldefine_α_546_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_546_245:
                        .size            n162_define_bx, .-n162_define_bx
                        .type            n163_statement_end_bx, @function
n163_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_end_α:   mov              r11, 79
                        mov              r10, 8;                              jmp   n325_statement_begin_α
                        .size            n163_statement_end_bx, .-n163_statement_end_bx
                        .type            n164_statement_begin_bx, @function
n164_statement_begin_bx:
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
LBL__EMIT:              mov              r11, 80
                        mov              r10, 9;                              jmp   n165_var_α
n164_statement_begin_β: mov              r11, 80;                             jmp   n172_statement_begin_α
                        .size            n164_statement_begin_bx, .-n164_statement_begin_bx
                        .type            n165_var_bx, @function
n165_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             sub              rsp, 16
                        mov              r11, 81
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n166_lit_integer_α
                        .size            n165_var_bx, .-n165_var_bx
                        .type            n166_lit_integer_bx, @function
n166_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:     sub              rsp, 16
                        mov              r11, 82
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_552_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_subscript_α
n166_lit_integer_β:     mov              r11, 82
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n164_statement_begin_β
.Llit_integer_α_552_0:  .quad            1
                        .size            n166_lit_integer_bx, .-n166_lit_integer_bx
                        .type            n167_subscript_bx, @function
n167_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_subscript_α:       sub              rsp, 16
                        mov              r11, 83
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
                        cmp              al, 104;                             jne   .Lsubscript_α_553_240
                        add              rsp, 16;                             jmp   n166_lit_integer_β
.Lsubscript_α_553_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_deref_α
n167_subscript_β:       mov              r11, 83
                        add              rsp, 16;                             jmp   n166_lit_integer_β
                        .size            n167_subscript_bx, .-n167_subscript_bx
                        .type            n168_deref_bx, @function
n168_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_deref_α:           sub              rsp, 16
                        mov              r11, 84
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
                        cmp              al, 104;                             jne   .Lderef_α_554_240
                        add              rsp, 16;                             jmp   n167_subscript_β
.Lderef_α_554_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_call_α
n168_deref_β:           mov              r11, 84
                        add              rsp, 16;                             jmp   n167_subscript_β
                        .size            n168_deref_bx, .-n168_deref_bx
                        .type            n169_call_bx, @function
n169_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_call_α:            sub              rsp, 16
                        mov              r11, 85
                        lea              rcx, [rip + .Lcall_α_sig556z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig556z:       .quad            1
                        .quad            .Lcall_α_556_2
                        .quad            .Lcall_α_556_2
                        .quad            16
.Lcall_α_556_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_556_29
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
.Lcall_α_556_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_556_240
                        add              rsp, 16;                             jmp   n168_deref_β
.Lcall_α_556_240:                                                             jmp   n170_assign_α
n169_call_β:            mov              r11, 85;                             jmp   n168_deref_β
.Lcall_β_556_0:         .quad            .Lcall_β_556_0_s
.Lcall_β_556_0_s:       .string          "DRF"
                        .size            n169_call_bx, .-n169_call_bx
                        .type            n170_assign_bx, @function
n170_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_assign_α:          mov              r11, 86
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
                        mov              rdi, qword ptr [rip + .Lassign_α_557_0]
                        .section         .rodata
.Lassign_α_557_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_557_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_557_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n171_statement_end_α
.Lassign_α_557_0:       .quad            .Lassign_α_557_0_s
.Lassign_α_557_0_s:     .string          "OUTPUT"
                        .size            n170_assign_bx, .-n170_assign_bx
                        .type            n171_statement_end_bx, @function
n171_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_end_α:   mov              r11, 87
                        mov              r10, 9
                        add              rsp, 80;                             jmp   n172_statement_begin_α
                        .size            n171_statement_end_bx, .-n171_statement_end_bx
                        .type            n172_statement_begin_bx, @function
n172_statement_begin_bx:
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n172_statement_begin_α: mov              r11, 88
                        mov              r10, 10;                             jmp   n173_lit_integer_α
n172_statement_begin_β: mov              r11, 88;                             jmp   n176_statement_begin_α
                        .size            n172_statement_begin_bx, .-n172_statement_begin_bx
                        .type            n173_lit_integer_bx, @function
n173_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     sub              rsp, 16
                        mov              r11, 89
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_562_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n174_assign_α
.Llit_integer_α_562_0:  .quad            0
                        .size            n173_lit_integer_bx, .-n173_lit_integer_bx
                        .type            n174_assign_bx, @function
n174_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_assign_α:          mov              r11, 90
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
                        mov              rdi, qword ptr [rip + .Lassign_α_563_0]
                        .section         .rodata
.Lassign_α_563_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_563_1_s]
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
                        pop              rax;                                 jmp   n175_statement_end_α
.Lassign_α_563_0:       .quad            .Lassign_α_563_0_s
.Lassign_α_563_0_s:     .string          "sp"
                        .size            n174_assign_bx, .-n174_assign_bx
                        .type            n175_statement_end_bx, @function
n175_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:   mov              r11, 91
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n176_statement_begin_α
                        .size            n175_statement_end_bx, .-n175_statement_end_bx
                        .type            n176_statement_begin_bx, @function
n176_statement_begin_bx:
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n176_statement_begin_α: mov              r11, 92
                        mov              r10, 11;                             jmp   n177_lit_name_α
n176_statement_begin_β: mov              r11, 92;                             jmp   NRETURN
                        .size            n176_statement_begin_bx, .-n176_statement_begin_bx
                        .type            n177_lit_name_bx, @function
n177_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_name_α:        sub              rsp, 16
                        mov              r11, 93
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_568_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n178_assign_α
.Llit_name_α_568_0:     .quad            .Llit_name_α_568_0_s
.Llit_name_α_568_0_s:   .string          "dm"
                        .size            n177_lit_name_bx, .-n177_lit_name_bx
                        .type            n178_assign_bx, @function
n178_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_assign_α:          mov              r11, 94
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
                        mov              rdi, qword ptr [rip + .Lassign_α_569_0]
                        .section         .rodata
.Lassign_α_569_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_569_1_s]
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
                        pop              rax;                                 jmp   n179_statement_end_α
.Lassign_α_569_0:       .quad            .Lassign_α_569_0_s
.Lassign_α_569_0_s:     .string          "EMIT"
                        .size            n178_assign_bx, .-n178_assign_bx
                        .type            n179_statement_end_bx, @function
n179_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_end_α:   mov              r11, 95
                        mov              r10, 11
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n179_statement_end_bx, .-n179_statement_end_bx
                        .type            n180_statement_begin_bx, @function
n180_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_begin_α: mov              r11, 96
                        mov              r10, 0;                              jmp   n181_statement_end_α
n180_statement_begin_β: mov              r11, 96;                             jmp   LBL__PSH
                        .size            n180_statement_begin_bx, .-n180_statement_begin_bx
                        .type            n181_statement_end_bx, @function
n181_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_end_α:   mov              r11, 97
                        mov              r10, 12;                             jmp   LBL__PSH
                        .size            n181_statement_end_bx, .-n181_statement_end_bx
                        .type            n182_statement_begin_bx, @function
n182_statement_begin_bx:
#=======================================================================================================================
# PSH     PSH = .S[sp = sp + 1]                   :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
LBL__PSH:               mov              r11, 98
                        mov              r10, 13;                             jmp   n183_var_α
n182_statement_begin_β: mov              r11, 98;                             jmp   NRETURN
                        .size            n182_statement_begin_bx, .-n182_statement_begin_bx
                        .type            n183_var_bx, @function
n183_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:             sub              rsp, 16
                        mov              r11, 99
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_var_α
                        .size            n183_var_bx, .-n183_var_bx
                        .type            n184_var_bx, @function
n184_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              r11, 100
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_lit_integer_α
n184_var_β:             mov              r11, 100
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n182_statement_begin_β
                        .size            n184_var_bx, .-n184_var_bx
                        .type            n185_lit_integer_bx, @function
n185_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_integer_α:     sub              rsp, 16
                        mov              r11, 101
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_580_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n186_binop_α
n185_lit_integer_β:     mov              r11, 101
                        add              rsp, 16;                             jmp   n184_var_β
.Llit_integer_α_580_0:  .quad            1
                        .size            n185_lit_integer_bx, .-n185_lit_integer_bx
                        .type            n186_binop_bx, @function
n186_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_binop_α:           sub              rsp, 16
                        mov              r11, 102
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_581_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_581_7
.Lbinop_α_581_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_581_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_581_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_581_4
.Lbinop_α_581_3:        movq             xmm0, rsi
.Lbinop_α_581_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_581_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_581_7:                                                              jmp   n187_assign_α
.Lbinop_α_581_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_581_240
                        add              rsp, 16;                             jmp   n185_lit_integer_β
.Lbinop_α_581_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n187_assign_α
n186_binop_β:           mov              r11, 102
                        add              rsp, 16;                             jmp   n185_lit_integer_β
                        .size            n186_binop_bx, .-n186_binop_bx
                        .type            n187_assign_bx, @function
n187_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_assign_α:          mov              r11, 103
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
                        mov              rdi, qword ptr [rip + .Lassign_α_582_0]
                        .section         .rodata
.Lassign_α_582_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_582_1_s]
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
                        pop              rax;                                 jmp   n188_subscript_α
.Lassign_α_582_0:       .quad            .Lassign_α_582_0_s
.Lassign_α_582_0_s:     .string          "sp"
                        .size            n187_assign_bx, .-n187_assign_bx
                        .type            n188_subscript_bx, @function
n188_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_subscript_α:       sub              rsp, 16
                        mov              r11, 104
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
                        cmp              al, 104;                             jne   .Lsubscript_α_583_240
                        add              rsp, 16;                             jmp   n186_binop_β
.Lsubscript_α_583_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_assign_α
                        .size            n188_subscript_bx, .-n188_subscript_bx
                        .type            n189_assign_bx, @function
n189_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_α:          mov              r11, 105
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
                        mov              rdi, qword ptr [rip + .Lassign_α_584_0]
                        .section         .rodata
.Lassign_α_584_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_584_1_s]
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
                        pop              rax;                                 jmp   n190_statement_end_α
.Lassign_α_584_0:       .quad            .Lassign_α_584_0_s
.Lassign_α_584_0_s:     .string          "PSH"
                        .size            n189_assign_bx, .-n189_assign_bx
                        .type            n190_statement_end_bx, @function
n190_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:   mov              r11, 106
                        mov              r10, 13
                        add              rsp, 80;                             jmp   NRETURN
                        .size            n190_statement_end_bx, .-n190_statement_end_bx
                        .type            n191_statement_begin_bx, @function
n191_statement_begin_bx:
#=======================================================================================================================
# DRF     DRF = nm
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
LBL__DRF:               mov              r11, 107
                        mov              r10, 14;                             jmp   n192_var_α
n191_statement_begin_β: mov              r11, 107;                            jmp   n195_statement_begin_α
                        .size            n191_statement_begin_bx, .-n191_statement_begin_bx
                        .type            n192_var_bx, @function
n192_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:             sub              rsp, 16
                        mov              r11, 108
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n193_assign_α
                        .size            n192_var_bx, .-n192_var_bx
                        .type            n193_assign_bx, @function
n193_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:          mov              r11, 109
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
                        mov              rdi, qword ptr [rip + .Lassign_α_590_0]
                        .section         .rodata
.Lassign_α_590_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_590_1_s]
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
                        pop              rax;                                 jmp   n194_statement_end_α
.Lassign_α_590_0:       .quad            .Lassign_α_590_0_s
.Lassign_α_590_0_s:     .string          "DRF"
                        .size            n193_assign_bx, .-n193_assign_bx
                        .type            n194_statement_end_bx, @function
n194_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:   mov              r11, 110
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n195_statement_begin_α
                        .size            n194_statement_end_bx, .-n194_statement_end_bx
                        .type            n195_statement_begin_bx, @function
n195_statement_begin_bx:
#=======================================================================================================================
#         nm ? POS(0) ANY(&LCASE) RPOS(0)         :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n195_statement_begin_α: mov              r11, 111
                        mov              r10, 15;                             jmp   n196_var_α
n195_statement_begin_β: mov              r11, 111;                            jmp   RETURN
                        .size            n195_statement_begin_bx, .-n195_statement_begin_bx
                        .type            n196_var_bx, @function
n196_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:             sub              rsp, 16
                        mov              r11, 112
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_match_begin_α
                        .size            n196_var_bx, .-n196_var_bx
                        .type            n197_match_begin_bx, @function
n197_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_match_begin_α:     mov              r11, 113
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
.Lmatch_begin_α_597_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_597_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n198_match_pos_α
n197_match_begin_β:     mov              r11, 113
.Lmatch_begin_α_597_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_597_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_597_1
                                                                              jmp   .Lmatch_begin_α_597_0
.Lmatch_begin_β_597_1:
.Lmatch_begin_γ_197_af: mov              r11, 113
.Lmatch_begin_ω_197_af: mov              r11, 113
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
                        .size            n197_match_begin_bx, .-n197_match_begin_bx
                        .type            n198_match_pos_bx, @function
n198_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_match_pos_α:       mov              r11, 114
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n197_match_begin_β
                                                                              jmp   n199_match_any_α
n198_match_pos_β:       mov              r11, 114;                            jmp   n197_match_begin_β
                        .size            n198_match_pos_bx, .-n198_match_pos_bx
                        .type            n199_match_any_bx, @function
n199_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_match_any_α:       mov              r11, 115
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n197_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n197_match_begin_β
                        add              r14d, 1;                             jmp   n200_match_rpos_α
n199_match_any_β:       mov              r11, 115
                        sub              r14d, 1;                             jmp   n197_match_begin_β
                        .size            n199_match_any_bx, .-n199_match_any_bx
                        .type            n200_match_rpos_bx, @function
n200_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_match_rpos_α:      mov              r11, 116
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n199_match_any_β
                                                                              jmp   n201_match_end_α
                        .size            n200_match_rpos_bx, .-n200_match_rpos_bx
                        .type            n201_match_end_bx, @function
n201_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_match_end_α:       mov              r11, 117
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
                        test             rax, rax;                            je    .Lmatch_end_α_603_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_197_af
.Lmatch_end_α_603_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n202_statement_end_α
                        .size            n201_match_end_bx, .-n201_match_end_bx
                        .type            n202_statement_end_bx, @function
n202_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_end_α:   mov              r11, 118
                        mov              r10, 15
                        add              rsp, 16;                             jmp   n203_statement_begin_α
                        .size            n202_statement_end_bx, .-n202_statement_end_bx
                        .type            n203_statement_begin_bx, @function
n203_statement_begin_bx:
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n203_statement_begin_α: mov              r11, 119
                        mov              r10, 16;                             jmp   n204_var_α
n203_statement_begin_β: mov              r11, 119;                            jmp   RETURN
                        .size            n203_statement_begin_bx, .-n203_statement_begin_bx
                        .type            n204_var_bx, @function
n204_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:             sub              rsp, 16
                        mov              r11, 120
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_var_α
                        .size            n204_var_bx, .-n204_var_bx
                        .type            n205_var_bx, @function
n205_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_var_α:             sub              rsp, 16
                        mov              r11, 121
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n206_subscript_α
n205_var_β:             mov              r11, 121
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n203_statement_begin_β
                        .size            n205_var_bx, .-n205_var_bx
                        .type            n206_subscript_bx, @function
n206_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_subscript_α:       sub              rsp, 16
                        mov              r11, 122
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
                        cmp              al, 104;                             jne   .Lsubscript_α_610_240
                        add              rsp, 16;                             jmp   n205_var_β
.Lsubscript_α_610_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_deref_α
n206_subscript_β:       mov              r11, 122
                        add              rsp, 16;                             jmp   n205_var_β
                        .size            n206_subscript_bx, .-n206_subscript_bx
                        .type            n207_deref_bx, @function
n207_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_deref_α:           sub              rsp, 16
                        mov              r11, 123
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
                        cmp              al, 104;                             jne   .Lderef_α_611_240
                        add              rsp, 16;                             jmp   n206_subscript_β
.Lderef_α_611_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_assign_α
                        .size            n207_deref_bx, .-n207_deref_bx
                        .type            n208_assign_bx, @function
n208_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_assign_α:          mov              r11, 124
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
                        mov              rdi, qword ptr [rip + .Lassign_α_612_0]
                        .section         .rodata
.Lassign_α_612_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_612_1_s]
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
                        pop              rax;                                 jmp   n209_statement_end_α
.Lassign_α_612_0:       .quad            .Lassign_α_612_0_s
.Lassign_α_612_0_s:     .string          "DRF"
                        .size            n208_assign_bx, .-n208_assign_bx
                        .type            n209_statement_end_bx, @function
n209_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_end_α:   mov              r11, 125
                        mov              r10, 16
                        add              rsp, 64;                             jmp   RETURN
                        .size            n209_statement_end_bx, .-n209_statement_end_bx
                        .type            n210_statement_begin_bx, @function
n210_statement_begin_bx:
#=======================================================================================================================
# ADD     S[sp = sp - 1] = DRF(S[sp]) + DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
LBL__ADD:               mov              r11, 126
                        mov              r10, 17;                             jmp   n211_var_α
n210_statement_begin_β: mov              r11, 126;                            jmp   n231_statement_begin_α
                        .size            n210_statement_begin_bx, .-n210_statement_begin_bx
                        .type            n211_var_bx, @function
n211_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_α:             sub              rsp, 16
                        mov              r11, 127
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n212_var_α
                        .size            n211_var_bx, .-n211_var_bx
                        .type            n212_var_bx, @function
n212_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_var_α:             sub              rsp, 16
                        mov              r11, 128
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n213_lit_integer_α
n212_var_β:             mov              r11, 128
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n210_statement_begin_β
                        .size            n212_var_bx, .-n212_var_bx
                        .type            n213_lit_integer_bx, @function
n213_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_integer_α:     sub              rsp, 16
                        mov              r11, 129
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_619_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n214_binop_α
n213_lit_integer_β:     mov              r11, 129
                        add              rsp, 16;                             jmp   n212_var_β
.Llit_integer_α_619_0:  .quad            1
                        .size            n213_lit_integer_bx, .-n213_lit_integer_bx
                        .type            n214_binop_bx, @function
n214_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_binop_α:           sub              rsp, 16
                        mov              r11, 130
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_620_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_620_7
.Lbinop_α_620_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_620_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_620_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_620_4
.Lbinop_α_620_3:        movq             xmm0, rsi
.Lbinop_α_620_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_620_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_620_7:                                                              jmp   n215_assign_α
.Lbinop_α_620_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_620_240
                        add              rsp, 16;                             jmp   n213_lit_integer_β
.Lbinop_α_620_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_assign_α
n214_binop_β:           mov              r11, 130
                        add              rsp, 16;                             jmp   n213_lit_integer_β
                        .size            n214_binop_bx, .-n214_binop_bx
                        .type            n215_assign_bx, @function
n215_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_assign_α:          mov              r11, 131
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
                        mov              rdi, qword ptr [rip + .Lassign_α_621_0]
                        .section         .rodata
.Lassign_α_621_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_621_1_s]
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
                        pop              rax;                                 jmp   n216_var_α
.Lassign_α_621_0:       .quad            .Lassign_α_621_0_s
.Lassign_α_621_0_s:     .string          "sp"
                        .size            n215_assign_bx, .-n215_assign_bx
                        .type            n216_var_bx, @function
n216_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:             sub              rsp, 16
                        mov              r11, 132
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n217_var_α
n216_var_β:             mov              r11, 132
                        add              rsp, 16;                             jmp   n214_binop_β
                        .size            n216_var_bx, .-n216_var_bx
                        .type            n217_var_bx, @function
n217_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_var_α:             sub              rsp, 16
                        mov              r11, 133
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n218_subscript_α
n217_var_β:             mov              r11, 133
                        add              rsp, 16;                             jmp   n216_var_β
                        .size            n217_var_bx, .-n217_var_bx
                        .type            n218_subscript_bx, @function
n218_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_subscript_α:       sub              rsp, 16
                        mov              r11, 134
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
                        cmp              al, 104;                             jne   .Lsubscript_α_624_240
                        add              rsp, 16;                             jmp   n217_var_β
.Lsubscript_α_624_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_deref_α
n218_subscript_β:       mov              r11, 134
                        add              rsp, 16;                             jmp   n217_var_β
                        .size            n218_subscript_bx, .-n218_subscript_bx
                        .type            n219_deref_bx, @function
n219_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_deref_α:           sub              rsp, 16
                        mov              r11, 135
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
                        cmp              al, 104;                             jne   .Lderef_α_625_240
                        add              rsp, 16;                             jmp   n218_subscript_β
.Lderef_α_625_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_call_α
n219_deref_β:           mov              r11, 135
                        add              rsp, 16;                             jmp   n218_subscript_β
                        .size            n219_deref_bx, .-n219_deref_bx
                        .type            n220_call_bx, @function
n220_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_call_α:            sub              rsp, 16
                        mov              r11, 136
                        lea              rcx, [rip + .Lcall_α_sig627z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig627z:       .quad            1
                        .quad            .Lcall_α_627_2
                        .quad            .Lcall_α_627_2
                        .quad            16
.Lcall_α_627_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_627_29
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
.Lcall_α_627_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_627_240
                        add              rsp, 16;                             jmp   n219_deref_β
.Lcall_α_627_240:                                                             jmp   n221_var_α
n220_call_β:            mov              r11, 136;                            jmp   n219_deref_β
.Lcall_β_627_0:         .quad            .Lcall_β_627_0_s
.Lcall_β_627_0_s:       .string          "DRF"
                        .size            n220_call_bx, .-n220_call_bx
                        .type            n221_var_bx, @function
n221_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:             sub              rsp, 16
                        mov              r11, 137
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n222_var_α
n221_var_β:             mov              r11, 137
                        add              rsp, 32;                             jmp   n219_deref_β
                        .size            n221_var_bx, .-n221_var_bx
                        .type            n222_var_bx, @function
n222_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_var_α:             sub              rsp, 16
                        mov              r11, 138
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_lit_integer_α
n222_var_β:             mov              r11, 138
                        add              rsp, 16;                             jmp   n221_var_β
                        .size            n222_var_bx, .-n222_var_bx
                        .type            n223_lit_integer_bx, @function
n223_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_integer_α:     sub              rsp, 16
                        mov              r11, 139
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_630_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n224_binop_α
n223_lit_integer_β:     mov              r11, 139
                        add              rsp, 16;                             jmp   n222_var_β
.Llit_integer_α_630_0:  .quad            1
                        .size            n223_lit_integer_bx, .-n223_lit_integer_bx
                        .type            n224_binop_bx, @function
n224_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_binop_α:           sub              rsp, 16
                        mov              r11, 140
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_631_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_631_7
.Lbinop_α_631_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_631_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_631_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_631_4
.Lbinop_α_631_3:        movq             xmm0, rsi
.Lbinop_α_631_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_631_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_631_7:                                                              jmp   n225_subscript_α
.Lbinop_α_631_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_631_240
                        add              rsp, 16;                             jmp   n223_lit_integer_β
.Lbinop_α_631_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n225_subscript_α
n224_binop_β:           mov              r11, 140
                        add              rsp, 16;                             jmp   n223_lit_integer_β
                        .size            n224_binop_bx, .-n224_binop_bx
                        .type            n225_subscript_bx, @function
n225_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_subscript_α:       sub              rsp, 16
                        mov              r11, 141
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
                        cmp              al, 104;                             jne   .Lsubscript_α_632_240
                        add              rsp, 16;                             jmp   n224_binop_β
.Lsubscript_α_632_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_deref_α
n225_subscript_β:       mov              r11, 141
                        add              rsp, 16;                             jmp   n224_binop_β
                        .size            n225_subscript_bx, .-n225_subscript_bx
                        .type            n226_deref_bx, @function
n226_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_deref_α:           sub              rsp, 16
                        mov              r11, 142
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
                        cmp              al, 104;                             jne   .Lderef_α_633_240
                        add              rsp, 16;                             jmp   n225_subscript_β
.Lderef_α_633_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_call_α
n226_deref_β:           mov              r11, 142
                        add              rsp, 16;                             jmp   n225_subscript_β
                        .size            n226_deref_bx, .-n226_deref_bx
                        .type            n227_call_bx, @function
n227_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_call_α:            sub              rsp, 16
                        mov              r11, 143
                        lea              rcx, [rip + .Lcall_α_sig635z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig635z:       .quad            1
                        .quad            .Lcall_α_635_2
                        .quad            .Lcall_α_635_2
                        .quad            16
.Lcall_α_635_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_635_29
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
.Lcall_α_635_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_635_240
                        add              rsp, 16;                             jmp   n226_deref_β
.Lcall_α_635_240:                                                             jmp   n228_binop_α
n227_call_β:            mov              r11, 143;                            jmp   n226_deref_β
.Lcall_β_635_0:         .quad            .Lcall_β_635_0_s
.Lcall_β_635_0_s:       .string          "DRF"
                        .size            n227_call_bx, .-n227_call_bx
                        .type            n228_binop_bx, @function
n228_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_binop_α:           sub              rsp, 16
                        mov              r11, 144
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_636_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_636_7
.Lbinop_α_636_2:        and              edx, 1;                              jz    .Lbinop_α_636_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_636_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_636_4
.Lbinop_α_636_3:        movq             xmm0, rsi
.Lbinop_α_636_4:        cmp              cl, 5;                               je    .Lbinop_α_636_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_636_6
.Lbinop_α_636_5:        movq             xmm1, rdi
.Lbinop_α_636_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_636_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_636_7:                                                              jmp   n229_assign_var_α
.Lbinop_α_636_0:        mov              rdi, qword ptr [rsp + 128]           # call
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
                        cmp              al, 104;                             jne   .Lbinop_α_636_240
                        add              rsp, 32;                             jmp   n226_deref_β
.Lbinop_α_636_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n229_assign_var_α
n228_binop_β:           mov              r11, 144
                        add              rsp, 32;                             jmp   n226_deref_β
                        .size            n228_binop_bx, .-n228_binop_bx
                        .type            n229_assign_var_bx, @function
n229_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_assign_var_α:      sub              rsp, 16
                        mov              r11, 145
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_638_0
                        test             rsi, rsi;                            je    .Lassign_var_α_638_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_638_238
                        add              rsp, 16;                             jmp   n228_binop_β
.Lassign_var_α_638_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n230_statement_end_α
.Lassign_var_α_638_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_638_239
                        add              rsp, 16;                             jmp   n228_binop_β
.Lassign_var_α_638_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_638_240
                        add              rsp, 16;                             jmp   n228_binop_β
.Lassign_var_α_638_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n230_statement_end_α
                        .size            n229_assign_var_bx, .-n229_assign_var_bx
                        .type            n230_statement_end_bx, @function
n230_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_end_α:   mov              r11, 146
                        mov              r10, 17
                        add              rsp, 288;                            jmp   n231_statement_begin_α
                        .size            n230_statement_end_bx, .-n230_statement_end_bx
                        .type            n231_statement_begin_bx, @function
n231_statement_begin_bx:
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n231_statement_begin_α: mov              r11, 147
                        mov              r10, 18;                             jmp   n232_lit_name_α
n231_statement_begin_β: mov              r11, 147;                            jmp   NRETURN
                        .size            n231_statement_begin_bx, .-n231_statement_begin_bx
                        .type            n232_lit_name_bx, @function
n232_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_name_α:        sub              rsp, 16
                        mov              r11, 148
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_643_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n233_assign_α
.Llit_name_α_643_0:     .quad            .Llit_name_α_643_0_s
.Llit_name_α_643_0_s:   .string          "dm"
                        .size            n232_lit_name_bx, .-n232_lit_name_bx
                        .type            n233_assign_bx, @function
n233_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_assign_α:          mov              r11, 149
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
                        mov              rdi, qword ptr [rip + .Lassign_α_644_0]
                        .section         .rodata
.Lassign_α_644_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_644_1_s]
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
                        pop              rax;                                 jmp   n234_statement_end_α
.Lassign_α_644_0:       .quad            .Lassign_α_644_0_s
.Lassign_α_644_0_s:     .string          "ADD"
                        .size            n233_assign_bx, .-n233_assign_bx
                        .type            n234_statement_end_bx, @function
n234_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_end_α:   mov              r11, 150
                        mov              r10, 18
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n234_statement_end_bx, .-n234_statement_end_bx
                        .type            n235_statement_begin_bx, @function
n235_statement_begin_bx:
#=======================================================================================================================
# SUB     S[sp = sp - 1] = DRF(S[sp]) - DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
LBL__SUB:               mov              r11, 151
                        mov              r10, 19;                             jmp   n236_var_α
n235_statement_begin_β: mov              r11, 151;                            jmp   n256_statement_begin_α
                        .size            n235_statement_begin_bx, .-n235_statement_begin_bx
                        .type            n236_var_bx, @function
n236_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             sub              rsp, 16
                        mov              r11, 152
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n237_var_α
                        .size            n236_var_bx, .-n236_var_bx
                        .type            n237_var_bx, @function
n237_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:             sub              rsp, 16
                        mov              r11, 153
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n238_lit_integer_α
n237_var_β:             mov              r11, 153
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n235_statement_begin_β
                        .size            n237_var_bx, .-n237_var_bx
                        .type            n238_lit_integer_bx, @function
n238_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_integer_α:     sub              rsp, 16
                        mov              r11, 154
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_651_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n239_binop_α
n238_lit_integer_β:     mov              r11, 154
                        add              rsp, 16;                             jmp   n237_var_β
.Llit_integer_α_651_0:  .quad            1
                        .size            n238_lit_integer_bx, .-n238_lit_integer_bx
                        .type            n239_binop_bx, @function
n239_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_binop_α:           sub              rsp, 16
                        mov              r11, 155
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_652_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_652_7
.Lbinop_α_652_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_652_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_652_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_652_4
.Lbinop_α_652_3:        movq             xmm0, rsi
.Lbinop_α_652_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_652_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_652_7:                                                              jmp   n240_assign_α
.Lbinop_α_652_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_652_240
                        add              rsp, 16;                             jmp   n238_lit_integer_β
.Lbinop_α_652_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_assign_α
n239_binop_β:           mov              r11, 155
                        add              rsp, 16;                             jmp   n238_lit_integer_β
                        .size            n239_binop_bx, .-n239_binop_bx
                        .type            n240_assign_bx, @function
n240_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_assign_α:          mov              r11, 156
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
                        mov              rdi, qword ptr [rip + .Lassign_α_653_0]
                        .section         .rodata
.Lassign_α_653_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_653_1_s]
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
                        pop              rax;                                 jmp   n241_var_α
.Lassign_α_653_0:       .quad            .Lassign_α_653_0_s
.Lassign_α_653_0_s:     .string          "sp"
                        .size            n240_assign_bx, .-n240_assign_bx
                        .type            n241_var_bx, @function
n241_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             sub              rsp, 16
                        mov              r11, 157
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_var_α
n241_var_β:             mov              r11, 157
                        add              rsp, 16;                             jmp   n239_binop_β
                        .size            n241_var_bx, .-n241_var_bx
                        .type            n242_var_bx, @function
n242_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             sub              rsp, 16
                        mov              r11, 158
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_subscript_α
n242_var_β:             mov              r11, 158
                        add              rsp, 16;                             jmp   n241_var_β
                        .size            n242_var_bx, .-n242_var_bx
                        .type            n243_subscript_bx, @function
n243_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_subscript_α:       sub              rsp, 16
                        mov              r11, 159
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
                        cmp              al, 104;                             jne   .Lsubscript_α_656_240
                        add              rsp, 16;                             jmp   n242_var_β
.Lsubscript_α_656_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_deref_α
n243_subscript_β:       mov              r11, 159
                        add              rsp, 16;                             jmp   n242_var_β
                        .size            n243_subscript_bx, .-n243_subscript_bx
                        .type            n244_deref_bx, @function
n244_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_deref_α:           sub              rsp, 16
                        mov              r11, 160
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
                        cmp              al, 104;                             jne   .Lderef_α_657_240
                        add              rsp, 16;                             jmp   n243_subscript_β
.Lderef_α_657_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n245_call_α
n244_deref_β:           mov              r11, 160
                        add              rsp, 16;                             jmp   n243_subscript_β
                        .size            n244_deref_bx, .-n244_deref_bx
                        .type            n245_call_bx, @function
n245_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_call_α:            sub              rsp, 16
                        mov              r11, 161
                        lea              rcx, [rip + .Lcall_α_sig659z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig659z:       .quad            1
                        .quad            .Lcall_α_659_2
                        .quad            .Lcall_α_659_2
                        .quad            16
.Lcall_α_659_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_659_29
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
.Lcall_α_659_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_659_240
                        add              rsp, 16;                             jmp   n244_deref_β
.Lcall_α_659_240:                                                             jmp   n246_var_α
n245_call_β:            mov              r11, 161;                            jmp   n244_deref_β
.Lcall_β_659_0:         .quad            .Lcall_β_659_0_s
.Lcall_β_659_0_s:       .string          "DRF"
                        .size            n245_call_bx, .-n245_call_bx
                        .type            n246_var_bx, @function
n246_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:             sub              rsp, 16
                        mov              r11, 162
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n247_var_α
n246_var_β:             mov              r11, 162
                        add              rsp, 32;                             jmp   n244_deref_β
                        .size            n246_var_bx, .-n246_var_bx
                        .type            n247_var_bx, @function
n247_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:             sub              rsp, 16
                        mov              r11, 163
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n248_lit_integer_α
n247_var_β:             mov              r11, 163
                        add              rsp, 16;                             jmp   n246_var_β
                        .size            n247_var_bx, .-n247_var_bx
                        .type            n248_lit_integer_bx, @function
n248_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:     sub              rsp, 16
                        mov              r11, 164
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_662_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n249_binop_α
n248_lit_integer_β:     mov              r11, 164
                        add              rsp, 16;                             jmp   n247_var_β
.Llit_integer_α_662_0:  .quad            1
                        .size            n248_lit_integer_bx, .-n248_lit_integer_bx
                        .type            n249_binop_bx, @function
n249_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_binop_α:           sub              rsp, 16
                        mov              r11, 165
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_663_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_663_7
.Lbinop_α_663_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_663_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_663_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_663_4
.Lbinop_α_663_3:        movq             xmm0, rsi
.Lbinop_α_663_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_663_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_663_7:                                                              jmp   n250_subscript_α
.Lbinop_α_663_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_663_240
                        add              rsp, 16;                             jmp   n248_lit_integer_β
.Lbinop_α_663_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_subscript_α
n249_binop_β:           mov              r11, 165
                        add              rsp, 16;                             jmp   n248_lit_integer_β
                        .size            n249_binop_bx, .-n249_binop_bx
                        .type            n250_subscript_bx, @function
n250_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_subscript_α:       sub              rsp, 16
                        mov              r11, 166
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
                        cmp              al, 104;                             jne   .Lsubscript_α_664_240
                        add              rsp, 16;                             jmp   n249_binop_β
.Lsubscript_α_664_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_deref_α
n250_subscript_β:       mov              r11, 166
                        add              rsp, 16;                             jmp   n249_binop_β
                        .size            n250_subscript_bx, .-n250_subscript_bx
                        .type            n251_deref_bx, @function
n251_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_deref_α:           sub              rsp, 16
                        mov              r11, 167
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
                        cmp              al, 104;                             jne   .Lderef_α_665_240
                        add              rsp, 16;                             jmp   n250_subscript_β
.Lderef_α_665_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_call_α
n251_deref_β:           mov              r11, 167
                        add              rsp, 16;                             jmp   n250_subscript_β
                        .size            n251_deref_bx, .-n251_deref_bx
                        .type            n252_call_bx, @function
n252_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_call_α:            sub              rsp, 16
                        mov              r11, 168
                        lea              rcx, [rip + .Lcall_α_sig667z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig667z:       .quad            1
                        .quad            .Lcall_α_667_2
                        .quad            .Lcall_α_667_2
                        .quad            16
.Lcall_α_667_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_667_29
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
.Lcall_α_667_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_667_240
                        add              rsp, 16;                             jmp   n251_deref_β
.Lcall_α_667_240:                                                             jmp   n253_binop_α
n252_call_β:            mov              r11, 168;                            jmp   n251_deref_β
.Lcall_β_667_0:         .quad            .Lcall_β_667_0_s
.Lcall_β_667_0_s:       .string          "DRF"
                        .size            n252_call_bx, .-n252_call_bx
                        .type            n253_binop_bx, @function
n253_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_binop_α:           sub              rsp, 16
                        mov              r11, 169
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_668_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_668_7
.Lbinop_α_668_2:        and              edx, 1;                              jz    .Lbinop_α_668_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_668_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_668_4
.Lbinop_α_668_3:        movq             xmm0, rsi
.Lbinop_α_668_4:        cmp              cl, 5;                               je    .Lbinop_α_668_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_668_6
.Lbinop_α_668_5:        movq             xmm1, rdi
.Lbinop_α_668_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_668_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_668_7:                                                              jmp   n254_assign_var_α
.Lbinop_α_668_0:        mov              rdi, qword ptr [rsp + 128]           # call
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
                        cmp              al, 104;                             jne   .Lbinop_α_668_240
                        add              rsp, 32;                             jmp   n251_deref_β
.Lbinop_α_668_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n254_assign_var_α
n253_binop_β:           mov              r11, 169
                        add              rsp, 32;                             jmp   n251_deref_β
                        .size            n253_binop_bx, .-n253_binop_bx
                        .type            n254_assign_var_bx, @function
n254_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_assign_var_α:      sub              rsp, 16
                        mov              r11, 170
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_670_0
                        test             rsi, rsi;                            je    .Lassign_var_α_670_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_670_238
                        add              rsp, 16;                             jmp   n253_binop_β
.Lassign_var_α_670_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_statement_end_α
.Lassign_var_α_670_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_670_239
                        add              rsp, 16;                             jmp   n253_binop_β
.Lassign_var_α_670_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_670_240
                        add              rsp, 16;                             jmp   n253_binop_β
.Lassign_var_α_670_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_statement_end_α
                        .size            n254_assign_var_bx, .-n254_assign_var_bx
                        .type            n255_statement_end_bx, @function
n255_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_end_α:   mov              r11, 171
                        mov              r10, 19
                        add              rsp, 288;                            jmp   n256_statement_begin_α
                        .size            n255_statement_end_bx, .-n255_statement_end_bx
                        .type            n256_statement_begin_bx, @function
n256_statement_begin_bx:
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n256_statement_begin_α: mov              r11, 172
                        mov              r10, 20;                             jmp   n257_lit_name_α
n256_statement_begin_β: mov              r11, 172;                            jmp   NRETURN
                        .size            n256_statement_begin_bx, .-n256_statement_begin_bx
                        .type            n257_lit_name_bx, @function
n257_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_name_α:        sub              rsp, 16
                        mov              r11, 173
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_675_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n258_assign_α
.Llit_name_α_675_0:     .quad            .Llit_name_α_675_0_s
.Llit_name_α_675_0_s:   .string          "dm"
                        .size            n257_lit_name_bx, .-n257_lit_name_bx
                        .type            n258_assign_bx, @function
n258_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_assign_α:          mov              r11, 174
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
                        mov              rdi, qword ptr [rip + .Lassign_α_676_0]
                        .section         .rodata
.Lassign_α_676_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_676_1_s]
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
                        pop              rax;                                 jmp   n259_statement_end_α
.Lassign_α_676_0:       .quad            .Lassign_α_676_0_s
.Lassign_α_676_0_s:     .string          "SUB"
                        .size            n258_assign_bx, .-n258_assign_bx
                        .type            n259_statement_end_bx, @function
n259_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_end_α:   mov              r11, 175
                        mov              r10, 20
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n259_statement_end_bx, .-n259_statement_end_bx
                        .type            n260_statement_begin_bx, @function
n260_statement_begin_bx:
#=======================================================================================================================
# MUL     S[sp = sp - 1] = DRF(S[sp]) * DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
LBL__MUL:               mov              r11, 176
                        mov              r10, 21;                             jmp   n261_var_α
n260_statement_begin_β: mov              r11, 176;                            jmp   n281_statement_begin_α
                        .size            n260_statement_begin_bx, .-n260_statement_begin_bx
                        .type            n261_var_bx, @function
n261_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:             sub              rsp, 16
                        mov              r11, 177
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_var_α
                        .size            n261_var_bx, .-n261_var_bx
                        .type            n262_var_bx, @function
n262_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_var_α:             sub              rsp, 16
                        mov              r11, 178
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n263_lit_integer_α
n262_var_β:             mov              r11, 178
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n260_statement_begin_β
                        .size            n262_var_bx, .-n262_var_bx
                        .type            n263_lit_integer_bx, @function
n263_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_integer_α:     sub              rsp, 16
                        mov              r11, 179
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_683_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n264_binop_α
n263_lit_integer_β:     mov              r11, 179
                        add              rsp, 16;                             jmp   n262_var_β
.Llit_integer_α_683_0:  .quad            1
                        .size            n263_lit_integer_bx, .-n263_lit_integer_bx
                        .type            n264_binop_bx, @function
n264_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_binop_α:           sub              rsp, 16
                        mov              r11, 180
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_684_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_684_7
.Lbinop_α_684_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_684_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_684_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_684_4
.Lbinop_α_684_3:        movq             xmm0, rsi
.Lbinop_α_684_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_684_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_684_7:                                                              jmp   n265_assign_α
.Lbinop_α_684_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_684_240
                        add              rsp, 16;                             jmp   n263_lit_integer_β
.Lbinop_α_684_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n265_assign_α
n264_binop_β:           mov              r11, 180
                        add              rsp, 16;                             jmp   n263_lit_integer_β
                        .size            n264_binop_bx, .-n264_binop_bx
                        .type            n265_assign_bx, @function
n265_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:          mov              r11, 181
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
                        mov              rdi, qword ptr [rip + .Lassign_α_685_0]
                        .section         .rodata
.Lassign_α_685_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_685_1_s]
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
                        pop              rax;                                 jmp   n266_var_α
.Lassign_α_685_0:       .quad            .Lassign_α_685_0_s
.Lassign_α_685_0_s:     .string          "sp"
                        .size            n265_assign_bx, .-n265_assign_bx
                        .type            n266_var_bx, @function
n266_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:             sub              rsp, 16
                        mov              r11, 182
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n267_var_α
n266_var_β:             mov              r11, 182
                        add              rsp, 16;                             jmp   n264_binop_β
                        .size            n266_var_bx, .-n266_var_bx
                        .type            n267_var_bx, @function
n267_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:             sub              rsp, 16
                        mov              r11, 183
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n268_subscript_α
n267_var_β:             mov              r11, 183
                        add              rsp, 16;                             jmp   n266_var_β
                        .size            n267_var_bx, .-n267_var_bx
                        .type            n268_subscript_bx, @function
n268_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_subscript_α:       sub              rsp, 16
                        mov              r11, 184
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
                        cmp              al, 104;                             jne   .Lsubscript_α_688_240
                        add              rsp, 16;                             jmp   n267_var_β
.Lsubscript_α_688_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_deref_α
n268_subscript_β:       mov              r11, 184
                        add              rsp, 16;                             jmp   n267_var_β
                        .size            n268_subscript_bx, .-n268_subscript_bx
                        .type            n269_deref_bx, @function
n269_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_deref_α:           sub              rsp, 16
                        mov              r11, 185
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
                        cmp              al, 104;                             jne   .Lderef_α_689_240
                        add              rsp, 16;                             jmp   n268_subscript_β
.Lderef_α_689_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n270_call_α
n269_deref_β:           mov              r11, 185
                        add              rsp, 16;                             jmp   n268_subscript_β
                        .size            n269_deref_bx, .-n269_deref_bx
                        .type            n270_call_bx, @function
n270_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_call_α:            sub              rsp, 16
                        mov              r11, 186
                        lea              rcx, [rip + .Lcall_α_sig691z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig691z:       .quad            1
                        .quad            .Lcall_α_691_2
                        .quad            .Lcall_α_691_2
                        .quad            16
.Lcall_α_691_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_691_29
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
.Lcall_α_691_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_691_240
                        add              rsp, 16;                             jmp   n269_deref_β
.Lcall_α_691_240:                                                             jmp   n271_var_α
n270_call_β:            mov              r11, 186;                            jmp   n269_deref_β
.Lcall_β_691_0:         .quad            .Lcall_β_691_0_s
.Lcall_β_691_0_s:       .string          "DRF"
                        .size            n270_call_bx, .-n270_call_bx
                        .type            n271_var_bx, @function
n271_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:             sub              rsp, 16
                        mov              r11, 187
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n272_var_α
n271_var_β:             mov              r11, 187
                        add              rsp, 32;                             jmp   n269_deref_β
                        .size            n271_var_bx, .-n271_var_bx
                        .type            n272_var_bx, @function
n272_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:             sub              rsp, 16
                        mov              r11, 188
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_lit_integer_α
n272_var_β:             mov              r11, 188
                        add              rsp, 16;                             jmp   n271_var_β
                        .size            n272_var_bx, .-n272_var_bx
                        .type            n273_lit_integer_bx, @function
n273_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_integer_α:     sub              rsp, 16
                        mov              r11, 189
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_694_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n274_binop_α
n273_lit_integer_β:     mov              r11, 189
                        add              rsp, 16;                             jmp   n272_var_β
.Llit_integer_α_694_0:  .quad            1
                        .size            n273_lit_integer_bx, .-n273_lit_integer_bx
                        .type            n274_binop_bx, @function
n274_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_binop_α:           sub              rsp, 16
                        mov              r11, 190
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_695_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_695_7
.Lbinop_α_695_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_695_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_695_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_695_4
.Lbinop_α_695_3:        movq             xmm0, rsi
.Lbinop_α_695_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_695_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_695_7:                                                              jmp   n275_subscript_α
.Lbinop_α_695_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_695_240
                        add              rsp, 16;                             jmp   n273_lit_integer_β
.Lbinop_α_695_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n275_subscript_α
n274_binop_β:           mov              r11, 190
                        add              rsp, 16;                             jmp   n273_lit_integer_β
                        .size            n274_binop_bx, .-n274_binop_bx
                        .type            n275_subscript_bx, @function
n275_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_subscript_α:       sub              rsp, 16
                        mov              r11, 191
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
                        cmp              al, 104;                             jne   .Lsubscript_α_696_240
                        add              rsp, 16;                             jmp   n274_binop_β
.Lsubscript_α_696_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_deref_α
n275_subscript_β:       mov              r11, 191
                        add              rsp, 16;                             jmp   n274_binop_β
                        .size            n275_subscript_bx, .-n275_subscript_bx
                        .type            n276_deref_bx, @function
n276_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_deref_α:           sub              rsp, 16
                        mov              r11, 192
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
                        cmp              al, 104;                             jne   .Lderef_α_697_240
                        add              rsp, 16;                             jmp   n275_subscript_β
.Lderef_α_697_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_call_α
n276_deref_β:           mov              r11, 192
                        add              rsp, 16;                             jmp   n275_subscript_β
                        .size            n276_deref_bx, .-n276_deref_bx
                        .type            n277_call_bx, @function
n277_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_call_α:            sub              rsp, 16
                        mov              r11, 193
                        lea              rcx, [rip + .Lcall_α_sig699z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig699z:       .quad            1
                        .quad            .Lcall_α_699_2
                        .quad            .Lcall_α_699_2
                        .quad            16
.Lcall_α_699_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_699_29
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
.Lcall_α_699_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_699_240
                        add              rsp, 16;                             jmp   n276_deref_β
.Lcall_α_699_240:                                                             jmp   n278_binop_α
n277_call_β:            mov              r11, 193;                            jmp   n276_deref_β
.Lcall_β_699_0:         .quad            .Lcall_β_699_0_s
.Lcall_β_699_0_s:       .string          "DRF"
                        .size            n277_call_bx, .-n277_call_bx
                        .type            n278_binop_bx, @function
n278_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_binop_α:           sub              rsp, 16
                        mov              r11, 194
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_700_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_700_7
.Lbinop_α_700_2:        and              edx, 1;                              jz    .Lbinop_α_700_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_700_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_700_4
.Lbinop_α_700_3:        movq             xmm0, rsi
.Lbinop_α_700_4:        cmp              cl, 5;                               je    .Lbinop_α_700_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_700_6
.Lbinop_α_700_5:        movq             xmm1, rdi
.Lbinop_α_700_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_700_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_700_7:                                                              jmp   n279_assign_var_α
.Lbinop_α_700_0:        mov              rdi, qword ptr [rsp + 128]           # call
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
                        cmp              al, 104;                             jne   .Lbinop_α_700_240
                        add              rsp, 32;                             jmp   n276_deref_β
.Lbinop_α_700_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n279_assign_var_α
n278_binop_β:           mov              r11, 194
                        add              rsp, 32;                             jmp   n276_deref_β
                        .size            n278_binop_bx, .-n278_binop_bx
                        .type            n279_assign_var_bx, @function
n279_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_assign_var_α:      sub              rsp, 16
                        mov              r11, 195
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_702_0
                        test             rsi, rsi;                            je    .Lassign_var_α_702_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_702_238
                        add              rsp, 16;                             jmp   n278_binop_β
.Lassign_var_α_702_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n280_statement_end_α
.Lassign_var_α_702_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_702_239
                        add              rsp, 16;                             jmp   n278_binop_β
.Lassign_var_α_702_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_702_240
                        add              rsp, 16;                             jmp   n278_binop_β
.Lassign_var_α_702_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n280_statement_end_α
                        .size            n279_assign_var_bx, .-n279_assign_var_bx
                        .type            n280_statement_end_bx, @function
n280_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_end_α:   mov              r11, 196
                        mov              r10, 21
                        add              rsp, 288;                            jmp   n281_statement_begin_α
                        .size            n280_statement_end_bx, .-n280_statement_end_bx
                        .type            n281_statement_begin_bx, @function
n281_statement_begin_bx:
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n281_statement_begin_α: mov              r11, 197
                        mov              r10, 22;                             jmp   n282_lit_name_α
n281_statement_begin_β: mov              r11, 197;                            jmp   NRETURN
                        .size            n281_statement_begin_bx, .-n281_statement_begin_bx
                        .type            n282_lit_name_bx, @function
n282_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_name_α:        sub              rsp, 16
                        mov              r11, 198
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_707_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n283_assign_α
.Llit_name_α_707_0:     .quad            .Llit_name_α_707_0_s
.Llit_name_α_707_0_s:   .string          "dm"
                        .size            n282_lit_name_bx, .-n282_lit_name_bx
                        .type            n283_assign_bx, @function
n283_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_assign_α:          mov              r11, 199
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
                        mov              rdi, qword ptr [rip + .Lassign_α_708_0]
                        .section         .rodata
.Lassign_α_708_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_708_1_s]
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
                        pop              rax;                                 jmp   n284_statement_end_α
.Lassign_α_708_0:       .quad            .Lassign_α_708_0_s
.Lassign_α_708_0_s:     .string          "MUL"
                        .size            n283_assign_bx, .-n283_assign_bx
                        .type            n284_statement_end_bx, @function
n284_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_statement_end_α:   mov              r11, 200
                        mov              r10, 22
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n284_statement_end_bx, .-n284_statement_end_bx
                        .type            n285_statement_begin_bx, @function
n285_statement_begin_bx:
#=======================================================================================================================
# DIV     S[sp = sp - 1] = DRF(S[sp]) / DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
LBL__DIV:               mov              r11, 201
                        mov              r10, 23;                             jmp   n286_var_α
n285_statement_begin_β: mov              r11, 201;                            jmp   n306_statement_begin_α
                        .size            n285_statement_begin_bx, .-n285_statement_begin_bx
                        .type            n286_var_bx, @function
n286_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:             sub              rsp, 16
                        mov              r11, 202
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n287_var_α
                        .size            n286_var_bx, .-n286_var_bx
                        .type            n287_var_bx, @function
n287_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:             sub              rsp, 16
                        mov              r11, 203
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n288_lit_integer_α
n287_var_β:             mov              r11, 203
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n285_statement_begin_β
                        .size            n287_var_bx, .-n287_var_bx
                        .type            n288_lit_integer_bx, @function
n288_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_integer_α:     sub              rsp, 16
                        mov              r11, 204
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_715_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n289_binop_α
n288_lit_integer_β:     mov              r11, 204
                        add              rsp, 16;                             jmp   n287_var_β
.Llit_integer_α_715_0:  .quad            1
                        .size            n288_lit_integer_bx, .-n288_lit_integer_bx
                        .type            n289_binop_bx, @function
n289_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_binop_α:           sub              rsp, 16
                        mov              r11, 205
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_716_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_716_7
.Lbinop_α_716_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_716_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_716_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_716_4
.Lbinop_α_716_3:        movq             xmm0, rsi
.Lbinop_α_716_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_716_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_716_7:                                                              jmp   n290_assign_α
.Lbinop_α_716_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_716_240
                        add              rsp, 16;                             jmp   n288_lit_integer_β
.Lbinop_α_716_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n290_assign_α
n289_binop_β:           mov              r11, 205
                        add              rsp, 16;                             jmp   n288_lit_integer_β
                        .size            n289_binop_bx, .-n289_binop_bx
                        .type            n290_assign_bx, @function
n290_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_assign_α:          mov              r11, 206
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
                        mov              rdi, qword ptr [rip + .Lassign_α_717_0]
                        .section         .rodata
.Lassign_α_717_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_717_1_s]
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
                        pop              rax;                                 jmp   n291_var_α
.Lassign_α_717_0:       .quad            .Lassign_α_717_0_s
.Lassign_α_717_0_s:     .string          "sp"
                        .size            n290_assign_bx, .-n290_assign_bx
                        .type            n291_var_bx, @function
n291_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_var_α:             sub              rsp, 16
                        mov              r11, 207
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n292_var_α
n291_var_β:             mov              r11, 207
                        add              rsp, 16;                             jmp   n289_binop_β
                        .size            n291_var_bx, .-n291_var_bx
                        .type            n292_var_bx, @function
n292_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:             sub              rsp, 16
                        mov              r11, 208
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_subscript_α
n292_var_β:             mov              r11, 208
                        add              rsp, 16;                             jmp   n291_var_β
                        .size            n292_var_bx, .-n292_var_bx
                        .type            n293_subscript_bx, @function
n293_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_subscript_α:       sub              rsp, 16
                        mov              r11, 209
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
                        cmp              al, 104;                             jne   .Lsubscript_α_720_240
                        add              rsp, 16;                             jmp   n292_var_β
.Lsubscript_α_720_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_deref_α
n293_subscript_β:       mov              r11, 209
                        add              rsp, 16;                             jmp   n292_var_β
                        .size            n293_subscript_bx, .-n293_subscript_bx
                        .type            n294_deref_bx, @function
n294_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_deref_α:           sub              rsp, 16
                        mov              r11, 210
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
                        cmp              al, 104;                             jne   .Lderef_α_721_240
                        add              rsp, 16;                             jmp   n293_subscript_β
.Lderef_α_721_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_call_α
n294_deref_β:           mov              r11, 210
                        add              rsp, 16;                             jmp   n293_subscript_β
                        .size            n294_deref_bx, .-n294_deref_bx
                        .type            n295_call_bx, @function
n295_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_call_α:            sub              rsp, 16
                        mov              r11, 211
                        lea              rcx, [rip + .Lcall_α_sig723z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig723z:       .quad            1
                        .quad            .Lcall_α_723_2
                        .quad            .Lcall_α_723_2
                        .quad            16
.Lcall_α_723_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_723_29
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
.Lcall_α_723_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_723_240
                        add              rsp, 16;                             jmp   n294_deref_β
.Lcall_α_723_240:                                                             jmp   n296_var_α
n295_call_β:            mov              r11, 211;                            jmp   n294_deref_β
.Lcall_β_723_0:         .quad            .Lcall_β_723_0_s
.Lcall_β_723_0_s:       .string          "DRF"
                        .size            n295_call_bx, .-n295_call_bx
                        .type            n296_var_bx, @function
n296_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:             sub              rsp, 16
                        mov              r11, 212
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n297_var_α
n296_var_β:             mov              r11, 212
                        add              rsp, 32;                             jmp   n294_deref_β
                        .size            n296_var_bx, .-n296_var_bx
                        .type            n297_var_bx, @function
n297_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_var_α:             sub              rsp, 16
                        mov              r11, 213
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_lit_integer_α
n297_var_β:             mov              r11, 213
                        add              rsp, 16;                             jmp   n296_var_β
                        .size            n297_var_bx, .-n297_var_bx
                        .type            n298_lit_integer_bx, @function
n298_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_integer_α:     sub              rsp, 16
                        mov              r11, 214
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_726_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n299_binop_α
n298_lit_integer_β:     mov              r11, 214
                        add              rsp, 16;                             jmp   n297_var_β
.Llit_integer_α_726_0:  .quad            1
                        .size            n298_lit_integer_bx, .-n298_lit_integer_bx
                        .type            n299_binop_bx, @function
n299_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_binop_α:           sub              rsp, 16
                        mov              r11, 215
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_727_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_727_7
.Lbinop_α_727_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_727_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_727_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_727_4
.Lbinop_α_727_3:        movq             xmm0, rsi
.Lbinop_α_727_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_727_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_727_7:                                                              jmp   n300_subscript_α
.Lbinop_α_727_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_727_240
                        add              rsp, 16;                             jmp   n298_lit_integer_β
.Lbinop_α_727_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n300_subscript_α
n299_binop_β:           mov              r11, 215
                        add              rsp, 16;                             jmp   n298_lit_integer_β
                        .size            n299_binop_bx, .-n299_binop_bx
                        .type            n300_subscript_bx, @function
n300_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_subscript_α:       sub              rsp, 16
                        mov              r11, 216
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
                        cmp              al, 104;                             jne   .Lsubscript_α_728_240
                        add              rsp, 16;                             jmp   n299_binop_β
.Lsubscript_α_728_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n301_deref_α
n300_subscript_β:       mov              r11, 216
                        add              rsp, 16;                             jmp   n299_binop_β
                        .size            n300_subscript_bx, .-n300_subscript_bx
                        .type            n301_deref_bx, @function
n301_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_deref_α:           sub              rsp, 16
                        mov              r11, 217
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
                        cmp              al, 104;                             jne   .Lderef_α_729_240
                        add              rsp, 16;                             jmp   n300_subscript_β
.Lderef_α_729_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n302_call_α
n301_deref_β:           mov              r11, 217
                        add              rsp, 16;                             jmp   n300_subscript_β
                        .size            n301_deref_bx, .-n301_deref_bx
                        .type            n302_call_bx, @function
n302_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_call_α:            sub              rsp, 16
                        mov              r11, 218
                        lea              rcx, [rip + .Lcall_α_sig731z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig731z:       .quad            1
                        .quad            .Lcall_α_731_2
                        .quad            .Lcall_α_731_2
                        .quad            16
.Lcall_α_731_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_731_29
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
.Lcall_α_731_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_731_240
                        add              rsp, 16;                             jmp   n301_deref_β
.Lcall_α_731_240:                                                             jmp   n303_binop_α
n302_call_β:            mov              r11, 218;                            jmp   n301_deref_β
.Lcall_β_731_0:         .quad            .Lcall_β_731_0_s
.Lcall_β_731_0_s:       .string          "DRF"
                        .size            n302_call_bx, .-n302_call_bx
                        .type            n303_binop_bx, @function
n303_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_binop_α:           sub              rsp, 16
                        mov              r11, 219
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
                        cmp              al, 104;                             jne   .Lbinop_α_732_240
                        add              rsp, 32;                             jmp   n301_deref_β
.Lbinop_α_732_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n304_assign_var_α
n303_binop_β:           mov              r11, 219
                        add              rsp, 32;                             jmp   n301_deref_β
                        .size            n303_binop_bx, .-n303_binop_bx
                        .type            n304_assign_var_bx, @function
n304_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_assign_var_α:      sub              rsp, 16
                        mov              r11, 220
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_734_0
                        test             rsi, rsi;                            je    .Lassign_var_α_734_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_734_238
                        add              rsp, 16;                             jmp   n303_binop_β
.Lassign_var_α_734_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n305_statement_end_α
.Lassign_var_α_734_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_734_239
                        add              rsp, 16;                             jmp   n303_binop_β
.Lassign_var_α_734_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_734_240
                        add              rsp, 16;                             jmp   n303_binop_β
.Lassign_var_α_734_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n305_statement_end_α
                        .size            n304_assign_var_bx, .-n304_assign_var_bx
                        .type            n305_statement_end_bx, @function
n305_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_statement_end_α:   mov              r11, 221
                        mov              r10, 23
                        add              rsp, 288;                            jmp   n306_statement_begin_α
                        .size            n305_statement_end_bx, .-n305_statement_end_bx
                        .type            n306_statement_begin_bx, @function
n306_statement_begin_bx:
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n306_statement_begin_α: mov              r11, 222
                        mov              r10, 24;                             jmp   n307_lit_name_α
n306_statement_begin_β: mov              r11, 222;                            jmp   NRETURN
                        .size            n306_statement_begin_bx, .-n306_statement_begin_bx
                        .type            n307_lit_name_bx, @function
n307_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_name_α:        sub              rsp, 16
                        mov              r11, 223
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_739_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n308_assign_α
.Llit_name_α_739_0:     .quad            .Llit_name_α_739_0_s
.Llit_name_α_739_0_s:   .string          "dm"
                        .size            n307_lit_name_bx, .-n307_lit_name_bx
                        .type            n308_assign_bx, @function
n308_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_assign_α:          mov              r11, 224
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
                        mov              rdi, qword ptr [rip + .Lassign_α_740_0]
                        .section         .rodata
.Lassign_α_740_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_740_1_s]
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
                        pop              rax;                                 jmp   n309_statement_end_α
.Lassign_α_740_0:       .quad            .Lassign_α_740_0_s
.Lassign_α_740_0_s:     .string          "DIV"
                        .size            n308_assign_bx, .-n308_assign_bx
                        .type            n309_statement_end_bx, @function
n309_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_statement_end_α:   mov              r11, 225
                        mov              r10, 24
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n309_statement_end_bx, .-n309_statement_end_bx
                        .type            n310_statement_begin_bx, @function
n310_statement_begin_bx:
#=======================================================================================================================
# NEG     S[sp] = -DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
LBL__NEG:               mov              r11, 226
                        mov              r10, 25;                             jmp   n311_var_α
n310_statement_begin_β: mov              r11, 226;                            jmp   n321_statement_begin_α
                        .size            n310_statement_begin_bx, .-n310_statement_begin_bx
                        .type            n311_var_bx, @function
n311_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:             sub              rsp, 16
                        mov              r11, 227
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_var_α
                        .size            n311_var_bx, .-n311_var_bx
                        .type            n312_var_bx, @function
n312_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:             sub              rsp, 16
                        mov              r11, 228
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n313_var_α
n312_var_β:             mov              r11, 228
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n310_statement_begin_β
                        .size            n312_var_bx, .-n312_var_bx
                        .type            n313_var_bx, @function
n313_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             sub              rsp, 16
                        mov              r11, 229
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_var_α
n313_var_β:             mov              r11, 229
                        add              rsp, 16;                             jmp   n312_var_β
                        .size            n313_var_bx, .-n313_var_bx
                        .type            n314_var_bx, @function
n314_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:             sub              rsp, 16
                        mov              r11, 230
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_subscript_α
n314_var_β:             mov              r11, 230
                        add              rsp, 16;                             jmp   n313_var_β
                        .size            n314_var_bx, .-n314_var_bx
                        .type            n315_subscript_bx, @function
n315_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_subscript_α:       sub              rsp, 16
                        mov              r11, 231
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
                        cmp              al, 104;                             jne   .Lsubscript_α_749_240
                        add              rsp, 16;                             jmp   n314_var_β
.Lsubscript_α_749_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_deref_α
n315_subscript_β:       mov              r11, 231
                        add              rsp, 16;                             jmp   n314_var_β
                        .size            n315_subscript_bx, .-n315_subscript_bx
                        .type            n316_deref_bx, @function
n316_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_deref_α:           sub              rsp, 16
                        mov              r11, 232
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
                        cmp              al, 104;                             jne   .Lderef_α_750_240
                        add              rsp, 16;                             jmp   n315_subscript_β
.Lderef_α_750_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n317_call_α
n316_deref_β:           mov              r11, 232
                        add              rsp, 16;                             jmp   n315_subscript_β
                        .size            n316_deref_bx, .-n316_deref_bx
                        .type            n317_call_bx, @function
n317_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_call_α:            sub              rsp, 16
                        mov              r11, 233
                        lea              rcx, [rip + .Lcall_α_sig752z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig752z:       .quad            1
                        .quad            .Lcall_α_752_2
                        .quad            .Lcall_α_752_2
                        .quad            16
.Lcall_α_752_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_752_29
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
.Lcall_α_752_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_752_240
                        add              rsp, 16;                             jmp   n316_deref_β
.Lcall_α_752_240:                                                             jmp   n318_unop_α
n317_call_β:            mov              r11, 233;                            jmp   n316_deref_β
.Lcall_β_752_0:         .quad            .Lcall_β_752_0_s
.Lcall_β_752_0_s:       .string          "DRF"
                        .size            n317_call_bx, .-n317_call_bx
                        .type            n318_unop_bx, @function
n318_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_unop_α:            sub              rsp, 16
                        mov              r11, 234
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_assign_var_α
n318_unop_β:            mov              r11, 234
                        add              rsp, 32;                             jmp   n316_deref_β
                        .size            n318_unop_bx, .-n318_unop_bx
                        .type            n319_assign_var_bx, @function
n319_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_assign_var_α:      sub              rsp, 16
                        mov              r11, 235
                        mov              rdi, qword ptr [rsp + 128]           # var
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        cmp              dil, 24;                             jne   .Lassign_var_α_755_0
                        test             rsi, rsi;                            je    .Lassign_var_α_755_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_755_238
                        add              rsp, 16;                             jmp   n318_unop_β
.Lassign_var_α_755_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n320_statement_end_α
.Lassign_var_α_755_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_755_239
                        add              rsp, 16;                             jmp   n318_unop_β
.Lassign_var_α_755_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_755_240
                        add              rsp, 16;                             jmp   n318_unop_β
.Lassign_var_α_755_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n320_statement_end_α
                        .size            n319_assign_var_bx, .-n319_assign_var_bx
                        .type            n320_statement_end_bx, @function
n320_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_end_α:   mov              r11, 236
                        mov              r10, 25
                        add              rsp, 144;                            jmp   n321_statement_begin_α
                        .size            n320_statement_end_bx, .-n320_statement_end_bx
                        .type            n321_statement_begin_bx, @function
n321_statement_begin_bx:
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n321_statement_begin_α: mov              r11, 237
                        mov              r10, 26;                             jmp   n322_lit_name_α
n321_statement_begin_β: mov              r11, 237;                            jmp   NRETURN
                        .size            n321_statement_begin_bx, .-n321_statement_begin_bx
                        .type            n322_lit_name_bx, @function
n322_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_name_α:        sub              rsp, 16
                        mov              r11, 238
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_760_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n323_assign_α
.Llit_name_α_760_0:     .quad            .Llit_name_α_760_0_s
.Llit_name_α_760_0_s:   .string          "dm"
                        .size            n322_lit_name_bx, .-n322_lit_name_bx
                        .type            n323_assign_bx, @function
n323_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_assign_α:          mov              r11, 239
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
                        mov              rdi, qword ptr [rip + .Lassign_α_761_0]
                        .section         .rodata
.Lassign_α_761_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_761_1_s]
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
                        pop              rax;                                 jmp   n324_statement_end_α
.Lassign_α_761_0:       .quad            .Lassign_α_761_0_s
.Lassign_α_761_0_s:     .string          "NEG"
                        .size            n323_assign_bx, .-n323_assign_bx
                        .type            n324_statement_end_bx, @function
n324_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_end_α:   mov              r11, 240
                        mov              r10, 26
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n324_statement_end_bx, .-n324_statement_end_bx
                        .type            n325_statement_begin_bx, @function
n325_statement_begin_bx:
#=======================================================================================================================
# FNS_end
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n325_statement_begin_α: mov              r11, 241
                        mov              r10, 27;                             jmp   n326_statement_end_α
n325_statement_begin_β: mov              r11, 241;                            jmp   n327_statement_begin_α
                        .size            n325_statement_begin_bx, .-n325_statement_begin_bx
                        .type            n326_statement_end_bx, @function
n326_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_statement_end_α:   mov              r11, 242
                        mov              r10, 27;                             jmp   n327_statement_begin_α
                        .size            n326_statement_end_bx, .-n326_statement_end_bx
                        .type            n327_statement_begin_bx, @function
n327_statement_begin_bx:
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 29 0
n327_statement_begin_α: mov              r11, 243
                        mov              r10, 28;                             jmp   n328_lit_integer_α
n327_statement_begin_β: mov              r11, 243;                            jmp   n332_statement_begin_α
                        .size            n327_statement_begin_bx, .-n327_statement_begin_bx
                        .type            n328_lit_integer_bx, @function
n328_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_integer_α:     sub              rsp, 16
                        mov              r11, 244
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_770_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n329_call_α
.Llit_integer_α_770_0:  .quad            65536
                        .size            n328_lit_integer_bx, .-n328_lit_integer_bx
                        .type            n329_call_bx, @function
n329_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_call_α:            sub              rsp, 16
                        mov              r11, 245
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd772:     .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd772]
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
                        cmp              al, 104;                             jne   .Lcall_α_771_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n327_statement_begin_β
.Lcall_α_771_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n330_assign_α
n329_call_β:            mov              r11, 245
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n327_statement_begin_β
                        .size            n329_call_bx, .-n329_call_bx
                        .type            n330_assign_bx, @function
n330_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_assign_α:          mov              r11, 246
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
                        mov              rdi, qword ptr [rip + .Lassign_α_773_0]
                        .section         .rodata
.Lassign_α_773_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_773_1_s]
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
                        pop              rax;                                 jmp   n331_statement_end_α
.Lassign_α_773_0:       .quad            .Lassign_α_773_0_s
.Lassign_α_773_0_s:     .string          "S"
                        .size            n330_assign_bx, .-n330_assign_bx
                        .type            n331_statement_end_bx, @function
n331_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_statement_end_α:   mov              r11, 247
                        mov              r10, 28
                        add              rsp, 32;                             jmp   n332_statement_begin_α
                        .size            n331_statement_end_bx, .-n331_statement_end_bx
                        .type            n332_statement_begin_bx, @function
n332_statement_begin_bx:
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n332_statement_begin_α: mov              r11, 248
                        mov              r10, 29;                             jmp   n333_lit_string_α
n332_statement_begin_β: mov              r11, 248;                            jmp   n337_statement_begin_α
                        .size            n332_statement_begin_bx, .-n332_statement_begin_bx
                        .type            n333_lit_string_bx, @function
n333_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:      sub              rsp, 16
                        mov              r11, 249
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_778_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n334_call_α
.Llit_string_α_778_0:   .quad            .Llit_string_α_778_0_s
.Llit_string_α_778_0_s: .string          "PAT$0"
                        .size            n333_lit_string_bx, .-n333_lit_string_bx
                        .type            n334_call_bx, @function
n334_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_call_α:            sub              rsp, 16
                        mov              r11, 250
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd780:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd780]
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
                        cmp              al, 104;                             jne   .Lcall_α_779_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n332_statement_begin_β
.Lcall_α_779_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n335_assign_α
n334_call_β:            mov              r11, 250
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n332_statement_begin_β
                        .size            n334_call_bx, .-n334_call_bx
                        .type            n335_assign_bx, @function
n335_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_assign_α:          mov              r11, 251
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
                        mov              rdi, qword ptr [rip + .Lassign_α_781_0]
                        .section         .rodata
.Lassign_α_781_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_781_1_s]
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
                        pop              rax;                                 jmp   n336_statement_end_α
.Lassign_α_781_0:       .quad            .Lassign_α_781_0_s
.Lassign_α_781_0_s:     .string          "V"
                        .size            n335_assign_bx, .-n335_assign_bx
                        .type            n336_statement_end_bx, @function
n336_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_statement_end_α:   mov              r11, 252
                        mov              r10, 29
                        add              rsp, 32;                             jmp   n337_statement_begin_α
                        .size            n336_statement_end_bx, .-n336_statement_end_bx
                        .type            n337_statement_begin_bx, @function
n337_statement_begin_bx:
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n337_statement_begin_α: mov              r11, 253
                        mov              r10, 30;                             jmp   n338_lit_string_α
n337_statement_begin_β: mov              r11, 253;                            jmp   n342_statement_begin_α
                        .size            n337_statement_begin_bx, .-n337_statement_begin_bx
                        .type            n338_lit_string_bx, @function
n338_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:      sub              rsp, 16
                        mov              r11, 254
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_786_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n339_call_α
.Llit_string_α_786_0:   .quad            .Llit_string_α_786_0_s
.Llit_string_α_786_0_s: .string          "PAT$1"
                        .size            n338_lit_string_bx, .-n338_lit_string_bx
                        .type            n339_call_bx, @function
n339_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_call_α:            sub              rsp, 16
                        mov              r11, 255
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd788:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd788]
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
                        cmp              al, 104;                             jne   .Lcall_α_787_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n337_statement_begin_β
.Lcall_α_787_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n340_assign_α
n339_call_β:            mov              r11, 255
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n337_statement_begin_β
                        .size            n339_call_bx, .-n339_call_bx
                        .type            n340_assign_bx, @function
n340_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_assign_α:          mov              r11, 256
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
                        mov              rdi, qword ptr [rip + .Lassign_α_789_0]
                        .section         .rodata
.Lassign_α_789_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_789_1_s]
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
                        pop              rax;                                 jmp   n341_statement_end_α
.Lassign_α_789_0:       .quad            .Lassign_α_789_0_s
.Lassign_α_789_0_s:     .string          "I"
                        .size            n340_assign_bx, .-n340_assign_bx
                        .type            n341_statement_end_bx, @function
n341_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_end_α:   mov              r11, 257
                        mov              r10, 30
                        add              rsp, 32;                             jmp   n342_statement_begin_α
                        .size            n341_statement_end_bx, .-n341_statement_end_bx
                        .type            n342_statement_begin_bx, @function
n342_statement_begin_bx:
#=======================================================================================================================
#         A = V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n342_statement_begin_α: mov              r11, 258
                        mov              r10, 31;                             jmp   n343_var_α
n342_statement_begin_β: mov              r11, 258;                            jmp   n352_statement_begin_α
                        .size            n342_statement_begin_bx, .-n342_statement_begin_bx
                        .type            n343_var_bx, @function
n343_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_var_α:             sub              rsp, 16
                        mov              r11, 259
                        mov              rax, qword ptr [r9 + 208]            # V
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n344_var_α
                        .size            n343_var_bx, .-n343_var_bx
                        .type            n344_var_bx, @function
n344_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_var_α:             sub              rsp, 16
                        mov              r11, 260
                        mov              rax, qword ptr [r9 + 224]            # I
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n345_assign_α
n344_var_β:             mov              r11, 260
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n342_statement_begin_β
                        .size            n344_var_bx, .-n344_var_bx
                        .type            n345_assign_bx, @function
n345_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_assign_α:          mov              r11, 261
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_796_0]
                        .section         .rodata
.Lassign_α_796_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_796_1_s]
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
                        pop              rax;                                 jmp   n346_assign_α
.Lassign_α_796_0:       .quad            .Lassign_α_796_0_s
.Lassign_α_796_0_s:     .string          "PAT$2$V0"
                        .size            n345_assign_bx, .-n345_assign_bx
                        .type            n346_assign_bx, @function
n346_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_assign_α:          mov              r11, 262
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
                        mov              rdi, qword ptr [rip + .Lassign_α_797_0]
                        .section         .rodata
.Lassign_α_797_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_797_1_s]
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
                        pop              rax;                                 jmp   n347_lit_string_α
.Lassign_α_797_0:       .quad            .Lassign_α_797_0_s
.Lassign_α_797_0_s:     .string          "PAT$2$V1"
                        .size            n346_assign_bx, .-n346_assign_bx
                        .type            n347_lit_string_bx, @function
n347_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:      sub              rsp, 16
                        mov              r11, 263
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_798_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n348_lit_string_α
n347_lit_string_β:      mov              r11, 263
                        add              rsp, 16;                             jmp   n344_var_β
.Llit_string_α_798_0:   .quad            .Llit_string_α_798_0_s
.Llit_string_α_798_0_s: .string          "PAT$2"
                        .size            n347_lit_string_bx, .-n347_lit_string_bx
                        .type            n348_lit_string_bx, @function
n348_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_string_α:      sub              rsp, 16
                        mov              r11, 264
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_799_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n349_call_α
n348_lit_string_β:      mov              r11, 264
                        add              rsp, 16;                             jmp   n347_lit_string_β
.Llit_string_α_799_0:   .quad            .Llit_string_α_799_0_s
.Llit_string_α_799_0_s: .string          "2"
                        .size            n348_lit_string_bx, .-n348_lit_string_bx
                        .type            n349_call_bx, @function
n349_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_call_α:            sub              rsp, 16
                        mov              r11, 265
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
.Lcall_α_rkfnzd801:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd801]
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
                        cmp              al, 104;                             jne   .Lcall_α_800_240
                        add              rsp, 16;                             jmp   n348_lit_string_β
.Lcall_α_800_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n350_assign_α
n349_call_β:            mov              r11, 265
                        add              rsp, 16;                             jmp   n348_lit_string_β
                        .size            n349_call_bx, .-n349_call_bx
                        .type            n350_assign_bx, @function
n350_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_assign_α:          mov              r11, 266
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
                        mov              rdi, qword ptr [rip + .Lassign_α_802_0]
                        .section         .rodata
.Lassign_α_802_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_802_1_s]
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
                        pop              rax;                                 jmp   n351_statement_end_α
.Lassign_α_802_0:       .quad            .Lassign_α_802_0_s
.Lassign_α_802_0_s:     .string          "A"
                        .size            n350_assign_bx, .-n350_assign_bx
                        .type            n351_statement_end_bx, @function
n351_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_statement_end_α:   mov              r11, 267
                        mov              r10, 31
                        add              rsp, 80;                             jmp   n352_statement_begin_α
                        .size            n351_statement_end_bx, .-n351_statement_end_bx
                        .type            n352_statement_begin_bx, @function
n352_statement_begin_bx:
#=======================================================================================================================
#         F = A | FENCE('+' *F) | FENCE('-' *F . *NEG())
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n352_statement_begin_α: mov              r11, 268
                        mov              r10, 32;                             jmp   n353_var_α
n352_statement_begin_β: mov              r11, 268;                            jmp   n360_statement_begin_α
                        .size            n352_statement_begin_bx, .-n352_statement_begin_bx
                        .type            n353_var_bx, @function
n353_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_var_α:             sub              rsp, 16
                        mov              r11, 269
                        mov              rax, qword ptr [r9 + 240]            # A
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n354_assign_α
                        .size            n353_var_bx, .-n353_var_bx
                        .type            n354_assign_bx, @function
n354_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_assign_α:          mov              r11, 270
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
                        mov              rdi, qword ptr [rip + .Lassign_α_808_0]
                        .section         .rodata
.Lassign_α_808_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_808_1_s]
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
                        pop              rax;                                 jmp   n355_lit_string_α
.Lassign_α_808_0:       .quad            .Lassign_α_808_0_s
.Lassign_α_808_0_s:     .string          "PAT$3$V0"
                        .size            n354_assign_bx, .-n354_assign_bx
                        .type            n355_lit_string_bx, @function
n355_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:      sub              rsp, 16
                        mov              r11, 271
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_809_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n356_lit_string_α
n355_lit_string_β:      mov              r11, 271
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n352_statement_begin_β
.Llit_string_α_809_0:   .quad            .Llit_string_α_809_0_s
.Llit_string_α_809_0_s: .string          "PAT$3"
                        .size            n355_lit_string_bx, .-n355_lit_string_bx
                        .type            n356_lit_string_bx, @function
n356_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_string_α:      sub              rsp, 16
                        mov              r11, 272
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_810_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n357_call_α
n356_lit_string_β:      mov              r11, 272
                        add              rsp, 16;                             jmp   n355_lit_string_β
.Llit_string_α_810_0:   .quad            .Llit_string_α_810_0_s
.Llit_string_α_810_0_s: .string          "1"
                        .size            n356_lit_string_bx, .-n356_lit_string_bx
                        .type            n357_call_bx, @function
n357_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_call_α:            sub              rsp, 16
                        mov              r11, 273
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
.Lcall_α_rkfnzd812:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd812]
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
                        cmp              al, 104;                             jne   .Lcall_α_811_240
                        add              rsp, 16;                             jmp   n356_lit_string_β
.Lcall_α_811_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n358_assign_α
n357_call_β:            mov              r11, 273
                        add              rsp, 16;                             jmp   n356_lit_string_β
                        .size            n357_call_bx, .-n357_call_bx
                        .type            n358_assign_bx, @function
n358_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_assign_α:          mov              r11, 274
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
                        mov              rdi, qword ptr [rip + .Lassign_α_813_0]
                        .section         .rodata
.Lassign_α_813_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_813_1_s]
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
                        pop              rax;                                 jmp   n359_statement_end_α
.Lassign_α_813_0:       .quad            .Lassign_α_813_0_s
.Lassign_α_813_0_s:     .string          "F"
                        .size            n358_assign_bx, .-n358_assign_bx
                        .type            n359_statement_end_bx, @function
n359_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_statement_end_α:   mov              r11, 275
                        mov              r10, 32
                        add              rsp, 64;                             jmp   n360_statement_begin_α
                        .size            n359_statement_end_bx, .-n359_statement_end_bx
                        .type            n360_statement_begin_bx, @function
n360_statement_begin_bx:
#=======================================================================================================================
#         T = F ( FENCE('*' *T . *MUL()) | FENCE('/' *T . *DIV()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n360_statement_begin_α: mov              r11, 276
                        mov              r10, 33;                             jmp   n361_var_α
n360_statement_begin_β: mov              r11, 276;                            jmp   n368_statement_begin_α
                        .size            n360_statement_begin_bx, .-n360_statement_begin_bx
                        .type            n361_var_bx, @function
n361_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:             sub              rsp, 16
                        mov              r11, 277
                        mov              rax, qword ptr [r9 + 256]            # F
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n362_assign_α
                        .size            n361_var_bx, .-n361_var_bx
                        .type            n362_assign_bx, @function
n362_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_assign_α:          mov              r11, 278
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
                        mov              rdi, qword ptr [rip + .Lassign_α_819_0]
                        .section         .rodata
.Lassign_α_819_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_819_1_s]
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
                        pop              rax;                                 jmp   n363_lit_string_α
.Lassign_α_819_0:       .quad            .Lassign_α_819_0_s
.Lassign_α_819_0_s:     .string          "PAT$4$V0"
                        .size            n362_assign_bx, .-n362_assign_bx
                        .type            n363_lit_string_bx, @function
n363_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:      sub              rsp, 16
                        mov              r11, 279
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_820_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n364_lit_string_α
n363_lit_string_β:      mov              r11, 279
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n360_statement_begin_β
.Llit_string_α_820_0:   .quad            .Llit_string_α_820_0_s
.Llit_string_α_820_0_s: .string          "PAT$4"
                        .size            n363_lit_string_bx, .-n363_lit_string_bx
                        .type            n364_lit_string_bx, @function
n364_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_string_α:      sub              rsp, 16
                        mov              r11, 280
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_821_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n365_call_α
n364_lit_string_β:      mov              r11, 280
                        add              rsp, 16;                             jmp   n363_lit_string_β
.Llit_string_α_821_0:   .quad            .Llit_string_α_821_0_s
.Llit_string_α_821_0_s: .string          "1"
                        .size            n364_lit_string_bx, .-n364_lit_string_bx
                        .type            n365_call_bx, @function
n365_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_call_α:            sub              rsp, 16
                        mov              r11, 281
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
.Lcall_α_rkfnzd823:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd823]
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
                        cmp              al, 104;                             jne   .Lcall_α_822_240
                        add              rsp, 16;                             jmp   n364_lit_string_β
.Lcall_α_822_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n366_assign_α
n365_call_β:            mov              r11, 281
                        add              rsp, 16;                             jmp   n364_lit_string_β
                        .size            n365_call_bx, .-n365_call_bx
                        .type            n366_assign_bx, @function
n366_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_assign_α:          mov              r11, 282
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
                        mov              rdi, qword ptr [rip + .Lassign_α_824_0]
                        .section         .rodata
.Lassign_α_824_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_824_1_s]
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
                        pop              rax;                                 jmp   n367_statement_end_α
.Lassign_α_824_0:       .quad            .Lassign_α_824_0_s
.Lassign_α_824_0_s:     .string          "T"
                        .size            n366_assign_bx, .-n366_assign_bx
                        .type            n367_statement_end_bx, @function
n367_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_statement_end_α:   mov              r11, 283
                        mov              r10, 33
                        add              rsp, 64;                             jmp   n368_statement_begin_α
                        .size            n367_statement_end_bx, .-n367_statement_end_bx
                        .type            n368_statement_begin_bx, @function
n368_statement_begin_bx:
#=======================================================================================================================
#         X = T ( FENCE('+' *X . *ADD()) | FENCE('-' *X . *SUB()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n368_statement_begin_α: mov              r11, 284
                        mov              r10, 34;                             jmp   n369_var_α
n368_statement_begin_β: mov              r11, 284;                            jmp   n376_statement_begin_α
                        .size            n368_statement_begin_bx, .-n368_statement_begin_bx
                        .type            n369_var_bx, @function
n369_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_var_α:             sub              rsp, 16
                        mov              r11, 285
                        mov              rax, qword ptr [r9 + 272]            # T
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n370_assign_α
                        .size            n369_var_bx, .-n369_var_bx
                        .type            n370_assign_bx, @function
n370_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_assign_α:          mov              r11, 286
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
                        mov              rdi, qword ptr [rip + .Lassign_α_830_0]
                        .section         .rodata
.Lassign_α_830_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_830_1_s]
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
                        pop              rax;                                 jmp   n371_lit_string_α
.Lassign_α_830_0:       .quad            .Lassign_α_830_0_s
.Lassign_α_830_0_s:     .string          "PAT$5$V0"
                        .size            n370_assign_bx, .-n370_assign_bx
                        .type            n371_lit_string_bx, @function
n371_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      sub              rsp, 16
                        mov              r11, 287
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_831_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n372_lit_string_α
n371_lit_string_β:      mov              r11, 287
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n368_statement_begin_β
.Llit_string_α_831_0:   .quad            .Llit_string_α_831_0_s
.Llit_string_α_831_0_s: .string          "PAT$5"
                        .size            n371_lit_string_bx, .-n371_lit_string_bx
                        .type            n372_lit_string_bx, @function
n372_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_string_α:      sub              rsp, 16
                        mov              r11, 288
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_832_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n373_call_α
n372_lit_string_β:      mov              r11, 288
                        add              rsp, 16;                             jmp   n371_lit_string_β
.Llit_string_α_832_0:   .quad            .Llit_string_α_832_0_s
.Llit_string_α_832_0_s: .string          "1"
                        .size            n372_lit_string_bx, .-n372_lit_string_bx
                        .type            n373_call_bx, @function
n373_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_call_α:            sub              rsp, 16
                        mov              r11, 289
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
.Lcall_α_rkfnzd834:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd834]
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
                        cmp              al, 104;                             jne   .Lcall_α_833_240
                        add              rsp, 16;                             jmp   n372_lit_string_β
.Lcall_α_833_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n374_assign_α
n373_call_β:            mov              r11, 289
                        add              rsp, 16;                             jmp   n372_lit_string_β
                        .size            n373_call_bx, .-n373_call_bx
                        .type            n374_assign_bx, @function
n374_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_assign_α:          mov              r11, 290
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
                        mov              rdi, qword ptr [rip + .Lassign_α_835_0]
                        .section         .rodata
.Lassign_α_835_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_835_1_s]
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
                        pop              rax;                                 jmp   n375_statement_end_α
.Lassign_α_835_0:       .quad            .Lassign_α_835_0_s
.Lassign_α_835_0_s:     .string          "X"
                        .size            n374_assign_bx, .-n374_assign_bx
                        .type            n375_statement_end_bx, @function
n375_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_statement_end_α:   mov              r11, 291
                        mov              r10, 34
                        add              rsp, 64;                             jmp   n376_statement_begin_α
                        .size            n375_statement_end_bx, .-n375_statement_end_bx
                        .type            n376_statement_begin_bx, @function
n376_statement_begin_bx:
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n376_statement_begin_α: mov              r11, 292
                        mov              r10, 35;                             jmp   n377_lit_integer_α
n376_statement_begin_β: mov              r11, 292;                            jmp   n385_statement_begin_α
                        .size            n376_statement_begin_bx, .-n376_statement_begin_bx
                        .type            n377_lit_integer_bx, @function
n377_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_integer_α:     sub              rsp, 16
                        mov              r11, 293
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_840_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n378_call_α
.Llit_integer_α_840_0:  .quad            10
                        .size            n377_lit_integer_bx, .-n377_lit_integer_bx
                        .type            n378_call_bx, @function
n378_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:            sub              rsp, 16
                        mov              r11, 294
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd294: .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd294]
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
                        cmp              al, 104;                             jne   .Lcall_α_841_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n376_statement_begin_β
.Lcall_α_841_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n379_assign_α
n378_call_β:            mov              r11, 294
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n376_statement_begin_β
                        .size            n378_call_bx, .-n378_call_bx
                        .type            n379_assign_bx, @function
n379_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_assign_α:          mov              r11, 295
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
                        mov              rdi, qword ptr [rip + .Lassign_α_842_0]
                        .section         .rodata
.Lassign_α_842_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_842_1_s]
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
                        pop              rax;                                 jmp   n380_lit_string_α
.Lassign_α_842_0:       .quad            .Lassign_α_842_0_s
.Lassign_α_842_0_s:     .string          "PAT$6$V0"
                        .size            n379_assign_bx, .-n379_assign_bx
                        .type            n380_lit_string_bx, @function
n380_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:      sub              rsp, 16
                        mov              r11, 296
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_843_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n381_lit_string_α
n380_lit_string_β:      mov              r11, 296
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n376_statement_begin_β
.Llit_string_α_843_0:   .quad            .Llit_string_α_843_0_s
.Llit_string_α_843_0_s: .string          "PAT$6"
                        .size            n380_lit_string_bx, .-n380_lit_string_bx
                        .type            n381_lit_string_bx, @function
n381_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:      sub              rsp, 16
                        mov              r11, 297
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_844_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n382_call_α
n381_lit_string_β:      mov              r11, 297
                        add              rsp, 16;                             jmp   n380_lit_string_β
.Llit_string_α_844_0:   .quad            .Llit_string_α_844_0_s
.Llit_string_α_844_0_s: .string          "1"
                        .size            n381_lit_string_bx, .-n381_lit_string_bx
                        .type            n382_call_bx, @function
n382_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_call_α:            sub              rsp, 16
                        mov              r11, 298
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
.Lcall_α_rkfnzd846:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd846]
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
                        cmp              al, 104;                             jne   .Lcall_α_845_240
                        add              rsp, 16;                             jmp   n381_lit_string_β
.Lcall_α_845_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n383_assign_α
n382_call_β:            mov              r11, 298
                        add              rsp, 16;                             jmp   n381_lit_string_β
                        .size            n382_call_bx, .-n382_call_bx
                        .type            n383_assign_bx, @function
n383_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_assign_α:          mov              r11, 299
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
                        mov              rdi, qword ptr [rip + .Lassign_α_847_0]
                        .section         .rodata
.Lassign_α_847_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_847_1_s]
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
                        pop              rax;                                 jmp   n384_statement_end_α
.Lassign_α_847_0:       .quad            .Lassign_α_847_0_s
.Lassign_α_847_0_s:     .string          "eol"
                        .size            n383_assign_bx, .-n383_assign_bx
                        .type            n384_statement_end_bx, @function
n384_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_statement_end_α:   mov              r11, 300
                        mov              r10, 35
                        add              rsp, 80;                             jmp   n385_statement_begin_α
                        .size            n384_statement_end_bx, .-n384_statement_end_bx
                        .type            n385_statement_begin_bx, @function
n385_statement_begin_bx:
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol . *EMIT()) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n385_statement_begin_α: mov              r11, 301
                        mov              r10, 36;                             jmp   n386_var_α
n385_statement_begin_β: mov              r11, 301;                            jmp   n395_statement_begin_α
                        .size            n385_statement_begin_bx, .-n385_statement_begin_bx
                        .type            n386_var_bx, @function
n386_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_var_α:             sub              rsp, 16
                        mov              r11, 302
                        mov              rax, qword ptr [r9 + 288]            # X
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n387_var_α
                        .size            n386_var_bx, .-n386_var_bx
                        .type            n387_var_bx, @function
n387_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_var_α:             sub              rsp, 16
                        mov              r11, 303
                        mov              rax, qword ptr [r9 + 304]            # eol
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n388_assign_α
n387_var_β:             mov              r11, 303
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n385_statement_begin_β
                        .size            n387_var_bx, .-n387_var_bx
                        .type            n388_assign_bx, @function
n388_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_assign_α:          mov              r11, 304
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_854_0]
                        .section         .rodata
.Lassign_α_854_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_854_1_s]
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
                        pop              rax;                                 jmp   n389_assign_α
.Lassign_α_854_0:       .quad            .Lassign_α_854_0_s
.Lassign_α_854_0_s:     .string          "PAT$7$V0"
                        .size            n388_assign_bx, .-n388_assign_bx
                        .type            n389_assign_bx, @function
n389_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_assign_α:          mov              r11, 305
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
                        mov              rdi, qword ptr [rip + .Lassign_α_855_0]
                        .section         .rodata
.Lassign_α_855_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_855_1_s]
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
                        pop              rax;                                 jmp   n390_lit_string_α
.Lassign_α_855_0:       .quad            .Lassign_α_855_0_s
.Lassign_α_855_0_s:     .string          "PAT$7$V1"
                        .size            n389_assign_bx, .-n389_assign_bx
                        .type            n390_lit_string_bx, @function
n390_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:      sub              rsp, 16
                        mov              r11, 306
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_856_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n391_lit_string_α
n390_lit_string_β:      mov              r11, 306
                        add              rsp, 16;                             jmp   n387_var_β
.Llit_string_α_856_0:   .quad            .Llit_string_α_856_0_s
.Llit_string_α_856_0_s: .string          "PAT$7"
                        .size            n390_lit_string_bx, .-n390_lit_string_bx
                        .type            n391_lit_string_bx, @function
n391_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_string_α:      sub              rsp, 16
                        mov              r11, 307
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_857_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n392_call_α
n391_lit_string_β:      mov              r11, 307
                        add              rsp, 16;                             jmp   n390_lit_string_β
.Llit_string_α_857_0:   .quad            .Llit_string_α_857_0_s
.Llit_string_α_857_0_s: .string          "2"
                        .size            n391_lit_string_bx, .-n391_lit_string_bx
                        .type            n392_call_bx, @function
n392_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_call_α:            sub              rsp, 16
                        mov              r11, 308
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
.Lcall_α_rkfnzd859:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd859]
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
                        cmp              al, 104;                             jne   .Lcall_α_858_240
                        add              rsp, 16;                             jmp   n391_lit_string_β
.Lcall_α_858_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n393_assign_α
n392_call_β:            mov              r11, 308
                        add              rsp, 16;                             jmp   n391_lit_string_β
                        .size            n392_call_bx, .-n392_call_bx
                        .type            n393_assign_bx, @function
n393_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_assign_α:          mov              r11, 309
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
                        mov              rdi, qword ptr [rip + .Lassign_α_860_0]
                        .section         .rodata
.Lassign_α_860_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_860_1_s]
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
                        pop              rax;                                 jmp   n394_statement_end_α
.Lassign_α_860_0:       .quad            .Lassign_α_860_0_s
.Lassign_α_860_0_s:     .string          "C"
                        .size            n393_assign_bx, .-n393_assign_bx
                        .type            n394_statement_end_bx, @function
n394_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_end_α:   mov              r11, 310
                        mov              r10, 36
                        add              rsp, 80;                             jmp   n395_statement_begin_α
                        .size            n394_statement_end_bx, .-n394_statement_end_bx
                        .type            n395_statement_begin_bx, @function
n395_statement_begin_bx:
#=======================================================================================================================
#         &TRIM = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
n395_statement_begin_α: mov              r11, 311
                        mov              r10, 37;                             jmp   n396_lit_integer_α
n395_statement_begin_β: mov              r11, 311;                            jmp   n399_statement_begin_α
                        .size            n395_statement_begin_bx, .-n395_statement_begin_bx
                        .type            n396_lit_integer_bx, @function
n396_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_integer_α:     sub              rsp, 16
                        mov              r11, 312
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_865_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n397_kw_assign_snobol4_α
.Llit_integer_α_865_0:  .quad            0
                        .size            n396_lit_integer_bx, .-n396_lit_integer_bx
                        .type            n397_kw_assign_snobol4_bx, @function
n397_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 313
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_866_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_866_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n395_statement_begin_β
.Lkw_assign_snobol4_α_866_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n398_statement_end_α
.Lkw_assign_snobol4_α_866_0:
                        .quad            1
                        .size            n397_kw_assign_snobol4_bx, .-n397_kw_assign_snobol4_bx
                        .type            n398_statement_end_bx, @function
n398_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_statement_end_α:   mov              r11, 314
                        mov              r10, 37
                        add              rsp, 32;                             jmp   n399_statement_begin_α
                        .size            n398_statement_end_bx, .-n398_statement_end_bx
                        .type            n399_statement_begin_bx, @function
n399_statement_begin_bx:
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n399_statement_begin_α: mov              r11, 315
                        mov              r10, 38;                             jmp   n400_call_α
n399_statement_begin_β: mov              r11, 315;                            jmp   n403_statement_begin_α
                        .size            n399_statement_begin_bx, .-n399_statement_begin_bx
                        .type            n400_call_bx, @function
n400_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_call_α:            sub              rsp, 16
                        mov              r11, 316
                        .section         .rodata
.Lcall_α_rkfnzd872:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd872]
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
                        cmp              al, 104;                             jne   .Lcall_α_871_240
                        add              rsp, 16;                             jmp   n399_statement_begin_β
.Lcall_α_871_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n401_assign_α
n400_call_β:            mov              r11, 316
                        add              rsp, 16;                             jmp   n399_statement_begin_β
                        .size            n400_call_bx, .-n400_call_bx
                        .type            n401_assign_bx, @function
n401_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_assign_α:          mov              r11, 317
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
                        mov              rdi, qword ptr [rip + .Lassign_α_873_0]
                        .section         .rodata
.Lassign_α_873_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_873_1_s]
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
                        pop              rax;                                 jmp   n402_statement_end_α
.Lassign_α_873_0:       .quad            .Lassign_α_873_0_s
.Lassign_α_873_0_s:     .string          "vars"
                        .size            n401_assign_bx, .-n401_assign_bx
                        .type            n402_statement_end_bx, @function
n402_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_statement_end_α:   mov              r11, 318
                        mov              r10, 38
                        add              rsp, 16;                             jmp   n403_statement_begin_α
                        .size            n402_statement_end_bx, .-n402_statement_end_bx
                        .type            n403_statement_begin_bx, @function
n403_statement_begin_bx:
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n403_statement_begin_α: mov              r11, 319
                        mov              r10, 39;                             jmp   n404_var_α
n403_statement_begin_β: mov              r11, 319;                            jmp   n409_statement_begin_α
                        .size            n403_statement_begin_bx, .-n403_statement_begin_bx
                        .type            n404_var_bx, @function
n404_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_var_α:             sub              rsp, 16
                        mov              r11, 320
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n405_lit_string_α
                        .size            n404_var_bx, .-n404_var_bx
                        .type            n405_lit_string_bx, @function
n405_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:      sub              rsp, 16
                        mov              r11, 321
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_879_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n406_lit_integer_α
n405_lit_string_β:      mov              r11, 321
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n403_statement_begin_β
.Llit_string_α_879_0:   .quad            .Llit_string_α_879_0_s
.Llit_string_α_879_0_s: .string          "x"
                        .size            n405_lit_string_bx, .-n405_lit_string_bx
                        .type            n406_lit_integer_bx, @function
n406_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_integer_α:     sub              rsp, 16
                        mov              r11, 322
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_880_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n407_assign_var_α
n406_lit_integer_β:     mov              r11, 322
                        add              rsp, 16;                             jmp   n405_lit_string_β
.Llit_integer_α_880_0:  .quad            1
                        .size            n406_lit_integer_bx, .-n406_lit_integer_bx
                        .type            n407_assign_var_bx, @function
n407_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_assign_var_α:      sub              rsp, 16
                        mov              r11, 323
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
                        add              rsp, 16;                             jmp   n406_lit_integer_β
.Lassign_var_α_882_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n408_statement_end_α
.Lassign_var_α_882_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_882_239
                        add              rsp, 16;                             jmp   n406_lit_integer_β
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
                        add              rsp, 16;                             jmp   n406_lit_integer_β
.Lassign_var_α_882_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n408_statement_end_α
                        .size            n407_assign_var_bx, .-n407_assign_var_bx
                        .type            n408_statement_end_bx, @function
n408_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_statement_end_α:   mov              r11, 324
                        mov              r10, 39
                        add              rsp, 64;                             jmp   n409_statement_begin_α
                        .size            n408_statement_end_bx, .-n408_statement_end_bx
                        .type            n409_statement_begin_bx, @function
n409_statement_begin_bx:
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 42 0
n409_statement_begin_α: mov              r11, 325
                        mov              r10, 40;                             jmp   n410_var_α
n409_statement_begin_β: mov              r11, 325;                            jmp   n415_statement_begin_α
                        .size            n409_statement_begin_bx, .-n409_statement_begin_bx
                        .type            n410_var_bx, @function
n410_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_var_α:             sub              rsp, 16
                        mov              r11, 326
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n411_lit_string_α
                        .size            n410_var_bx, .-n410_var_bx
                        .type            n411_lit_string_bx, @function
n411_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_string_α:      sub              rsp, 16
                        mov              r11, 327
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_888_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n412_lit_integer_α
n411_lit_string_β:      mov              r11, 327
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n409_statement_begin_β
.Llit_string_α_888_0:   .quad            .Llit_string_α_888_0_s
.Llit_string_α_888_0_s: .string          "y"
                        .size            n411_lit_string_bx, .-n411_lit_string_bx
                        .type            n412_lit_integer_bx, @function
n412_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_integer_α:     sub              rsp, 16
                        mov              r11, 328
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_889_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n413_assign_var_α
n412_lit_integer_β:     mov              r11, 328
                        add              rsp, 16;                             jmp   n411_lit_string_β
.Llit_integer_α_889_0:  .quad            2
                        .size            n412_lit_integer_bx, .-n412_lit_integer_bx
                        .type            n413_assign_var_bx, @function
n413_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_assign_var_α:      sub              rsp, 16
                        mov              r11, 329
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
                        add              rsp, 16;                             jmp   n412_lit_integer_β
.Lassign_var_α_891_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n414_statement_end_α
.Lassign_var_α_891_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_891_239
                        add              rsp, 16;                             jmp   n412_lit_integer_β
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
                        add              rsp, 16;                             jmp   n412_lit_integer_β
.Lassign_var_α_891_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n414_statement_end_α
                        .size            n413_assign_var_bx, .-n413_assign_var_bx
                        .type            n414_statement_end_bx, @function
n414_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_statement_end_α:   mov              r11, 330
                        mov              r10, 40
                        add              rsp, 64;                             jmp   n415_statement_begin_α
                        .size            n414_statement_end_bx, .-n414_statement_end_bx
                        .type            n415_statement_begin_bx, @function
n415_statement_begin_bx:
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 43 0
n415_statement_begin_α: mov              r11, 331
                        mov              r10, 41;                             jmp   n416_var_α
n415_statement_begin_β: mov              r11, 331;                            jmp   n421_statement_begin_α
                        .size            n415_statement_begin_bx, .-n415_statement_begin_bx
                        .type            n416_var_bx, @function
n416_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:             sub              rsp, 16
                        mov              r11, 332
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n417_lit_string_α
                        .size            n416_var_bx, .-n416_var_bx
                        .type            n417_lit_string_bx, @function
n417_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_string_α:      sub              rsp, 16
                        mov              r11, 333
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_897_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n418_lit_integer_α
n417_lit_string_β:      mov              r11, 333
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n415_statement_begin_β
.Llit_string_α_897_0:   .quad            .Llit_string_α_897_0_s
.Llit_string_α_897_0_s: .string          "z"
                        .size            n417_lit_string_bx, .-n417_lit_string_bx
                        .type            n418_lit_integer_bx, @function
n418_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_integer_α:     sub              rsp, 16
                        mov              r11, 334
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_898_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n419_assign_var_α
n418_lit_integer_β:     mov              r11, 334
                        add              rsp, 16;                             jmp   n417_lit_string_β
.Llit_integer_α_898_0:  .quad            3
                        .size            n418_lit_integer_bx, .-n418_lit_integer_bx
                        .type            n419_assign_var_bx, @function
n419_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_assign_var_α:      sub              rsp, 16
                        mov              r11, 335
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_900_0
                        test             rsi, rsi;                            je    .Lassign_var_α_900_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_900_238
                        add              rsp, 16;                             jmp   n418_lit_integer_β
.Lassign_var_α_900_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n420_statement_end_α
.Lassign_var_α_900_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_900_239
                        add              rsp, 16;                             jmp   n418_lit_integer_β
.Lassign_var_α_900_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_900_240
                        add              rsp, 16;                             jmp   n418_lit_integer_β
.Lassign_var_α_900_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n420_statement_end_α
                        .size            n419_assign_var_bx, .-n419_assign_var_bx
                        .type            n420_statement_end_bx, @function
n420_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_statement_end_α:   mov              r11, 336
                        mov              r10, 41
                        add              rsp, 64;                             jmp   n421_statement_begin_α
                        .size            n420_statement_end_bx, .-n420_statement_end_bx
                        .type            n421_statement_begin_bx, @function
n421_statement_begin_bx:
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 45 0
n421_statement_begin_α: mov              r11, 337
                        mov              r10, 42;                             jmp   n422_lit_name_α
n421_statement_begin_β: mov              r11, 337;                            jmp   n427_statement_begin_α
                        .size            n421_statement_begin_bx, .-n421_statement_begin_bx
                        .type            n422_lit_name_bx, @function
n422_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_name_α:        sub              rsp, 16
                        mov              r11, 338
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_905_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n423_lit_integer_α
.Llit_name_α_905_0:     .quad            .Llit_name_α_905_0_s
.Llit_name_α_905_0_s:   .string          "INPUT"
                        .size            n422_lit_name_bx, .-n422_lit_name_bx
                        .type            n423_lit_integer_bx, @function
n423_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_integer_α:     sub              rsp, 16
                        mov              r11, 339
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_906_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n424_lit_string_α
n423_lit_integer_β:     mov              r11, 339
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n421_statement_begin_β
.Llit_integer_α_906_0:  .quad            9
                        .size            n423_lit_integer_bx, .-n423_lit_integer_bx
                        .type            n424_lit_string_bx, @function
n424_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_string_α:      sub              rsp, 16
                        mov              r11, 340
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_907_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n425_call_α
n424_lit_string_β:      mov              r11, 340
                        add              rsp, 16;                             jmp   n423_lit_integer_β
.Llit_string_α_907_0:   .quad            .Llit_string_α_907_0_s
.Llit_string_α_907_0_s: .string          "[-f0 -r4194304]"
                        .size            n424_lit_string_bx, .-n424_lit_string_bx
                        .type            n425_call_bx, @function
n425_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_call_α:            sub              rsp, 16
                        mov              r11, 341
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
.Lcall_α_bynamefnzd341: .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd341]
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
                        cmp              al, 104;                             jne   .Lcall_α_908_240
                        add              rsp, 16;                             jmp   n424_lit_string_β
.Lcall_α_908_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n426_statement_end_α
n425_call_β:            mov              r11, 341
                        add              rsp, 16;                             jmp   n424_lit_string_β
                        .size            n425_call_bx, .-n425_call_bx
                        .type            n426_statement_end_bx, @function
n426_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_statement_end_α:   mov              r11, 342
                        mov              r10, 42
                        add              rsp, 64;                             jmp   n427_statement_begin_α
                        .size            n426_statement_end_bx, .-n426_statement_end_bx
                        .type            n427_statement_begin_bx, @function
n427_statement_begin_bx:
#=======================================================================================================================
#         src = INPUT
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 46 0
n427_statement_begin_α: mov              r11, 343
                        mov              r10, 43;                             jmp   n428_var_α
n427_statement_begin_β: mov              r11, 343;                            jmp   n431_statement_begin_α
                        .size            n427_statement_begin_bx, .-n427_statement_begin_bx
                        .type            n428_var_bx, @function
n428_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:             sub              rsp, 16
                        mov              r11, 344
                        mov              rdi, qword ptr [rip + .Lvar_α_913_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_913_240
                        add              rsp, 16;                             jmp   n427_statement_begin_β
.Lvar_α_913_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n429_assign_α
.Lvar_α_913_0:          .quad            .Lvar_α_913_0_s
.Lvar_α_913_0_s:        .string          "INPUT"
                        .size            n428_var_bx, .-n428_var_bx
                        .type            n429_assign_bx, @function
n429_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_assign_α:          mov              r11, 345
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
                        mov              rdi, qword ptr [rip + .Lassign_α_914_0]
                        .section         .rodata
.Lassign_α_914_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_914_1_s]
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
                        pop              rax;                                 jmp   n430_statement_end_α
.Lassign_α_914_0:       .quad            .Lassign_α_914_0_s
.Lassign_α_914_0_s:     .string          "src"
                        .size            n429_assign_bx, .-n429_assign_bx
                        .type            n430_statement_end_bx, @function
n430_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_statement_end_α:   mov              r11, 346
                        mov              r10, 43
                        add              rsp, 16;                             jmp   n431_statement_begin_α
                        .size            n430_statement_end_bx, .-n430_statement_end_bx
                        .type            n431_statement_begin_bx, @function
n431_statement_begin_bx:
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
n431_statement_begin_α: mov              r11, 347
                        mov              r10, 44;                             jmp   n432_call_α
n431_statement_begin_β: mov              r11, 347;                            jmp   n435_statement_begin_α
                        .size            n431_statement_begin_bx, .-n431_statement_begin_bx
                        .type            n432_call_bx, @function
n432_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_call_α:            sub              rsp, 16
                        mov              r11, 348
                        .section         .rodata
.Lcall_α_rkfnzd920:     .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd920]
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
                        cmp              al, 104;                             jne   .Lcall_α_919_240
                        add              rsp, 16;                             jmp   n431_statement_begin_β
.Lcall_α_919_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n433_assign_α
n432_call_β:            mov              r11, 348
                        add              rsp, 16;                             jmp   n431_statement_begin_β
                        .size            n432_call_bx, .-n432_call_bx
                        .type            n433_assign_bx, @function
n433_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_assign_α:          mov              r11, 349
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
                        mov              rdi, qword ptr [rip + .Lassign_α_921_0]
                        .section         .rodata
.Lassign_α_921_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_921_1_s]
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
                        pop              rax;                                 jmp   n434_statement_end_α
.Lassign_α_921_0:       .quad            .Lassign_α_921_0_s
.Lassign_α_921_0_s:     .string          "t0"
                        .size            n433_assign_bx, .-n433_assign_bx
                        .type            n434_statement_end_bx, @function
n434_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_statement_end_α:   mov              r11, 350
                        mov              r10, 44
                        add              rsp, 16;                             jmp   n435_statement_begin_α
                        .size            n434_statement_end_bx, .-n434_statement_end_bx
                        .type            n435_statement_begin_bx, @function
n435_statement_begin_bx:
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 50 0
n435_statement_begin_α: mov              r11, 351
                        mov              r10, 45;                             jmp   n436_var_α
n435_statement_begin_β: mov              r11, 351;                            jmp   n457_statement_begin_α
                        .size            n435_statement_begin_bx, .-n435_statement_begin_bx
                        .type            n436_var_bx, @function
n436_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_var_α:             sub              rsp, 16
                        mov              r11, 352
                        mov              rax, qword ptr [r9 + 336]            # src
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n437_var_α
                        .size            n436_var_bx, .-n436_var_bx
                        .type            n437_var_bx, @function
n437_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_var_α:             sub              rsp, 16
                        mov              r11, 353
                        mov              rax, qword ptr [r9 + 320]            # C
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n438_assign_α
n437_var_β:             mov              r11, 353
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n457_statement_begin_α
                        .size            n437_var_bx, .-n437_var_bx
                        .type            n438_assign_bx, @function
n438_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_assign_α:          mov              r11, 354
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
                        mov              rdi, qword ptr [rip + .Lassign_α_928_0]
                        .section         .rodata
.Lassign_α_928_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_928_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_928_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n439_match_begin_α
n438_assign_β:          mov              r11, 354;                            jmp   n437_var_β
.Lassign_α_928_0:       .quad            .Lassign_α_928_0_s
.Lassign_α_928_0_s:     .string          "PATV$0"
                        .size            n438_assign_bx, .-n438_assign_bx
                        .type            n439_match_begin_bx, @function
n439_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_match_begin_α:     mov              r11, 355
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
.Lmatch_begin_α_930_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_930_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n440_match_defer_α
n439_match_begin_β:     mov              r11, 355
.Lmatch_begin_α_930_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_930_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_930_1
                                                                              jmp   .Lmatch_begin_α_930_0
.Lmatch_begin_β_930_1:
.Lmatch_begin_γ_439_af: mov              r11, 355
.Lmatch_begin_ω_439_af: mov              r11, 355
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
                        pop              rbp;                                 jmp   n438_assign_β
                        .size            n439_match_begin_bx, .-n439_match_begin_bx
                        .type            n440_match_defer_bx, @function
n440_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_match_defer_α:     mov              r11, 356
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S18]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_931_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_931_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_931_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_931_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_931_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_931_23
                                                                              jmp   .Lmatch_defer_α_931_22
.Lmatch_defer_α_931_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_931_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_931_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_931_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_931_0
.Lmatch_defer_α_931_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_931_0
.Lmatch_defer_α_931_22: push             r14
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
.Lmatch_defer_α_931_23: test             rax, rax;                            jz    .Lmatch_defer_α_931_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_931_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_931_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_931_4:                                                        jmp   n441_match_end_α
.Lmatch_defer_α_931_5:                                                        jmp   n439_match_begin_β
.Lmatch_defer_α_931_0:  mov              eax, edx
                        test             eax, eax;                            js    n439_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_931_6]
                        push             rcx
                        push             rax;                                 jmp   n441_match_end_α
.Lmatch_defer_α_931_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n439_match_begin_β
n440_match_defer_β:     mov              r11, 356
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_931_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_931_12
                                                                              jmp   rax
.Lmatch_defer_β_931_12:                                                       jmp   qword ptr [rsp]
                        .size            n440_match_defer_bx, .-n440_match_defer_bx
                        .type            n441_match_end_bx, @function
n441_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_match_end_α:       mov              r11, 357
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
                        test             rax, rax;                            je    .Lmatch_end_α_933_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_439_af
.Lmatch_end_α_933_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n442_statement_end_α
                        .size            n441_match_end_bx, .-n441_match_end_bx
                        .type            n442_statement_end_bx, @function
n442_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_statement_end_α:   mov              r11, 358
                        mov              r10, 45
                        add              rsp, 32;                             jmp   n443_statement_begin_α
                        .size            n442_statement_end_bx, .-n442_statement_end_bx
                        .type            n443_statement_begin_bx, @function
n443_statement_begin_bx:
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 51 0
n443_statement_begin_α: mov              r11, 359
                        mov              r10, 46;                             jmp   n444_call_α
n443_statement_begin_β: mov              r11, 359;                            jmp   n447_statement_begin_α
                        .size            n443_statement_begin_bx, .-n443_statement_begin_bx
                        .type            n444_call_bx, @function
n444_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_call_α:            sub              rsp, 16
                        mov              r11, 360
                        .section         .rodata
.Lcall_α_rkfnzd939:     .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd939]
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
                        cmp              al, 104;                             jne   .Lcall_α_938_240
                        add              rsp, 16;                             jmp   n443_statement_begin_β
.Lcall_α_938_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n445_assign_α
n444_call_β:            mov              r11, 360
                        add              rsp, 16;                             jmp   n443_statement_begin_β
                        .size            n444_call_bx, .-n444_call_bx
                        .type            n445_assign_bx, @function
n445_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_assign_α:          mov              r11, 361
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
                        mov              rdi, qword ptr [rip + .Lassign_α_940_0]
                        .section         .rodata
.Lassign_α_940_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_940_1_s]
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
                        pop              rax;                                 jmp   n446_statement_end_α
.Lassign_α_940_0:       .quad            .Lassign_α_940_0_s
.Lassign_α_940_0_s:     .string          "t1"
                        .size            n445_assign_bx, .-n445_assign_bx
                        .type            n446_statement_end_bx, @function
n446_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_statement_end_α:   mov              r11, 362
                        mov              r10, 46
                        add              rsp, 16;                             jmp   n447_statement_begin_α
                        .size            n446_statement_end_bx, .-n446_statement_end_bx
                        .type            n447_statement_begin_bx, @function
n447_statement_begin_bx:
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000        :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 52 0
n447_statement_begin_α: mov              r11, 363
                        mov              r10, 47;                             jmp   n448_lit_string_α
n447_statement_begin_β: mov              r11, 363;                            jmp   main_γ
                        .size            n447_statement_begin_bx, .-n447_statement_begin_bx
                        .type            n448_lit_string_bx, @function
n448_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_string_α:      sub              rsp, 16
                        mov              r11, 364
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_945_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n449_var_α
.Llit_string_α_945_0:   .quad            .Llit_string_α_945_0_s
.Llit_string_α_945_0_s: .string          "match_ms="
                        .size            n448_lit_string_bx, .-n448_lit_string_bx
                        .type            n449_var_bx, @function
n449_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_var_α:             sub              rsp, 16
                        mov              r11, 365
                        mov              rax, qword ptr [r9 + 368]            # t1
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n450_var_α
n449_var_β:             mov              r11, 365
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n447_statement_begin_β
                        .size            n449_var_bx, .-n449_var_bx
                        .type            n450_var_bx, @function
n450_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_var_α:             sub              rsp, 16
                        mov              r11, 366
                        mov              rax, qword ptr [r9 + 352]            # t0
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n451_binop_α
n450_var_β:             mov              r11, 366
                        add              rsp, 16;                             jmp   n449_var_β
                        .size            n450_var_bx, .-n450_var_bx
                        .type            n451_binop_bx, @function
n451_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_binop_α:           sub              rsp, 16
                        mov              r11, 367
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_948_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_948_7
.Lbinop_α_948_2:        and              edx, 1;                              jz    .Lbinop_α_948_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_948_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_948_4
.Lbinop_α_948_3:        movq             xmm0, rsi
.Lbinop_α_948_4:        cmp              cl, 5;                               je    .Lbinop_α_948_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_948_6
.Lbinop_α_948_5:        movq             xmm1, rdi
.Lbinop_α_948_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_948_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_948_7:                                                              jmp   n452_lit_integer_α
.Lbinop_α_948_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_948_240
                        add              rsp, 16;                             jmp   n450_var_β
.Lbinop_α_948_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n452_lit_integer_α
n451_binop_β:           mov              r11, 367
                        add              rsp, 16;                             jmp   n450_var_β
                        .size            n451_binop_bx, .-n451_binop_bx
                        .type            n452_lit_integer_bx, @function
n452_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_integer_α:     sub              rsp, 16
                        mov              r11, 368
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_949_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n453_binop_α
n452_lit_integer_β:     mov              r11, 368
                        add              rsp, 16;                             jmp   n451_binop_β
.Llit_integer_α_949_0:  .quad            1000000
                        .size            n452_lit_integer_bx, .-n452_lit_integer_bx
                        .type            n453_binop_bx, @function
n453_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_binop_α:           sub              rsp, 16
                        mov              r11, 369
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
                        cmp              al, 104;                             jne   .Lbinop_α_950_240
                        add              rsp, 16;                             jmp   n452_lit_integer_β
.Lbinop_α_950_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n454_binop_α
n453_binop_β:           mov              r11, 369
                        add              rsp, 16;                             jmp   n452_lit_integer_β
                        .size            n453_binop_bx, .-n453_binop_bx
                        .type            n454_binop_bx, @function
n454_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_binop_α:           sub              rsp, 16
                        mov              r11, 370
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n455_assign_α
                        .size            n454_binop_bx, .-n454_binop_bx
                        .type            n455_assign_bx, @function
n455_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_assign_α:          mov              r11, 371
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
                        mov              rdi, qword ptr [rip + .Lassign_α_952_0]
                        .section         .rodata
.Lassign_α_952_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_952_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_952_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n456_statement_end_α
.Lassign_α_952_0:       .quad            .Lassign_α_952_0_s
.Lassign_α_952_0_s:     .string          "TERMINAL"
                        .size            n455_assign_bx, .-n455_assign_bx
                        .type            n456_statement_end_bx, @function
n456_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_statement_end_α:   mov              r11, 372
                        mov              r10, 47
                        add              rsp, 112;                            jmp   main_γ
                        .size            n456_statement_end_bx, .-n456_statement_end_bx
                        .type            n457_statement_begin_bx, @function
n457_statement_begin_bx:
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 53 0
n457_statement_begin_α: mov              r11, 373
                        mov              r10, 48;                             jmp   n458_call_α
n457_statement_begin_β: mov              r11, 373;                            jmp   n461_statement_begin_α
                        .size            n457_statement_begin_bx, .-n457_statement_begin_bx
                        .type            n458_call_bx, @function
n458_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_call_α:            sub              rsp, 16
                        mov              r11, 374
                        .section         .rodata
.Lcall_α_rkfnzd958:     .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd958]
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
                        cmp              al, 104;                             jne   .Lcall_α_957_240
                        add              rsp, 16;                             jmp   n457_statement_begin_β
.Lcall_α_957_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n459_assign_α
n458_call_β:            mov              r11, 374
                        add              rsp, 16;                             jmp   n457_statement_begin_β
                        .size            n458_call_bx, .-n458_call_bx
                        .type            n459_assign_bx, @function
n459_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_assign_α:          mov              r11, 375
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
                        mov              rdi, qword ptr [rip + .Lassign_α_959_0]
                        .section         .rodata
.Lassign_α_959_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_959_1_s]
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
                        pop              rax;                                 jmp   n460_statement_end_α
.Lassign_α_959_0:       .quad            .Lassign_α_959_0_s
.Lassign_α_959_0_s:     .string          "t1"
                        .size            n459_assign_bx, .-n459_assign_bx
                        .type            n460_statement_end_bx, @function
n460_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_statement_end_α:   mov              r11, 376
                        mov              r10, 48
                        add              rsp, 16;                             jmp   n461_statement_begin_α
                        .size            n460_statement_end_bx, .-n460_statement_end_bx
                        .type            n461_statement_begin_bx, @function
n461_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
n461_statement_begin_α: mov              r11, 377
                        mov              r10, 49;                             jmp   n462_lit_string_α
n461_statement_begin_β: mov              r11, 377;                            jmp   n465_statement_begin_α
                        .size            n461_statement_begin_bx, .-n461_statement_begin_bx
                        .type            n462_lit_string_bx, @function
n462_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_string_α:      sub              rsp, 16
                        mov              r11, 378
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_964_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n463_assign_α
.Llit_string_α_964_0:   .quad            .Llit_string_α_964_0_s
.Llit_string_α_964_0_s: .string          "Boo!"
                        .size            n462_lit_string_bx, .-n462_lit_string_bx
                        .type            n463_assign_bx, @function
n463_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_assign_α:          mov              r11, 379
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
                        mov              rdi, qword ptr [rip + .Lassign_α_965_0]
                        .section         .rodata
.Lassign_α_965_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_965_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_965_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n464_statement_end_α
.Lassign_α_965_0:       .quad            .Lassign_α_965_0_s
.Lassign_α_965_0_s:     .string          "OUTPUT"
                        .size            n463_assign_bx, .-n463_assign_bx
                        .type            n464_statement_end_bx, @function
n464_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_statement_end_α:   mov              r11, 380
                        mov              r10, 49
                        add              rsp, 16;                             jmp   n465_statement_begin_α
                        .size            n464_statement_end_bx, .-n464_statement_end_bx
                        .type            n465_statement_begin_bx, @function
n465_statement_begin_bx:
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 55 0
n465_statement_begin_α: mov              r11, 381
                        mov              r10, 50;                             jmp   n466_lit_string_α
n465_statement_begin_β: mov              r11, 381;                            jmp   main_γ
                        .size            n465_statement_begin_bx, .-n465_statement_begin_bx
                        .type            n466_lit_string_bx, @function
n466_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n466_lit_string_α:      sub              rsp, 16
                        mov              r11, 382
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_970_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n467_var_α
.Llit_string_α_970_0:   .quad            .Llit_string_α_970_0_s
.Llit_string_α_970_0_s: .string          "match_ms="
                        .size            n466_lit_string_bx, .-n466_lit_string_bx
                        .type            n467_var_bx, @function
n467_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n467_var_α:             sub              rsp, 16
                        mov              r11, 383
                        mov              rax, qword ptr [r9 + 368]            # t1
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n468_var_α
n467_var_β:             mov              r11, 383
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n465_statement_begin_β
                        .size            n467_var_bx, .-n467_var_bx
                        .type            n468_var_bx, @function
n468_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n468_var_α:             sub              rsp, 16
                        mov              r11, 384
                        mov              rax, qword ptr [r9 + 352]            # t0
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n469_binop_α
n468_var_β:             mov              r11, 384
                        add              rsp, 16;                             jmp   n467_var_β
                        .size            n468_var_bx, .-n468_var_bx
                        .type            n469_binop_bx, @function
n469_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n469_binop_α:           sub              rsp, 16
                        mov              r11, 385
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_973_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_973_7
.Lbinop_α_973_2:        and              edx, 1;                              jz    .Lbinop_α_973_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_973_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_973_4
.Lbinop_α_973_3:        movq             xmm0, rsi
.Lbinop_α_973_4:        cmp              cl, 5;                               je    .Lbinop_α_973_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_973_6
.Lbinop_α_973_5:        movq             xmm1, rdi
.Lbinop_α_973_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_973_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_973_7:                                                              jmp   n470_lit_integer_α
.Lbinop_α_973_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_973_240
                        add              rsp, 16;                             jmp   n468_var_β
.Lbinop_α_973_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n470_lit_integer_α
n469_binop_β:           mov              r11, 385
                        add              rsp, 16;                             jmp   n468_var_β
                        .size            n469_binop_bx, .-n469_binop_bx
                        .type            n470_lit_integer_bx, @function
n470_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n470_lit_integer_α:     sub              rsp, 16
                        mov              r11, 386
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_974_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n471_binop_α
n470_lit_integer_β:     mov              r11, 386
                        add              rsp, 16;                             jmp   n469_binop_β
.Llit_integer_α_974_0:  .quad            1000000
                        .size            n470_lit_integer_bx, .-n470_lit_integer_bx
                        .type            n471_binop_bx, @function
n471_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n471_binop_α:           sub              rsp, 16
                        mov              r11, 387
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
                        cmp              al, 104;                             jne   .Lbinop_α_975_240
                        add              rsp, 16;                             jmp   n470_lit_integer_β
.Lbinop_α_975_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n472_binop_α
n471_binop_β:           mov              r11, 387
                        add              rsp, 16;                             jmp   n470_lit_integer_β
                        .size            n471_binop_bx, .-n471_binop_bx
                        .type            n472_binop_bx, @function
n472_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n472_binop_α:           sub              rsp, 16
                        mov              r11, 388
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n473_assign_α
                        .size            n472_binop_bx, .-n472_binop_bx
                        .type            n473_assign_bx, @function
n473_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n473_assign_α:          mov              r11, 389
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
                        mov              rdi, qword ptr [rip + .Lassign_α_977_0]
                        .section         .rodata
.Lassign_α_977_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_977_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_977_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n474_statement_end_α
.Lassign_α_977_0:       .quad            .Lassign_α_977_0_s
.Lassign_α_977_0_s:     .string          "TERMINAL"
                        .size            n473_assign_bx, .-n473_assign_bx
                        .type            n474_statement_end_bx, @function
n474_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n474_statement_end_α:   mov              r11, 390
                        mov              r10, 50
                        add              rsp, 112;                            jmp   main_γ
                        .size            n474_statement_end_bx, .-n474_statement_end_bx
                        .type            n475_goto_bx, @function
n475_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n475_goto_α:            mov              r11, 391;                            jmp   LBL__EMIT
n475_goto_β:            mov              r11, 391;                            jmp   main_ω
                        .size            n475_goto_bx, .-n475_goto_bx
                        .type            n476_goto_bx, @function
n476_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n476_goto_α:            mov              r11, 392;                            jmp   LBL__PSH
n476_goto_β:            mov              r11, 392;                            jmp   main_ω
                        .size            n476_goto_bx, .-n476_goto_bx
                        .type            n477_goto_bx, @function
n477_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n477_goto_α:            mov              r11, 393;                            jmp   LBL__DRF
n477_goto_β:            mov              r11, 393;                            jmp   main_ω
                        .size            n477_goto_bx, .-n477_goto_bx
                        .type            n478_goto_bx, @function
n478_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n478_goto_α:            mov              r11, 394;                            jmp   LBL__ADD
n478_goto_β:            mov              r11, 394;                            jmp   main_ω
                        .size            n478_goto_bx, .-n478_goto_bx
                        .type            n479_goto_bx, @function
n479_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n479_goto_α:            mov              r11, 395;                            jmp   LBL__SUB
n479_goto_β:            mov              r11, 395;                            jmp   main_ω
                        .size            n479_goto_bx, .-n479_goto_bx
                        .type            n480_goto_bx, @function
n480_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n480_goto_α:            mov              r11, 396;                            jmp   LBL__MUL
n480_goto_β:            mov              r11, 396;                            jmp   main_ω
                        .size            n480_goto_bx, .-n480_goto_bx
                        .type            n481_goto_bx, @function
n481_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n481_goto_α:            mov              r11, 397;                            jmp   LBL__DIV
n481_goto_β:            mov              r11, 397;                            jmp   main_ω
                        .size            n481_goto_bx, .-n481_goto_bx
                        .type            n482_goto_bx, @function
n482_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n482_goto_α:            mov              r11, 398;                            jmp   LBL__NEG
n482_goto_β:            mov              r11, 398;                            jmp   main_ω
                        .size            n482_goto_bx, .-n482_goto_bx
                        .type            n483_goto_bx, @function
n483_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n483_goto_α:            mov              r11, 399;                            jmp   n325_statement_begin_α
n483_goto_β:            mov              r11, 399;                            jmp   main_ω
                        .size            n483_goto_bx, .-n483_goto_bx
                        .type            n484_goto_bx, @function
n484_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n484_goto_α:            mov              r11, 400;                            jmp   n457_statement_begin_α
n484_goto_β:            mov              r11, 400;                            jmp   main_ω
                        .size            n484_goto_bx, .-n484_goto_bx
                        .type            n485_define_bx, @function
n485_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 401
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
                        .size            n485_define_bx, .-n485_define_bx
                        .type            n486_define_bx, @function
n486_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 402
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
                        .size            n486_define_bx, .-n486_define_bx
                        .type            n487_lit_string_bx, @function
n487_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 403
                        push             rax
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 1
                        pop              rax;                                 jmp   RETURN
                        .size            n487_lit_string_bx, .-n487_lit_string_bx
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
                        .long            4480
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
                        .long            4480
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
                        .long            4480
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
                        .long            4480
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
                        .long            4480
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
                        .long            4480
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
                        .long            4480
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
                        .long            4480
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
