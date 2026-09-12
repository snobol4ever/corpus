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
                        mov              rdi, qword ptr [rdi]
                        call             rt_main_progname_stage@PLT
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_537_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n137_lit_integer_α
.Llit_integer_α_537_0:  .quad            18446744073709551615
                        .size            n136_lit_integer_bx, .-n136_lit_integer_bx
                        .type            n137_lit_integer_bx, @function
n137_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:     sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_538_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n138_lit_string_α
.Llit_integer_α_538_0:  .quad            0
                        .size            n137_lit_integer_bx, .-n137_lit_integer_bx
                        .type            n138_lit_string_bx, @function
n138_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 35
                        mov              rax, qword ptr [rip + .Llit_string_α_539_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n139_call_α
.Llit_string_α_539_0:   .quad            .Llit_string_α_539_0_s
.Llit_string_α_539_0_s: .string          "snobol4/calculator/calculator-1.sno"
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
.Lcall_α_rkfnzd541:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd541]
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
                        cmp              al, 104;                             jne   .Lcall_α_540_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n140_stmt_mark_α
.Lcall_α_540_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_stmt_mark_α
n139_call_β:            mov              r11, 55
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n140_stmt_mark_α
                        .size            n139_call_bx, .-n139_call_bx
                        .type            n140_stmt_mark_bx, @function
n140_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_stmt_mark_α:       mov              r11, 56
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n141_statement_begin_α
                        .size            n140_stmt_mark_bx, .-n140_stmt_mark_bx
                        .type            n141_statement_begin_bx, @function
n141_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_begin_α: mov              r11, 57
                        mov              r10, 1;                              jmp   n142_define_α
n141_statement_begin_β: mov              r11, 57
                        add              rsp, 64;                             jmp   n144_stmt_mark_α
                        .size            n141_statement_begin_bx, .-n141_statement_begin_bx
                        .type            n142_define_bx, @function
n142_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_define_α:          mov              r11, 58
                        mov              rdi, qword ptr [rip + .Ldefine_α_547_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_547_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_547_0]
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
                        mov              qword ptr [rcx + 0], rax;            jmp   n143_statement_end_α
n142_define_β:          mov              r11, 58;                             jmp   n141_statement_begin_β
.Ldefine_α_547_0:       .quad            .Ldefine_α_547_0_s
.Ldefine_α_547_0_s:     .string          "EMIT"
.Ldefine_α_547_1:       .quad            .Ldefine_α_547_1_s
.Ldefine_α_547_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_548_245
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
                        cmp              rax, 0;                              jg    .Ldefine_α_548_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_548_230
.Ldefine_α_548_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_548_232]
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
.Ldefine_α_548_230:                                                           jmp   .Ldefine_α_548_231
.Ldefine_α_548_232:     .quad            .Ldefine_α_548_232_s
.Ldefine_α_548_232_s:   .string          "EMIT"
.Ldefine_α_548_231:     lea              rcx, [rip + EMIT_γ]
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
                        cmp              rax, 0;                              jne   .Ldefine_α_548_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_548_235
.Ldefine_α_548_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_548_237]
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
.Ldefine_α_548_235:                                                           jmp   .Ldefine_α_548_236
.Ldefine_α_548_237:     .quad            .Ldefine_α_548_237_s
.Ldefine_α_548_237_s:   .string          "EMIT"
.Ldefine_α_548_236:     pop              rdx
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
                        cmp              rax, 0;                              jne   .Ldefine_α_548_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_548_249
.Ldefine_α_548_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_548_237]
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
.Ldefine_α_548_249:     push             rcx
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
.Ldefine_α_548_245:
                        .size            n142_define_bx, .-n142_define_bx
                        .type            n143_statement_end_bx, @function
n143_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_end_α:   mov              r11, 59
                        mov              r10, 1
                        add              rsp, 64;                             jmp   n144_stmt_mark_α
                        .size            n143_statement_end_bx, .-n143_statement_end_bx
                        .type            n144_stmt_mark_bx, @function
n144_stmt_mark_bx:
#=======================================================================================================================
#         DEFINE('PSH()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n144_stmt_mark_α:       mov              r11, 60
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n145_statement_begin_α
                        .size            n144_stmt_mark_bx, .-n144_stmt_mark_bx
                        .type            n145_statement_begin_bx, @function
n145_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_begin_α: mov              r11, 61
                        mov              r10, 2;                              jmp   n146_define_α
n145_statement_begin_β: mov              r11, 61;                             jmp   n148_stmt_mark_α
                        .size            n145_statement_begin_bx, .-n145_statement_begin_bx
                        .type            n146_define_bx, @function
n146_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_define_α:          mov              r11, 62
                        mov              rdi, qword ptr [rip + .Ldefine_α_556_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_556_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_556_0]
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
                        mov              qword ptr [rcx + 0], rax;            jmp   n147_statement_end_α
n146_define_β:          mov              r11, 62;                             jmp   n145_statement_begin_β
.Ldefine_α_556_0:       .quad            .Ldefine_α_556_0_s
.Ldefine_α_556_0_s:     .string          "PSH"
.Ldefine_α_556_1:       .quad            .Ldefine_α_556_1_s
.Ldefine_α_556_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_557_245
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
                        cmp              rax, 0;                              jg    .Ldefine_α_557_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_557_230
.Ldefine_α_557_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_557_232]
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
.Ldefine_α_557_230:                                                           jmp   .Ldefine_α_557_231
.Ldefine_α_557_232:     .quad            .Ldefine_α_557_232_s
.Ldefine_α_557_232_s:   .string          "PSH"
.Ldefine_α_557_231:     lea              rcx, [rip + PSH_γ]
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
                        cmp              rax, 0;                              jne   .Ldefine_α_557_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_557_235
.Ldefine_α_557_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_557_237]
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
.Ldefine_α_557_235:                                                           jmp   .Ldefine_α_557_236
.Ldefine_α_557_237:     .quad            .Ldefine_α_557_237_s
.Ldefine_α_557_237_s:   .string          "PSH"
.Ldefine_α_557_236:     pop              rdx
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
                        cmp              rax, 0;                              jne   .Ldefine_α_557_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_557_249
.Ldefine_α_557_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_557_237]
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
.Ldefine_α_557_249:     push             rcx
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
.Ldefine_α_557_245:
                        .size            n146_define_bx, .-n146_define_bx
                        .type            n147_statement_end_bx, @function
n147_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_end_α:   mov              r11, 63
                        mov              r10, 2;                              jmp   n148_stmt_mark_α
                        .size            n147_statement_end_bx, .-n147_statement_end_bx
                        .type            n148_stmt_mark_bx, @function
n148_stmt_mark_bx:
#=======================================================================================================================
#         DEFINE('DRF(nm)')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n148_stmt_mark_α:       mov              r11, 64
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n149_statement_begin_α
                        .size            n148_stmt_mark_bx, .-n148_stmt_mark_bx
                        .type            n149_statement_begin_bx, @function
n149_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_begin_α: mov              r11, 65
                        mov              r10, 3;                              jmp   n150_define_α
n149_statement_begin_β: mov              r11, 65;                             jmp   n152_stmt_mark_α
                        .size            n149_statement_begin_bx, .-n149_statement_begin_bx
                        .type            n150_define_bx, @function
n150_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_define_α:          mov              r11, 66
                        mov              rdi, qword ptr [rip + .Ldefine_α_565_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_565_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_565_0]
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
                        mov              qword ptr [rcx + 0], rax;            jmp   n151_statement_end_α
n150_define_β:          mov              r11, 66;                             jmp   n149_statement_begin_β
.Ldefine_α_565_0:       .quad            .Ldefine_α_565_0_s
.Ldefine_α_565_0_s:     .string          "DRF"
.Ldefine_α_565_1:       .quad            .Ldefine_α_565_1_s
.Ldefine_α_565_1_s:     .string          "nm"
                                                                              jmp   .Ldefine_α_566_245
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
                        cmp              rdx, 0;                              jbe   .Ldefine_α_566_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # nm
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_566_41
.Ldefine_α_566_10:      mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Ldefine_α_566_41:      push             rcx
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
                        cmp              rax, 0;                              jg    .Ldefine_α_566_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_566_230
.Ldefine_α_566_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_566_232]
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
.Ldefine_α_566_230:                                                           jmp   .Ldefine_α_566_231
.Ldefine_α_566_232:     .quad            .Ldefine_α_566_232_s
.Ldefine_α_566_232_s:   .string          "DRF"
.Ldefine_α_566_231:     lea              rcx, [rip + DRF_γ]
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
                        cmp              rax, 0;                              jne   .Ldefine_α_566_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_566_235
.Ldefine_α_566_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_566_237]
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
.Ldefine_α_566_235:                                                           jmp   .Ldefine_α_566_236
.Ldefine_α_566_237:     .quad            .Ldefine_α_566_237_s
.Ldefine_α_566_237_s:   .string          "DRF"
.Ldefine_α_566_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_566_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Ldefine_α_566_110
.Ldefine_α_566_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Ldefine_α_566_110:     push             rcx
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
                        cmp              rdx, 0;                              jbe   .Ldefine_α_566_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Ldefine_α_566_180
.Ldefine_α_566_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Ldefine_α_566_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_566_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_566_249
.Ldefine_α_566_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_566_237]
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
.Ldefine_α_566_249:     push             rcx
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
.Ldefine_α_566_245:
                        .size            n150_define_bx, .-n150_define_bx
                        .type            n151_statement_end_bx, @function
n151_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   mov              r11, 67
                        mov              r10, 3;                              jmp   n152_stmt_mark_α
                        .size            n151_statement_end_bx, .-n151_statement_end_bx
                        .type            n152_stmt_mark_bx, @function
n152_stmt_mark_bx:
#=======================================================================================================================
#         DEFINE('ADD()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n152_stmt_mark_α:       mov              r11, 68
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n153_statement_begin_α
                        .size            n152_stmt_mark_bx, .-n152_stmt_mark_bx
                        .type            n153_statement_begin_bx, @function
n153_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_begin_α: mov              r11, 69
                        mov              r10, 4;                              jmp   n154_define_α
n153_statement_begin_β: mov              r11, 69;                             jmp   n156_stmt_mark_α
                        .size            n153_statement_begin_bx, .-n153_statement_begin_bx
                        .type            n154_define_bx, @function
n154_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_define_α:          mov              r11, 70
                        mov              rdi, qword ptr [rip + .Ldefine_α_574_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_574_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_574_0]
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
                        mov              qword ptr [rcx + 0], rax;            jmp   n155_statement_end_α
n154_define_β:          mov              r11, 70;                             jmp   n153_statement_begin_β
.Ldefine_α_574_0:       .quad            .Ldefine_α_574_0_s
.Ldefine_α_574_0_s:     .string          "ADD"
.Ldefine_α_574_1:       .quad            .Ldefine_α_574_1_s
.Ldefine_α_574_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_575_245
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
                        cmp              rax, 0;                              jg    .Ldefine_α_575_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_575_230
.Ldefine_α_575_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_575_232]
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
.Ldefine_α_575_230:                                                           jmp   .Ldefine_α_575_231
.Ldefine_α_575_232:     .quad            .Ldefine_α_575_232_s
.Ldefine_α_575_232_s:   .string          "ADD"
.Ldefine_α_575_231:     lea              rcx, [rip + ADD_γ]
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
                        cmp              rax, 0;                              jne   .Ldefine_α_575_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_575_235
.Ldefine_α_575_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_575_237]
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
.Ldefine_α_575_235:                                                           jmp   .Ldefine_α_575_236
.Ldefine_α_575_237:     .quad            .Ldefine_α_575_237_s
.Ldefine_α_575_237_s:   .string          "ADD"
.Ldefine_α_575_236:     pop              rdx
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
                        cmp              rax, 0;                              jne   .Ldefine_α_575_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_575_249
.Ldefine_α_575_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_575_237]
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
.Ldefine_α_575_249:     push             rcx
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
.Ldefine_α_575_245:
                        .size            n154_define_bx, .-n154_define_bx
                        .type            n155_statement_end_bx, @function
n155_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_end_α:   mov              r11, 71
                        mov              r10, 4;                              jmp   n156_stmt_mark_α
                        .size            n155_statement_end_bx, .-n155_statement_end_bx
                        .type            n156_stmt_mark_bx, @function
n156_stmt_mark_bx:
#=======================================================================================================================
#         DEFINE('SUB()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n156_stmt_mark_α:       mov              r11, 72
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n157_statement_begin_α
                        .size            n156_stmt_mark_bx, .-n156_stmt_mark_bx
                        .type            n157_statement_begin_bx, @function
n157_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_begin_α: mov              r11, 73
                        mov              r10, 5;                              jmp   n158_define_α
n157_statement_begin_β: mov              r11, 73;                             jmp   n160_stmt_mark_α
                        .size            n157_statement_begin_bx, .-n157_statement_begin_bx
                        .type            n158_define_bx, @function
n158_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_define_α:          mov              r11, 74
                        mov              rdi, qword ptr [rip + .Ldefine_α_583_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_583_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_583_0]
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
                        mov              qword ptr [rcx + 0], rax;            jmp   n159_statement_end_α
n158_define_β:          mov              r11, 74;                             jmp   n157_statement_begin_β
.Ldefine_α_583_0:       .quad            .Ldefine_α_583_0_s
.Ldefine_α_583_0_s:     .string          "SUB"
.Ldefine_α_583_1:       .quad            .Ldefine_α_583_1_s
.Ldefine_α_583_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_584_245
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
                        cmp              rax, 0;                              jg    .Ldefine_α_584_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_584_230
.Ldefine_α_584_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_584_232]
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
.Ldefine_α_584_230:                                                           jmp   .Ldefine_α_584_231
.Ldefine_α_584_232:     .quad            .Ldefine_α_584_232_s
.Ldefine_α_584_232_s:   .string          "SUB"
.Ldefine_α_584_231:     lea              rcx, [rip + SUB_γ]
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
                        cmp              rax, 0;                              jne   .Ldefine_α_584_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_584_235
.Ldefine_α_584_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_584_237]
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
.Ldefine_α_584_235:                                                           jmp   .Ldefine_α_584_236
.Ldefine_α_584_237:     .quad            .Ldefine_α_584_237_s
.Ldefine_α_584_237_s:   .string          "SUB"
.Ldefine_α_584_236:     pop              rdx
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
                        cmp              rax, 0;                              jne   .Ldefine_α_584_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_584_249
.Ldefine_α_584_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_584_237]
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
.Ldefine_α_584_249:     push             rcx
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
.Ldefine_α_584_245:
                        .size            n158_define_bx, .-n158_define_bx
                        .type            n159_statement_end_bx, @function
n159_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   mov              r11, 75
                        mov              r10, 5;                              jmp   n160_stmt_mark_α
                        .size            n159_statement_end_bx, .-n159_statement_end_bx
                        .type            n160_stmt_mark_bx, @function
n160_stmt_mark_bx:
#=======================================================================================================================
#         DEFINE('MUL()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n160_stmt_mark_α:       mov              r11, 76
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n161_statement_begin_α
                        .size            n160_stmt_mark_bx, .-n160_stmt_mark_bx
                        .type            n161_statement_begin_bx, @function
n161_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_begin_α: mov              r11, 77
                        mov              r10, 6;                              jmp   n162_define_α
n161_statement_begin_β: mov              r11, 77;                             jmp   n164_stmt_mark_α
                        .size            n161_statement_begin_bx, .-n161_statement_begin_bx
                        .type            n162_define_bx, @function
n162_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_define_α:          mov              r11, 78
                        mov              rdi, qword ptr [rip + .Ldefine_α_592_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_592_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_592_0]
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
                        mov              qword ptr [rcx + 0], rax;            jmp   n163_statement_end_α
n162_define_β:          mov              r11, 78;                             jmp   n161_statement_begin_β
.Ldefine_α_592_0:       .quad            .Ldefine_α_592_0_s
.Ldefine_α_592_0_s:     .string          "MUL"
.Ldefine_α_592_1:       .quad            .Ldefine_α_592_1_s
.Ldefine_α_592_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_593_245
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
                        cmp              rax, 0;                              jg    .Ldefine_α_593_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_593_230
.Ldefine_α_593_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_593_232]
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
.Ldefine_α_593_230:                                                           jmp   .Ldefine_α_593_231
.Ldefine_α_593_232:     .quad            .Ldefine_α_593_232_s
.Ldefine_α_593_232_s:   .string          "MUL"
.Ldefine_α_593_231:     lea              rcx, [rip + MUL_γ]
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
                        cmp              rax, 0;                              jne   .Ldefine_α_593_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_593_235
.Ldefine_α_593_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_593_237]
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
.Ldefine_α_593_235:                                                           jmp   .Ldefine_α_593_236
.Ldefine_α_593_237:     .quad            .Ldefine_α_593_237_s
.Ldefine_α_593_237_s:   .string          "MUL"
.Ldefine_α_593_236:     pop              rdx
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
                        cmp              rax, 0;                              jne   .Ldefine_α_593_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_593_249
.Ldefine_α_593_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_593_237]
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
.Ldefine_α_593_249:     push             rcx
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
.Ldefine_α_593_245:
                        .size            n162_define_bx, .-n162_define_bx
                        .type            n163_statement_end_bx, @function
n163_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_end_α:   mov              r11, 79
                        mov              r10, 6;                              jmp   n164_stmt_mark_α
                        .size            n163_statement_end_bx, .-n163_statement_end_bx
                        .type            n164_stmt_mark_bx, @function
n164_stmt_mark_bx:
#=======================================================================================================================
#         DEFINE('DIV()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n164_stmt_mark_α:       mov              r11, 80
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n165_statement_begin_α
                        .size            n164_stmt_mark_bx, .-n164_stmt_mark_bx
                        .type            n165_statement_begin_bx, @function
n165_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_begin_α: mov              r11, 81
                        mov              r10, 7;                              jmp   n166_define_α
n165_statement_begin_β: mov              r11, 81;                             jmp   n168_stmt_mark_α
                        .size            n165_statement_begin_bx, .-n165_statement_begin_bx
                        .type            n166_define_bx, @function
n166_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_define_α:          mov              r11, 82
                        mov              rdi, qword ptr [rip + .Ldefine_α_601_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_601_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_601_0]
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
                        mov              qword ptr [rcx + 0], rax;            jmp   n167_statement_end_α
n166_define_β:          mov              r11, 82;                             jmp   n165_statement_begin_β
.Ldefine_α_601_0:       .quad            .Ldefine_α_601_0_s
.Ldefine_α_601_0_s:     .string          "DIV"
.Ldefine_α_601_1:       .quad            .Ldefine_α_601_1_s
.Ldefine_α_601_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_602_245
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
                        cmp              rax, 0;                              jg    .Ldefine_α_602_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_602_230
.Ldefine_α_602_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_602_232]
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
.Ldefine_α_602_230:                                                           jmp   .Ldefine_α_602_231
.Ldefine_α_602_232:     .quad            .Ldefine_α_602_232_s
.Ldefine_α_602_232_s:   .string          "DIV"
.Ldefine_α_602_231:     lea              rcx, [rip + DIV_γ]
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
                        cmp              rax, 0;                              jne   .Ldefine_α_602_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_602_235
.Ldefine_α_602_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_602_237]
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
.Ldefine_α_602_235:                                                           jmp   .Ldefine_α_602_236
.Ldefine_α_602_237:     .quad            .Ldefine_α_602_237_s
.Ldefine_α_602_237_s:   .string          "DIV"
.Ldefine_α_602_236:     pop              rdx
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
                        cmp              rax, 0;                              jne   .Ldefine_α_602_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_602_249
.Ldefine_α_602_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_602_237]
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
.Ldefine_α_602_249:     push             rcx
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
.Ldefine_α_602_245:
                        .size            n166_define_bx, .-n166_define_bx
                        .type            n167_statement_end_bx, @function
n167_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:   mov              r11, 83
                        mov              r10, 7;                              jmp   n168_stmt_mark_α
                        .size            n167_statement_end_bx, .-n167_statement_end_bx
                        .type            n168_stmt_mark_bx, @function
n168_stmt_mark_bx:
#=======================================================================================================================
#         DEFINE('NEG()')                         :(FNS_end)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n168_stmt_mark_α:       mov              r11, 84
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n169_statement_begin_α
                        .size            n168_stmt_mark_bx, .-n168_stmt_mark_bx
                        .type            n169_statement_begin_bx, @function
n169_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_begin_α: mov              r11, 85
                        mov              r10, 8;                              jmp   n170_define_α
n169_statement_begin_β: mov              r11, 85;                             jmp   n172_stmt_mark_α
                        .size            n169_statement_begin_bx, .-n169_statement_begin_bx
                        .type            n170_define_bx, @function
n170_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_define_α:          mov              r11, 86
                        mov              rdi, qword ptr [rip + .Ldefine_α_610_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_610_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_610_0]
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
                        mov              qword ptr [rcx + 0], rax;            jmp   n171_statement_end_α
n170_define_β:          mov              r11, 86;                             jmp   n169_statement_begin_β
.Ldefine_α_610_0:       .quad            .Ldefine_α_610_0_s
.Ldefine_α_610_0_s:     .string          "NEG"
.Ldefine_α_610_1:       .quad            .Ldefine_α_610_1_s
.Ldefine_α_610_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_611_245
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
                        cmp              rax, 0;                              jg    .Ldefine_α_611_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_611_230
.Ldefine_α_611_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_611_232]
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
.Ldefine_α_611_230:                                                           jmp   .Ldefine_α_611_231
.Ldefine_α_611_232:     .quad            .Ldefine_α_611_232_s
.Ldefine_α_611_232_s:   .string          "NEG"
.Ldefine_α_611_231:     lea              rcx, [rip + NEG_γ]
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
                        cmp              rax, 0;                              jne   .Ldefine_α_611_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_611_235
.Ldefine_α_611_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_611_237]
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
.Ldefine_α_611_235:                                                           jmp   .Ldefine_α_611_236
.Ldefine_α_611_237:     .quad            .Ldefine_α_611_237_s
.Ldefine_α_611_237_s:   .string          "NEG"
.Ldefine_α_611_236:     pop              rdx
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
                        cmp              rax, 0;                              jne   .Ldefine_α_611_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_611_249
.Ldefine_α_611_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_611_237]
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
.Ldefine_α_611_249:     push             rcx
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
.Ldefine_α_611_245:
                        .size            n170_define_bx, .-n170_define_bx
                        .type            n171_statement_end_bx, @function
n171_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_end_α:   mov              r11, 87
                        mov              r10, 8;                              jmp   n172_stmt_mark_α
                        .size            n171_statement_end_bx, .-n171_statement_end_bx
                        .type            n172_stmt_mark_bx, @function
n172_stmt_mark_bx:
#=======================================================================================================================
# FNS_end
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n172_stmt_mark_α:       mov              r11, 88
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n344_statement_begin_α
                        .size            n172_stmt_mark_bx, .-n172_stmt_mark_bx
                        .type            n173_statement_begin_bx, @function
n173_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α: mov              r11, 89
                        mov              r10, 9;                              jmp   n174_var_α
n173_statement_begin_β: mov              r11, 89;                             jmp   n181_stmt_mark_α
                        .size            n173_statement_begin_bx, .-n173_statement_begin_bx
                        .type            n174_var_bx, @function
n174_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:             sub              rsp, 16
                        mov              r11, 90
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n175_lit_integer_α
                        .size            n174_var_bx, .-n174_var_bx
                        .type            n175_lit_integer_bx, @function
n175_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:     sub              rsp, 16
                        mov              r11, 91
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_619_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n176_subscript_α
n175_lit_integer_β:     mov              r11, 91
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n173_statement_begin_β
.Llit_integer_α_619_0:  .quad            1
                        .size            n175_lit_integer_bx, .-n175_lit_integer_bx
                        .type            n176_subscript_bx, @function
n176_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_subscript_α:       sub              rsp, 16
                        mov              r11, 92
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
                        cmp              al, 104;                             jne   .Lsubscript_α_620_240
                        add              rsp, 16;                             jmp   n175_lit_integer_β
.Lsubscript_α_620_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n177_deref_α
n176_subscript_β:       mov              r11, 92
                        add              rsp, 16;                             jmp   n175_lit_integer_β
                        .size            n176_subscript_bx, .-n176_subscript_bx
                        .type            n177_deref_bx, @function
n177_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_deref_α:           sub              rsp, 16
                        mov              r11, 93
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
                        cmp              al, 104;                             jne   .Lderef_α_621_240
                        add              rsp, 16;                             jmp   n176_subscript_β
.Lderef_α_621_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n178_call_α
n177_deref_β:           mov              r11, 93
                        add              rsp, 16;                             jmp   n176_subscript_β
                        .size            n177_deref_bx, .-n177_deref_bx
                        .type            n178_call_bx, @function
n178_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_call_α:            sub              rsp, 16
                        mov              r11, 94
                        lea              rcx, [rip + .Lcall_α_sig623z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig623z:       .quad            1
                        .quad            .Lcall_α_623_2
                        .quad            .Lcall_α_623_2
                        .quad            16
.Lcall_α_623_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_623_29
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
.Lcall_α_623_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_623_240
                        add              rsp, 16;                             jmp   n177_deref_β
.Lcall_α_623_240:                                                             jmp   n179_assign_α
n178_call_β:            mov              r11, 94;                             jmp   n177_deref_β
.Lcall_β_623_0:         .quad            .Lcall_β_623_0_s
.Lcall_β_623_0_s:       .string          "DRF"
                        .size            n178_call_bx, .-n178_call_bx
                        .type            n179_assign_bx, @function
n179_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:          mov              r11, 95
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
                        mov              rdi, qword ptr [rip + .Lassign_α_624_0]
                        .section         .rodata
.Lassign_α_624_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_624_1_s]
                        mov              r8, 27
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
                        mov              rdi, qword ptr [rip + .Lassign_α_624_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n180_statement_end_α
.Lassign_α_624_0:       .quad            .Lassign_α_624_0_s
.Lassign_α_624_0_s:     .string          "OUTPUT"
                        .size            n179_assign_bx, .-n179_assign_bx
                        .type            n180_statement_end_bx, @function
n180_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_end_α:   mov              r11, 96
                        mov              r10, 9
                        add              rsp, 80;                             jmp   n181_stmt_mark_α
                        .size            n180_statement_end_bx, .-n180_statement_end_bx
                        .type            n181_stmt_mark_bx, @function
n181_stmt_mark_bx:
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n181_stmt_mark_α:       mov              r11, 97
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n182_statement_begin_α
                        .size            n181_stmt_mark_bx, .-n181_stmt_mark_bx
                        .type            n182_statement_begin_bx, @function
n182_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_begin_α: mov              r11, 98
                        mov              r10, 10;                             jmp   n183_lit_integer_α
n182_statement_begin_β: mov              r11, 98;                             jmp   n186_stmt_mark_α
                        .size            n182_statement_begin_bx, .-n182_statement_begin_bx
                        .type            n183_lit_integer_bx, @function
n183_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_integer_α:     sub              rsp, 16
                        mov              r11, 99
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_631_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n184_assign_α
.Llit_integer_α_631_0:  .quad            0
                        .size            n183_lit_integer_bx, .-n183_lit_integer_bx
                        .type            n184_assign_bx, @function
n184_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_assign_α:          mov              r11, 100
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
                        mov              rdi, qword ptr [rip + .Lassign_α_632_0]
                        .section         .rodata
.Lassign_α_632_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_632_1_s]
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
                        pop              rax;                                 jmp   n185_statement_end_α
.Lassign_α_632_0:       .quad            .Lassign_α_632_0_s
.Lassign_α_632_0_s:     .string          "sp"
                        .size            n184_assign_bx, .-n184_assign_bx
                        .type            n185_statement_end_bx, @function
n185_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_end_α:   mov              r11, 101
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n186_stmt_mark_α
                        .size            n185_statement_end_bx, .-n185_statement_end_bx
                        .type            n186_stmt_mark_bx, @function
n186_stmt_mark_bx:
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n186_stmt_mark_α:       mov              r11, 102
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n187_statement_begin_α
                        .size            n186_stmt_mark_bx, .-n186_stmt_mark_bx
                        .type            n187_statement_begin_bx, @function
n187_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_begin_α: mov              r11, 103
                        mov              r10, 11;                             jmp   n188_lit_name_α
n187_statement_begin_β: mov              r11, 103;                            jmp   NRETURN
                        .size            n187_statement_begin_bx, .-n187_statement_begin_bx
                        .type            n188_lit_name_bx, @function
n188_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_name_α:        sub              rsp, 16
                        mov              r11, 104
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_639_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n189_assign_α
.Llit_name_α_639_0:     .quad            .Llit_name_α_639_0_s
.Llit_name_α_639_0_s:   .string          "dm"
                        .size            n188_lit_name_bx, .-n188_lit_name_bx
                        .type            n189_assign_bx, @function
n189_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_α:          mov              r11, 105
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
                        mov              rdi, qword ptr [rip + .Lassign_α_640_0]
                        .section         .rodata
.Lassign_α_640_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_640_1_s]
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
                        pop              rax;                                 jmp   n190_statement_end_α
.Lassign_α_640_0:       .quad            .Lassign_α_640_0_s
.Lassign_α_640_0_s:     .string          "EMIT"
                        .size            n189_assign_bx, .-n189_assign_bx
                        .type            n190_statement_end_bx, @function
n190_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:   mov              r11, 106
                        mov              r10, 11
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n190_statement_end_bx, .-n190_statement_end_bx
                        .type            n191_statement_begin_bx, @function
n191_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_begin_α: mov              r11, 107
                        mov              r10, 0;                              jmp   n192_statement_end_α
n191_statement_begin_β: mov              r11, 107;                            jmp   LBL__PSH
                        .size            n191_statement_begin_bx, .-n191_statement_begin_bx
                        .type            n192_statement_end_bx, @function
n192_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_end_α:   mov              r11, 108
                        mov              r10, 12;                             jmp   LBL__PSH
                        .size            n192_statement_end_bx, .-n192_statement_end_bx
                        .type            n193_stmt_mark_bx, @function
n193_stmt_mark_bx:
#=======================================================================================================================
# PSH     PSH = .S[sp = sp + 1]                   :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
LBL__PSH:               mov              r11, 109
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n194_statement_begin_α
                        .size            n193_stmt_mark_bx, .-n193_stmt_mark_bx
                        .type            n194_statement_begin_bx, @function
n194_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_begin_α: mov              r11, 110
                        mov              r10, 13;                             jmp   n195_var_α
n194_statement_begin_β: mov              r11, 110;                            jmp   NRETURN
                        .size            n194_statement_begin_bx, .-n194_statement_begin_bx
                        .type            n195_var_bx, @function
n195_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             sub              rsp, 16
                        mov              r11, 111
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n196_var_α
                        .size            n195_var_bx, .-n195_var_bx
                        .type            n196_var_bx, @function
n196_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:             sub              rsp, 16
                        mov              r11, 112
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_lit_integer_α
n196_var_β:             mov              r11, 112
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n194_statement_begin_β
                        .size            n196_var_bx, .-n196_var_bx
                        .type            n197_lit_integer_bx, @function
n197_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:     sub              rsp, 16
                        mov              r11, 113
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_653_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n198_binop_α
n197_lit_integer_β:     mov              r11, 113
                        add              rsp, 16;                             jmp   n196_var_β
.Llit_integer_α_653_0:  .quad            1
                        .size            n197_lit_integer_bx, .-n197_lit_integer_bx
                        .type            n198_binop_bx, @function
n198_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_binop_α:           sub              rsp, 16
                        mov              r11, 114
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
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_654_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_654_7:                                                              jmp   n199_assign_α
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
                        add              rsp, 16;                             jmp   n197_lit_integer_β
.Lbinop_α_654_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n199_assign_α
n198_binop_β:           mov              r11, 114
                        add              rsp, 16;                             jmp   n197_lit_integer_β
                        .size            n198_binop_bx, .-n198_binop_bx
                        .type            n199_assign_bx, @function
n199_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_assign_α:          mov              r11, 115
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
                        mov              rdi, qword ptr [rip + .Lassign_α_655_0]
                        .section         .rodata
.Lassign_α_655_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_655_1_s]
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
                        pop              rax;                                 jmp   n200_subscript_α
.Lassign_α_655_0:       .quad            .Lassign_α_655_0_s
.Lassign_α_655_0_s:     .string          "sp"
                        .size            n199_assign_bx, .-n199_assign_bx
                        .type            n200_subscript_bx, @function
n200_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_subscript_α:       sub              rsp, 16
                        mov              r11, 116
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
                        cmp              al, 104;                             jne   .Lsubscript_α_656_240
                        add              rsp, 16;                             jmp   n198_binop_β
.Lsubscript_α_656_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_assign_α
                        .size            n200_subscript_bx, .-n200_subscript_bx
                        .type            n201_assign_bx, @function
n201_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_assign_α:          mov              r11, 117
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
                        mov              rdi, qword ptr [rip + .Lassign_α_657_0]
                        .section         .rodata
.Lassign_α_657_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_657_1_s]
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
                        pop              rax;                                 jmp   n202_statement_end_α
.Lassign_α_657_0:       .quad            .Lassign_α_657_0_s
.Lassign_α_657_0_s:     .string          "PSH"
                        .size            n201_assign_bx, .-n201_assign_bx
                        .type            n202_statement_end_bx, @function
n202_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_end_α:   mov              r11, 118
                        mov              r10, 13
                        add              rsp, 80;                             jmp   NRETURN
                        .size            n202_statement_end_bx, .-n202_statement_end_bx
                        .type            n203_statement_begin_bx, @function
n203_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_begin_α: mov              r11, 119
                        mov              r10, 14;                             jmp   n204_var_α
n203_statement_begin_β: mov              r11, 119;                            jmp   n207_stmt_mark_α
                        .size            n203_statement_begin_bx, .-n203_statement_begin_bx
                        .type            n204_var_bx, @function
n204_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:             sub              rsp, 16
                        mov              r11, 120
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_assign_α
                        .size            n204_var_bx, .-n204_var_bx
                        .type            n205_assign_bx, @function
n205_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_assign_α:          mov              r11, 121
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
                        mov              rdi, qword ptr [rip + .Lassign_α_663_0]
                        .section         .rodata
.Lassign_α_663_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_663_1_s]
                        mov              r8, 13
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
                        pop              rax;                                 jmp   n206_statement_end_α
.Lassign_α_663_0:       .quad            .Lassign_α_663_0_s
.Lassign_α_663_0_s:     .string          "DRF"
                        .size            n205_assign_bx, .-n205_assign_bx
                        .type            n206_statement_end_bx, @function
n206_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_end_α:   mov              r11, 122
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n207_stmt_mark_α
                        .size            n206_statement_end_bx, .-n206_statement_end_bx
                        .type            n207_stmt_mark_bx, @function
n207_stmt_mark_bx:
#=======================================================================================================================
#         nm ? POS(0) ANY(&LCASE) RPOS(0)         :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n207_stmt_mark_α:       mov              r11, 123
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n208_statement_begin_α
                        .size            n207_stmt_mark_bx, .-n207_stmt_mark_bx
                        .type            n208_statement_begin_bx, @function
n208_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_begin_α: mov              r11, 124
                        mov              r10, 15;                             jmp   n209_var_α
n208_statement_begin_β: mov              r11, 124;                            jmp   RETURN
                        .size            n208_statement_begin_bx, .-n208_statement_begin_bx
                        .type            n209_var_bx, @function
n209_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:             sub              rsp, 16
                        mov              r11, 125
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n210_match_begin_α
                        .size            n209_var_bx, .-n209_var_bx
                        .type            n210_match_begin_bx, @function
n210_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_match_begin_α:     mov              r11, 126
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
.Lmatch_begin_α_672_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_672_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n211_match_pos_α
n210_match_begin_β:     mov              r11, 126
.Lmatch_begin_α_672_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_672_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_672_1
                                                                              jmp   .Lmatch_begin_α_672_0
.Lmatch_begin_β_672_1:
.Lmatch_begin_γ_210_af: mov              r11, 126
.Lmatch_begin_ω_210_af: mov              r11, 126
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
                        .size            n210_match_begin_bx, .-n210_match_begin_bx
                        .type            n211_match_pos_bx, @function
n211_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_match_pos_α:       mov              r11, 127
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n210_match_begin_β
                                                                              jmp   n212_match_any_α
n211_match_pos_β:       mov              r11, 127;                            jmp   n210_match_begin_β
                        .size            n211_match_pos_bx, .-n211_match_pos_bx
                        .type            n212_match_any_bx, @function
n212_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_match_any_α:       mov              r11, 128
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n210_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n210_match_begin_β
                        add              r14d, 1;                             jmp   n213_match_rpos_α
n212_match_any_β:       mov              r11, 128
                        sub              r14d, 1;                             jmp   n210_match_begin_β
                        .size            n212_match_any_bx, .-n212_match_any_bx
                        .type            n213_match_rpos_bx, @function
n213_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_match_rpos_α:      mov              r11, 129
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n212_match_any_β
                                                                              jmp   n214_match_end_α
                        .size            n213_match_rpos_bx, .-n213_match_rpos_bx
                        .type            n214_match_end_bx, @function
n214_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_match_end_α:       mov              r11, 130
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
                        test             rax, rax;                            je    .Lmatch_end_α_678_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_210_af
.Lmatch_end_α_678_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n215_statement_end_α
                        .size            n214_match_end_bx, .-n214_match_end_bx
                        .type            n215_statement_end_bx, @function
n215_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_statement_end_α:   mov              r11, 131
                        mov              r10, 15
                        add              rsp, 16;                             jmp   n216_stmt_mark_α
                        .size            n215_statement_end_bx, .-n215_statement_end_bx
                        .type            n216_stmt_mark_bx, @function
n216_stmt_mark_bx:
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n216_stmt_mark_α:       mov              r11, 132
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n217_statement_begin_α
                        .size            n216_stmt_mark_bx, .-n216_stmt_mark_bx
                        .type            n217_statement_begin_bx, @function
n217_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_begin_α: mov              r11, 133
                        mov              r10, 16;                             jmp   n218_var_α
n217_statement_begin_β: mov              r11, 133;                            jmp   RETURN
                        .size            n217_statement_begin_bx, .-n217_statement_begin_bx
                        .type            n218_var_bx, @function
n218_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:             sub              rsp, 16
                        mov              r11, 134
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_var_α
                        .size            n218_var_bx, .-n218_var_bx
                        .type            n219_var_bx, @function
n219_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              r11, 135
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_subscript_α
n219_var_β:             mov              r11, 135
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n217_statement_begin_β
                        .size            n219_var_bx, .-n219_var_bx
                        .type            n220_subscript_bx, @function
n220_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_subscript_α:       sub              rsp, 16
                        mov              r11, 136
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
                        cmp              al, 104;                             jne   .Lsubscript_α_687_240
                        add              rsp, 16;                             jmp   n219_var_β
.Lsubscript_α_687_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_deref_α
n220_subscript_β:       mov              r11, 136
                        add              rsp, 16;                             jmp   n219_var_β
                        .size            n220_subscript_bx, .-n220_subscript_bx
                        .type            n221_deref_bx, @function
n221_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_deref_α:           sub              rsp, 16
                        mov              r11, 137
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
                        add              rsp, 16;                             jmp   n220_subscript_β
.Lderef_α_688_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n222_assign_α
                        .size            n221_deref_bx, .-n221_deref_bx
                        .type            n222_assign_bx, @function
n222_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_assign_α:          mov              r11, 138
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
                        mov              rdi, qword ptr [rip + .Lassign_α_689_0]
                        .section         .rodata
.Lassign_α_689_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_689_1_s]
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
                        pop              rax;                                 jmp   n223_statement_end_α
.Lassign_α_689_0:       .quad            .Lassign_α_689_0_s
.Lassign_α_689_0_s:     .string          "DRF"
                        .size            n222_assign_bx, .-n222_assign_bx
                        .type            n223_statement_end_bx, @function
n223_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_end_α:   mov              r11, 139
                        mov              r10, 16
                        add              rsp, 64;                             jmp   RETURN
                        .size            n223_statement_end_bx, .-n223_statement_end_bx
                        .type            n224_statement_begin_bx, @function
n224_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_begin_α: mov              r11, 140
                        mov              r10, 17;                             jmp   n225_var_α
n224_statement_begin_β: mov              r11, 140;                            jmp   n245_stmt_mark_α
                        .size            n224_statement_begin_bx, .-n224_statement_begin_bx
                        .type            n225_var_bx, @function
n225_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:             sub              rsp, 16
                        mov              r11, 141
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_var_α
                        .size            n225_var_bx, .-n225_var_bx
                        .type            n226_var_bx, @function
n226_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             sub              rsp, 16
                        mov              r11, 142
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_lit_integer_α
n226_var_β:             mov              r11, 142
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n224_statement_begin_β
                        .size            n226_var_bx, .-n226_var_bx
                        .type            n227_lit_integer_bx, @function
n227_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:     sub              rsp, 16
                        mov              r11, 143
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_696_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n228_binop_α
n227_lit_integer_β:     mov              r11, 143
                        add              rsp, 16;                             jmp   n226_var_β
.Llit_integer_α_696_0:  .quad            1
                        .size            n227_lit_integer_bx, .-n227_lit_integer_bx
                        .type            n228_binop_bx, @function
n228_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_binop_α:           sub              rsp, 16
                        mov              r11, 144
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_697_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_697_7
.Lbinop_α_697_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_697_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_697_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_697_4
.Lbinop_α_697_3:        movq             xmm0, rsi
.Lbinop_α_697_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_697_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_697_7:                                                              jmp   n229_assign_α
.Lbinop_α_697_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_697_240
                        add              rsp, 16;                             jmp   n227_lit_integer_β
.Lbinop_α_697_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n229_assign_α
n228_binop_β:           mov              r11, 144
                        add              rsp, 16;                             jmp   n227_lit_integer_β
                        .size            n228_binop_bx, .-n228_binop_bx
                        .type            n229_assign_bx, @function
n229_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_assign_α:          mov              r11, 145
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
                        mov              rdi, qword ptr [rip + .Lassign_α_698_0]
                        .section         .rodata
.Lassign_α_698_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_698_1_s]
                        mov              r8, 16
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
                        pop              rax;                                 jmp   n230_var_α
.Lassign_α_698_0:       .quad            .Lassign_α_698_0_s
.Lassign_α_698_0_s:     .string          "sp"
                        .size            n229_assign_bx, .-n229_assign_bx
                        .type            n230_var_bx, @function
n230_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_var_α:             sub              rsp, 16
                        mov              r11, 146
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n231_var_α
n230_var_β:             mov              r11, 146
                        add              rsp, 16;                             jmp   n228_binop_β
                        .size            n230_var_bx, .-n230_var_bx
                        .type            n231_var_bx, @function
n231_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             sub              rsp, 16
                        mov              r11, 147
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n232_subscript_α
n231_var_β:             mov              r11, 147
                        add              rsp, 16;                             jmp   n230_var_β
                        .size            n231_var_bx, .-n231_var_bx
                        .type            n232_subscript_bx, @function
n232_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_subscript_α:       sub              rsp, 16
                        mov              r11, 148
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
                        cmp              al, 104;                             jne   .Lsubscript_α_701_240
                        add              rsp, 16;                             jmp   n231_var_β
.Lsubscript_α_701_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n233_deref_α
n232_subscript_β:       mov              r11, 148
                        add              rsp, 16;                             jmp   n231_var_β
                        .size            n232_subscript_bx, .-n232_subscript_bx
                        .type            n233_deref_bx, @function
n233_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_deref_α:           sub              rsp, 16
                        mov              r11, 149
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
                        cmp              al, 104;                             jne   .Lderef_α_702_240
                        add              rsp, 16;                             jmp   n232_subscript_β
.Lderef_α_702_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_call_α
n233_deref_β:           mov              r11, 149
                        add              rsp, 16;                             jmp   n232_subscript_β
                        .size            n233_deref_bx, .-n233_deref_bx
                        .type            n234_call_bx, @function
n234_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_call_α:            sub              rsp, 16
                        mov              r11, 150
                        lea              rcx, [rip + .Lcall_α_sig704z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig704z:       .quad            1
                        .quad            .Lcall_α_704_2
                        .quad            .Lcall_α_704_2
                        .quad            16
.Lcall_α_704_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_704_29
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
.Lcall_α_704_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_704_240
                        add              rsp, 16;                             jmp   n233_deref_β
.Lcall_α_704_240:                                                             jmp   n235_var_α
n234_call_β:            mov              r11, 150;                            jmp   n233_deref_β
.Lcall_β_704_0:         .quad            .Lcall_β_704_0_s
.Lcall_β_704_0_s:       .string          "DRF"
                        .size            n234_call_bx, .-n234_call_bx
                        .type            n235_var_bx, @function
n235_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:             sub              rsp, 16
                        mov              r11, 151
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_var_α
n235_var_β:             mov              r11, 151
                        add              rsp, 32;                             jmp   n233_deref_β
                        .size            n235_var_bx, .-n235_var_bx
                        .type            n236_var_bx, @function
n236_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             sub              rsp, 16
                        mov              r11, 152
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n237_lit_integer_α
n236_var_β:             mov              r11, 152
                        add              rsp, 16;                             jmp   n235_var_β
                        .size            n236_var_bx, .-n236_var_bx
                        .type            n237_lit_integer_bx, @function
n237_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_integer_α:     sub              rsp, 16
                        mov              r11, 153
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_707_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n238_binop_α
n237_lit_integer_β:     mov              r11, 153
                        add              rsp, 16;                             jmp   n236_var_β
.Llit_integer_α_707_0:  .quad            1
                        .size            n237_lit_integer_bx, .-n237_lit_integer_bx
                        .type            n238_binop_bx, @function
n238_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_binop_α:           sub              rsp, 16
                        mov              r11, 154
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_708_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_708_7
.Lbinop_α_708_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_708_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_708_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_708_4
.Lbinop_α_708_3:        movq             xmm0, rsi
.Lbinop_α_708_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_708_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_708_7:                                                              jmp   n239_subscript_α
.Lbinop_α_708_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_708_240
                        add              rsp, 16;                             jmp   n237_lit_integer_β
.Lbinop_α_708_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_subscript_α
n238_binop_β:           mov              r11, 154
                        add              rsp, 16;                             jmp   n237_lit_integer_β
                        .size            n238_binop_bx, .-n238_binop_bx
                        .type            n239_subscript_bx, @function
n239_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_subscript_α:       sub              rsp, 16
                        mov              r11, 155
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
                        cmp              al, 104;                             jne   .Lsubscript_α_709_240
                        add              rsp, 16;                             jmp   n238_binop_β
.Lsubscript_α_709_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_deref_α
n239_subscript_β:       mov              r11, 155
                        add              rsp, 16;                             jmp   n238_binop_β
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
                        cmp              al, 104;                             jne   .Lderef_α_710_240
                        add              rsp, 16;                             jmp   n239_subscript_β
.Lderef_α_710_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_call_α
n240_deref_β:           mov              r11, 156
                        add              rsp, 16;                             jmp   n239_subscript_β
                        .size            n240_deref_bx, .-n240_deref_bx
                        .type            n241_call_bx, @function
n241_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_call_α:            sub              rsp, 16
                        mov              r11, 157
                        lea              rcx, [rip + .Lcall_α_sig712z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig712z:       .quad            1
                        .quad            .Lcall_α_712_2
                        .quad            .Lcall_α_712_2
                        .quad            16
.Lcall_α_712_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_712_29
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
.Lcall_α_712_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_712_240
                        add              rsp, 16;                             jmp   n240_deref_β
.Lcall_α_712_240:                                                             jmp   n242_binop_α
n241_call_β:            mov              r11, 157;                            jmp   n240_deref_β
.Lcall_β_712_0:         .quad            .Lcall_β_712_0_s
.Lcall_β_712_0_s:       .string          "DRF"
                        .size            n241_call_bx, .-n241_call_bx
                        .type            n242_binop_bx, @function
n242_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_binop_α:           sub              rsp, 16
                        mov              r11, 158
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_713_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_713_7
.Lbinop_α_713_2:        and              edx, 1;                              jz    .Lbinop_α_713_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_713_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_713_4
.Lbinop_α_713_3:        movq             xmm0, rsi
.Lbinop_α_713_4:        cmp              cl, 5;                               je    .Lbinop_α_713_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_713_6
.Lbinop_α_713_5:        movq             xmm1, rdi
.Lbinop_α_713_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_713_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_713_7:                                                              jmp   n243_assign_var_α
.Lbinop_α_713_0:        mov              rdi, qword ptr [rsp + 128]           # call
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
                        cmp              al, 104;                             jne   .Lbinop_α_713_240
                        add              rsp, 32;                             jmp   n240_deref_β
.Lbinop_α_713_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_assign_var_α
n242_binop_β:           mov              r11, 158
                        add              rsp, 32;                             jmp   n240_deref_β
                        .size            n242_binop_bx, .-n242_binop_bx
                        .type            n243_assign_var_bx, @function
n243_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_assign_var_α:      sub              rsp, 16
                        mov              r11, 159
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_715_0
                        test             rsi, rsi;                            je    .Lassign_var_α_715_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_715_238
                        add              rsp, 16;                             jmp   n242_binop_β
.Lassign_var_α_715_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_statement_end_α
.Lassign_var_α_715_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_715_239
                        add              rsp, 16;                             jmp   n242_binop_β
.Lassign_var_α_715_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_715_240
                        add              rsp, 16;                             jmp   n242_binop_β
.Lassign_var_α_715_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_statement_end_α
                        .size            n243_assign_var_bx, .-n243_assign_var_bx
                        .type            n244_statement_end_bx, @function
n244_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_end_α:   mov              r11, 160
                        mov              r10, 17
                        add              rsp, 288;                            jmp   n245_stmt_mark_α
                        .size            n244_statement_end_bx, .-n244_statement_end_bx
                        .type            n245_stmt_mark_bx, @function
n245_stmt_mark_bx:
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n245_stmt_mark_α:       mov              r11, 161
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n246_statement_begin_α
                        .size            n245_stmt_mark_bx, .-n245_stmt_mark_bx
                        .type            n246_statement_begin_bx, @function
n246_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_begin_α: mov              r11, 162
                        mov              r10, 18;                             jmp   n247_lit_name_α
n246_statement_begin_β: mov              r11, 162;                            jmp   NRETURN
                        .size            n246_statement_begin_bx, .-n246_statement_begin_bx
                        .type            n247_lit_name_bx, @function
n247_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_name_α:        sub              rsp, 16
                        mov              r11, 163
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_722_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n248_assign_α
.Llit_name_α_722_0:     .quad            .Llit_name_α_722_0_s
.Llit_name_α_722_0_s:   .string          "dm"
                        .size            n247_lit_name_bx, .-n247_lit_name_bx
                        .type            n248_assign_bx, @function
n248_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_assign_α:          mov              r11, 164
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
                        mov              rdi, qword ptr [rip + .Lassign_α_723_0]
                        .section         .rodata
.Lassign_α_723_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_723_1_s]
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
                        pop              rax;                                 jmp   n249_statement_end_α
.Lassign_α_723_0:       .quad            .Lassign_α_723_0_s
.Lassign_α_723_0_s:     .string          "ADD"
                        .size            n248_assign_bx, .-n248_assign_bx
                        .type            n249_statement_end_bx, @function
n249_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_end_α:   mov              r11, 165
                        mov              r10, 18
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n249_statement_end_bx, .-n249_statement_end_bx
                        .type            n250_statement_begin_bx, @function
n250_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_begin_α: mov              r11, 166
                        mov              r10, 19;                             jmp   n251_var_α
n250_statement_begin_β: mov              r11, 166;                            jmp   n271_stmt_mark_α
                        .size            n250_statement_begin_bx, .-n250_statement_begin_bx
                        .type            n251_var_bx, @function
n251_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:             sub              rsp, 16
                        mov              r11, 167
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_var_α
                        .size            n251_var_bx, .-n251_var_bx
                        .type            n252_var_bx, @function
n252_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:             sub              rsp, 16
                        mov              r11, 168
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n253_lit_integer_α
n252_var_β:             mov              r11, 168
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n250_statement_begin_β
                        .size            n252_var_bx, .-n252_var_bx
                        .type            n253_lit_integer_bx, @function
n253_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_integer_α:     sub              rsp, 16
                        mov              r11, 169
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_730_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n254_binop_α
n253_lit_integer_β:     mov              r11, 169
                        add              rsp, 16;                             jmp   n252_var_β
.Llit_integer_α_730_0:  .quad            1
                        .size            n253_lit_integer_bx, .-n253_lit_integer_bx
                        .type            n254_binop_bx, @function
n254_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_binop_α:           sub              rsp, 16
                        mov              r11, 170
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_731_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_731_7
.Lbinop_α_731_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_731_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_731_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_731_4
.Lbinop_α_731_3:        movq             xmm0, rsi
.Lbinop_α_731_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_731_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_731_7:                                                              jmp   n255_assign_α
.Lbinop_α_731_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_731_240
                        add              rsp, 16;                             jmp   n253_lit_integer_β
.Lbinop_α_731_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_assign_α
n254_binop_β:           mov              r11, 170
                        add              rsp, 16;                             jmp   n253_lit_integer_β
                        .size            n254_binop_bx, .-n254_binop_bx
                        .type            n255_assign_bx, @function
n255_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_α:          mov              r11, 171
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
                        mov              rdi, qword ptr [rip + .Lassign_α_732_0]
                        .section         .rodata
.Lassign_α_732_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_732_1_s]
                        mov              r8, 18
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
                        pop              rax;                                 jmp   n256_var_α
.Lassign_α_732_0:       .quad            .Lassign_α_732_0_s
.Lassign_α_732_0_s:     .string          "sp"
                        .size            n255_assign_bx, .-n255_assign_bx
                        .type            n256_var_bx, @function
n256_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             sub              rsp, 16
                        mov              r11, 172
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_var_α
n256_var_β:             mov              r11, 172
                        add              rsp, 16;                             jmp   n254_binop_β
                        .size            n256_var_bx, .-n256_var_bx
                        .type            n257_var_bx, @function
n257_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:             sub              rsp, 16
                        mov              r11, 173
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n258_subscript_α
n257_var_β:             mov              r11, 173
                        add              rsp, 16;                             jmp   n256_var_β
                        .size            n257_var_bx, .-n257_var_bx
                        .type            n258_subscript_bx, @function
n258_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_subscript_α:       sub              rsp, 16
                        mov              r11, 174
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
                        cmp              al, 104;                             jne   .Lsubscript_α_735_240
                        add              rsp, 16;                             jmp   n257_var_β
.Lsubscript_α_735_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_deref_α
n258_subscript_β:       mov              r11, 174
                        add              rsp, 16;                             jmp   n257_var_β
                        .size            n258_subscript_bx, .-n258_subscript_bx
                        .type            n259_deref_bx, @function
n259_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_deref_α:           sub              rsp, 16
                        mov              r11, 175
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
                        cmp              al, 104;                             jne   .Lderef_α_736_240
                        add              rsp, 16;                             jmp   n258_subscript_β
.Lderef_α_736_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n260_call_α
n259_deref_β:           mov              r11, 175
                        add              rsp, 16;                             jmp   n258_subscript_β
                        .size            n259_deref_bx, .-n259_deref_bx
                        .type            n260_call_bx, @function
n260_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_call_α:            sub              rsp, 16
                        mov              r11, 176
                        lea              rcx, [rip + .Lcall_α_sig738z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig738z:       .quad            1
                        .quad            .Lcall_α_738_2
                        .quad            .Lcall_α_738_2
                        .quad            16
.Lcall_α_738_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_738_29
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
.Lcall_α_738_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_738_240
                        add              rsp, 16;                             jmp   n259_deref_β
.Lcall_α_738_240:                                                             jmp   n261_var_α
n260_call_β:            mov              r11, 176;                            jmp   n259_deref_β
.Lcall_β_738_0:         .quad            .Lcall_β_738_0_s
.Lcall_β_738_0_s:       .string          "DRF"
                        .size            n260_call_bx, .-n260_call_bx
                        .type            n261_var_bx, @function
n261_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:             sub              rsp, 16
                        mov              r11, 177
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_var_α
n261_var_β:             mov              r11, 177
                        add              rsp, 32;                             jmp   n259_deref_β
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
                        add              rsp, 16;                             jmp   n261_var_β
                        .size            n262_var_bx, .-n262_var_bx
                        .type            n263_lit_integer_bx, @function
n263_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_integer_α:     sub              rsp, 16
                        mov              r11, 179
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_741_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n264_binop_α
n263_lit_integer_β:     mov              r11, 179
                        add              rsp, 16;                             jmp   n262_var_β
.Llit_integer_α_741_0:  .quad            1
                        .size            n263_lit_integer_bx, .-n263_lit_integer_bx
                        .type            n264_binop_bx, @function
n264_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_binop_α:           sub              rsp, 16
                        mov              r11, 180
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_742_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_742_7
.Lbinop_α_742_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_742_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_742_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_742_4
.Lbinop_α_742_3:        movq             xmm0, rsi
.Lbinop_α_742_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_742_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_742_7:                                                              jmp   n265_subscript_α
.Lbinop_α_742_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_742_240
                        add              rsp, 16;                             jmp   n263_lit_integer_β
.Lbinop_α_742_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n265_subscript_α
n264_binop_β:           mov              r11, 180
                        add              rsp, 16;                             jmp   n263_lit_integer_β
                        .size            n264_binop_bx, .-n264_binop_bx
                        .type            n265_subscript_bx, @function
n265_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_subscript_α:       sub              rsp, 16
                        mov              r11, 181
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
                        cmp              al, 104;                             jne   .Lsubscript_α_743_240
                        add              rsp, 16;                             jmp   n264_binop_β
.Lsubscript_α_743_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_deref_α
n265_subscript_β:       mov              r11, 181
                        add              rsp, 16;                             jmp   n264_binop_β
                        .size            n265_subscript_bx, .-n265_subscript_bx
                        .type            n266_deref_bx, @function
n266_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_deref_α:           sub              rsp, 16
                        mov              r11, 182
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
                        cmp              al, 104;                             jne   .Lderef_α_744_240
                        add              rsp, 16;                             jmp   n265_subscript_β
.Lderef_α_744_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n267_call_α
n266_deref_β:           mov              r11, 182
                        add              rsp, 16;                             jmp   n265_subscript_β
                        .size            n266_deref_bx, .-n266_deref_bx
                        .type            n267_call_bx, @function
n267_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:            sub              rsp, 16
                        mov              r11, 183
                        lea              rcx, [rip + .Lcall_α_sig746z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig746z:       .quad            1
                        .quad            .Lcall_α_746_2
                        .quad            .Lcall_α_746_2
                        .quad            16
.Lcall_α_746_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_746_29
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
.Lcall_α_746_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_746_240
                        add              rsp, 16;                             jmp   n266_deref_β
.Lcall_α_746_240:                                                             jmp   n268_binop_α
n267_call_β:            mov              r11, 183;                            jmp   n266_deref_β
.Lcall_β_746_0:         .quad            .Lcall_β_746_0_s
.Lcall_β_746_0_s:       .string          "DRF"
                        .size            n267_call_bx, .-n267_call_bx
                        .type            n268_binop_bx, @function
n268_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_binop_α:           sub              rsp, 16
                        mov              r11, 184
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_747_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_747_7
.Lbinop_α_747_2:        and              edx, 1;                              jz    .Lbinop_α_747_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_747_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_747_4
.Lbinop_α_747_3:        movq             xmm0, rsi
.Lbinop_α_747_4:        cmp              cl, 5;                               je    .Lbinop_α_747_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_747_6
.Lbinop_α_747_5:        movq             xmm1, rdi
.Lbinop_α_747_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_747_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_747_7:                                                              jmp   n269_assign_var_α
.Lbinop_α_747_0:        mov              rdi, qword ptr [rsp + 128]           # call
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
                        cmp              al, 104;                             jne   .Lbinop_α_747_240
                        add              rsp, 32;                             jmp   n266_deref_β
.Lbinop_α_747_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_assign_var_α
n268_binop_β:           mov              r11, 184
                        add              rsp, 32;                             jmp   n266_deref_β
                        .size            n268_binop_bx, .-n268_binop_bx
                        .type            n269_assign_var_bx, @function
n269_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_assign_var_α:      sub              rsp, 16
                        mov              r11, 185
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_749_0
                        test             rsi, rsi;                            je    .Lassign_var_α_749_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_749_238
                        add              rsp, 16;                             jmp   n268_binop_β
.Lassign_var_α_749_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n270_statement_end_α
.Lassign_var_α_749_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_749_239
                        add              rsp, 16;                             jmp   n268_binop_β
.Lassign_var_α_749_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_749_240
                        add              rsp, 16;                             jmp   n268_binop_β
.Lassign_var_α_749_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n270_statement_end_α
                        .size            n269_assign_var_bx, .-n269_assign_var_bx
                        .type            n270_statement_end_bx, @function
n270_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_statement_end_α:   mov              r11, 186
                        mov              r10, 19
                        add              rsp, 288;                            jmp   n271_stmt_mark_α
                        .size            n270_statement_end_bx, .-n270_statement_end_bx
                        .type            n271_stmt_mark_bx, @function
n271_stmt_mark_bx:
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n271_stmt_mark_α:       mov              r11, 187
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n272_statement_begin_α
                        .size            n271_stmt_mark_bx, .-n271_stmt_mark_bx
                        .type            n272_statement_begin_bx, @function
n272_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_begin_α: mov              r11, 188
                        mov              r10, 20;                             jmp   n273_lit_name_α
n272_statement_begin_β: mov              r11, 188;                            jmp   NRETURN
                        .size            n272_statement_begin_bx, .-n272_statement_begin_bx
                        .type            n273_lit_name_bx, @function
n273_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_name_α:        sub              rsp, 16
                        mov              r11, 189
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_756_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n274_assign_α
.Llit_name_α_756_0:     .quad            .Llit_name_α_756_0_s
.Llit_name_α_756_0_s:   .string          "dm"
                        .size            n273_lit_name_bx, .-n273_lit_name_bx
                        .type            n274_assign_bx, @function
n274_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_assign_α:          mov              r11, 190
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
                        mov              rdi, qword ptr [rip + .Lassign_α_757_0]
                        .section         .rodata
.Lassign_α_757_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_757_1_s]
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
                        pop              rax;                                 jmp   n275_statement_end_α
.Lassign_α_757_0:       .quad            .Lassign_α_757_0_s
.Lassign_α_757_0_s:     .string          "SUB"
                        .size            n274_assign_bx, .-n274_assign_bx
                        .type            n275_statement_end_bx, @function
n275_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_statement_end_α:   mov              r11, 191
                        mov              r10, 20
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n275_statement_end_bx, .-n275_statement_end_bx
                        .type            n276_statement_begin_bx, @function
n276_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_begin_α: mov              r11, 192
                        mov              r10, 21;                             jmp   n277_var_α
n276_statement_begin_β: mov              r11, 192;                            jmp   n297_stmt_mark_α
                        .size            n276_statement_begin_bx, .-n276_statement_begin_bx
                        .type            n277_var_bx, @function
n277_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:             sub              rsp, 16
                        mov              r11, 193
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n278_var_α
                        .size            n277_var_bx, .-n277_var_bx
                        .type            n278_var_bx, @function
n278_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:             sub              rsp, 16
                        mov              r11, 194
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n279_lit_integer_α
n278_var_β:             mov              r11, 194
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n276_statement_begin_β
                        .size            n278_var_bx, .-n278_var_bx
                        .type            n279_lit_integer_bx, @function
n279_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_integer_α:     sub              rsp, 16
                        mov              r11, 195
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_764_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n280_binop_α
n279_lit_integer_β:     mov              r11, 195
                        add              rsp, 16;                             jmp   n278_var_β
.Llit_integer_α_764_0:  .quad            1
                        .size            n279_lit_integer_bx, .-n279_lit_integer_bx
                        .type            n280_binop_bx, @function
n280_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_binop_α:           sub              rsp, 16
                        mov              r11, 196
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_765_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_765_7
.Lbinop_α_765_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_765_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_765_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_765_4
.Lbinop_α_765_3:        movq             xmm0, rsi
.Lbinop_α_765_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_765_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_765_7:                                                              jmp   n281_assign_α
.Lbinop_α_765_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_765_240
                        add              rsp, 16;                             jmp   n279_lit_integer_β
.Lbinop_α_765_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n281_assign_α
n280_binop_β:           mov              r11, 196
                        add              rsp, 16;                             jmp   n279_lit_integer_β
                        .size            n280_binop_bx, .-n280_binop_bx
                        .type            n281_assign_bx, @function
n281_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_assign_α:          mov              r11, 197
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
                        mov              rdi, qword ptr [rip + .Lassign_α_766_0]
                        .section         .rodata
.Lassign_α_766_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_766_1_s]
                        mov              r8, 20
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
                        pop              rax;                                 jmp   n282_var_α
.Lassign_α_766_0:       .quad            .Lassign_α_766_0_s
.Lassign_α_766_0_s:     .string          "sp"
                        .size            n281_assign_bx, .-n281_assign_bx
                        .type            n282_var_bx, @function
n282_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:             sub              rsp, 16
                        mov              r11, 198
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n283_var_α
n282_var_β:             mov              r11, 198
                        add              rsp, 16;                             jmp   n280_binop_β
                        .size            n282_var_bx, .-n282_var_bx
                        .type            n283_var_bx, @function
n283_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             sub              rsp, 16
                        mov              r11, 199
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n284_subscript_α
n283_var_β:             mov              r11, 199
                        add              rsp, 16;                             jmp   n282_var_β
                        .size            n283_var_bx, .-n283_var_bx
                        .type            n284_subscript_bx, @function
n284_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_subscript_α:       sub              rsp, 16
                        mov              r11, 200
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
                        cmp              al, 104;                             jne   .Lsubscript_α_769_240
                        add              rsp, 16;                             jmp   n283_var_β
.Lsubscript_α_769_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n285_deref_α
n284_subscript_β:       mov              r11, 200
                        add              rsp, 16;                             jmp   n283_var_β
                        .size            n284_subscript_bx, .-n284_subscript_bx
                        .type            n285_deref_bx, @function
n285_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_deref_α:           sub              rsp, 16
                        mov              r11, 201
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
                        cmp              al, 104;                             jne   .Lderef_α_770_240
                        add              rsp, 16;                             jmp   n284_subscript_β
.Lderef_α_770_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n286_call_α
n285_deref_β:           mov              r11, 201
                        add              rsp, 16;                             jmp   n284_subscript_β
                        .size            n285_deref_bx, .-n285_deref_bx
                        .type            n286_call_bx, @function
n286_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_call_α:            sub              rsp, 16
                        mov              r11, 202
                        lea              rcx, [rip + .Lcall_α_sig772z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig772z:       .quad            1
                        .quad            .Lcall_α_772_2
                        .quad            .Lcall_α_772_2
                        .quad            16
.Lcall_α_772_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_772_29
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
.Lcall_α_772_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_772_240
                        add              rsp, 16;                             jmp   n285_deref_β
.Lcall_α_772_240:                                                             jmp   n287_var_α
n286_call_β:            mov              r11, 202;                            jmp   n285_deref_β
.Lcall_β_772_0:         .quad            .Lcall_β_772_0_s
.Lcall_β_772_0_s:       .string          "DRF"
                        .size            n286_call_bx, .-n286_call_bx
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
                        add              rsp, 32;                             jmp   n285_deref_β
                        .size            n287_var_bx, .-n287_var_bx
                        .type            n288_var_bx, @function
n288_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             sub              rsp, 16
                        mov              r11, 204
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_lit_integer_α
n288_var_β:             mov              r11, 204
                        add              rsp, 16;                             jmp   n287_var_β
                        .size            n288_var_bx, .-n288_var_bx
                        .type            n289_lit_integer_bx, @function
n289_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_integer_α:     sub              rsp, 16
                        mov              r11, 205
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_775_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n290_binop_α
n289_lit_integer_β:     mov              r11, 205
                        add              rsp, 16;                             jmp   n288_var_β
.Llit_integer_α_775_0:  .quad            1
                        .size            n289_lit_integer_bx, .-n289_lit_integer_bx
                        .type            n290_binop_bx, @function
n290_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_binop_α:           sub              rsp, 16
                        mov              r11, 206
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_776_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_776_7
.Lbinop_α_776_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_776_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_776_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_776_4
.Lbinop_α_776_3:        movq             xmm0, rsi
.Lbinop_α_776_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_776_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_776_7:                                                              jmp   n291_subscript_α
.Lbinop_α_776_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_776_240
                        add              rsp, 16;                             jmp   n289_lit_integer_β
.Lbinop_α_776_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n291_subscript_α
n290_binop_β:           mov              r11, 206
                        add              rsp, 16;                             jmp   n289_lit_integer_β
                        .size            n290_binop_bx, .-n290_binop_bx
                        .type            n291_subscript_bx, @function
n291_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_subscript_α:       sub              rsp, 16
                        mov              r11, 207
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
                        cmp              al, 104;                             jne   .Lsubscript_α_777_240
                        add              rsp, 16;                             jmp   n290_binop_β
.Lsubscript_α_777_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n292_deref_α
n291_subscript_β:       mov              r11, 207
                        add              rsp, 16;                             jmp   n290_binop_β
                        .size            n291_subscript_bx, .-n291_subscript_bx
                        .type            n292_deref_bx, @function
n292_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_deref_α:           sub              rsp, 16
                        mov              r11, 208
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
                        cmp              al, 104;                             jne   .Lderef_α_778_240
                        add              rsp, 16;                             jmp   n291_subscript_β
.Lderef_α_778_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_call_α
n292_deref_β:           mov              r11, 208
                        add              rsp, 16;                             jmp   n291_subscript_β
                        .size            n292_deref_bx, .-n292_deref_bx
                        .type            n293_call_bx, @function
n293_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_call_α:            sub              rsp, 16
                        mov              r11, 209
                        lea              rcx, [rip + .Lcall_α_sig780z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig780z:       .quad            1
                        .quad            .Lcall_α_780_2
                        .quad            .Lcall_α_780_2
                        .quad            16
.Lcall_α_780_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_780_29
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
.Lcall_α_780_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_780_240
                        add              rsp, 16;                             jmp   n292_deref_β
.Lcall_α_780_240:                                                             jmp   n294_binop_α
n293_call_β:            mov              r11, 209;                            jmp   n292_deref_β
.Lcall_β_780_0:         .quad            .Lcall_β_780_0_s
.Lcall_β_780_0_s:       .string          "DRF"
                        .size            n293_call_bx, .-n293_call_bx
                        .type            n294_binop_bx, @function
n294_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_binop_α:           sub              rsp, 16
                        mov              r11, 210
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_781_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_781_7
.Lbinop_α_781_2:        and              edx, 1;                              jz    .Lbinop_α_781_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_781_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_781_4
.Lbinop_α_781_3:        movq             xmm0, rsi
.Lbinop_α_781_4:        cmp              cl, 5;                               je    .Lbinop_α_781_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_781_6
.Lbinop_α_781_5:        movq             xmm1, rdi
.Lbinop_α_781_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_781_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_781_7:                                                              jmp   n295_assign_var_α
.Lbinop_α_781_0:        mov              rdi, qword ptr [rsp + 128]           # call
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
                        cmp              al, 104;                             jne   .Lbinop_α_781_240
                        add              rsp, 32;                             jmp   n292_deref_β
.Lbinop_α_781_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_assign_var_α
n294_binop_β:           mov              r11, 210
                        add              rsp, 32;                             jmp   n292_deref_β
                        .size            n294_binop_bx, .-n294_binop_bx
                        .type            n295_assign_var_bx, @function
n295_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_assign_var_α:      sub              rsp, 16
                        mov              r11, 211
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_783_0
                        test             rsi, rsi;                            je    .Lassign_var_α_783_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_783_238
                        add              rsp, 16;                             jmp   n294_binop_β
.Lassign_var_α_783_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_statement_end_α
.Lassign_var_α_783_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_783_239
                        add              rsp, 16;                             jmp   n294_binop_β
.Lassign_var_α_783_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_783_240
                        add              rsp, 16;                             jmp   n294_binop_β
.Lassign_var_α_783_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_statement_end_α
                        .size            n295_assign_var_bx, .-n295_assign_var_bx
                        .type            n296_statement_end_bx, @function
n296_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_statement_end_α:   mov              r11, 212
                        mov              r10, 21
                        add              rsp, 288;                            jmp   n297_stmt_mark_α
                        .size            n296_statement_end_bx, .-n296_statement_end_bx
                        .type            n297_stmt_mark_bx, @function
n297_stmt_mark_bx:
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n297_stmt_mark_α:       mov              r11, 213
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n298_statement_begin_α
                        .size            n297_stmt_mark_bx, .-n297_stmt_mark_bx
                        .type            n298_statement_begin_bx, @function
n298_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_statement_begin_α: mov              r11, 214
                        mov              r10, 22;                             jmp   n299_lit_name_α
n298_statement_begin_β: mov              r11, 214;                            jmp   NRETURN
                        .size            n298_statement_begin_bx, .-n298_statement_begin_bx
                        .type            n299_lit_name_bx, @function
n299_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_name_α:        sub              rsp, 16
                        mov              r11, 215
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_790_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n300_assign_α
.Llit_name_α_790_0:     .quad            .Llit_name_α_790_0_s
.Llit_name_α_790_0_s:   .string          "dm"
                        .size            n299_lit_name_bx, .-n299_lit_name_bx
                        .type            n300_assign_bx, @function
n300_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_assign_α:          mov              r11, 216
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
                        mov              rdi, qword ptr [rip + .Lassign_α_791_0]
                        .section         .rodata
.Lassign_α_791_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_791_1_s]
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
                        pop              rax;                                 jmp   n301_statement_end_α
.Lassign_α_791_0:       .quad            .Lassign_α_791_0_s
.Lassign_α_791_0_s:     .string          "MUL"
                        .size            n300_assign_bx, .-n300_assign_bx
                        .type            n301_statement_end_bx, @function
n301_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_end_α:   mov              r11, 217
                        mov              r10, 22
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n301_statement_end_bx, .-n301_statement_end_bx
                        .type            n302_statement_begin_bx, @function
n302_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_statement_begin_α: mov              r11, 218
                        mov              r10, 23;                             jmp   n303_var_α
n302_statement_begin_β: mov              r11, 218;                            jmp   n323_stmt_mark_α
                        .size            n302_statement_begin_bx, .-n302_statement_begin_bx
                        .type            n303_var_bx, @function
n303_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_var_α:             sub              rsp, 16
                        mov              r11, 219
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n304_var_α
                        .size            n303_var_bx, .-n303_var_bx
                        .type            n304_var_bx, @function
n304_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_var_α:             sub              rsp, 16
                        mov              r11, 220
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n305_lit_integer_α
n304_var_β:             mov              r11, 220
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n302_statement_begin_β
                        .size            n304_var_bx, .-n304_var_bx
                        .type            n305_lit_integer_bx, @function
n305_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_integer_α:     sub              rsp, 16
                        mov              r11, 221
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_798_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n306_binop_α
n305_lit_integer_β:     mov              r11, 221
                        add              rsp, 16;                             jmp   n304_var_β
.Llit_integer_α_798_0:  .quad            1
                        .size            n305_lit_integer_bx, .-n305_lit_integer_bx
                        .type            n306_binop_bx, @function
n306_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_binop_α:           sub              rsp, 16
                        mov              r11, 222
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_799_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_799_7
.Lbinop_α_799_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_799_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_799_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_799_4
.Lbinop_α_799_3:        movq             xmm0, rsi
.Lbinop_α_799_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_799_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_799_7:                                                              jmp   n307_assign_α
.Lbinop_α_799_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_799_240
                        add              rsp, 16;                             jmp   n305_lit_integer_β
.Lbinop_α_799_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n307_assign_α
n306_binop_β:           mov              r11, 222
                        add              rsp, 16;                             jmp   n305_lit_integer_β
                        .size            n306_binop_bx, .-n306_binop_bx
                        .type            n307_assign_bx, @function
n307_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_assign_α:          mov              r11, 223
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
                        mov              rdi, qword ptr [rip + .Lassign_α_800_0]
                        .section         .rodata
.Lassign_α_800_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_800_1_s]
                        mov              r8, 22
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
                        pop              rax;                                 jmp   n308_var_α
.Lassign_α_800_0:       .quad            .Lassign_α_800_0_s
.Lassign_α_800_0_s:     .string          "sp"
                        .size            n307_assign_bx, .-n307_assign_bx
                        .type            n308_var_bx, @function
n308_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             sub              rsp, 16
                        mov              r11, 224
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n309_var_α
n308_var_β:             mov              r11, 224
                        add              rsp, 16;                             jmp   n306_binop_β
                        .size            n308_var_bx, .-n308_var_bx
                        .type            n309_var_bx, @function
n309_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             sub              rsp, 16
                        mov              r11, 225
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_subscript_α
n309_var_β:             mov              r11, 225
                        add              rsp, 16;                             jmp   n308_var_β
                        .size            n309_var_bx, .-n309_var_bx
                        .type            n310_subscript_bx, @function
n310_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_subscript_α:       sub              rsp, 16
                        mov              r11, 226
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
                        cmp              al, 104;                             jne   .Lsubscript_α_803_240
                        add              rsp, 16;                             jmp   n309_var_β
.Lsubscript_α_803_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_deref_α
n310_subscript_β:       mov              r11, 226
                        add              rsp, 16;                             jmp   n309_var_β
                        .size            n310_subscript_bx, .-n310_subscript_bx
                        .type            n311_deref_bx, @function
n311_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_deref_α:           sub              rsp, 16
                        mov              r11, 227
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
                        cmp              al, 104;                             jne   .Lderef_α_804_240
                        add              rsp, 16;                             jmp   n310_subscript_β
.Lderef_α_804_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_call_α
n311_deref_β:           mov              r11, 227
                        add              rsp, 16;                             jmp   n310_subscript_β
                        .size            n311_deref_bx, .-n311_deref_bx
                        .type            n312_call_bx, @function
n312_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:            sub              rsp, 16
                        mov              r11, 228
                        lea              rcx, [rip + .Lcall_α_sig806z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig806z:       .quad            1
                        .quad            .Lcall_α_806_2
                        .quad            .Lcall_α_806_2
                        .quad            16
.Lcall_α_806_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_806_29
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
.Lcall_α_806_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_806_240
                        add              rsp, 16;                             jmp   n311_deref_β
.Lcall_α_806_240:                                                             jmp   n313_var_α
n312_call_β:            mov              r11, 228;                            jmp   n311_deref_β
.Lcall_β_806_0:         .quad            .Lcall_β_806_0_s
.Lcall_β_806_0_s:       .string          "DRF"
                        .size            n312_call_bx, .-n312_call_bx
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
                        add              rsp, 32;                             jmp   n311_deref_β
                        .size            n313_var_bx, .-n313_var_bx
                        .type            n314_var_bx, @function
n314_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:             sub              rsp, 16
                        mov              r11, 230
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_lit_integer_α
n314_var_β:             mov              r11, 230
                        add              rsp, 16;                             jmp   n313_var_β
                        .size            n314_var_bx, .-n314_var_bx
                        .type            n315_lit_integer_bx, @function
n315_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_integer_α:     sub              rsp, 16
                        mov              r11, 231
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_809_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n316_binop_α
n315_lit_integer_β:     mov              r11, 231
                        add              rsp, 16;                             jmp   n314_var_β
.Llit_integer_α_809_0:  .quad            1
                        .size            n315_lit_integer_bx, .-n315_lit_integer_bx
                        .type            n316_binop_bx, @function
n316_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_binop_α:           sub              rsp, 16
                        mov              r11, 232
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_810_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_810_7
.Lbinop_α_810_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_810_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_810_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_810_4
.Lbinop_α_810_3:        movq             xmm0, rsi
.Lbinop_α_810_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_810_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_810_7:                                                              jmp   n317_subscript_α
.Lbinop_α_810_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_810_240
                        add              rsp, 16;                             jmp   n315_lit_integer_β
.Lbinop_α_810_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n317_subscript_α
n316_binop_β:           mov              r11, 232
                        add              rsp, 16;                             jmp   n315_lit_integer_β
                        .size            n316_binop_bx, .-n316_binop_bx
                        .type            n317_subscript_bx, @function
n317_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_subscript_α:       sub              rsp, 16
                        mov              r11, 233
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
                        cmp              al, 104;                             jne   .Lsubscript_α_811_240
                        add              rsp, 16;                             jmp   n316_binop_β
.Lsubscript_α_811_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n318_deref_α
n317_subscript_β:       mov              r11, 233
                        add              rsp, 16;                             jmp   n316_binop_β
                        .size            n317_subscript_bx, .-n317_subscript_bx
                        .type            n318_deref_bx, @function
n318_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_deref_α:           sub              rsp, 16
                        mov              r11, 234
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
                        cmp              al, 104;                             jne   .Lderef_α_812_240
                        add              rsp, 16;                             jmp   n317_subscript_β
.Lderef_α_812_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_call_α
n318_deref_β:           mov              r11, 234
                        add              rsp, 16;                             jmp   n317_subscript_β
                        .size            n318_deref_bx, .-n318_deref_bx
                        .type            n319_call_bx, @function
n319_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_call_α:            sub              rsp, 16
                        mov              r11, 235
                        lea              rcx, [rip + .Lcall_α_sig814z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig814z:       .quad            1
                        .quad            .Lcall_α_814_2
                        .quad            .Lcall_α_814_2
                        .quad            16
.Lcall_α_814_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_814_29
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
.Lcall_α_814_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_814_240
                        add              rsp, 16;                             jmp   n318_deref_β
.Lcall_α_814_240:                                                             jmp   n320_binop_α
n319_call_β:            mov              r11, 235;                            jmp   n318_deref_β
.Lcall_β_814_0:         .quad            .Lcall_β_814_0_s
.Lcall_β_814_0_s:       .string          "DRF"
                        .size            n319_call_bx, .-n319_call_bx
                        .type            n320_binop_bx, @function
n320_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_binop_α:           sub              rsp, 16
                        mov              r11, 236
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
                        cmp              al, 104;                             jne   .Lbinop_α_815_240
                        add              rsp, 32;                             jmp   n318_deref_β
.Lbinop_α_815_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n321_assign_var_α
n320_binop_β:           mov              r11, 236
                        add              rsp, 32;                             jmp   n318_deref_β
                        .size            n320_binop_bx, .-n320_binop_bx
                        .type            n321_assign_var_bx, @function
n321_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_assign_var_α:      sub              rsp, 16
                        mov              r11, 237
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_817_0
                        test             rsi, rsi;                            je    .Lassign_var_α_817_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_817_238
                        add              rsp, 16;                             jmp   n320_binop_β
.Lassign_var_α_817_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n322_statement_end_α
.Lassign_var_α_817_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_817_239
                        add              rsp, 16;                             jmp   n320_binop_β
.Lassign_var_α_817_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_817_240
                        add              rsp, 16;                             jmp   n320_binop_β
.Lassign_var_α_817_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n322_statement_end_α
                        .size            n321_assign_var_bx, .-n321_assign_var_bx
                        .type            n322_statement_end_bx, @function
n322_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_statement_end_α:   mov              r11, 238
                        mov              r10, 23
                        add              rsp, 288;                            jmp   n323_stmt_mark_α
                        .size            n322_statement_end_bx, .-n322_statement_end_bx
                        .type            n323_stmt_mark_bx, @function
n323_stmt_mark_bx:
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n323_stmt_mark_α:       mov              r11, 239
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n324_statement_begin_α
                        .size            n323_stmt_mark_bx, .-n323_stmt_mark_bx
                        .type            n324_statement_begin_bx, @function
n324_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_begin_α: mov              r11, 240
                        mov              r10, 24;                             jmp   n325_lit_name_α
n324_statement_begin_β: mov              r11, 240;                            jmp   NRETURN
                        .size            n324_statement_begin_bx, .-n324_statement_begin_bx
                        .type            n325_lit_name_bx, @function
n325_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_name_α:        sub              rsp, 16
                        mov              r11, 241
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_824_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n326_assign_α
.Llit_name_α_824_0:     .quad            .Llit_name_α_824_0_s
.Llit_name_α_824_0_s:   .string          "dm"
                        .size            n325_lit_name_bx, .-n325_lit_name_bx
                        .type            n326_assign_bx, @function
n326_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_assign_α:          mov              r11, 242
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
                        mov              rdi, qword ptr [rip + .Lassign_α_825_0]
                        .section         .rodata
.Lassign_α_825_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_825_1_s]
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
                        pop              rax;                                 jmp   n327_statement_end_α
.Lassign_α_825_0:       .quad            .Lassign_α_825_0_s
.Lassign_α_825_0_s:     .string          "DIV"
                        .size            n326_assign_bx, .-n326_assign_bx
                        .type            n327_statement_end_bx, @function
n327_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_end_α:   mov              r11, 243
                        mov              r10, 24
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n327_statement_end_bx, .-n327_statement_end_bx
                        .type            n328_statement_begin_bx, @function
n328_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_begin_α: mov              r11, 244
                        mov              r10, 25;                             jmp   n329_var_α
n328_statement_begin_β: mov              r11, 244;                            jmp   n339_stmt_mark_α
                        .size            n328_statement_begin_bx, .-n328_statement_begin_bx
                        .type            n329_var_bx, @function
n329_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_var_α:             sub              rsp, 16
                        mov              r11, 245
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n330_var_α
                        .size            n329_var_bx, .-n329_var_bx
                        .type            n330_var_bx, @function
n330_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:             sub              rsp, 16
                        mov              r11, 246
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_var_α
n330_var_β:             mov              r11, 246
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n328_statement_begin_β
                        .size            n330_var_bx, .-n330_var_bx
                        .type            n331_var_bx, @function
n331_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:             sub              rsp, 16
                        mov              r11, 247
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n332_var_α
n331_var_β:             mov              r11, 247
                        add              rsp, 16;                             jmp   n330_var_β
                        .size            n331_var_bx, .-n331_var_bx
                        .type            n332_var_bx, @function
n332_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_var_α:             sub              rsp, 16
                        mov              r11, 248
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n333_subscript_α
n332_var_β:             mov              r11, 248
                        add              rsp, 16;                             jmp   n331_var_β
                        .size            n332_var_bx, .-n332_var_bx
                        .type            n333_subscript_bx, @function
n333_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_subscript_α:       sub              rsp, 16
                        mov              r11, 249
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
                        cmp              al, 104;                             jne   .Lsubscript_α_834_240
                        add              rsp, 16;                             jmp   n332_var_β
.Lsubscript_α_834_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_deref_α
n333_subscript_β:       mov              r11, 249
                        add              rsp, 16;                             jmp   n332_var_β
                        .size            n333_subscript_bx, .-n333_subscript_bx
                        .type            n334_deref_bx, @function
n334_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_deref_α:           sub              rsp, 16
                        mov              r11, 250
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
                        cmp              al, 104;                             jne   .Lderef_α_835_240
                        add              rsp, 16;                             jmp   n333_subscript_β
.Lderef_α_835_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n335_call_α
n334_deref_β:           mov              r11, 250
                        add              rsp, 16;                             jmp   n333_subscript_β
                        .size            n334_deref_bx, .-n334_deref_bx
                        .type            n335_call_bx, @function
n335_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_call_α:            sub              rsp, 16
                        mov              r11, 251
                        lea              rcx, [rip + .Lcall_α_sig837z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig837z:       .quad            1
                        .quad            .Lcall_α_837_2
                        .quad            .Lcall_α_837_2
                        .quad            16
.Lcall_α_837_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_837_29
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
.Lcall_α_837_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_837_240
                        add              rsp, 16;                             jmp   n334_deref_β
.Lcall_α_837_240:                                                             jmp   n336_unop_α
n335_call_β:            mov              r11, 251;                            jmp   n334_deref_β
.Lcall_β_837_0:         .quad            .Lcall_β_837_0_s
.Lcall_β_837_0_s:       .string          "DRF"
                        .size            n335_call_bx, .-n335_call_bx
                        .type            n336_unop_bx, @function
n336_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_unop_α:            sub              rsp, 16
                        mov              r11, 252
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n337_assign_var_α
n336_unop_β:            mov              r11, 252
                        add              rsp, 32;                             jmp   n334_deref_β
                        .size            n336_unop_bx, .-n336_unop_bx
                        .type            n337_assign_var_bx, @function
n337_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_assign_var_α:      sub              rsp, 16
                        mov              r11, 253
                        mov              rdi, qword ptr [rsp + 128]           # var
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        cmp              dil, 24;                             jne   .Lassign_var_α_840_0
                        test             rsi, rsi;                            je    .Lassign_var_α_840_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_840_238
                        add              rsp, 16;                             jmp   n336_unop_β
.Lassign_var_α_840_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n338_statement_end_α
.Lassign_var_α_840_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_840_239
                        add              rsp, 16;                             jmp   n336_unop_β
.Lassign_var_α_840_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_840_240
                        add              rsp, 16;                             jmp   n336_unop_β
.Lassign_var_α_840_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n338_statement_end_α
                        .size            n337_assign_var_bx, .-n337_assign_var_bx
                        .type            n338_statement_end_bx, @function
n338_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_end_α:   mov              r11, 254
                        mov              r10, 25
                        add              rsp, 144;                            jmp   n339_stmt_mark_α
                        .size            n338_statement_end_bx, .-n338_statement_end_bx
                        .type            n339_stmt_mark_bx, @function
n339_stmt_mark_bx:
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n339_stmt_mark_α:       mov              r11, 255
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 26
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 26
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n340_statement_begin_α
                        .size            n339_stmt_mark_bx, .-n339_stmt_mark_bx
                        .type            n340_statement_begin_bx, @function
n340_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_statement_begin_α: mov              r11, 256
                        mov              r10, 26;                             jmp   n341_lit_name_α
n340_statement_begin_β: mov              r11, 256;                            jmp   NRETURN
                        .size            n340_statement_begin_bx, .-n340_statement_begin_bx
                        .type            n341_lit_name_bx, @function
n341_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_name_α:        sub              rsp, 16
                        mov              r11, 257
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_847_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n342_assign_α
.Llit_name_α_847_0:     .quad            .Llit_name_α_847_0_s
.Llit_name_α_847_0_s:   .string          "dm"
                        .size            n341_lit_name_bx, .-n341_lit_name_bx
                        .type            n342_assign_bx, @function
n342_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_assign_α:          mov              r11, 258
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
                        mov              rdi, qword ptr [rip + .Lassign_α_848_0]
                        .section         .rodata
.Lassign_α_848_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_848_1_s]
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
                        pop              rax;                                 jmp   n343_statement_end_α
.Lassign_α_848_0:       .quad            .Lassign_α_848_0_s
.Lassign_α_848_0_s:     .string          "NEG"
                        .size            n342_assign_bx, .-n342_assign_bx
                        .type            n343_statement_end_bx, @function
n343_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_statement_end_α:   mov              r11, 259
                        mov              r10, 26
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n343_statement_end_bx, .-n343_statement_end_bx
                        .type            n344_statement_begin_bx, @function
n344_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_statement_begin_α: mov              r11, 260
                        mov              r10, 27;                             jmp   n345_statement_end_α
n344_statement_begin_β: mov              r11, 260;                            jmp   n346_stmt_mark_α
                        .size            n344_statement_begin_bx, .-n344_statement_begin_bx
                        .type            n345_statement_end_bx, @function
n345_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_statement_end_α:   mov              r11, 261
                        mov              r10, 27;                             jmp   n346_stmt_mark_α
                        .size            n345_statement_end_bx, .-n345_statement_end_bx
                        .type            n346_stmt_mark_bx, @function
n346_stmt_mark_bx:
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 29 0
n346_stmt_mark_α:       mov              r11, 262
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 29
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n347_statement_begin_α
                        .size            n346_stmt_mark_bx, .-n346_stmt_mark_bx
                        .type            n347_statement_begin_bx, @function
n347_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_statement_begin_α: mov              r11, 263
                        mov              r10, 28;                             jmp   n348_lit_integer_α
n347_statement_begin_β: mov              r11, 263;                            jmp   n352_stmt_mark_α
                        .size            n347_statement_begin_bx, .-n347_statement_begin_bx
                        .type            n348_lit_integer_bx, @function
n348_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_integer_α:     sub              rsp, 16
                        mov              r11, 264
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_859_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n349_call_α
.Llit_integer_α_859_0:  .quad            65536
                        .size            n348_lit_integer_bx, .-n348_lit_integer_bx
                        .type            n349_call_bx, @function
n349_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_call_α:            sub              rsp, 16
                        mov              r11, 265
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd861:     .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd861]
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
                        cmp              al, 104;                             jne   .Lcall_α_860_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n347_statement_begin_β
.Lcall_α_860_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n350_assign_α
n349_call_β:            mov              r11, 265
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n347_statement_begin_β
                        .size            n349_call_bx, .-n349_call_bx
                        .type            n350_assign_bx, @function
n350_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_assign_α:          mov              r11, 266
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
                        mov              rdi, qword ptr [rip + .Lassign_α_862_0]
                        .section         .rodata
.Lassign_α_862_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_862_1_s]
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
                        pop              rax;                                 jmp   n351_statement_end_α
.Lassign_α_862_0:       .quad            .Lassign_α_862_0_s
.Lassign_α_862_0_s:     .string          "S"
                        .size            n350_assign_bx, .-n350_assign_bx
                        .type            n351_statement_end_bx, @function
n351_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_statement_end_α:   mov              r11, 267
                        mov              r10, 28
                        add              rsp, 32;                             jmp   n352_stmt_mark_α
                        .size            n351_statement_end_bx, .-n351_statement_end_bx
                        .type            n352_stmt_mark_bx, @function
n352_stmt_mark_bx:
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n352_stmt_mark_α:       mov              r11, 268
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 29
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n353_statement_begin_α
                        .size            n352_stmt_mark_bx, .-n352_stmt_mark_bx
                        .type            n353_statement_begin_bx, @function
n353_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_statement_begin_α: mov              r11, 269
                        mov              r10, 29;                             jmp   n354_lit_string_α
n353_statement_begin_β: mov              r11, 269;                            jmp   n358_stmt_mark_α
                        .size            n353_statement_begin_bx, .-n353_statement_begin_bx
                        .type            n354_lit_string_bx, @function
n354_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:      sub              rsp, 16
                        mov              r11, 270
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_869_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n355_call_α
.Llit_string_α_869_0:   .quad            .Llit_string_α_869_0_s
.Llit_string_α_869_0_s: .string          "PAT$0"
                        .size            n354_lit_string_bx, .-n354_lit_string_bx
                        .type            n355_call_bx, @function
n355_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_call_α:            sub              rsp, 16
                        mov              r11, 271
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd871:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd871]
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
                        cmp              al, 104;                             jne   .Lcall_α_870_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n353_statement_begin_β
.Lcall_α_870_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n356_assign_α
n355_call_β:            mov              r11, 271
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n353_statement_begin_β
                        .size            n355_call_bx, .-n355_call_bx
                        .type            n356_assign_bx, @function
n356_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_assign_α:          mov              r11, 272
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
                        mov              rdi, qword ptr [rip + .Lassign_α_872_0]
                        .section         .rodata
.Lassign_α_872_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_872_1_s]
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
                        pop              rax;                                 jmp   n357_statement_end_α
.Lassign_α_872_0:       .quad            .Lassign_α_872_0_s
.Lassign_α_872_0_s:     .string          "V"
                        .size            n356_assign_bx, .-n356_assign_bx
                        .type            n357_statement_end_bx, @function
n357_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_statement_end_α:   mov              r11, 273
                        mov              r10, 29
                        add              rsp, 32;                             jmp   n358_stmt_mark_α
                        .size            n357_statement_end_bx, .-n357_statement_end_bx
                        .type            n358_stmt_mark_bx, @function
n358_stmt_mark_bx:
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n358_stmt_mark_α:       mov              r11, 274
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n359_statement_begin_α
                        .size            n358_stmt_mark_bx, .-n358_stmt_mark_bx
                        .type            n359_statement_begin_bx, @function
n359_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_statement_begin_α: mov              r11, 275
                        mov              r10, 30;                             jmp   n360_lit_string_α
n359_statement_begin_β: mov              r11, 275;                            jmp   n364_stmt_mark_α
                        .size            n359_statement_begin_bx, .-n359_statement_begin_bx
                        .type            n360_lit_string_bx, @function
n360_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:      sub              rsp, 16
                        mov              r11, 276
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_879_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n361_call_α
.Llit_string_α_879_0:   .quad            .Llit_string_α_879_0_s
.Llit_string_α_879_0_s: .string          "PAT$1"
                        .size            n360_lit_string_bx, .-n360_lit_string_bx
                        .type            n361_call_bx, @function
n361_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_call_α:            sub              rsp, 16
                        mov              r11, 277
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd881:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd881]
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
                        cmp              al, 104;                             jne   .Lcall_α_880_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n359_statement_begin_β
.Lcall_α_880_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n362_assign_α
n361_call_β:            mov              r11, 277
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n359_statement_begin_β
                        .size            n361_call_bx, .-n361_call_bx
                        .type            n362_assign_bx, @function
n362_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_assign_α:          mov              r11, 278
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
                        mov              rdi, qword ptr [rip + .Lassign_α_882_0]
                        .section         .rodata
.Lassign_α_882_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_882_1_s]
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
                        pop              rax;                                 jmp   n363_statement_end_α
.Lassign_α_882_0:       .quad            .Lassign_α_882_0_s
.Lassign_α_882_0_s:     .string          "I"
                        .size            n362_assign_bx, .-n362_assign_bx
                        .type            n363_statement_end_bx, @function
n363_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_end_α:   mov              r11, 279
                        mov              r10, 30
                        add              rsp, 32;                             jmp   n364_stmt_mark_α
                        .size            n363_statement_end_bx, .-n363_statement_end_bx
                        .type            n364_stmt_mark_bx, @function
n364_stmt_mark_bx:
#=======================================================================================================================
#         A = V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n364_stmt_mark_α:       mov              r11, 280
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n365_statement_begin_α
                        .size            n364_stmt_mark_bx, .-n364_stmt_mark_bx
                        .type            n365_statement_begin_bx, @function
n365_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_statement_begin_α: mov              r11, 281
                        mov              r10, 31;                             jmp   n366_var_α
n365_statement_begin_β: mov              r11, 281;                            jmp   n375_stmt_mark_α
                        .size            n365_statement_begin_bx, .-n365_statement_begin_bx
                        .type            n366_var_bx, @function
n366_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_var_α:             sub              rsp, 16
                        mov              r11, 282
                        mov              rax, qword ptr [r9 + 208]            # V
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n367_var_α
                        .size            n366_var_bx, .-n366_var_bx
                        .type            n367_var_bx, @function
n367_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             sub              rsp, 16
                        mov              r11, 283
                        mov              rax, qword ptr [r9 + 224]            # I
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n368_assign_α
n367_var_β:             mov              r11, 283
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n365_statement_begin_β
                        .size            n367_var_bx, .-n367_var_bx
                        .type            n368_assign_bx, @function
n368_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_assign_α:          mov              r11, 284
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
                        mov              rdi, qword ptr [rip + .Lassign_α_891_0]
                        .section         .rodata
.Lassign_α_891_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_891_1_s]
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
                        pop              rax;                                 jmp   n369_assign_α
.Lassign_α_891_0:       .quad            .Lassign_α_891_0_s
.Lassign_α_891_0_s:     .string          "PAT$2$V0"
                        .size            n368_assign_bx, .-n368_assign_bx
                        .type            n369_assign_bx, @function
n369_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_assign_α:          mov              r11, 285
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
                        mov              rdi, qword ptr [rip + .Lassign_α_892_0]
                        .section         .rodata
.Lassign_α_892_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_892_1_s]
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
                        pop              rax;                                 jmp   n370_lit_string_α
.Lassign_α_892_0:       .quad            .Lassign_α_892_0_s
.Lassign_α_892_0_s:     .string          "PAT$2$V1"
                        .size            n369_assign_bx, .-n369_assign_bx
                        .type            n370_lit_string_bx, @function
n370_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:      sub              rsp, 16
                        mov              r11, 286
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_893_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n371_lit_string_α
n370_lit_string_β:      mov              r11, 286
                        add              rsp, 16;                             jmp   n367_var_β
.Llit_string_α_893_0:   .quad            .Llit_string_α_893_0_s
.Llit_string_α_893_0_s: .string          "PAT$2"
                        .size            n370_lit_string_bx, .-n370_lit_string_bx
                        .type            n371_lit_string_bx, @function
n371_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      sub              rsp, 16
                        mov              r11, 287
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_894_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n372_call_α
n371_lit_string_β:      mov              r11, 287
                        add              rsp, 16;                             jmp   n370_lit_string_β
.Llit_string_α_894_0:   .quad            .Llit_string_α_894_0_s
.Llit_string_α_894_0_s: .string          "2"
                        .size            n371_lit_string_bx, .-n371_lit_string_bx
                        .type            n372_call_bx, @function
n372_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:            sub              rsp, 16
                        mov              r11, 288
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
.Lcall_α_rkfnzd896:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd896]
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
                        cmp              al, 104;                             jne   .Lcall_α_895_240
                        add              rsp, 16;                             jmp   n371_lit_string_β
.Lcall_α_895_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n373_assign_α
n372_call_β:            mov              r11, 288
                        add              rsp, 16;                             jmp   n371_lit_string_β
                        .size            n372_call_bx, .-n372_call_bx
                        .type            n373_assign_bx, @function
n373_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_α:          mov              r11, 289
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
                        mov              rdi, qword ptr [rip + .Lassign_α_897_0]
                        .section         .rodata
.Lassign_α_897_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_897_1_s]
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
                        pop              rax;                                 jmp   n374_statement_end_α
.Lassign_α_897_0:       .quad            .Lassign_α_897_0_s
.Lassign_α_897_0_s:     .string          "A"
                        .size            n373_assign_bx, .-n373_assign_bx
                        .type            n374_statement_end_bx, @function
n374_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_statement_end_α:   mov              r11, 290
                        mov              r10, 31
                        add              rsp, 80;                             jmp   n375_stmt_mark_α
                        .size            n374_statement_end_bx, .-n374_statement_end_bx
                        .type            n375_stmt_mark_bx, @function
n375_stmt_mark_bx:
#=======================================================================================================================
#         F = A | FENCE('+' *F) | FENCE('-' *F . *NEG())
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n375_stmt_mark_α:       mov              r11, 291
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n376_statement_begin_α
                        .size            n375_stmt_mark_bx, .-n375_stmt_mark_bx
                        .type            n376_statement_begin_bx, @function
n376_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_statement_begin_α: mov              r11, 292
                        mov              r10, 32;                             jmp   n377_var_α
n376_statement_begin_β: mov              r11, 292;                            jmp   n384_stmt_mark_α
                        .size            n376_statement_begin_bx, .-n376_statement_begin_bx
                        .type            n377_var_bx, @function
n377_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_var_α:             sub              rsp, 16
                        mov              r11, 293
                        mov              rax, qword ptr [r9 + 240]            # A
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n378_assign_α
                        .size            n377_var_bx, .-n377_var_bx
                        .type            n378_assign_bx, @function
n378_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_assign_α:          mov              r11, 294
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
                        mov              rdi, qword ptr [rip + .Lassign_α_905_0]
                        .section         .rodata
.Lassign_α_905_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_905_1_s]
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
                        pop              rax;                                 jmp   n379_lit_string_α
.Lassign_α_905_0:       .quad            .Lassign_α_905_0_s
.Lassign_α_905_0_s:     .string          "PAT$3$V0"
                        .size            n378_assign_bx, .-n378_assign_bx
                        .type            n379_lit_string_bx, @function
n379_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:      sub              rsp, 16
                        mov              r11, 295
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_906_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n380_lit_string_α
n379_lit_string_β:      mov              r11, 295
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n376_statement_begin_β
.Llit_string_α_906_0:   .quad            .Llit_string_α_906_0_s
.Llit_string_α_906_0_s: .string          "PAT$3"
                        .size            n379_lit_string_bx, .-n379_lit_string_bx
                        .type            n380_lit_string_bx, @function
n380_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:      sub              rsp, 16
                        mov              r11, 296
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_907_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n381_call_α
n380_lit_string_β:      mov              r11, 296
                        add              rsp, 16;                             jmp   n379_lit_string_β
.Llit_string_α_907_0:   .quad            .Llit_string_α_907_0_s
.Llit_string_α_907_0_s: .string          "1"
                        .size            n380_lit_string_bx, .-n380_lit_string_bx
                        .type            n381_call_bx, @function
n381_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_call_α:            sub              rsp, 16
                        mov              r11, 297
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
.Lcall_α_rkfnzd909:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd909]
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
                        cmp              al, 104;                             jne   .Lcall_α_908_240
                        add              rsp, 16;                             jmp   n380_lit_string_β
.Lcall_α_908_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n382_assign_α
n381_call_β:            mov              r11, 297
                        add              rsp, 16;                             jmp   n380_lit_string_β
                        .size            n381_call_bx, .-n381_call_bx
                        .type            n382_assign_bx, @function
n382_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_assign_α:          mov              r11, 298
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
                        mov              rdi, qword ptr [rip + .Lassign_α_910_0]
                        .section         .rodata
.Lassign_α_910_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_910_1_s]
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
                        pop              rax;                                 jmp   n383_statement_end_α
.Lassign_α_910_0:       .quad            .Lassign_α_910_0_s
.Lassign_α_910_0_s:     .string          "F"
                        .size            n382_assign_bx, .-n382_assign_bx
                        .type            n383_statement_end_bx, @function
n383_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_statement_end_α:   mov              r11, 299
                        mov              r10, 32
                        add              rsp, 64;                             jmp   n384_stmt_mark_α
                        .size            n383_statement_end_bx, .-n383_statement_end_bx
                        .type            n384_stmt_mark_bx, @function
n384_stmt_mark_bx:
#=======================================================================================================================
#         T = F ( FENCE('*' *T . *MUL()) | FENCE('/' *T . *DIV()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n384_stmt_mark_α:       mov              r11, 300
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n385_statement_begin_α
                        .size            n384_stmt_mark_bx, .-n384_stmt_mark_bx
                        .type            n385_statement_begin_bx, @function
n385_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_statement_begin_α: mov              r11, 301
                        mov              r10, 33;                             jmp   n386_var_α
n385_statement_begin_β: mov              r11, 301;                            jmp   n393_stmt_mark_α
                        .size            n385_statement_begin_bx, .-n385_statement_begin_bx
                        .type            n386_var_bx, @function
n386_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_var_α:             sub              rsp, 16
                        mov              r11, 302
                        mov              rax, qword ptr [r9 + 256]            # F
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n387_assign_α
                        .size            n386_var_bx, .-n386_var_bx
                        .type            n387_assign_bx, @function
n387_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_assign_α:          mov              r11, 303
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
                        mov              rdi, qword ptr [rip + .Lassign_α_918_0]
                        .section         .rodata
.Lassign_α_918_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_918_1_s]
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
                        pop              rax;                                 jmp   n388_lit_string_α
.Lassign_α_918_0:       .quad            .Lassign_α_918_0_s
.Lassign_α_918_0_s:     .string          "PAT$4$V0"
                        .size            n387_assign_bx, .-n387_assign_bx
                        .type            n388_lit_string_bx, @function
n388_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:      sub              rsp, 16
                        mov              r11, 304
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_919_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n389_lit_string_α
n388_lit_string_β:      mov              r11, 304
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n385_statement_begin_β
.Llit_string_α_919_0:   .quad            .Llit_string_α_919_0_s
.Llit_string_α_919_0_s: .string          "PAT$4"
                        .size            n388_lit_string_bx, .-n388_lit_string_bx
                        .type            n389_lit_string_bx, @function
n389_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_string_α:      sub              rsp, 16
                        mov              r11, 305
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_920_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n390_call_α
n389_lit_string_β:      mov              r11, 305
                        add              rsp, 16;                             jmp   n388_lit_string_β
.Llit_string_α_920_0:   .quad            .Llit_string_α_920_0_s
.Llit_string_α_920_0_s: .string          "1"
                        .size            n389_lit_string_bx, .-n389_lit_string_bx
                        .type            n390_call_bx, @function
n390_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_call_α:            sub              rsp, 16
                        mov              r11, 306
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
.Lcall_α_rkfnzd922:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd922]
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
                        cmp              al, 104;                             jne   .Lcall_α_921_240
                        add              rsp, 16;                             jmp   n389_lit_string_β
.Lcall_α_921_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n391_assign_α
n390_call_β:            mov              r11, 306
                        add              rsp, 16;                             jmp   n389_lit_string_β
                        .size            n390_call_bx, .-n390_call_bx
                        .type            n391_assign_bx, @function
n391_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_assign_α:          mov              r11, 307
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
                        mov              rdi, qword ptr [rip + .Lassign_α_923_0]
                        .section         .rodata
.Lassign_α_923_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_923_1_s]
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
                        pop              rax;                                 jmp   n392_statement_end_α
.Lassign_α_923_0:       .quad            .Lassign_α_923_0_s
.Lassign_α_923_0_s:     .string          "T"
                        .size            n391_assign_bx, .-n391_assign_bx
                        .type            n392_statement_end_bx, @function
n392_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_statement_end_α:   mov              r11, 308
                        mov              r10, 33
                        add              rsp, 64;                             jmp   n393_stmt_mark_α
                        .size            n392_statement_end_bx, .-n392_statement_end_bx
                        .type            n393_stmt_mark_bx, @function
n393_stmt_mark_bx:
#=======================================================================================================================
#         X = T ( FENCE('+' *X . *ADD()) | FENCE('-' *X . *SUB()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n393_stmt_mark_α:       mov              r11, 309
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 35
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n394_statement_begin_α
                        .size            n393_stmt_mark_bx, .-n393_stmt_mark_bx
                        .type            n394_statement_begin_bx, @function
n394_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_begin_α: mov              r11, 310
                        mov              r10, 34;                             jmp   n395_var_α
n394_statement_begin_β: mov              r11, 310;                            jmp   n402_stmt_mark_α
                        .size            n394_statement_begin_bx, .-n394_statement_begin_bx
                        .type            n395_var_bx, @function
n395_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_var_α:             sub              rsp, 16
                        mov              r11, 311
                        mov              rax, qword ptr [r9 + 272]            # T
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n396_assign_α
                        .size            n395_var_bx, .-n395_var_bx
                        .type            n396_assign_bx, @function
n396_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_assign_α:          mov              r11, 312
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
                        mov              rdi, qword ptr [rip + .Lassign_α_931_0]
                        .section         .rodata
.Lassign_α_931_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_931_1_s]
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
                        pop              rax;                                 jmp   n397_lit_string_α
.Lassign_α_931_0:       .quad            .Lassign_α_931_0_s
.Lassign_α_931_0_s:     .string          "PAT$5$V0"
                        .size            n396_assign_bx, .-n396_assign_bx
                        .type            n397_lit_string_bx, @function
n397_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_lit_string_α:      sub              rsp, 16
                        mov              r11, 313
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_932_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n398_lit_string_α
n397_lit_string_β:      mov              r11, 313
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n394_statement_begin_β
.Llit_string_α_932_0:   .quad            .Llit_string_α_932_0_s
.Llit_string_α_932_0_s: .string          "PAT$5"
                        .size            n397_lit_string_bx, .-n397_lit_string_bx
                        .type            n398_lit_string_bx, @function
n398_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_string_α:      sub              rsp, 16
                        mov              r11, 314
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_933_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n399_call_α
n398_lit_string_β:      mov              r11, 314
                        add              rsp, 16;                             jmp   n397_lit_string_β
.Llit_string_α_933_0:   .quad            .Llit_string_α_933_0_s
.Llit_string_α_933_0_s: .string          "1"
                        .size            n398_lit_string_bx, .-n398_lit_string_bx
                        .type            n399_call_bx, @function
n399_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_call_α:            sub              rsp, 16
                        mov              r11, 315
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
.Lcall_α_rkfnzd935:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd935]
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
                        cmp              al, 104;                             jne   .Lcall_α_934_240
                        add              rsp, 16;                             jmp   n398_lit_string_β
.Lcall_α_934_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n400_assign_α
n399_call_β:            mov              r11, 315
                        add              rsp, 16;                             jmp   n398_lit_string_β
                        .size            n399_call_bx, .-n399_call_bx
                        .type            n400_assign_bx, @function
n400_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_assign_α:          mov              r11, 316
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
                        mov              rdi, qword ptr [rip + .Lassign_α_936_0]
                        .section         .rodata
.Lassign_α_936_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_936_1_s]
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
                        pop              rax;                                 jmp   n401_statement_end_α
.Lassign_α_936_0:       .quad            .Lassign_α_936_0_s
.Lassign_α_936_0_s:     .string          "X"
                        .size            n400_assign_bx, .-n400_assign_bx
                        .type            n401_statement_end_bx, @function
n401_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_statement_end_α:   mov              r11, 317
                        mov              r10, 34
                        add              rsp, 64;                             jmp   n402_stmt_mark_α
                        .size            n401_statement_end_bx, .-n401_statement_end_bx
                        .type            n402_stmt_mark_bx, @function
n402_stmt_mark_bx:
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n402_stmt_mark_α:       mov              r11, 318
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 35
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 36
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n403_statement_begin_α
                        .size            n402_stmt_mark_bx, .-n402_stmt_mark_bx
                        .type            n403_statement_begin_bx, @function
n403_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_statement_begin_α: mov              r11, 319
                        mov              r10, 35;                             jmp   n404_lit_integer_α
n403_statement_begin_β: mov              r11, 319;                            jmp   n412_stmt_mark_α
                        .size            n403_statement_begin_bx, .-n403_statement_begin_bx
                        .type            n404_lit_integer_bx, @function
n404_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_integer_α:     sub              rsp, 16
                        mov              r11, 320
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_943_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n405_call_α
.Llit_integer_α_943_0:  .quad            10
                        .size            n404_lit_integer_bx, .-n404_lit_integer_bx
                        .type            n405_call_bx, @function
n405_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_call_α:            sub              rsp, 16
                        mov              r11, 321
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd321: .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd321]
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
                        cmp              al, 104;                             jne   .Lcall_α_944_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n403_statement_begin_β
.Lcall_α_944_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n406_assign_α
n405_call_β:            mov              r11, 321
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n403_statement_begin_β
                        .size            n405_call_bx, .-n405_call_bx
                        .type            n406_assign_bx, @function
n406_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_assign_α:          mov              r11, 322
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
                        mov              rdi, qword ptr [rip + .Lassign_α_945_0]
                        .section         .rodata
.Lassign_α_945_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_945_1_s]
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
                        pop              rax;                                 jmp   n407_lit_string_α
.Lassign_α_945_0:       .quad            .Lassign_α_945_0_s
.Lassign_α_945_0_s:     .string          "PAT$6$V0"
                        .size            n406_assign_bx, .-n406_assign_bx
                        .type            n407_lit_string_bx, @function
n407_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:      sub              rsp, 16
                        mov              r11, 323
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_946_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n408_lit_string_α
n407_lit_string_β:      mov              r11, 323
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n403_statement_begin_β
.Llit_string_α_946_0:   .quad            .Llit_string_α_946_0_s
.Llit_string_α_946_0_s: .string          "PAT$6"
                        .size            n407_lit_string_bx, .-n407_lit_string_bx
                        .type            n408_lit_string_bx, @function
n408_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_string_α:      sub              rsp, 16
                        mov              r11, 324
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_947_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n409_call_α
n408_lit_string_β:      mov              r11, 324
                        add              rsp, 16;                             jmp   n407_lit_string_β
.Llit_string_α_947_0:   .quad            .Llit_string_α_947_0_s
.Llit_string_α_947_0_s: .string          "1"
                        .size            n408_lit_string_bx, .-n408_lit_string_bx
                        .type            n409_call_bx, @function
n409_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_call_α:            sub              rsp, 16
                        mov              r11, 325
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
.Lcall_α_rkfnzd949:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd949]
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
                        cmp              al, 104;                             jne   .Lcall_α_948_240
                        add              rsp, 16;                             jmp   n408_lit_string_β
.Lcall_α_948_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n410_assign_α
n409_call_β:            mov              r11, 325
                        add              rsp, 16;                             jmp   n408_lit_string_β
                        .size            n409_call_bx, .-n409_call_bx
                        .type            n410_assign_bx, @function
n410_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_assign_α:          mov              r11, 326
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
                        mov              rdi, qword ptr [rip + .Lassign_α_950_0]
                        .section         .rodata
.Lassign_α_950_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_950_1_s]
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
                        pop              rax;                                 jmp   n411_statement_end_α
.Lassign_α_950_0:       .quad            .Lassign_α_950_0_s
.Lassign_α_950_0_s:     .string          "eol"
                        .size            n410_assign_bx, .-n410_assign_bx
                        .type            n411_statement_end_bx, @function
n411_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_statement_end_α:   mov              r11, 327
                        mov              r10, 35
                        add              rsp, 80;                             jmp   n412_stmt_mark_α
                        .size            n411_statement_end_bx, .-n411_statement_end_bx
                        .type            n412_stmt_mark_bx, @function
n412_stmt_mark_bx:
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol . *EMIT()) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n412_stmt_mark_α:       mov              r11, 328
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 36
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 37
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n413_statement_begin_α
                        .size            n412_stmt_mark_bx, .-n412_stmt_mark_bx
                        .type            n413_statement_begin_bx, @function
n413_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_statement_begin_α: mov              r11, 329
                        mov              r10, 36;                             jmp   n414_var_α
n413_statement_begin_β: mov              r11, 329;                            jmp   n423_stmt_mark_α
                        .size            n413_statement_begin_bx, .-n413_statement_begin_bx
                        .type            n414_var_bx, @function
n414_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_var_α:             sub              rsp, 16
                        mov              r11, 330
                        mov              rax, qword ptr [r9 + 288]            # X
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n415_var_α
                        .size            n414_var_bx, .-n414_var_bx
                        .type            n415_var_bx, @function
n415_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_var_α:             sub              rsp, 16
                        mov              r11, 331
                        mov              rax, qword ptr [r9 + 304]            # eol
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n416_assign_α
n415_var_β:             mov              r11, 331
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n413_statement_begin_β
                        .size            n415_var_bx, .-n415_var_bx
                        .type            n416_assign_bx, @function
n416_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_assign_α:          mov              r11, 332
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
                        mov              rdi, qword ptr [rip + .Lassign_α_959_0]
                        .section         .rodata
.Lassign_α_959_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_959_1_s]
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
                        pop              rax;                                 jmp   n417_assign_α
.Lassign_α_959_0:       .quad            .Lassign_α_959_0_s
.Lassign_α_959_0_s:     .string          "PAT$7$V0"
                        .size            n416_assign_bx, .-n416_assign_bx
                        .type            n417_assign_bx, @function
n417_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_assign_α:          mov              r11, 333
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
                        mov              rdi, qword ptr [rip + .Lassign_α_960_0]
                        .section         .rodata
.Lassign_α_960_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_960_1_s]
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
                        pop              rax;                                 jmp   n418_lit_string_α
.Lassign_α_960_0:       .quad            .Lassign_α_960_0_s
.Lassign_α_960_0_s:     .string          "PAT$7$V1"
                        .size            n417_assign_bx, .-n417_assign_bx
                        .type            n418_lit_string_bx, @function
n418_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_string_α:      sub              rsp, 16
                        mov              r11, 334
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_961_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n419_lit_string_α
n418_lit_string_β:      mov              r11, 334
                        add              rsp, 16;                             jmp   n415_var_β
.Llit_string_α_961_0:   .quad            .Llit_string_α_961_0_s
.Llit_string_α_961_0_s: .string          "PAT$7"
                        .size            n418_lit_string_bx, .-n418_lit_string_bx
                        .type            n419_lit_string_bx, @function
n419_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:      sub              rsp, 16
                        mov              r11, 335
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_962_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n420_call_α
n419_lit_string_β:      mov              r11, 335
                        add              rsp, 16;                             jmp   n418_lit_string_β
.Llit_string_α_962_0:   .quad            .Llit_string_α_962_0_s
.Llit_string_α_962_0_s: .string          "2"
                        .size            n419_lit_string_bx, .-n419_lit_string_bx
                        .type            n420_call_bx, @function
n420_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_call_α:            sub              rsp, 16
                        mov              r11, 336
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
.Lcall_α_rkfnzd964:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd964]
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
                        cmp              al, 104;                             jne   .Lcall_α_963_240
                        add              rsp, 16;                             jmp   n419_lit_string_β
.Lcall_α_963_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n421_assign_α
n420_call_β:            mov              r11, 336
                        add              rsp, 16;                             jmp   n419_lit_string_β
                        .size            n420_call_bx, .-n420_call_bx
                        .type            n421_assign_bx, @function
n421_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_assign_α:          mov              r11, 337
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
                        mov              rdi, qword ptr [rip + .Lassign_α_965_0]
                        .section         .rodata
.Lassign_α_965_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_965_1_s]
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
                        pop              rax;                                 jmp   n422_statement_end_α
.Lassign_α_965_0:       .quad            .Lassign_α_965_0_s
.Lassign_α_965_0_s:     .string          "C"
                        .size            n421_assign_bx, .-n421_assign_bx
                        .type            n422_statement_end_bx, @function
n422_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_statement_end_α:   mov              r11, 338
                        mov              r10, 36
                        add              rsp, 80;                             jmp   n423_stmt_mark_α
                        .size            n422_statement_end_bx, .-n422_statement_end_bx
                        .type            n423_stmt_mark_bx, @function
n423_stmt_mark_bx:
#=======================================================================================================================
#         &TRIM = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
n423_stmt_mark_α:       mov              r11, 339
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 37
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 39
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n424_statement_begin_α
                        .size            n423_stmt_mark_bx, .-n423_stmt_mark_bx
                        .type            n424_statement_begin_bx, @function
n424_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_statement_begin_α: mov              r11, 340
                        mov              r10, 37;                             jmp   n425_lit_integer_α
n424_statement_begin_β: mov              r11, 340;                            jmp   n428_stmt_mark_α
                        .size            n424_statement_begin_bx, .-n424_statement_begin_bx
                        .type            n425_lit_integer_bx, @function
n425_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_integer_α:     sub              rsp, 16
                        mov              r11, 341
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_972_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n426_kw_assign_snobol4_α
.Llit_integer_α_972_0:  .quad            0
                        .size            n425_lit_integer_bx, .-n425_lit_integer_bx
                        .type            n426_kw_assign_snobol4_bx, @function
n426_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 342
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_973_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_973_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n424_statement_begin_β
.Lkw_assign_snobol4_α_973_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n427_statement_end_α
.Lkw_assign_snobol4_α_973_0:
                        .quad            1
                        .size            n426_kw_assign_snobol4_bx, .-n426_kw_assign_snobol4_bx
                        .type            n427_statement_end_bx, @function
n427_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_statement_end_α:   mov              r11, 343
                        mov              r10, 37
                        add              rsp, 32;                             jmp   n428_stmt_mark_α
                        .size            n427_statement_end_bx, .-n427_statement_end_bx
                        .type            n428_stmt_mark_bx, @function
n428_stmt_mark_bx:
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n428_stmt_mark_α:       mov              r11, 344
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 38
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n429_statement_begin_α
                        .size            n428_stmt_mark_bx, .-n428_stmt_mark_bx
                        .type            n429_statement_begin_bx, @function
n429_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_statement_begin_α: mov              r11, 345
                        mov              r10, 38;                             jmp   n430_call_α
n429_statement_begin_β: mov              r11, 345;                            jmp   n433_stmt_mark_α
                        .size            n429_statement_begin_bx, .-n429_statement_begin_bx
                        .type            n430_call_bx, @function
n430_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_call_α:            sub              rsp, 16
                        mov              r11, 346
                        .section         .rodata
.Lcall_α_rkfnzd981:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd981]
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
                        cmp              al, 104;                             jne   .Lcall_α_980_240
                        add              rsp, 16;                             jmp   n429_statement_begin_β
.Lcall_α_980_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n431_assign_α
n430_call_β:            mov              r11, 346
                        add              rsp, 16;                             jmp   n429_statement_begin_β
                        .size            n430_call_bx, .-n430_call_bx
                        .type            n431_assign_bx, @function
n431_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_assign_α:          mov              r11, 347
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
                        mov              rdi, qword ptr [rip + .Lassign_α_982_0]
                        .section         .rodata
.Lassign_α_982_1_s:     .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_982_1_s]
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
                        pop              rax;                                 jmp   n432_statement_end_α
.Lassign_α_982_0:       .quad            .Lassign_α_982_0_s
.Lassign_α_982_0_s:     .string          "vars"
                        .size            n431_assign_bx, .-n431_assign_bx
                        .type            n432_statement_end_bx, @function
n432_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_statement_end_α:   mov              r11, 348
                        mov              r10, 38
                        add              rsp, 16;                             jmp   n433_stmt_mark_α
                        .size            n432_statement_end_bx, .-n432_statement_end_bx
                        .type            n433_stmt_mark_bx, @function
n433_stmt_mark_bx:
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n433_stmt_mark_α:       mov              r11, 349
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 39
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 41
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n434_statement_begin_α
                        .size            n433_stmt_mark_bx, .-n433_stmt_mark_bx
                        .type            n434_statement_begin_bx, @function
n434_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_statement_begin_α: mov              r11, 350
                        mov              r10, 39;                             jmp   n435_var_α
n434_statement_begin_β: mov              r11, 350;                            jmp   n440_stmt_mark_α
                        .size            n434_statement_begin_bx, .-n434_statement_begin_bx
                        .type            n435_var_bx, @function
n435_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_var_α:             sub              rsp, 16
                        mov              r11, 351
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n436_lit_string_α
                        .size            n435_var_bx, .-n435_var_bx
                        .type            n436_lit_string_bx, @function
n436_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:      sub              rsp, 16
                        mov              r11, 352
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_990_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n437_lit_integer_α
n436_lit_string_β:      mov              r11, 352
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n434_statement_begin_β
.Llit_string_α_990_0:   .quad            .Llit_string_α_990_0_s
.Llit_string_α_990_0_s: .string          "x"
                        .size            n436_lit_string_bx, .-n436_lit_string_bx
                        .type            n437_lit_integer_bx, @function
n437_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_integer_α:     sub              rsp, 16
                        mov              r11, 353
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_991_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n438_assign_var_α
n437_lit_integer_β:     mov              r11, 353
                        add              rsp, 16;                             jmp   n436_lit_string_β
.Llit_integer_α_991_0:  .quad            1
                        .size            n437_lit_integer_bx, .-n437_lit_integer_bx
                        .type            n438_assign_var_bx, @function
n438_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_assign_var_α:      sub              rsp, 16
                        mov              r11, 354
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_993_0
                        test             rsi, rsi;                            je    .Lassign_var_α_993_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_993_238
                        add              rsp, 16;                             jmp   n437_lit_integer_β
.Lassign_var_α_993_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n439_statement_end_α
.Lassign_var_α_993_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_993_239
                        add              rsp, 16;                             jmp   n437_lit_integer_β
.Lassign_var_α_993_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_993_240
                        add              rsp, 16;                             jmp   n437_lit_integer_β
.Lassign_var_α_993_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n439_statement_end_α
                        .size            n438_assign_var_bx, .-n438_assign_var_bx
                        .type            n439_statement_end_bx, @function
n439_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_statement_end_α:   mov              r11, 355
                        mov              r10, 39
                        add              rsp, 64;                             jmp   n440_stmt_mark_α
                        .size            n439_statement_end_bx, .-n439_statement_end_bx
                        .type            n440_stmt_mark_bx, @function
n440_stmt_mark_bx:
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 42 0
n440_stmt_mark_α:       mov              r11, 356
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 42
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n441_statement_begin_α
                        .size            n440_stmt_mark_bx, .-n440_stmt_mark_bx
                        .type            n441_statement_begin_bx, @function
n441_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_statement_begin_α: mov              r11, 357
                        mov              r10, 40;                             jmp   n442_var_α
n441_statement_begin_β: mov              r11, 357;                            jmp   n447_stmt_mark_α
                        .size            n441_statement_begin_bx, .-n441_statement_begin_bx
                        .type            n442_var_bx, @function
n442_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:             sub              rsp, 16
                        mov              r11, 358
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n443_lit_string_α
                        .size            n442_var_bx, .-n442_var_bx
                        .type            n443_lit_string_bx, @function
n443_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_lit_string_α:      sub              rsp, 16
                        mov              r11, 359
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1001_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n444_lit_integer_α
n443_lit_string_β:      mov              r11, 359
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n441_statement_begin_β
.Llit_string_α_1001_0:  .quad            .Llit_string_α_1001_0_s
.Llit_string_α_1001_0_s:
                        .string          "y"
                        .size            n443_lit_string_bx, .-n443_lit_string_bx
                        .type            n444_lit_integer_bx, @function
n444_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_integer_α:     sub              rsp, 16
                        mov              r11, 360
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1002_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n445_assign_var_α
n444_lit_integer_β:     mov              r11, 360
                        add              rsp, 16;                             jmp   n443_lit_string_β
.Llit_integer_α_1002_0: .quad            2
                        .size            n444_lit_integer_bx, .-n444_lit_integer_bx
                        .type            n445_assign_var_bx, @function
n445_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_assign_var_α:      sub              rsp, 16
                        mov              r11, 361
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_1004_0
                        test             rsi, rsi;                            je    .Lassign_var_α_1004_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_1004_238
                        add              rsp, 16;                             jmp   n444_lit_integer_β
.Lassign_var_α_1004_238:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n446_statement_end_α
.Lassign_var_α_1004_0:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_1004_239
                        add              rsp, 16;                             jmp   n444_lit_integer_β
.Lassign_var_α_1004_239:
                        mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_1004_240
                        add              rsp, 16;                             jmp   n444_lit_integer_β
.Lassign_var_α_1004_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n446_statement_end_α
                        .size            n445_assign_var_bx, .-n445_assign_var_bx
                        .type            n446_statement_end_bx, @function
n446_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_statement_end_α:   mov              r11, 362
                        mov              r10, 40
                        add              rsp, 64;                             jmp   n447_stmt_mark_α
                        .size            n446_statement_end_bx, .-n446_statement_end_bx
                        .type            n447_stmt_mark_bx, @function
n447_stmt_mark_bx:
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 43 0
n447_stmt_mark_α:       mov              r11, 363
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 41
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 43
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n448_statement_begin_α
                        .size            n447_stmt_mark_bx, .-n447_stmt_mark_bx
                        .type            n448_statement_begin_bx, @function
n448_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_statement_begin_α: mov              r11, 364
                        mov              r10, 41;                             jmp   n449_var_α
n448_statement_begin_β: mov              r11, 364;                            jmp   n454_stmt_mark_α
                        .size            n448_statement_begin_bx, .-n448_statement_begin_bx
                        .type            n449_var_bx, @function
n449_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_var_α:             sub              rsp, 16
                        mov              r11, 365
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n450_lit_string_α
                        .size            n449_var_bx, .-n449_var_bx
                        .type            n450_lit_string_bx, @function
n450_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_lit_string_α:      sub              rsp, 16
                        mov              r11, 366
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1012_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n451_lit_integer_α
n450_lit_string_β:      mov              r11, 366
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n448_statement_begin_β
.Llit_string_α_1012_0:  .quad            .Llit_string_α_1012_0_s
.Llit_string_α_1012_0_s:
                        .string          "z"
                        .size            n450_lit_string_bx, .-n450_lit_string_bx
                        .type            n451_lit_integer_bx, @function
n451_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_lit_integer_α:     sub              rsp, 16
                        mov              r11, 367
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1013_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n452_assign_var_α
n451_lit_integer_β:     mov              r11, 367
                        add              rsp, 16;                             jmp   n450_lit_string_β
.Llit_integer_α_1013_0: .quad            3
                        .size            n451_lit_integer_bx, .-n451_lit_integer_bx
                        .type            n452_assign_var_bx, @function
n452_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_assign_var_α:      sub              rsp, 16
                        mov              r11, 368
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_1015_0
                        test             rsi, rsi;                            je    .Lassign_var_α_1015_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_1015_238
                        add              rsp, 16;                             jmp   n451_lit_integer_β
.Lassign_var_α_1015_238:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n453_statement_end_α
.Lassign_var_α_1015_0:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_1015_239
                        add              rsp, 16;                             jmp   n451_lit_integer_β
.Lassign_var_α_1015_239:
                        mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_1015_240
                        add              rsp, 16;                             jmp   n451_lit_integer_β
.Lassign_var_α_1015_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n453_statement_end_α
                        .size            n452_assign_var_bx, .-n452_assign_var_bx
                        .type            n453_statement_end_bx, @function
n453_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_statement_end_α:   mov              r11, 369
                        mov              r10, 41
                        add              rsp, 64;                             jmp   n454_stmt_mark_α
                        .size            n453_statement_end_bx, .-n453_statement_end_bx
                        .type            n454_stmt_mark_bx, @function
n454_stmt_mark_bx:
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 45 0
n454_stmt_mark_α:       mov              r11, 370
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 42
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 45
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n455_statement_begin_α
                        .size            n454_stmt_mark_bx, .-n454_stmt_mark_bx
                        .type            n455_statement_begin_bx, @function
n455_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_statement_begin_α: mov              r11, 371
                        mov              r10, 42;                             jmp   n456_lit_name_α
n455_statement_begin_β: mov              r11, 371;                            jmp   n461_stmt_mark_α
                        .size            n455_statement_begin_bx, .-n455_statement_begin_bx
                        .type            n456_lit_name_bx, @function
n456_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_name_α:        sub              rsp, 16
                        mov              r11, 372
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_1022_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n457_lit_integer_α
.Llit_name_α_1022_0:    .quad            .Llit_name_α_1022_0_s
.Llit_name_α_1022_0_s:  .string          "INPUT"
                        .size            n456_lit_name_bx, .-n456_lit_name_bx
                        .type            n457_lit_integer_bx, @function
n457_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_integer_α:     sub              rsp, 16
                        mov              r11, 373
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1023_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n458_lit_string_α
n457_lit_integer_β:     mov              r11, 373
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n455_statement_begin_β
.Llit_integer_α_1023_0: .quad            9
                        .size            n457_lit_integer_bx, .-n457_lit_integer_bx
                        .type            n458_lit_string_bx, @function
n458_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_string_α:      sub              rsp, 16
                        mov              r11, 374
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_1024_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n459_call_α
n458_lit_string_β:      mov              r11, 374
                        add              rsp, 16;                             jmp   n457_lit_integer_β
.Llit_string_α_1024_0:  .quad            .Llit_string_α_1024_0_s
.Llit_string_α_1024_0_s:
                        .string          "[-f0 -r4194304]"
                        .size            n458_lit_string_bx, .-n458_lit_string_bx
                        .type            n459_call_bx, @function
n459_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_call_α:            sub              rsp, 16
                        mov              r11, 375
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
.Lcall_α_bynamefnzd375: .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd375]
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
                        cmp              al, 104;                             jne   .Lcall_α_1025_240
                        add              rsp, 16;                             jmp   n458_lit_string_β
.Lcall_α_1025_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n460_statement_end_α
n459_call_β:            mov              r11, 375
                        add              rsp, 16;                             jmp   n458_lit_string_β
                        .size            n459_call_bx, .-n459_call_bx
                        .type            n460_statement_end_bx, @function
n460_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_statement_end_α:   mov              r11, 376
                        mov              r10, 42
                        add              rsp, 64;                             jmp   n461_stmt_mark_α
                        .size            n460_statement_end_bx, .-n460_statement_end_bx
                        .type            n461_stmt_mark_bx, @function
n461_stmt_mark_bx:
#=======================================================================================================================
#         src = INPUT
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 46 0
n461_stmt_mark_α:       mov              r11, 377
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 43
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 46
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n462_statement_begin_α
                        .size            n461_stmt_mark_bx, .-n461_stmt_mark_bx
                        .type            n462_statement_begin_bx, @function
n462_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_statement_begin_α: mov              r11, 378
                        mov              r10, 43;                             jmp   n463_var_α
n462_statement_begin_β: mov              r11, 378;                            jmp   n466_stmt_mark_α
                        .size            n462_statement_begin_bx, .-n462_statement_begin_bx
                        .type            n463_var_bx, @function
n463_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_var_α:             sub              rsp, 16
                        mov              r11, 379
                        mov              rdi, qword ptr [rip + .Lvar_α_1032_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_1032_240
                        add              rsp, 16;                             jmp   n462_statement_begin_β
.Lvar_α_1032_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n464_assign_α
.Lvar_α_1032_0:         .quad            .Lvar_α_1032_0_s
.Lvar_α_1032_0_s:       .string          "INPUT"
                        .size            n463_var_bx, .-n463_var_bx
                        .type            n464_assign_bx, @function
n464_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_assign_α:          mov              r11, 380
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1033_0]
                        .section         .rodata
.Lassign_α_1033_1_s:    .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1033_1_s]
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
                        pop              rax;                                 jmp   n465_statement_end_α
.Lassign_α_1033_0:      .quad            .Lassign_α_1033_0_s
.Lassign_α_1033_0_s:    .string          "src"
                        .size            n464_assign_bx, .-n464_assign_bx
                        .type            n465_statement_end_bx, @function
n465_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_statement_end_α:   mov              r11, 381
                        mov              r10, 43
                        add              rsp, 16;                             jmp   n466_stmt_mark_α
                        .size            n465_statement_end_bx, .-n465_statement_end_bx
                        .type            n466_stmt_mark_bx, @function
n466_stmt_mark_bx:
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
n466_stmt_mark_α:       mov              r11, 382
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 44
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n467_statement_begin_α
                        .size            n466_stmt_mark_bx, .-n466_stmt_mark_bx
                        .type            n467_statement_begin_bx, @function
n467_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n467_statement_begin_α: mov              r11, 383
                        mov              r10, 44;                             jmp   n468_call_α
n467_statement_begin_β: mov              r11, 383;                            jmp   n471_stmt_mark_α
                        .size            n467_statement_begin_bx, .-n467_statement_begin_bx
                        .type            n468_call_bx, @function
n468_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n468_call_α:            sub              rsp, 16
                        mov              r11, 384
                        .section         .rodata
.Lcall_α_rkfnzd1041:    .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1041]
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
                        cmp              al, 104;                             jne   .Lcall_α_1040_240
                        add              rsp, 16;                             jmp   n467_statement_begin_β
.Lcall_α_1040_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n469_assign_α
n468_call_β:            mov              r11, 384
                        add              rsp, 16;                             jmp   n467_statement_begin_β
                        .size            n468_call_bx, .-n468_call_bx
                        .type            n469_assign_bx, @function
n469_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n469_assign_α:          mov              r11, 385
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1042_0]
                        .section         .rodata
.Lassign_α_1042_1_s:    .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1042_1_s]
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
                        pop              rax;                                 jmp   n470_statement_end_α
.Lassign_α_1042_0:      .quad            .Lassign_α_1042_0_s
.Lassign_α_1042_0_s:    .string          "t0"
                        .size            n469_assign_bx, .-n469_assign_bx
                        .type            n470_statement_end_bx, @function
n470_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n470_statement_end_α:   mov              r11, 386
                        mov              r10, 44
                        add              rsp, 16;                             jmp   n471_stmt_mark_α
                        .size            n470_statement_end_bx, .-n470_statement_end_bx
                        .type            n471_stmt_mark_bx, @function
n471_stmt_mark_bx:
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 50 0
n471_stmt_mark_α:       mov              r11, 387
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 45
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 50
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n472_statement_begin_α
                        .size            n471_stmt_mark_bx, .-n471_stmt_mark_bx
                        .type            n472_statement_begin_bx, @function
n472_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n472_statement_begin_α: mov              r11, 388
                        mov              r10, 45;                             jmp   n473_var_α
n472_statement_begin_β: mov              r11, 388;                            jmp   n481_stmt_mark_α
                        .size            n472_statement_begin_bx, .-n472_statement_begin_bx
                        .type            n473_var_bx, @function
n473_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n473_var_α:             sub              rsp, 16
                        mov              r11, 389
                        mov              rax, qword ptr [r9 + 336]            # src
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n474_var_α
                        .size            n473_var_bx, .-n473_var_bx
                        .type            n474_var_bx, @function
n474_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n474_var_α:             sub              rsp, 16
                        mov              r11, 390
                        mov              rax, qword ptr [r9 + 320]            # C
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n475_assign_α
n474_var_β:             mov              r11, 390
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n481_stmt_mark_α
                        .size            n474_var_bx, .-n474_var_bx
                        .type            n475_assign_bx, @function
n475_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n475_assign_α:          mov              r11, 391
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1051_0]
                        .section         .rodata
.Lassign_α_1051_1_s:    .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1051_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1051_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n476_match_begin_α
n475_assign_β:          mov              r11, 391;                            jmp   n474_var_β
.Lassign_α_1051_0:      .quad            .Lassign_α_1051_0_s
.Lassign_α_1051_0_s:    .string          "PATV$0"
                        .size            n475_assign_bx, .-n475_assign_bx
                        .type            n476_match_begin_bx, @function
n476_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n476_match_begin_α:     mov              r11, 392
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
.Lmatch_begin_α_1053_0: mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_1053_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n477_match_defer_α
n476_match_begin_β:     mov              r11, 392
.Lmatch_begin_α_1053_13:
                        lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_1053_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_1053_1
                                                                              jmp   .Lmatch_begin_α_1053_0
.Lmatch_begin_β_1053_1:
.Lmatch_begin_γ_476_af: mov              r11, 392
.Lmatch_begin_ω_476_af: mov              r11, 392
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
                        pop              rbp;                                 jmp   n475_assign_β
                        .size            n476_match_begin_bx, .-n476_match_begin_bx
                        .type            n477_match_defer_bx, @function
n477_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n477_match_defer_α:     mov              r11, 393
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S18]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_1054_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_1054_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_1054_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_1054_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_1054_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_1054_23
                                                                              jmp   .Lmatch_defer_α_1054_22
.Lmatch_defer_α_1054_32:
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_1054_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_1054_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_1054_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_1054_0
.Lmatch_defer_α_1054_31:
                        mov              edx, -1;                             jmp   .Lmatch_defer_α_1054_0
.Lmatch_defer_α_1054_22:
                        push             r14
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
.Lmatch_defer_α_1054_23:
                        test             rax, rax;                            jz    .Lmatch_defer_α_1054_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_1054_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_1054_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_1054_4:                                                       jmp   n478_match_end_α
.Lmatch_defer_α_1054_5:                                                       jmp   n476_match_begin_β
.Lmatch_defer_α_1054_0: mov              eax, edx
                        test             eax, eax;                            js    n476_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_1054_6]
                        push             rcx
                        push             rax;                                 jmp   n478_match_end_α
.Lmatch_defer_α_1054_6: add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n476_match_begin_β
n477_match_defer_β:     mov              r11, 393
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_1054_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_1054_12
                                                                              jmp   rax
.Lmatch_defer_β_1054_12:
                                                                              jmp   qword ptr [rsp]
                        .size            n477_match_defer_bx, .-n477_match_defer_bx
                        .type            n478_match_end_bx, @function
n478_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n478_match_end_α:       mov              r11, 394
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
                        test             rax, rax;                            je    .Lmatch_end_α_1056_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_476_af
.Lmatch_end_α_1056_13:  add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n479_statement_end_α
                        .size            n478_match_end_bx, .-n478_match_end_bx
                        .type            n479_statement_end_bx, @function
n479_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n479_statement_end_α:   mov              r11, 395
                        mov              r10, 45
                        add              rsp, 32;                             jmp   n480_stmt_mark_α
                        .size            n479_statement_end_bx, .-n479_statement_end_bx
                        .type            n480_stmt_mark_bx, @function
n480_stmt_mark_bx:
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 51 0
n480_stmt_mark_α:       mov              r11, 396
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 46
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n482_statement_begin_α
                        .size            n480_stmt_mark_bx, .-n480_stmt_mark_bx
                        .type            n481_stmt_mark_bx, @function
n481_stmt_mark_bx:
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 53 0
n481_stmt_mark_α:       mov              r11, 397
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 48
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 53
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n497_statement_begin_α
                        .size            n481_stmt_mark_bx, .-n481_stmt_mark_bx
                        .type            n482_statement_begin_bx, @function
n482_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n482_statement_begin_α: mov              r11, 398
                        mov              r10, 46;                             jmp   n483_call_α
n482_statement_begin_β: mov              r11, 398;                            jmp   n486_stmt_mark_α
                        .size            n482_statement_begin_bx, .-n482_statement_begin_bx
                        .type            n483_call_bx, @function
n483_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n483_call_α:            sub              rsp, 16
                        mov              r11, 399
                        .section         .rodata
.Lcall_α_rkfnzd1066:    .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1066]
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
                        cmp              al, 104;                             jne   .Lcall_α_1065_240
                        add              rsp, 16;                             jmp   n482_statement_begin_β
.Lcall_α_1065_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n484_assign_α
n483_call_β:            mov              r11, 399
                        add              rsp, 16;                             jmp   n482_statement_begin_β
                        .size            n483_call_bx, .-n483_call_bx
                        .type            n484_assign_bx, @function
n484_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n484_assign_α:          mov              r11, 400
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1067_0]
                        .section         .rodata
.Lassign_α_1067_1_s:    .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1067_1_s]
                        mov              r8, 53
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
                        pop              rax;                                 jmp   n485_statement_end_α
.Lassign_α_1067_0:      .quad            .Lassign_α_1067_0_s
.Lassign_α_1067_0_s:    .string          "t1"
                        .size            n484_assign_bx, .-n484_assign_bx
                        .type            n485_statement_end_bx, @function
n485_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n485_statement_end_α:   mov              r11, 401
                        mov              r10, 46
                        add              rsp, 16;                             jmp   n486_stmt_mark_α
                        .size            n485_statement_end_bx, .-n485_statement_end_bx
                        .type            n486_stmt_mark_bx, @function
n486_stmt_mark_bx:
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000        :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 52 0
n486_stmt_mark_α:       mov              r11, 402
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 47
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 52
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n487_statement_begin_α
                        .size            n486_stmt_mark_bx, .-n486_stmt_mark_bx
                        .type            n487_statement_begin_bx, @function
n487_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n487_statement_begin_α: mov              r11, 403
                        mov              r10, 47;                             jmp   n488_lit_string_α
n487_statement_begin_β: mov              r11, 403;                            jmp   main_γ
                        .size            n487_statement_begin_bx, .-n487_statement_begin_bx
                        .type            n488_lit_string_bx, @function
n488_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_string_α:      sub              rsp, 16
                        mov              r11, 404
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_1074_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n489_var_α
.Llit_string_α_1074_0:  .quad            .Llit_string_α_1074_0_s
.Llit_string_α_1074_0_s:
                        .string          "match_ms="
                        .size            n488_lit_string_bx, .-n488_lit_string_bx
                        .type            n489_var_bx, @function
n489_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n489_var_α:             sub              rsp, 16
                        mov              r11, 405
                        mov              rax, qword ptr [r9 + 368]            # t1
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n490_var_α
n489_var_β:             mov              r11, 405
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n487_statement_begin_β
                        .size            n489_var_bx, .-n489_var_bx
                        .type            n490_var_bx, @function
n490_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n490_var_α:             sub              rsp, 16
                        mov              r11, 406
                        mov              rax, qword ptr [r9 + 352]            # t0
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n491_binop_α
n490_var_β:             mov              r11, 406
                        add              rsp, 16;                             jmp   n489_var_β
                        .size            n490_var_bx, .-n490_var_bx
                        .type            n491_binop_bx, @function
n491_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n491_binop_α:           sub              rsp, 16
                        mov              r11, 407
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1077_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_1077_7
.Lbinop_α_1077_2:       and              edx, 1;                              jz    .Lbinop_α_1077_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_1077_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1077_4
.Lbinop_α_1077_3:       movq             xmm0, rsi
.Lbinop_α_1077_4:       cmp              cl, 5;                               je    .Lbinop_α_1077_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1077_6
.Lbinop_α_1077_5:       movq             xmm1, rdi
.Lbinop_α_1077_6:       subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_1077_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_1077_7:                                                             jmp   n492_lit_integer_α
.Lbinop_α_1077_0:       mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_1077_240
                        add              rsp, 16;                             jmp   n490_var_β
.Lbinop_α_1077_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n492_lit_integer_α
n491_binop_β:           mov              r11, 407
                        add              rsp, 16;                             jmp   n490_var_β
                        .size            n491_binop_bx, .-n491_binop_bx
                        .type            n492_lit_integer_bx, @function
n492_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_integer_α:     sub              rsp, 16
                        mov              r11, 408
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1078_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n493_binop_α
n492_lit_integer_β:     mov              r11, 408
                        add              rsp, 16;                             jmp   n491_binop_β
.Llit_integer_α_1078_0: .quad            1000000
                        .size            n492_lit_integer_bx, .-n492_lit_integer_bx
                        .type            n493_binop_bx, @function
n493_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n493_binop_α:           sub              rsp, 16
                        mov              r11, 409
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
                        cmp              al, 104;                             jne   .Lbinop_α_1079_240
                        add              rsp, 16;                             jmp   n492_lit_integer_β
.Lbinop_α_1079_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n494_binop_α
n493_binop_β:           mov              r11, 409
                        add              rsp, 16;                             jmp   n492_lit_integer_β
                        .size            n493_binop_bx, .-n493_binop_bx
                        .type            n494_binop_bx, @function
n494_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n494_binop_α:           sub              rsp, 16
                        mov              r11, 410
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n495_assign_α
                        .size            n494_binop_bx, .-n494_binop_bx
                        .type            n495_assign_bx, @function
n495_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n495_assign_α:          mov              r11, 411
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1081_0]
                        .section         .rodata
.Lassign_α_1081_1_s:    .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1081_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1081_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n496_statement_end_α
.Lassign_α_1081_0:      .quad            .Lassign_α_1081_0_s
.Lassign_α_1081_0_s:    .string          "TERMINAL"
                        .size            n495_assign_bx, .-n495_assign_bx
                        .type            n496_statement_end_bx, @function
n496_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n496_statement_end_α:   mov              r11, 412
                        mov              r10, 47
                        add              rsp, 112;                            jmp   main_γ
                        .size            n496_statement_end_bx, .-n496_statement_end_bx
                        .type            n497_statement_begin_bx, @function
n497_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n497_statement_begin_α: mov              r11, 413
                        mov              r10, 48;                             jmp   n498_call_α
n497_statement_begin_β: mov              r11, 413;                            jmp   n501_stmt_mark_α
                        .size            n497_statement_begin_bx, .-n497_statement_begin_bx
                        .type            n498_call_bx, @function
n498_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n498_call_α:            sub              rsp, 16
                        mov              r11, 414
                        .section         .rodata
.Lcall_α_rkfnzd1087:    .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1087]
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
                        cmp              al, 104;                             jne   .Lcall_α_1086_240
                        add              rsp, 16;                             jmp   n497_statement_begin_β
.Lcall_α_1086_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n499_assign_α
n498_call_β:            mov              r11, 414
                        add              rsp, 16;                             jmp   n497_statement_begin_β
                        .size            n498_call_bx, .-n498_call_bx
                        .type            n499_assign_bx, @function
n499_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n499_assign_α:          mov              r11, 415
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1088_0]
                        .section         .rodata
.Lassign_α_1088_1_s:    .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1088_1_s]
                        mov              r8, 52
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
                        pop              rax;                                 jmp   n500_statement_end_α
.Lassign_α_1088_0:      .quad            .Lassign_α_1088_0_s
.Lassign_α_1088_0_s:    .string          "t1"
                        .size            n499_assign_bx, .-n499_assign_bx
                        .type            n500_statement_end_bx, @function
n500_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n500_statement_end_α:   mov              r11, 416
                        mov              r10, 48
                        add              rsp, 16;                             jmp   n501_stmt_mark_α
                        .size            n500_statement_end_bx, .-n500_statement_end_bx
                        .type            n501_stmt_mark_bx, @function
n501_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
n501_stmt_mark_α:       mov              r11, 417
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 49
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 54
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n502_statement_begin_α
                        .size            n501_stmt_mark_bx, .-n501_stmt_mark_bx
                        .type            n502_statement_begin_bx, @function
n502_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n502_statement_begin_α: mov              r11, 418
                        mov              r10, 49;                             jmp   n503_lit_string_α
n502_statement_begin_β: mov              r11, 418;                            jmp   n506_stmt_mark_α
                        .size            n502_statement_begin_bx, .-n502_statement_begin_bx
                        .type            n503_lit_string_bx, @function
n503_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_string_α:      sub              rsp, 16
                        mov              r11, 419
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1095_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n504_assign_α
.Llit_string_α_1095_0:  .quad            .Llit_string_α_1095_0_s
.Llit_string_α_1095_0_s:
                        .string          "Boo!"
                        .size            n503_lit_string_bx, .-n503_lit_string_bx
                        .type            n504_assign_bx, @function
n504_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_assign_α:          mov              r11, 420
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1096_0]
                        .section         .rodata
.Lassign_α_1096_1_s:    .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1096_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1096_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n505_statement_end_α
.Lassign_α_1096_0:      .quad            .Lassign_α_1096_0_s
.Lassign_α_1096_0_s:    .string          "OUTPUT"
                        .size            n504_assign_bx, .-n504_assign_bx
                        .type            n505_statement_end_bx, @function
n505_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n505_statement_end_α:   mov              r11, 421
                        mov              r10, 49
                        add              rsp, 16;                             jmp   n506_stmt_mark_α
                        .size            n505_statement_end_bx, .-n505_statement_end_bx
                        .type            n506_stmt_mark_bx, @function
n506_stmt_mark_bx:
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 55 0
n506_stmt_mark_α:       mov              r11, 422
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 50
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 55
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n507_statement_begin_α
                        .size            n506_stmt_mark_bx, .-n506_stmt_mark_bx
                        .type            n507_statement_begin_bx, @function
n507_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_statement_begin_α: mov              r11, 423
                        mov              r10, 50;                             jmp   n508_lit_string_α
n507_statement_begin_β: mov              r11, 423;                            jmp   main_γ
                        .size            n507_statement_begin_bx, .-n507_statement_begin_bx
                        .type            n508_lit_string_bx, @function
n508_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_lit_string_α:      sub              rsp, 16
                        mov              r11, 424
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_1103_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n509_var_α
.Llit_string_α_1103_0:  .quad            .Llit_string_α_1103_0_s
.Llit_string_α_1103_0_s:
                        .string          "match_ms="
                        .size            n508_lit_string_bx, .-n508_lit_string_bx
                        .type            n509_var_bx, @function
n509_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_var_α:             sub              rsp, 16
                        mov              r11, 425
                        mov              rax, qword ptr [r9 + 368]            # t1
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n510_var_α
n509_var_β:             mov              r11, 425
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n507_statement_begin_β
                        .size            n509_var_bx, .-n509_var_bx
                        .type            n510_var_bx, @function
n510_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n510_var_α:             sub              rsp, 16
                        mov              r11, 426
                        mov              rax, qword ptr [r9 + 352]            # t0
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n511_binop_α
n510_var_β:             mov              r11, 426
                        add              rsp, 16;                             jmp   n509_var_β
                        .size            n510_var_bx, .-n510_var_bx
                        .type            n511_binop_bx, @function
n511_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n511_binop_α:           sub              rsp, 16
                        mov              r11, 427
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1106_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_1106_7
.Lbinop_α_1106_2:       and              edx, 1;                              jz    .Lbinop_α_1106_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_1106_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1106_4
.Lbinop_α_1106_3:       movq             xmm0, rsi
.Lbinop_α_1106_4:       cmp              cl, 5;                               je    .Lbinop_α_1106_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1106_6
.Lbinop_α_1106_5:       movq             xmm1, rdi
.Lbinop_α_1106_6:       subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_1106_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_1106_7:                                                             jmp   n512_lit_integer_α
.Lbinop_α_1106_0:       mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_1106_240
                        add              rsp, 16;                             jmp   n510_var_β
.Lbinop_α_1106_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n512_lit_integer_α
n511_binop_β:           mov              r11, 427
                        add              rsp, 16;                             jmp   n510_var_β
                        .size            n511_binop_bx, .-n511_binop_bx
                        .type            n512_lit_integer_bx, @function
n512_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n512_lit_integer_α:     sub              rsp, 16
                        mov              r11, 428
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1107_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n513_binop_α
n512_lit_integer_β:     mov              r11, 428
                        add              rsp, 16;                             jmp   n511_binop_β
.Llit_integer_α_1107_0: .quad            1000000
                        .size            n512_lit_integer_bx, .-n512_lit_integer_bx
                        .type            n513_binop_bx, @function
n513_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n513_binop_α:           sub              rsp, 16
                        mov              r11, 429
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
                        cmp              al, 104;                             jne   .Lbinop_α_1108_240
                        add              rsp, 16;                             jmp   n512_lit_integer_β
.Lbinop_α_1108_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n514_binop_α
n513_binop_β:           mov              r11, 429
                        add              rsp, 16;                             jmp   n512_lit_integer_β
                        .size            n513_binop_bx, .-n513_binop_bx
                        .type            n514_binop_bx, @function
n514_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n514_binop_α:           sub              rsp, 16
                        mov              r11, 430
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n515_assign_α
                        .size            n514_binop_bx, .-n514_binop_bx
                        .type            n515_assign_bx, @function
n515_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n515_assign_α:          mov              r11, 431
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1110_0]
                        .section         .rodata
.Lassign_α_1110_1_s:    .string          "snobol4/calculator/calculator-1.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1110_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1110_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n516_statement_end_α
.Lassign_α_1110_0:      .quad            .Lassign_α_1110_0_s
.Lassign_α_1110_0_s:    .string          "TERMINAL"
                        .size            n515_assign_bx, .-n515_assign_bx
                        .type            n516_statement_end_bx, @function
n516_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n516_statement_end_α:   mov              r11, 432
                        mov              r10, 50
                        add              rsp, 112;                            jmp   main_γ
                        .size            n516_statement_end_bx, .-n516_statement_end_bx
                        .type            n517_goto_bx, @function
n517_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n517_goto_α:            mov              r11, 433;                            jmp   LBL__EMIT
n517_goto_β:            mov              r11, 433;                            jmp   main_ω
                        .size            n517_goto_bx, .-n517_goto_bx
                        .type            n518_stmt_mark_bx, @function
n518_stmt_mark_bx:
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
LBL__EMIT:              mov              r11, 434
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n173_statement_begin_α
                        .size            n518_stmt_mark_bx, .-n518_stmt_mark_bx
                        .type            n519_goto_bx, @function
n519_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n519_goto_α:            mov              r11, 435;                            jmp   LBL__PSH
n519_goto_β:            mov              r11, 435;                            jmp   main_ω
                        .size            n519_goto_bx, .-n519_goto_bx
                        .type            n520_goto_bx, @function
n520_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n520_goto_α:            mov              r11, 436;                            jmp   LBL__DRF
n520_goto_β:            mov              r11, 436;                            jmp   main_ω
                        .size            n520_goto_bx, .-n520_goto_bx
                        .type            n521_stmt_mark_bx, @function
n521_stmt_mark_bx:
#=======================================================================================================================
# DRF     DRF = nm
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
LBL__DRF:               mov              r11, 437
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n203_statement_begin_α
                        .size            n521_stmt_mark_bx, .-n521_stmt_mark_bx
                        .type            n522_goto_bx, @function
n522_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n522_goto_α:            mov              r11, 438;                            jmp   LBL__ADD
n522_goto_β:            mov              r11, 438;                            jmp   main_ω
                        .size            n522_goto_bx, .-n522_goto_bx
                        .type            n523_stmt_mark_bx, @function
n523_stmt_mark_bx:
#=======================================================================================================================
# ADD     S[sp = sp - 1] = DRF(S[sp]) + DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
LBL__ADD:               mov              r11, 439
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n224_statement_begin_α
                        .size            n523_stmt_mark_bx, .-n523_stmt_mark_bx
                        .type            n524_goto_bx, @function
n524_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n524_goto_α:            mov              r11, 440;                            jmp   LBL__SUB
n524_goto_β:            mov              r11, 440;                            jmp   main_ω
                        .size            n524_goto_bx, .-n524_goto_bx
                        .type            n525_stmt_mark_bx, @function
n525_stmt_mark_bx:
#=======================================================================================================================
# SUB     S[sp = sp - 1] = DRF(S[sp]) - DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
LBL__SUB:               mov              r11, 441
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n250_statement_begin_α
                        .size            n525_stmt_mark_bx, .-n525_stmt_mark_bx
                        .type            n526_goto_bx, @function
n526_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n526_goto_α:            mov              r11, 442;                            jmp   LBL__MUL
n526_goto_β:            mov              r11, 442;                            jmp   main_ω
                        .size            n526_goto_bx, .-n526_goto_bx
                        .type            n527_stmt_mark_bx, @function
n527_stmt_mark_bx:
#=======================================================================================================================
# MUL     S[sp = sp - 1] = DRF(S[sp]) * DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
LBL__MUL:               mov              r11, 443
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n276_statement_begin_α
                        .size            n527_stmt_mark_bx, .-n527_stmt_mark_bx
                        .type            n528_goto_bx, @function
n528_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n528_goto_α:            mov              r11, 444;                            jmp   LBL__DIV
n528_goto_β:            mov              r11, 444;                            jmp   main_ω
                        .size            n528_goto_bx, .-n528_goto_bx
                        .type            n529_stmt_mark_bx, @function
n529_stmt_mark_bx:
#=======================================================================================================================
# DIV     S[sp = sp - 1] = DRF(S[sp]) / DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
LBL__DIV:               mov              r11, 445
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 23
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 23
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n302_statement_begin_α
                        .size            n529_stmt_mark_bx, .-n529_stmt_mark_bx
                        .type            n530_goto_bx, @function
n530_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n530_goto_α:            mov              r11, 446;                            jmp   LBL__NEG
n530_goto_β:            mov              r11, 446;                            jmp   main_ω
                        .size            n530_goto_bx, .-n530_goto_bx
                        .type            n531_stmt_mark_bx, @function
n531_stmt_mark_bx:
#=======================================================================================================================
# NEG     S[sp] = -DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
LBL__NEG:               mov              r11, 447
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n328_statement_begin_α
                        .size            n531_stmt_mark_bx, .-n531_stmt_mark_bx
                        .type            n532_goto_bx, @function
n532_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n532_goto_α:            mov              r11, 448;                            jmp   n172_stmt_mark_α
n532_goto_β:            mov              r11, 448;                            jmp   main_ω
                        .size            n532_goto_bx, .-n532_goto_bx
                        .type            n533_goto_bx, @function
n533_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n533_goto_α:            mov              r11, 449;                            jmp   n481_stmt_mark_α
n533_goto_β:            mov              r11, 449;                            jmp   main_ω
                        .size            n533_goto_bx, .-n533_goto_bx
                        .type            n534_define_bx, @function
n534_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 450
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
                        .size            n534_define_bx, .-n534_define_bx
                        .type            n535_define_bx, @function
n535_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 451
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
                        .size            n535_define_bx, .-n535_define_bx
                        .type            n536_lit_string_bx, @function
n536_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 452
                        push             rax
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 1
                        pop              rax;                                 jmp   RETURN
                        .size            n536_lit_string_bx, .-n536_lit_string_bx
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
