                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/calculator/calculator-2.sno"
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
.Lmatch_defer_α_28_13:  mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
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
                        mov              rdx, qword ptr [r9 + 344];           jmp   .Lmatch_defer_α_28_10
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
                                                                              jmp   PAT$2_ω
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
                        sub              rsp, 120
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
                        mov              dword ptr [rbp + -120], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_42_21]
                        mov              qword ptr [rbp + -104], rax;         jmp   n40_match_defer_α
.Lmatch_alternate_α_42_21:
                        lea              rax, [rip + .Lmatch_alternate_α_42_19]
                        mov              qword ptr [rbp + -104], rax;         jmp   n34_match_assign_save_α
.Lmatch_alternate_γ_33_s0:
                        mov              r11, 13
                        lea              rax, [rip + .Lmatch_alternate_α_42_40]
                        mov              qword ptr [rbp + -112], rax;         jmp   .Lmatch_alternate_γ_33_as
.Lmatch_alternate_γ_33_s1:
                        mov              r11, 13
                        lea              rax, [rip + .Lmatch_alternate_α_42_41]
                        mov              qword ptr [rbp + -112], rax;         jmp   .Lmatch_alternate_γ_33_as
.Lmatch_alternate_α_42_40:
                                                                              jmp   n40_match_defer_β
.Lmatch_alternate_α_42_41:
                                                                              jmp   n39_match_assign_cond_β
.Lmatch_alternate_γ_33_as:
                        mov              r11, 13;                             jmp   PAT$3_γ
n33_match_alternate_β:  mov              r11, 13
                        mov              rax, qword ptr [rbp + -112];         jmp   rax
.Lmatch_alternate_γ_33_af:
                        mov              r11, 13
.Lmatch_alternate_ω_33_af:
                        mov              r11, 13
                        mov              r14d, dword ptr [rbp + -120]
                        mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lmatch_alternate_α_42_19:
                                                                              jmp   PAT$3_ω
                        .size            n33_match_alternate_bx, .-n33_match_alternate_bx
                        .type            n34_match_assign_save_bx, @function
n34_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 14
                        mov              dword ptr [rbp + -48], r14d;         jmp   n35_match_any_α
n34_match_assign_save_β:
                        mov              r11, 14
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_33_af
                        .size            n34_match_assign_save_bx, .-n34_match_assign_save_bx
                        .type            n35_match_any_bx, @function
n35_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_match_any_α:        mov              r11, 15
                        mov              eax, r14d
                        cmp              eax, r15d;                           jl    .Lmatch_any_α_46_240
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_33_af
.Lmatch_any_α_46_240:   movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .Lmatch_any_α_46_0
                        cmp              esi, 45;                             je    .Lmatch_any_α_46_0
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_33_af
.Lmatch_any_α_46_0:     add              r14d, 1;                             jmp   n36_match_assign_cond_α
n35_match_any_β:        mov              r11, 15
                        sub              r14d, 1
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_33_af
                        .size            n35_match_any_bx, .-n35_match_any_bx
                        .type            n36_match_assign_cond_bx, @function
n36_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_match_assign_cond_α:
                        mov              r11, 16
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n37_match_assign_save_α
n36_match_assign_cond_β:
                        mov              r11, 16
                        sub              r12, 24;                             jmp   n35_match_any_β
                        .size            n36_match_assign_cond_bx, .-n36_match_assign_cond_bx
                        .type            n37_match_assign_save_bx, @function
n37_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_match_assign_save_α:
                        mov              r11, 17
                        mov              dword ptr [rbp + -64], r14d;         jmp   n38_match_defer_α
n37_match_assign_save_β:
                        mov              r11, 17;                             jmp   n36_match_assign_cond_β
                        .size            n37_match_assign_save_bx, .-n37_match_assign_save_bx
                        .type            n38_match_defer_bx, @function
n38_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_match_defer_α:      mov              r11, 18
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_51_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_51_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 312];           jmp   .Lmatch_defer_α_51_10
.Lmatch_defer_α_51_9:   cmp              al, 88;                              jne   .Lmatch_defer_α_51_21
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
                        test             rax, rax;                            je    .Lmatch_defer_α_51_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_51_10
.Lmatch_defer_α_51_21:  xor              eax, eax
.Lmatch_defer_α_51_10:  test             rax, rax;                            jz    .Lmatch_defer_α_51_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_51_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_51_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_51_4:   mov              rsp, rbp
                        pop              rbp;                                 jmp   n39_match_assign_cond_α
.Lmatch_defer_α_51_5:   mov              rsp, rbp
                        pop              rbp;                                 jmp   n37_match_assign_save_β
.Lmatch_defer_α_51_0:   push             r14
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
                        test             eax, eax;                            js    n37_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_51_6]
                        push             rcx
                        push             rax;                                 jmp   n39_match_assign_cond_α
.Lmatch_defer_α_51_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n37_match_assign_save_β
n38_match_defer_β:      mov              r11, 18
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n37_match_assign_save_β
                        .size            n38_match_defer_bx, .-n38_match_defer_bx
                        .type            n39_match_assign_cond_bx, @function
n39_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_match_assign_cond_α:
                        mov              r11, 19
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S5]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_33_s1
n39_match_assign_cond_β:
                        mov              r11, 19
                        sub              r12, 24;                             jmp   n38_match_defer_β
                        .size            n39_match_assign_cond_bx, .-n39_match_assign_cond_bx
                        .type            n40_match_defer_bx, @function
n40_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_match_defer_α:      mov              r11, 20
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_54_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_54_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_54_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_54_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_54_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_54_18
.Lmatch_defer_α_54_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_54_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_54_16:
.Lmatch_defer_α_54_18:  test             rax, rax;                            jz    .Lmatch_defer_α_54_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_54_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_54_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_54_4:                                                         jmp   .Lmatch_alternate_γ_33_s0
.Lmatch_defer_α_54_5:                                                         jmp   .Lmatch_alternate_ω_33_af
.Lmatch_defer_α_54_0:   push             r14
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
                        lea              rax, [rip + .Lmatch_defer_α_54_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_33_s0
.Lmatch_defer_α_54_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_33_af
n40_match_defer_β:      mov              r11, 20
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_54_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_54_12
                                                                              jmp   rax
.Lmatch_defer_β_54_12:                                                        jmp   qword ptr [rsp]
                        .size            n40_match_defer_bx, .-n40_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_β:
                                                                              jmp   PAT$3_ω
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
                        sub              rsp, 152
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n55_match_defer_bx, @function
n55_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_match_defer_α:      sub              rsp, 16
                        mov              r11, 21
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_66_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_66_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_66_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_66_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_66_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_66_18
.Lmatch_defer_α_66_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_66_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_66_16:
.Lmatch_defer_α_66_18:  test             rax, rax;                            jz    .Lmatch_defer_α_66_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_66_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_66_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_66_4:                                                         jmp   n56_match_arbno_α
.Lmatch_defer_α_66_5:   add              rsp, 16;                             jmp   PAT$4_ω
.Lmatch_defer_α_66_0:   push             r14
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
                        test             eax, eax;                            jns   .Lmatch_defer_α_66_240
                        add              rsp, 16;                             jmp   PAT$4_ω
.Lmatch_defer_α_66_240: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_66_6]
                        push             rcx
                        push             rax;                                 jmp   n56_match_arbno_α
.Lmatch_defer_α_66_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$4_ω
n55_match_defer_β:      mov              r11, 21
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_66_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_66_12
                                                                              jmp   rax
.Lmatch_defer_β_66_12:                                                        jmp   qword ptr [rsp]
                        .size            n55_match_defer_bx, .-n55_match_defer_bx
                        .type            n56_match_arbno_bx, @function
n56_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_match_arbno_α:      mov              r11, 22
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$4_γ
n56_match_arbno_β:      mov              r11, 22
                        mov              r12, qword ptr [rbp + -40];          jmp   n57_match_alternate_α
.Lmatch_arbno_γ_56_as:  mov              r11, 22
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n57_match_alternate_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$4_γ
.Lmatch_arbno_γ_56_af:  mov              r11, 22
.Lmatch_arbno_ω_56_af:  mov              r11, 22
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n55_match_defer_β
                        .size            n56_match_arbno_bx, .-n56_match_arbno_bx
                        .type            n57_match_alternate_bx, @function
n57_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_match_alternate_α:  mov              r11, 23
                        mov              dword ptr [rbp + -152], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_70_21]
                        mov              qword ptr [rbp + -136], rax;         jmp   n62_match_lit_α
.Lmatch_alternate_α_70_21:
                        lea              rax, [rip + .Lmatch_alternate_α_70_19]
                        mov              qword ptr [rbp + -136], rax;         jmp   n58_match_lit_α
.Lmatch_alternate_γ_57_s0:
                        mov              r11, 23
                        lea              rax, [rip + .Lmatch_alternate_α_70_40]
                        mov              qword ptr [rbp + -144], rax;         jmp   .Lmatch_alternate_γ_57_as
.Lmatch_alternate_γ_57_s1:
                        mov              r11, 23
                        lea              rax, [rip + .Lmatch_alternate_α_70_41]
                        mov              qword ptr [rbp + -144], rax;         jmp   .Lmatch_alternate_γ_57_as
.Lmatch_alternate_α_70_40:
                                                                              jmp   n65_match_assign_cond_β
.Lmatch_alternate_α_70_41:
                                                                              jmp   n61_match_assign_cond_β
.Lmatch_alternate_γ_57_as:
                        mov              r11, 23;                             jmp   .Lmatch_arbno_γ_56_as
n57_match_alternate_β:  mov              r11, 23
                        mov              rax, qword ptr [rbp + -144];         jmp   rax
.Lmatch_alternate_γ_57_af:
                        mov              r11, 23
.Lmatch_alternate_ω_57_af:
                        mov              r11, 23
                        mov              r14d, dword ptr [rbp + -152]
                        mov              rax, qword ptr [rbp + -136];         jmp   rax
.Lmatch_alternate_α_70_19:
                                                                              jmp   .Lmatch_arbno_ω_56_af
                        .size            n57_match_alternate_bx, .-n57_match_alternate_bx
                        .type            n58_match_lit_bx, @function
n58_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_match_lit_α:        mov              r11, 24
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_57_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                             jne   .Lmatch_alternate_ω_57_af
                        add              r14d, 1;                             jmp   n59_match_assign_save_α
n58_match_lit_β:        mov              r11, 24
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_57_af
                        .size            n58_match_lit_bx, .-n58_match_lit_bx
                        .type            n59_match_assign_save_bx, @function
n59_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_match_assign_save_α:
                        mov              r11, 25
                        mov              dword ptr [rbp + -96], r14d;         jmp   n60_match_defer_α
n59_match_assign_save_β:
                        mov              r11, 25;                             jmp   n58_match_lit_β
                        .size            n59_match_assign_save_bx, .-n59_match_assign_save_bx
                        .type            n60_match_defer_bx, @function
n60_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_match_defer_α:      mov              r11, 26
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_75_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_75_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_75_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_75_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_75_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_75_18
.Lmatch_defer_α_75_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_75_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_75_16:
.Lmatch_defer_α_75_18:  test             rax, rax;                            jz    .Lmatch_defer_α_75_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_75_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_75_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_75_4:                                                         jmp   n61_match_assign_cond_α
.Lmatch_defer_α_75_5:                                                         jmp   n59_match_assign_save_β
.Lmatch_defer_α_75_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S8]
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
                        test             eax, eax;                            js    n59_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_75_6]
                        push             rcx
                        push             rax;                                 jmp   n61_match_assign_cond_α
.Lmatch_defer_α_75_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n59_match_assign_save_β
n60_match_defer_β:      mov              r11, 26
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_75_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_75_12
                                                                              jmp   rax
.Lmatch_defer_β_75_12:                                                        jmp   qword ptr [rsp]
                        .size            n60_match_defer_bx, .-n60_match_defer_bx
                        .type            n61_match_assign_cond_bx, @function
n61_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_match_assign_cond_α:
                        mov              r11, 27
                        mov              eax, dword ptr [rbp + -96]
                        lea              rcx, [rip + .S9]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_57_s1
n61_match_assign_cond_β:
                        mov              r11, 27
                        sub              r12, 24;                             jmp   n60_match_defer_β
                        .size            n61_match_assign_cond_bx, .-n61_match_assign_cond_bx
                        .type            n62_match_lit_bx, @function
n62_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_match_lit_α:        mov              r11, 28
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_57_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                             jne   .Lmatch_alternate_ω_57_af
                        add              r14d, 1;                             jmp   n63_match_assign_save_α
n62_match_lit_β:        mov              r11, 28
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_57_af
                        .size            n62_match_lit_bx, .-n62_match_lit_bx
                        .type            n63_match_assign_save_bx, @function
n63_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_match_assign_save_α:
                        mov              r11, 29
                        mov              dword ptr [rbp + -64], r14d;         jmp   n64_match_defer_α
n63_match_assign_save_β:
                        mov              r11, 29;                             jmp   n62_match_lit_β
                        .size            n63_match_assign_save_bx, .-n63_match_assign_save_bx
                        .type            n64_match_defer_bx, @function
n64_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_match_defer_α:      mov              r11, 30
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_82_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_82_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_82_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_82_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_82_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_82_18
.Lmatch_defer_α_82_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S10]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_82_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_82_16:
.Lmatch_defer_α_82_18:  test             rax, rax;                            jz    .Lmatch_defer_α_82_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_82_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_82_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_82_4:                                                         jmp   n65_match_assign_cond_α
.Lmatch_defer_α_82_5:                                                         jmp   n63_match_assign_save_β
.Lmatch_defer_α_82_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S10]
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
                        test             eax, eax;                            js    n63_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_82_6]
                        push             rcx
                        push             rax;                                 jmp   n65_match_assign_cond_α
.Lmatch_defer_α_82_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n63_match_assign_save_β
n64_match_defer_β:      mov              r11, 30
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_82_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_82_12
                                                                              jmp   rax
.Lmatch_defer_β_82_12:                                                        jmp   qword ptr [rsp]
                        .size            n64_match_defer_bx, .-n64_match_defer_bx
                        .type            n65_match_assign_cond_bx, @function
n65_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_match_assign_cond_α:
                        mov              r11, 31
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S11]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_57_s0
n65_match_assign_cond_β:
                        mov              r11, 31
                        sub              r12, 24;                             jmp   n64_match_defer_β
                        .size            n65_match_assign_cond_bx, .-n65_match_assign_cond_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_β:
                                                                              jmp   n56_match_arbno_β
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
                        sub              rsp, 152
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n85_match_defer_bx, @function
n85_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_match_defer_α:      sub              rsp, 16
                        mov              r11, 32
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_96_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_96_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_96_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_96_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_96_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_96_18
.Lmatch_defer_α_96_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S12]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_96_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_96_16:
.Lmatch_defer_α_96_18:  test             rax, rax;                            jz    .Lmatch_defer_α_96_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_96_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_96_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_96_4:                                                         jmp   n86_match_arbno_α
.Lmatch_defer_α_96_5:   add              rsp, 16;                             jmp   PAT$5_ω
.Lmatch_defer_α_96_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S12]
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
                        test             eax, eax;                            jns   .Lmatch_defer_α_96_240
                        add              rsp, 16;                             jmp   PAT$5_ω
.Lmatch_defer_α_96_240: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_96_6]
                        push             rcx
                        push             rax;                                 jmp   n86_match_arbno_α
.Lmatch_defer_α_96_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$5_ω
n85_match_defer_β:      mov              r11, 32
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_96_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_96_12
                                                                              jmp   rax
.Lmatch_defer_β_96_12:                                                        jmp   qword ptr [rsp]
                        .size            n85_match_defer_bx, .-n85_match_defer_bx
                        .type            n86_match_arbno_bx, @function
n86_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_match_arbno_α:      mov              r11, 33
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$5_γ
n86_match_arbno_β:      mov              r11, 33
                        mov              r12, qword ptr [rbp + -40];          jmp   n87_match_alternate_α
.Lmatch_arbno_γ_86_as:  mov              r11, 33
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n87_match_alternate_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$5_γ
.Lmatch_arbno_γ_86_af:  mov              r11, 33
.Lmatch_arbno_ω_86_af:  mov              r11, 33
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n85_match_defer_β
                        .size            n86_match_arbno_bx, .-n86_match_arbno_bx
                        .type            n87_match_alternate_bx, @function
n87_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_match_alternate_α:  mov              r11, 34
                        mov              dword ptr [rbp + -152], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_100_21]
                        mov              qword ptr [rbp + -136], rax;         jmp   n92_match_lit_α
.Lmatch_alternate_α_100_21:
                        lea              rax, [rip + .Lmatch_alternate_α_100_19]
                        mov              qword ptr [rbp + -136], rax;         jmp   n88_match_lit_α
.Lmatch_alternate_γ_87_s0:
                        mov              r11, 34
                        lea              rax, [rip + .Lmatch_alternate_α_100_40]
                        mov              qword ptr [rbp + -144], rax;         jmp   .Lmatch_alternate_γ_87_as
.Lmatch_alternate_γ_87_s1:
                        mov              r11, 34
                        lea              rax, [rip + .Lmatch_alternate_α_100_41]
                        mov              qword ptr [rbp + -144], rax;         jmp   .Lmatch_alternate_γ_87_as
.Lmatch_alternate_α_100_40:
                                                                              jmp   n95_match_assign_cond_β
.Lmatch_alternate_α_100_41:
                                                                              jmp   n91_match_assign_cond_β
.Lmatch_alternate_γ_87_as:
                        mov              r11, 34;                             jmp   .Lmatch_arbno_γ_86_as
n87_match_alternate_β:  mov              r11, 34
                        mov              rax, qword ptr [rbp + -144];         jmp   rax
.Lmatch_alternate_γ_87_af:
                        mov              r11, 34
.Lmatch_alternate_ω_87_af:
                        mov              r11, 34
                        mov              r14d, dword ptr [rbp + -152]
                        mov              rax, qword ptr [rbp + -136];         jmp   rax
.Lmatch_alternate_α_100_19:
                                                                              jmp   .Lmatch_arbno_ω_86_af
                        .size            n87_match_alternate_bx, .-n87_match_alternate_bx
                        .type            n88_match_lit_bx, @function
n88_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_match_lit_α:        mov              r11, 35
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_87_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   .Lmatch_alternate_ω_87_af
                        add              r14d, 1;                             jmp   n89_match_assign_save_α
n88_match_lit_β:        mov              r11, 35
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_87_af
                        .size            n88_match_lit_bx, .-n88_match_lit_bx
                        .type            n89_match_assign_save_bx, @function
n89_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_match_assign_save_α:
                        mov              r11, 36
                        mov              dword ptr [rbp + -96], r14d;         jmp   n90_match_defer_α
n89_match_assign_save_β:
                        mov              r11, 36;                             jmp   n88_match_lit_β
                        .size            n89_match_assign_save_bx, .-n89_match_assign_save_bx
                        .type            n90_match_defer_bx, @function
n90_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_match_defer_α:      mov              r11, 37
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_105_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_105_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_105_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_105_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_105_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_105_18
.Lmatch_defer_α_105_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S13]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_105_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_105_16:
.Lmatch_defer_α_105_18: test             rax, rax;                            jz    .Lmatch_defer_α_105_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_105_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_105_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_105_4:                                                        jmp   n91_match_assign_cond_α
.Lmatch_defer_α_105_5:                                                        jmp   n89_match_assign_save_β
.Lmatch_defer_α_105_0:  push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S13]
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
                        test             eax, eax;                            js    n89_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_105_6]
                        push             rcx
                        push             rax;                                 jmp   n91_match_assign_cond_α
.Lmatch_defer_α_105_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n89_match_assign_save_β
n90_match_defer_β:      mov              r11, 37
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_105_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_105_12
                                                                              jmp   rax
.Lmatch_defer_β_105_12:                                                       jmp   qword ptr [rsp]
                        .size            n90_match_defer_bx, .-n90_match_defer_bx
                        .type            n91_match_assign_cond_bx, @function
n91_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_match_assign_cond_α:
                        mov              r11, 38
                        mov              eax, dword ptr [rbp + -96]
                        lea              rcx, [rip + .S14]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_87_s1
n91_match_assign_cond_β:
                        mov              r11, 38
                        sub              r12, 24;                             jmp   n90_match_defer_β
                        .size            n91_match_assign_cond_bx, .-n91_match_assign_cond_bx
                        .type            n92_match_lit_bx, @function
n92_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_match_lit_α:        mov              r11, 39
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_87_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   .Lmatch_alternate_ω_87_af
                        add              r14d, 1;                             jmp   n93_match_assign_save_α
n92_match_lit_β:        mov              r11, 39
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_87_af
                        .size            n92_match_lit_bx, .-n92_match_lit_bx
                        .type            n93_match_assign_save_bx, @function
n93_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_match_assign_save_α:
                        mov              r11, 40
                        mov              dword ptr [rbp + -64], r14d;         jmp   n94_match_defer_α
n93_match_assign_save_β:
                        mov              r11, 40;                             jmp   n92_match_lit_β
                        .size            n93_match_assign_save_bx, .-n93_match_assign_save_bx
                        .type            n94_match_defer_bx, @function
n94_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_match_defer_α:      mov              r11, 41
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_112_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_112_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_112_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_112_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_112_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_112_18
.Lmatch_defer_α_112_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
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
                        test             rax, rax;                            je    .Lmatch_defer_α_112_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_112_16:
.Lmatch_defer_α_112_18: test             rax, rax;                            jz    .Lmatch_defer_α_112_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_112_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_112_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_112_4:                                                        jmp   n95_match_assign_cond_α
.Lmatch_defer_α_112_5:                                                        jmp   n93_match_assign_save_β
.Lmatch_defer_α_112_0:  push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
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
                        test             eax, eax;                            js    n93_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_112_6]
                        push             rcx
                        push             rax;                                 jmp   n95_match_assign_cond_α
.Lmatch_defer_α_112_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n93_match_assign_save_β
n94_match_defer_β:      mov              r11, 41
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_112_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_112_12
                                                                              jmp   rax
.Lmatch_defer_β_112_12:                                                       jmp   qword ptr [rsp]
                        .size            n94_match_defer_bx, .-n94_match_defer_bx
                        .type            n95_match_assign_cond_bx, @function
n95_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_match_assign_cond_α:
                        mov              r11, 42
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S16]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_alternate_γ_87_s0
n95_match_assign_cond_β:
                        mov              r11, 42
                        sub              r12, 24;                             jmp   n94_match_defer_β
                        .size            n95_match_assign_cond_bx, .-n95_match_assign_cond_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_β:
                                                                              jmp   n86_match_arbno_β
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
                        .type            n115_match_defer_bx, @function
n115_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_match_defer_α:     sub              rsp, 16
                        mov              r11, 43
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_117_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_117_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_117_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_117_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_117_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_117_18
.Lmatch_defer_α_117_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S17]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_117_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_117_16:
.Lmatch_defer_α_117_18: test             rax, rax;                            jz    .Lmatch_defer_α_117_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_117_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_117_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_117_4:                                                        jmp   n116_match_fence0_α
.Lmatch_defer_α_117_5:  add              rsp, 16;                             jmp   PAT$6_ω
.Lmatch_defer_α_117_0:  push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S17]
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
                        test             eax, eax;                            jns   .Lmatch_defer_α_117_240
                        add              rsp, 16;                             jmp   PAT$6_ω
.Lmatch_defer_α_117_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_117_6]
                        push             rcx
                        push             rax;                                 jmp   n116_match_fence0_α
.Lmatch_defer_α_117_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$6_ω
n115_match_defer_β:     mov              r11, 43
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_117_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_117_12
                                                                              jmp   rax
.Lmatch_defer_β_117_12:                                                       jmp   qword ptr [rsp]
                        .size            n115_match_defer_bx, .-n115_match_defer_bx
                        .type            n116_match_fence0_bx, @function
n116_match_fence0_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_match_fence0_α:    mov              r11, 44
                        mov              rsp, rbp
                        sub              rsp, 40;                             jmp   PAT$6_γ
n116_match_fence0_β:    mov              r11, 44;                             jmp   PAT$6_ω
                        .size            n116_match_fence0_bx, .-n116_match_fence0_bx
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
                        .type            n120_match_pos_bx, @function
n120_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_match_pos_α:       mov              r11, 45
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$7_ω
                                                                              jmp   n121_match_arbno_α
n120_match_pos_β:       mov              r11, 45;                             jmp   PAT$7_ω
                        .size            n120_match_pos_bx, .-n120_match_pos_bx
                        .type            n121_match_arbno_bx, @function
n121_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_match_arbno_α:     mov              r11, 46
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n122_match_rpos_α
n121_match_arbno_β:     mov              r11, 46
                        mov              r12, qword ptr [rbp + -40];          jmp   n123_match_defer_α
.Lmatch_arbno_γ_121_as: mov              r11, 46
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n126_match_defer_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n122_match_rpos_α
.Lmatch_arbno_γ_121_af: mov              r11, 46
.Lmatch_arbno_ω_121_af: mov              r11, 46
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n120_match_pos_β
                        .size            n121_match_arbno_bx, .-n121_match_arbno_bx
                        .type            n122_match_rpos_bx, @function
n122_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_match_rpos_α:      mov              r11, 47
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n121_match_arbno_β
                                                                              jmp   PAT$7_γ
n122_match_rpos_β:      mov              r11, 47;                             jmp   n121_match_arbno_β
                        .size            n122_match_rpos_bx, .-n122_match_rpos_bx
                        .type            n123_match_defer_bx, @function
n123_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_match_defer_α:     mov              r11, 48
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_132_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_132_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_132_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_132_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_132_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_132_18
.Lmatch_defer_α_132_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S18]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_132_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_132_16:
.Lmatch_defer_α_132_18: test             rax, rax;                            jz    .Lmatch_defer_α_132_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_132_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_132_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_132_4:                                                        jmp   n124_match_defer_α
.Lmatch_defer_α_132_5:                                                        jmp   .Lmatch_arbno_ω_121_af
.Lmatch_defer_α_132_0:  push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S18]
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
                        test             eax, eax;                            js    .Lmatch_arbno_ω_121_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_132_6]
                        push             rcx
                        push             rax;                                 jmp   n124_match_defer_α
.Lmatch_defer_α_132_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_arbno_ω_121_af
n123_match_defer_β:     mov              r11, 48
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_132_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_132_12
                                                                              jmp   rax
.Lmatch_defer_β_132_12:                                                       jmp   qword ptr [rsp]
                        .size            n123_match_defer_bx, .-n123_match_defer_bx
                        .type            n124_match_defer_bx, @function
n124_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_match_defer_α:     mov              r11, 49
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
                        lea              rdx, [rip + .S19]
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
.Lmatch_defer_α_133_4:                                                        jmp   n125_match_assign_save_α
.Lmatch_defer_α_133_5:                                                        jmp   n123_match_defer_β
.Lmatch_defer_α_133_0:  push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S19]
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
                        test             eax, eax;                            js    n123_match_defer_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_133_6]
                        push             rcx
                        push             rax;                                 jmp   n125_match_assign_save_α
.Lmatch_defer_α_133_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n123_match_defer_β
n124_match_defer_β:     mov              r11, 49
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_133_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_133_12
                                                                              jmp   rax
.Lmatch_defer_β_133_12:                                                       jmp   qword ptr [rsp]
                        .size            n124_match_defer_bx, .-n124_match_defer_bx
                        .type            n125_match_assign_save_bx, @function
n125_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_match_assign_save_α:
                        mov              r11, 50
                        mov              dword ptr [rbp + -80], r14d;         jmp   n126_match_defer_α
n125_match_assign_save_β:
                        mov              r11, 50;                             jmp   n124_match_defer_β
                        .size            n125_match_assign_save_bx, .-n125_match_assign_save_bx
                        .type            n126_match_defer_bx, @function
n126_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_match_defer_α:     mov              r11, 51
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_136_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_136_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_136_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_136_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_136_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_136_18
.Lmatch_defer_α_136_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S20]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lmatch_defer_α_136_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_136_16:
.Lmatch_defer_α_136_18: test             rax, rax;                            jz    .Lmatch_defer_α_136_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_136_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_136_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_136_4:                                                        jmp   n127_match_assign_cond_α
.Lmatch_defer_α_136_5:                                                        jmp   n125_match_assign_save_β
.Lmatch_defer_α_136_0:  push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S20]
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
                        test             eax, eax;                            js    n125_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_136_6]
                        push             rcx
                        push             rax;                                 jmp   n127_match_assign_cond_α
.Lmatch_defer_α_136_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n125_match_assign_save_β
n126_match_defer_β:     mov              r11, 51
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_136_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_136_12
                                                                              jmp   rax
.Lmatch_defer_β_136_12:                                                       jmp   qword ptr [rsp]
                        .size            n126_match_defer_bx, .-n126_match_defer_bx
                        .type            n127_match_assign_cond_bx, @function
n127_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_match_assign_cond_α:
                        mov              r11, 52
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S21]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .Lmatch_arbno_γ_121_as
n127_match_assign_cond_β:
                        mov              r11, 52
                        sub              r12, 24;                             jmp   n126_match_defer_β
                        .size            n127_match_assign_cond_bx, .-n127_match_assign_cond_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_β:
                                                                              jmp   n122_match_rpos_β
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
                        mov              edi, 41
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 41
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
.Lgvan8:                .string          "SGN"
.Lgvan9:                .string          "p1"
.Lgvan10:               .string          "S"
.Lgvan11:               .string          "sp"
.Lgvan12:               .string          "dm"
.Lgvan13:               .string          "vars"
.Lgvan14:               .string          "LCASE"
.Lgvan15:               .string          "DIGITS"
.Lgvan16:               .string          "V"
.Lgvan17:               .string          "I"
.Lgvan18:               .string          "A"
.Lgvan19:               .string          "F"
.Lgvan20:               .string          "T"
.Lgvan21:               .string          "X"
.Lgvan22:               .string          "eol"
.Lgvan23:               .string          "C"
.Lgvan24:               .string          "epsilon"
.Lgvan25:               .string          "src"
.Lgvan26:               .string          "t0"
.Lgvan27:               .string          "t1"
.Lgvan28:               .string          "PAT$2$V0"
.Lgvan29:               .string          "PAT$2$V1"
.Lgvan30:               .string          "PAT$3$V0"
.Lgvan31:               .string          "PAT$4$V0"
.Lgvan32:               .string          "PAT$4$V1"
.Lgvan33:               .string          "PAT$4$V2"
.Lgvan34:               .string          "PAT$5$V0"
.Lgvan35:               .string          "PAT$5$V1"
.Lgvan36:               .string          "PAT$5$V2"
.Lgvan37:               .string          "PAT$6$V0"
.Lgvan38:               .string          "PAT$7$V0"
.Lgvan39:               .string          "PAT$7$V1"
.Lgvan40:               .string          "PAT$7$V2"
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
                        .quad            .Lgvan32
                        .quad            .Lgvan33
                        .quad            .Lgvan34
                        .quad            .Lgvan35
                        .quad            .Lgvan36
                        .quad            .Lgvan37
                        .quad            .Lgvan38
                        .quad            .Lgvan39
                        .quad            .Lgvan40
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
.Llbln7:                .string          "SGN"
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
                        .type            n139_lit_integer_bx, @function
n139_lit_integer_bx:
#=======================================================================================================================
#         DEFINE('EMIT()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n139_lit_integer_α:     sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_524_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_lit_integer_α
.Llit_integer_α_524_0:  .quad            18446744073709551615
                        .size            n139_lit_integer_bx, .-n139_lit_integer_bx
                        .type            n140_lit_integer_bx, @function
n140_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:     sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_525_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n141_lit_string_α
.Llit_integer_α_525_0:  .quad            0
                        .size            n140_lit_integer_bx, .-n140_lit_integer_bx
                        .type            n141_lit_string_bx, @function
n141_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      sub              rsp, 16
                        mov              r11, 55
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 35
                        mov              rax, qword ptr [rip + .Llit_string_α_526_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n142_call_α
.Llit_string_α_526_0:   .quad            .Llit_string_α_526_0_s
.Llit_string_α_526_0_s: .string          "snobol4/calculator/calculator-2.sno"
                        .size            n141_lit_string_bx, .-n141_lit_string_bx
                        .type            n142_call_bx, @function
n142_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:            sub              rsp, 16
                        mov              r11, 56
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
.Lcall_α_rkfnzd528:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd528]
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
                        cmp              al, 104;                             jne   .Lcall_α_527_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n143_statement_begin_α
.Lcall_α_527_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_statement_begin_α
n142_call_β:            mov              r11, 56
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n143_statement_begin_α
                        .size            n142_call_bx, .-n142_call_bx
                        .type            n143_statement_begin_bx, @function
n143_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_begin_α: mov              r11, 57
                        mov              r10, 1;                              jmp   n144_define_α
n143_statement_begin_β: mov              r11, 57
                        add              rsp, 64;                             jmp   n146_statement_begin_α
                        .size            n143_statement_begin_bx, .-n143_statement_begin_bx
                        .type            n144_define_bx, @function
n144_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_define_α:          mov              r11, 58
                        mov              rdi, qword ptr [rip + .Ldefine_α_532_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_532_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_532_0]
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
                        mov              qword ptr [rcx + 0], rax;            jmp   n145_statement_end_α
n144_define_β:          mov              r11, 58;                             jmp   n143_statement_begin_β
.Ldefine_α_532_0:       .quad            .Ldefine_α_532_0_s
.Ldefine_α_532_0_s:     .string          "EMIT"
.Ldefine_α_532_1:       .quad            .Ldefine_α_532_1_s
.Ldefine_α_532_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_533_245
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
                        cmp              rax, 0;                              jg    .Ldefine_α_533_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_533_230
.Ldefine_α_533_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_533_232]
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
.Ldefine_α_533_230:                                                           jmp   .Ldefine_α_533_231
.Ldefine_α_533_232:     .quad            .Ldefine_α_533_232_s
.Ldefine_α_533_232_s:   .string          "EMIT"
.Ldefine_α_533_231:     lea              rcx, [rip + EMIT_γ]
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
                        cmp              rax, 0;                              jne   .Ldefine_α_533_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_533_235
.Ldefine_α_533_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_533_237]
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
.Ldefine_α_533_235:                                                           jmp   .Ldefine_α_533_236
.Ldefine_α_533_237:     .quad            .Ldefine_α_533_237_s
.Ldefine_α_533_237_s:   .string          "EMIT"
.Ldefine_α_533_236:     pop              rdx
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
                        cmp              rax, 0;                              jne   .Ldefine_α_533_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_533_249
.Ldefine_α_533_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_533_237]
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
.Ldefine_α_533_249:     push             rcx
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_533_245:
                        .size            n144_define_bx, .-n144_define_bx
                        .type            n145_statement_end_bx, @function
n145_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_end_α:   mov              r11, 59
                        mov              r10, 1
                        add              rsp, 64;                             jmp   n146_statement_begin_α
                        .size            n145_statement_end_bx, .-n145_statement_end_bx
                        .type            n146_statement_begin_bx, @function
n146_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('PSH()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 29 0
n146_statement_begin_α: mov              r11, 60
                        mov              r10, 2;                              jmp   n147_define_α
n146_statement_begin_β: mov              r11, 60;                             jmp   n149_statement_begin_α
                        .size            n146_statement_begin_bx, .-n146_statement_begin_bx
                        .type            n147_define_bx, @function
n147_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_define_α:          mov              r11, 61
                        mov              rdi, qword ptr [rip + .Ldefine_α_539_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_539_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_539_0]
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
                        mov              qword ptr [rcx + 0], rax;            jmp   n148_statement_end_α
n147_define_β:          mov              r11, 61;                             jmp   n146_statement_begin_β
.Ldefine_α_539_0:       .quad            .Ldefine_α_539_0_s
.Ldefine_α_539_0_s:     .string          "PSH"
.Ldefine_α_539_1:       .quad            .Ldefine_α_539_1_s
.Ldefine_α_539_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_540_245
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
                        cmp              rax, 0;                              jg    .Ldefine_α_540_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_540_230
.Ldefine_α_540_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_540_232]
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
.Ldefine_α_540_230:                                                           jmp   .Ldefine_α_540_231
.Ldefine_α_540_232:     .quad            .Ldefine_α_540_232_s
.Ldefine_α_540_232_s:   .string          "PSH"
.Ldefine_α_540_231:     lea              rcx, [rip + PSH_γ]
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
                        cmp              rax, 0;                              jne   .Ldefine_α_540_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_540_235
.Ldefine_α_540_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_540_237]
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
.Ldefine_α_540_235:                                                           jmp   .Ldefine_α_540_236
.Ldefine_α_540_237:     .quad            .Ldefine_α_540_237_s
.Ldefine_α_540_237_s:   .string          "PSH"
.Ldefine_α_540_236:     pop              rdx
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
                        cmp              rax, 0;                              jne   .Ldefine_α_540_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_540_249
.Ldefine_α_540_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_540_237]
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
.Ldefine_α_540_249:     push             rcx
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_540_245:
                        .size            n147_define_bx, .-n147_define_bx
                        .type            n148_statement_end_bx, @function
n148_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:   mov              r11, 62
                        mov              r10, 2;                              jmp   n149_statement_begin_α
                        .size            n148_statement_end_bx, .-n148_statement_end_bx
                        .type            n149_statement_begin_bx, @function
n149_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('DRF(nm)')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n149_statement_begin_α: mov              r11, 63
                        mov              r10, 3;                              jmp   n150_define_α
n149_statement_begin_β: mov              r11, 63;                             jmp   n152_statement_begin_α
                        .size            n149_statement_begin_bx, .-n149_statement_begin_bx
                        .type            n150_define_bx, @function
n150_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_define_α:          mov              r11, 64
                        mov              rdi, qword ptr [rip + .Ldefine_α_546_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_546_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_546_0]
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
n150_define_β:          mov              r11, 64;                             jmp   n149_statement_begin_β
.Ldefine_α_546_0:       .quad            .Ldefine_α_546_0_s
.Ldefine_α_546_0_s:     .string          "DRF"
.Ldefine_α_546_1:       .quad            .Ldefine_α_546_1_s
.Ldefine_α_546_1_s:     .string          "nm"
                                                                              jmp   .Ldefine_α_547_245
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
                        cmp              rdx, 0;                              jbe   .Ldefine_α_547_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # nm
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_547_41
.Ldefine_α_547_10:      mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Ldefine_α_547_41:      push             rcx
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
                        cmp              rax, 0;                              jg    .Ldefine_α_547_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_547_230
.Ldefine_α_547_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_547_232]
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
.Ldefine_α_547_230:                                                           jmp   .Ldefine_α_547_231
.Ldefine_α_547_232:     .quad            .Ldefine_α_547_232_s
.Ldefine_α_547_232_s:   .string          "DRF"
.Ldefine_α_547_231:     lea              rcx, [rip + DRF_γ]
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
                        cmp              rax, 0;                              jne   .Ldefine_α_547_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_547_235
.Ldefine_α_547_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_547_237]
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
.Ldefine_α_547_235:                                                           jmp   .Ldefine_α_547_236
.Ldefine_α_547_237:     .quad            .Ldefine_α_547_237_s
.Ldefine_α_547_237_s:   .string          "DRF"
.Ldefine_α_547_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_547_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Ldefine_α_547_110
.Ldefine_α_547_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Ldefine_α_547_110:     push             rcx
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
                        cmp              rdx, 0;                              jbe   .Ldefine_α_547_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Ldefine_α_547_180
.Ldefine_α_547_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Ldefine_α_547_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_547_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_547_249
.Ldefine_α_547_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_547_237]
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
.Ldefine_α_547_249:     push             rcx
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_547_245:
                        .size            n150_define_bx, .-n150_define_bx
                        .type            n151_statement_end_bx, @function
n151_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   mov              r11, 65
                        mov              r10, 3;                              jmp   n152_statement_begin_α
                        .size            n151_statement_end_bx, .-n151_statement_end_bx
                        .type            n152_statement_begin_bx, @function
n152_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('ADD()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n152_statement_begin_α: mov              r11, 66
                        mov              r10, 4;                              jmp   n153_define_α
n152_statement_begin_β: mov              r11, 66;                             jmp   n155_statement_begin_α
                        .size            n152_statement_begin_bx, .-n152_statement_begin_bx
                        .type            n153_define_bx, @function
n153_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_define_α:          mov              r11, 67
                        mov              rdi, qword ptr [rip + .Ldefine_α_553_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_553_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_553_0]
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
                        mov              qword ptr [rcx + 0], rax;            jmp   n154_statement_end_α
n153_define_β:          mov              r11, 67;                             jmp   n152_statement_begin_β
.Ldefine_α_553_0:       .quad            .Ldefine_α_553_0_s
.Ldefine_α_553_0_s:     .string          "ADD"
.Ldefine_α_553_1:       .quad            .Ldefine_α_553_1_s
.Ldefine_α_553_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_554_245
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
                        cmp              rax, 0;                              jg    .Ldefine_α_554_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_554_230
.Ldefine_α_554_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_554_232]
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
.Ldefine_α_554_230:                                                           jmp   .Ldefine_α_554_231
.Ldefine_α_554_232:     .quad            .Ldefine_α_554_232_s
.Ldefine_α_554_232_s:   .string          "ADD"
.Ldefine_α_554_231:     lea              rcx, [rip + ADD_γ]
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
                        cmp              rax, 0;                              jne   .Ldefine_α_554_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_554_235
.Ldefine_α_554_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_554_237]
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
.Ldefine_α_554_235:                                                           jmp   .Ldefine_α_554_236
.Ldefine_α_554_237:     .quad            .Ldefine_α_554_237_s
.Ldefine_α_554_237_s:   .string          "ADD"
.Ldefine_α_554_236:     pop              rdx
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
                        cmp              rax, 0;                              jne   .Ldefine_α_554_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_554_249
.Ldefine_α_554_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_554_237]
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
.Ldefine_α_554_249:     push             rcx
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_554_245:
                        .size            n153_define_bx, .-n153_define_bx
                        .type            n154_statement_end_bx, @function
n154_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_end_α:   mov              r11, 68
                        mov              r10, 4;                              jmp   n155_statement_begin_α
                        .size            n154_statement_end_bx, .-n154_statement_end_bx
                        .type            n155_statement_begin_bx, @function
n155_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('SUB()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n155_statement_begin_α: mov              r11, 69
                        mov              r10, 5;                              jmp   n156_define_α
n155_statement_begin_β: mov              r11, 69;                             jmp   n158_statement_begin_α
                        .size            n155_statement_begin_bx, .-n155_statement_begin_bx
                        .type            n156_define_bx, @function
n156_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_define_α:          mov              r11, 70
                        mov              rdi, qword ptr [rip + .Ldefine_α_560_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_560_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_560_0]
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
                        mov              qword ptr [rcx + 0], rax;            jmp   n157_statement_end_α
n156_define_β:          mov              r11, 70;                             jmp   n155_statement_begin_β
.Ldefine_α_560_0:       .quad            .Ldefine_α_560_0_s
.Ldefine_α_560_0_s:     .string          "SUB"
.Ldefine_α_560_1:       .quad            .Ldefine_α_560_1_s
.Ldefine_α_560_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_561_245
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
                        cmp              rax, 0;                              jg    .Ldefine_α_561_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_561_230
.Ldefine_α_561_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_561_232]
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
.Ldefine_α_561_230:                                                           jmp   .Ldefine_α_561_231
.Ldefine_α_561_232:     .quad            .Ldefine_α_561_232_s
.Ldefine_α_561_232_s:   .string          "SUB"
.Ldefine_α_561_231:     lea              rcx, [rip + SUB_γ]
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
                        cmp              rax, 0;                              jne   .Ldefine_α_561_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_561_235
.Ldefine_α_561_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_561_237]
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
.Ldefine_α_561_235:                                                           jmp   .Ldefine_α_561_236
.Ldefine_α_561_237:     .quad            .Ldefine_α_561_237_s
.Ldefine_α_561_237_s:   .string          "SUB"
.Ldefine_α_561_236:     pop              rdx
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
                        cmp              rax, 0;                              jne   .Ldefine_α_561_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_561_249
.Ldefine_α_561_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_561_237]
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
.Ldefine_α_561_249:     push             rcx
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_561_245:
                        .size            n156_define_bx, .-n156_define_bx
                        .type            n157_statement_end_bx, @function
n157_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   mov              r11, 71
                        mov              r10, 5;                              jmp   n158_statement_begin_α
                        .size            n157_statement_end_bx, .-n157_statement_end_bx
                        .type            n158_statement_begin_bx, @function
n158_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('MUL()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n158_statement_begin_α: mov              r11, 72
                        mov              r10, 6;                              jmp   n159_define_α
n158_statement_begin_β: mov              r11, 72;                             jmp   n161_statement_begin_α
                        .size            n158_statement_begin_bx, .-n158_statement_begin_bx
                        .type            n159_define_bx, @function
n159_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_define_α:          mov              r11, 73
                        mov              rdi, qword ptr [rip + .Ldefine_α_567_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_567_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_567_0]
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
                        mov              qword ptr [rcx + 0], rax;            jmp   n160_statement_end_α
n159_define_β:          mov              r11, 73;                             jmp   n158_statement_begin_β
.Ldefine_α_567_0:       .quad            .Ldefine_α_567_0_s
.Ldefine_α_567_0_s:     .string          "MUL"
.Ldefine_α_567_1:       .quad            .Ldefine_α_567_1_s
.Ldefine_α_567_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_568_245
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
                        cmp              rax, 0;                              jg    .Ldefine_α_568_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_568_230
.Ldefine_α_568_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_568_232]
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
.Ldefine_α_568_230:                                                           jmp   .Ldefine_α_568_231
.Ldefine_α_568_232:     .quad            .Ldefine_α_568_232_s
.Ldefine_α_568_232_s:   .string          "MUL"
.Ldefine_α_568_231:     lea              rcx, [rip + MUL_γ]
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
                        cmp              rax, 0;                              jne   .Ldefine_α_568_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_568_235
.Ldefine_α_568_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_568_237]
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
.Ldefine_α_568_235:                                                           jmp   .Ldefine_α_568_236
.Ldefine_α_568_237:     .quad            .Ldefine_α_568_237_s
.Ldefine_α_568_237_s:   .string          "MUL"
.Ldefine_α_568_236:     pop              rdx
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
                        cmp              rax, 0;                              jne   .Ldefine_α_568_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_568_249
.Ldefine_α_568_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_568_237]
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
.Ldefine_α_568_249:     push             rcx
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_568_245:
                        .size            n159_define_bx, .-n159_define_bx
                        .type            n160_statement_end_bx, @function
n160_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_end_α:   mov              r11, 74
                        mov              r10, 6;                              jmp   n161_statement_begin_α
                        .size            n160_statement_end_bx, .-n160_statement_end_bx
                        .type            n161_statement_begin_bx, @function
n161_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('DIV()')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n161_statement_begin_α: mov              r11, 75
                        mov              r10, 7;                              jmp   n162_define_α
n161_statement_begin_β: mov              r11, 75;                             jmp   n164_statement_begin_α
                        .size            n161_statement_begin_bx, .-n161_statement_begin_bx
                        .type            n162_define_bx, @function
n162_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_define_α:          mov              r11, 76
                        mov              rdi, qword ptr [rip + .Ldefine_α_574_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_574_1]
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
                        mov              rdi, qword ptr [rip + .Ldefine_α_574_0]
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
                        mov              qword ptr [rcx + 0], rax;            jmp   n163_statement_end_α
n162_define_β:          mov              r11, 76;                             jmp   n161_statement_begin_β
.Ldefine_α_574_0:       .quad            .Ldefine_α_574_0_s
.Ldefine_α_574_0_s:     .string          "DIV"
.Ldefine_α_574_1:       .quad            .Ldefine_α_574_1_s
.Ldefine_α_574_1_s:     .string          ""
                                                                              jmp   .Ldefine_α_575_245
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
.Ldefine_α_575_232_s:   .string          "DIV"
.Ldefine_α_575_231:     lea              rcx, [rip + DIV_γ]
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
.Ldefine_α_575_237_s:   .string          "DIV"
.Ldefine_α_575_236:     pop              rdx
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_575_245:
                        .size            n162_define_bx, .-n162_define_bx
                        .type            n163_statement_end_bx, @function
n163_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_end_α:   mov              r11, 77
                        mov              r10, 7;                              jmp   n164_statement_begin_α
                        .size            n163_statement_end_bx, .-n163_statement_end_bx
                        .type            n164_statement_begin_bx, @function
n164_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('SGN()p1')                       :(FNS_end)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n164_statement_begin_α: mov              r11, 78
                        mov              r10, 8;                              jmp   n165_define_α
n164_statement_begin_β: mov              r11, 78;                             jmp   n343_statement_begin_α
                        .size            n164_statement_begin_bx, .-n164_statement_begin_bx
                        .type            n165_define_bx, @function
n165_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_define_α:          mov              r11, 79
                        mov              rdi, qword ptr [rip + .Ldefine_α_581_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_581_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + SGN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_581_0]
                        lea              rsi, [rip + SGN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__SGN]
                        mov              rcx, qword ptr [rip + body_cell$SGN@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n166_statement_end_α
n165_define_β:          mov              r11, 79;                             jmp   n164_statement_begin_β
.Ldefine_α_581_0:       .quad            .Ldefine_α_581_0_s
.Ldefine_α_581_0_s:     .string          "SGN"
.Ldefine_α_581_1:       .quad            .Ldefine_α_581_1_s
.Ldefine_α_581_1_s:     .string          "p1"
                                                                              jmp   .Ldefine_α_582_245
#-----------------------------------------------------------------------------------------------------------------------
SGN_α:                  sub              rsp, 64
                        mov              rax, qword ptr [r9 + 128]            # SGN
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_582_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 144]            # p1
                        mov              qword ptr [r9 + 144], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 152]
                        mov              qword ptr [r9 + 152], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_582_41
.Ldefine_α_582_10:      mov              rax, qword ptr [r9 + 144]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
.Ldefine_α_582_41:      push             rcx
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
                        cmp              rax, 0;                              jg    .Ldefine_α_582_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_582_230
.Ldefine_α_582_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_582_232]
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
.Ldefine_α_582_230:                                                           jmp   .Ldefine_α_582_231
.Ldefine_α_582_232:     .quad            .Ldefine_α_582_232_s
.Ldefine_α_582_232_s:   .string          "SGN"
.Ldefine_α_582_231:     lea              rcx, [rip + SGN_γ]
                        lea              rax, [rip + SGN_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$SGN:          .quad            LBL__SGN
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$SGN@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
SGN_γ:                  mov              rdi, qword ptr [r9 + 128]            # SGN
                        mov              rsi, qword ptr [r9 + 136]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_582_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_582_235
.Ldefine_α_582_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_582_237]
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
.Ldefine_α_582_235:                                                           jmp   .Ldefine_α_582_236
.Ldefine_α_582_237:     .quad            .Ldefine_α_582_237_s
.Ldefine_α_582_237_s:   .string          "SGN"
.Ldefine_α_582_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_582_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 152], rax;           jmp   .Ldefine_α_582_110
.Ldefine_α_582_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 152], rax
.Ldefine_α_582_110:     push             rcx
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
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
SGN_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax            # SGN
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_582_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 152], rax;           jmp   .Ldefine_α_582_180
.Ldefine_α_582_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 152], rax
.Ldefine_α_582_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_582_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_582_249
.Ldefine_α_582_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_582_237]
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
.Ldefine_α_582_249:     push             rcx
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_582_245:
                        .size            n165_define_bx, .-n165_define_bx
                        .type            n166_statement_end_bx, @function
n166_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_end_α:   mov              r11, 80
                        mov              r10, 8;                              jmp   n343_statement_begin_α
                        .size            n166_statement_end_bx, .-n166_statement_end_bx
                        .type            n167_statement_begin_bx, @function
n167_statement_begin_bx:
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
LBL__EMIT:              mov              r11, 81
                        mov              r10, 9;                              jmp   n168_var_α
n167_statement_begin_β: mov              r11, 81;                             jmp   n175_statement_begin_α
                        .size            n167_statement_begin_bx, .-n167_statement_begin_bx
                        .type            n168_var_bx, @function
n168_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             sub              rsp, 16
                        mov              r11, 82
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_lit_integer_α
                        .size            n168_var_bx, .-n168_var_bx
                        .type            n169_lit_integer_bx, @function
n169_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     sub              rsp, 16
                        mov              r11, 83
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_588_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n170_subscript_α
n169_lit_integer_β:     mov              r11, 83
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n167_statement_begin_β
.Llit_integer_α_588_0:  .quad            1
                        .size            n169_lit_integer_bx, .-n169_lit_integer_bx
                        .type            n170_subscript_bx, @function
n170_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_subscript_α:       sub              rsp, 16
                        mov              r11, 84
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
                        cmp              al, 104;                             jne   .Lsubscript_α_589_240
                        add              rsp, 16;                             jmp   n169_lit_integer_β
.Lsubscript_α_589_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n171_deref_α
n170_subscript_β:       mov              r11, 84
                        add              rsp, 16;                             jmp   n169_lit_integer_β
                        .size            n170_subscript_bx, .-n170_subscript_bx
                        .type            n171_deref_bx, @function
n171_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_deref_α:           sub              rsp, 16
                        mov              r11, 85
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
                        cmp              al, 104;                             jne   .Lderef_α_590_240
                        add              rsp, 16;                             jmp   n170_subscript_β
.Lderef_α_590_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n172_call_α
n171_deref_β:           mov              r11, 85
                        add              rsp, 16;                             jmp   n170_subscript_β
                        .size            n171_deref_bx, .-n171_deref_bx
                        .type            n172_call_bx, @function
n172_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_call_α:            sub              rsp, 16
                        mov              r11, 86
                        lea              rcx, [rip + .Lcall_α_sig592z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig592z:       .quad            1
                        .quad            .Lcall_α_592_2
                        .quad            .Lcall_α_592_2
                        .quad            16
.Lcall_α_592_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_592_29
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
.Lcall_α_592_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_592_240
                        add              rsp, 16;                             jmp   n171_deref_β
.Lcall_α_592_240:                                                             jmp   n173_assign_α
n172_call_β:            mov              r11, 86;                             jmp   n171_deref_β
.Lcall_β_592_0:         .quad            .Lcall_β_592_0_s
.Lcall_β_592_0_s:       .string          "DRF"
                        .size            n172_call_bx, .-n172_call_bx
                        .type            n173_assign_bx, @function
n173_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_assign_α:          mov              r11, 87
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
                        mov              rdi, qword ptr [rip + .Lassign_α_593_0]
                        .section         .rodata
.Lassign_α_593_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_593_1_s]
                        mov              r8, 36
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
                        mov              rdi, qword ptr [rip + .Lassign_α_593_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n174_statement_end_α
.Lassign_α_593_0:       .quad            .Lassign_α_593_0_s
.Lassign_α_593_0_s:     .string          "OUTPUT"
                        .size            n173_assign_bx, .-n173_assign_bx
                        .type            n174_statement_end_bx, @function
n174_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:   mov              r11, 88
                        mov              r10, 9
                        add              rsp, 80;                             jmp   n175_statement_begin_α
                        .size            n174_statement_end_bx, .-n174_statement_end_bx
                        .type            n175_statement_begin_bx, @function
n175_statement_begin_bx:
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n175_statement_begin_α: mov              r11, 89
                        mov              r10, 10;                             jmp   n176_lit_integer_α
n175_statement_begin_β: mov              r11, 89;                             jmp   n179_statement_begin_α
                        .size            n175_statement_begin_bx, .-n175_statement_begin_bx
                        .type            n176_lit_integer_bx, @function
n176_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_integer_α:     sub              rsp, 16
                        mov              r11, 90
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_598_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_assign_α
.Llit_integer_α_598_0:  .quad            0
                        .size            n176_lit_integer_bx, .-n176_lit_integer_bx
                        .type            n177_assign_bx, @function
n177_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_α:          mov              r11, 91
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_599_0]
                        .section         .rodata
.Lassign_α_599_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_599_1_s]
                        mov              r8, 37
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
                        pop              rax;                                 jmp   n178_statement_end_α
.Lassign_α_599_0:       .quad            .Lassign_α_599_0_s
.Lassign_α_599_0_s:     .string          "sp"
                        .size            n177_assign_bx, .-n177_assign_bx
                        .type            n178_statement_end_bx, @function
n178_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_end_α:   mov              r11, 92
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n179_statement_begin_α
                        .size            n178_statement_end_bx, .-n178_statement_end_bx
                        .type            n179_statement_begin_bx, @function
n179_statement_begin_bx:
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 38 0
n179_statement_begin_α: mov              r11, 93
                        mov              r10, 11;                             jmp   n180_lit_name_α
n179_statement_begin_β: mov              r11, 93;                             jmp   NRETURN
                        .size            n179_statement_begin_bx, .-n179_statement_begin_bx
                        .type            n180_lit_name_bx, @function
n180_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_name_α:        sub              rsp, 16
                        mov              r11, 94
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_604_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n181_assign_α
.Llit_name_α_604_0:     .quad            .Llit_name_α_604_0_s
.Llit_name_α_604_0_s:   .string          "dm"
                        .size            n180_lit_name_bx, .-n180_lit_name_bx
                        .type            n181_assign_bx, @function
n181_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_assign_α:          mov              r11, 95
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
                        mov              rdi, qword ptr [rip + .Lassign_α_605_0]
                        .section         .rodata
.Lassign_α_605_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_605_1_s]
                        mov              r8, 38
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
                        pop              rax;                                 jmp   n182_statement_end_α
.Lassign_α_605_0:       .quad            .Lassign_α_605_0_s
.Lassign_α_605_0_s:     .string          "EMIT"
                        .size            n181_assign_bx, .-n181_assign_bx
                        .type            n182_statement_end_bx, @function
n182_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_end_α:   mov              r11, 96
                        mov              r10, 11
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n182_statement_end_bx, .-n182_statement_end_bx
                        .type            n183_statement_begin_bx, @function
n183_statement_begin_bx:
#=======================================================================================================================
# PSH     PSH = .S[sp = sp + 1]                   :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
LBL__PSH:               mov              r11, 97
                        mov              r10, 12;                             jmp   n184_var_α
n183_statement_begin_β: mov              r11, 97;                             jmp   NRETURN
                        .size            n183_statement_begin_bx, .-n183_statement_begin_bx
                        .type            n184_var_bx, @function
n184_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              r11, 98
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_var_α
                        .size            n184_var_bx, .-n184_var_bx
                        .type            n185_var_bx, @function
n185_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             sub              rsp, 16
                        mov              r11, 99
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_lit_integer_α
n185_var_β:             mov              r11, 99
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n183_statement_begin_β
                        .size            n185_var_bx, .-n185_var_bx
                        .type            n186_lit_integer_bx, @function
n186_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:     sub              rsp, 16
                        mov              r11, 100
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_612_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n187_binop_α
n186_lit_integer_β:     mov              r11, 100
                        add              rsp, 16;                             jmp   n185_var_β
.Llit_integer_α_612_0:  .quad            1
                        .size            n186_lit_integer_bx, .-n186_lit_integer_bx
                        .type            n187_binop_bx, @function
n187_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_binop_α:           sub              rsp, 16
                        mov              r11, 101
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_613_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_613_7
.Lbinop_α_613_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_613_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_613_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_613_4
.Lbinop_α_613_3:        movq             xmm0, rsi
.Lbinop_α_613_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_613_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_613_7:                                                              jmp   n188_assign_α
.Lbinop_α_613_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_613_240
                        add              rsp, 16;                             jmp   n186_lit_integer_β
.Lbinop_α_613_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n188_assign_α
n187_binop_β:           mov              r11, 101
                        add              rsp, 16;                             jmp   n186_lit_integer_β
                        .size            n187_binop_bx, .-n187_binop_bx
                        .type            n188_assign_bx, @function
n188_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:          mov              r11, 102
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_614_0]
                        .section         .rodata
.Lassign_α_614_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_614_1_s]
                        mov              r8, 39
                        mov              r9, 12
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
                        pop              rax;                                 jmp   n189_subscript_α
.Lassign_α_614_0:       .quad            .Lassign_α_614_0_s
.Lassign_α_614_0_s:     .string          "sp"
                        .size            n188_assign_bx, .-n188_assign_bx
                        .type            n189_subscript_bx, @function
n189_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_subscript_α:       sub              rsp, 16
                        mov              r11, 103
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
                        cmp              al, 104;                             jne   .Lsubscript_α_615_240
                        add              rsp, 16;                             jmp   n187_binop_β
.Lsubscript_α_615_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_assign_α
                        .size            n189_subscript_bx, .-n189_subscript_bx
                        .type            n190_assign_bx, @function
n190_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:          mov              r11, 104
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
                        mov              rdi, qword ptr [rip + .Lassign_α_616_0]
                        .section         .rodata
.Lassign_α_616_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_616_1_s]
                        mov              r8, 39
                        mov              r9, 12
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
                        pop              rax;                                 jmp   n191_statement_end_α
.Lassign_α_616_0:       .quad            .Lassign_α_616_0_s
.Lassign_α_616_0_s:     .string          "PSH"
                        .size            n190_assign_bx, .-n190_assign_bx
                        .type            n191_statement_end_bx, @function
n191_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_end_α:   mov              r11, 105
                        mov              r10, 12
                        add              rsp, 80;                             jmp   NRETURN
                        .size            n191_statement_end_bx, .-n191_statement_end_bx
                        .type            n192_statement_begin_bx, @function
n192_statement_begin_bx:
#=======================================================================================================================
# DRF     DRF = nm
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
LBL__DRF:               mov              r11, 106
                        mov              r10, 13;                             jmp   n193_var_α
n192_statement_begin_β: mov              r11, 106;                            jmp   n196_statement_begin_α
                        .size            n192_statement_begin_bx, .-n192_statement_begin_bx
                        .type            n193_var_bx, @function
n193_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             sub              rsp, 16
                        mov              r11, 107
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n194_assign_α
                        .size            n193_var_bx, .-n193_var_bx
                        .type            n194_assign_bx, @function
n194_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_assign_α:          mov              r11, 108
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
                        mov              rdi, qword ptr [rip + .Lassign_α_622_0]
                        .section         .rodata
.Lassign_α_622_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_622_1_s]
                        mov              r8, 40
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
                        pop              rax;                                 jmp   n195_statement_end_α
.Lassign_α_622_0:       .quad            .Lassign_α_622_0_s
.Lassign_α_622_0_s:     .string          "DRF"
                        .size            n194_assign_bx, .-n194_assign_bx
                        .type            n195_statement_end_bx, @function
n195_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_end_α:   mov              r11, 109
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n196_statement_begin_α
                        .size            n195_statement_end_bx, .-n195_statement_end_bx
                        .type            n196_statement_begin_bx, @function
n196_statement_begin_bx:
#=======================================================================================================================
#         nm POS(0) ANY(&LCASE) RPOS(0)           :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n196_statement_begin_α: mov              r11, 110
                        mov              r10, 14;                             jmp   n197_var_α
n196_statement_begin_β: mov              r11, 110;                            jmp   RETURN
                        .size            n196_statement_begin_bx, .-n196_statement_begin_bx
                        .type            n197_var_bx, @function
n197_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:             sub              rsp, 16
                        mov              r11, 111
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n198_match_begin_α
                        .size            n197_var_bx, .-n197_var_bx
                        .type            n198_match_begin_bx, @function
n198_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_match_begin_α:     mov              r11, 112
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
.Lmatch_begin_α_629_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_629_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n199_match_pos_α
n198_match_begin_β:     mov              r11, 112
.Lmatch_begin_α_629_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_629_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_629_1
                                                                              jmp   .Lmatch_begin_α_629_0
.Lmatch_begin_β_629_1:
.Lmatch_begin_γ_198_af: mov              r11, 112
.Lmatch_begin_ω_198_af: mov              r11, 112
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
                        .size            n198_match_begin_bx, .-n198_match_begin_bx
                        .type            n199_match_pos_bx, @function
n199_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_match_pos_α:       mov              r11, 113
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n198_match_begin_β
                                                                              jmp   n200_match_any_α
n199_match_pos_β:       mov              r11, 113;                            jmp   n198_match_begin_β
                        .size            n199_match_pos_bx, .-n199_match_pos_bx
                        .type            n200_match_any_bx, @function
n200_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_match_any_α:       mov              r11, 114
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n198_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n198_match_begin_β
                        add              r14d, 1;                             jmp   n201_match_rpos_α
n200_match_any_β:       mov              r11, 114
                        sub              r14d, 1;                             jmp   n198_match_begin_β
                        .size            n200_match_any_bx, .-n200_match_any_bx
                        .type            n201_match_rpos_bx, @function
n201_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_match_rpos_α:      mov              r11, 115
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n200_match_any_β
                                                                              jmp   n202_match_end_α
                        .size            n201_match_rpos_bx, .-n201_match_rpos_bx
                        .type            n202_match_end_bx, @function
n202_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_match_end_α:       mov              r11, 116
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
                        test             rax, rax;                            je    .Lmatch_end_α_635_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_198_af
.Lmatch_end_α_635_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n203_statement_end_α
                        .size            n202_match_end_bx, .-n202_match_end_bx
                        .type            n203_statement_end_bx, @function
n203_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_end_α:   mov              r11, 117
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n204_statement_begin_α
                        .size            n203_statement_end_bx, .-n203_statement_end_bx
                        .type            n204_statement_begin_bx, @function
n204_statement_begin_bx:
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 42 0
n204_statement_begin_α: mov              r11, 118
                        mov              r10, 15;                             jmp   n205_var_α
n204_statement_begin_β: mov              r11, 118;                            jmp   RETURN
                        .size            n204_statement_begin_bx, .-n204_statement_begin_bx
                        .type            n205_var_bx, @function
n205_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_var_α:             sub              rsp, 16
                        mov              r11, 119
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n206_var_α
                        .size            n205_var_bx, .-n205_var_bx
                        .type            n206_var_bx, @function
n206_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:             sub              rsp, 16
                        mov              r11, 120
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_subscript_α
n206_var_β:             mov              r11, 120
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n204_statement_begin_β
                        .size            n206_var_bx, .-n206_var_bx
                        .type            n207_subscript_bx, @function
n207_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_subscript_α:       sub              rsp, 16
                        mov              r11, 121
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
                        cmp              al, 104;                             jne   .Lsubscript_α_642_240
                        add              rsp, 16;                             jmp   n206_var_β
.Lsubscript_α_642_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_deref_α
n207_subscript_β:       mov              r11, 121
                        add              rsp, 16;                             jmp   n206_var_β
                        .size            n207_subscript_bx, .-n207_subscript_bx
                        .type            n208_deref_bx, @function
n208_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_deref_α:           sub              rsp, 16
                        mov              r11, 122
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
                        cmp              al, 104;                             jne   .Lderef_α_643_240
                        add              rsp, 16;                             jmp   n207_subscript_β
.Lderef_α_643_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_assign_α
                        .size            n208_deref_bx, .-n208_deref_bx
                        .type            n209_assign_bx, @function
n209_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_assign_α:          mov              r11, 123
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
                        mov              rdi, qword ptr [rip + .Lassign_α_644_0]
                        .section         .rodata
.Lassign_α_644_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_644_1_s]
                        mov              r8, 42
                        mov              r9, 15
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
                        pop              rax;                                 jmp   n210_statement_end_α
.Lassign_α_644_0:       .quad            .Lassign_α_644_0_s
.Lassign_α_644_0_s:     .string          "DRF"
                        .size            n209_assign_bx, .-n209_assign_bx
                        .type            n210_statement_end_bx, @function
n210_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_statement_end_α:   mov              r11, 124
                        mov              r10, 15
                        add              rsp, 64;                             jmp   RETURN
                        .size            n210_statement_end_bx, .-n210_statement_end_bx
                        .type            n211_statement_begin_bx, @function
n211_statement_begin_bx:
#=======================================================================================================================
# ADD     S[sp = sp - 1] = DRF(S[sp]) + DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 43 0
LBL__ADD:               mov              r11, 125
                        mov              r10, 16;                             jmp   n212_var_α
n211_statement_begin_β: mov              r11, 125;                            jmp   n232_statement_begin_α
                        .size            n211_statement_begin_bx, .-n211_statement_begin_bx
                        .type            n212_var_bx, @function
n212_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_var_α:             sub              rsp, 16
                        mov              r11, 126
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n213_var_α
                        .size            n212_var_bx, .-n212_var_bx
                        .type            n213_var_bx, @function
n213_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:             sub              rsp, 16
                        mov              r11, 127
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_lit_integer_α
n213_var_β:             mov              r11, 127
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n211_statement_begin_β
                        .size            n213_var_bx, .-n213_var_bx
                        .type            n214_lit_integer_bx, @function
n214_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_integer_α:     sub              rsp, 16
                        mov              r11, 128
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_651_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n215_binop_α
n214_lit_integer_β:     mov              r11, 128
                        add              rsp, 16;                             jmp   n213_var_β
.Llit_integer_α_651_0:  .quad            1
                        .size            n214_lit_integer_bx, .-n214_lit_integer_bx
                        .type            n215_binop_bx, @function
n215_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_binop_α:           sub              rsp, 16
                        mov              r11, 129
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
.Lbinop_α_652_7:                                                              jmp   n216_assign_α
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
                        add              rsp, 16;                             jmp   n214_lit_integer_β
.Lbinop_α_652_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_assign_α
n215_binop_β:           mov              r11, 129
                        add              rsp, 16;                             jmp   n214_lit_integer_β
                        .size            n215_binop_bx, .-n215_binop_bx
                        .type            n216_assign_bx, @function
n216_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_assign_α:          mov              r11, 130
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx
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
.Lassign_α_653_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_653_1_s]
                        mov              r8, 43
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
                        pop              rax;                                 jmp   n217_var_α
.Lassign_α_653_0:       .quad            .Lassign_α_653_0_s
.Lassign_α_653_0_s:     .string          "sp"
                        .size            n216_assign_bx, .-n216_assign_bx
                        .type            n217_var_bx, @function
n217_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_var_α:             sub              rsp, 16
                        mov              r11, 131
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n218_var_α
n217_var_β:             mov              r11, 131
                        add              rsp, 16;                             jmp   n215_binop_β
                        .size            n217_var_bx, .-n217_var_bx
                        .type            n218_var_bx, @function
n218_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:             sub              rsp, 16
                        mov              r11, 132
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_subscript_α
n218_var_β:             mov              r11, 132
                        add              rsp, 16;                             jmp   n217_var_β
                        .size            n218_var_bx, .-n218_var_bx
                        .type            n219_subscript_bx, @function
n219_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_subscript_α:       sub              rsp, 16
                        mov              r11, 133
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
                        add              rsp, 16;                             jmp   n218_var_β
.Lsubscript_α_656_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_deref_α
n219_subscript_β:       mov              r11, 133
                        add              rsp, 16;                             jmp   n218_var_β
                        .size            n219_subscript_bx, .-n219_subscript_bx
                        .type            n220_deref_bx, @function
n220_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_deref_α:           sub              rsp, 16
                        mov              r11, 134
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
                        add              rsp, 16;                             jmp   n219_subscript_β
.Lderef_α_657_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_call_α
n220_deref_β:           mov              r11, 134
                        add              rsp, 16;                             jmp   n219_subscript_β
                        .size            n220_deref_bx, .-n220_deref_bx
                        .type            n221_call_bx, @function
n221_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_call_α:            sub              rsp, 16
                        mov              r11, 135
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
                        add              rsp, 16;                             jmp   n220_deref_β
.Lcall_α_659_240:                                                             jmp   n222_var_α
n221_call_β:            mov              r11, 135;                            jmp   n220_deref_β
.Lcall_β_659_0:         .quad            .Lcall_β_659_0_s
.Lcall_β_659_0_s:       .string          "DRF"
                        .size            n221_call_bx, .-n221_call_bx
                        .type            n222_var_bx, @function
n222_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_var_α:             sub              rsp, 16
                        mov              r11, 136
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_var_α
n222_var_β:             mov              r11, 136
                        add              rsp, 32;                             jmp   n220_deref_β
                        .size            n222_var_bx, .-n222_var_bx
                        .type            n223_var_bx, @function
n223_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:             sub              rsp, 16
                        mov              r11, 137
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_lit_integer_α
n223_var_β:             mov              r11, 137
                        add              rsp, 16;                             jmp   n222_var_β
                        .size            n223_var_bx, .-n223_var_bx
                        .type            n224_lit_integer_bx, @function
n224_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_integer_α:     sub              rsp, 16
                        mov              r11, 138
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_662_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n225_binop_α
n224_lit_integer_β:     mov              r11, 138
                        add              rsp, 16;                             jmp   n223_var_β
.Llit_integer_α_662_0:  .quad            1
                        .size            n224_lit_integer_bx, .-n224_lit_integer_bx
                        .type            n225_binop_bx, @function
n225_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_binop_α:           sub              rsp, 16
                        mov              r11, 139
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
.Lbinop_α_663_7:                                                              jmp   n226_subscript_α
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
                        add              rsp, 16;                             jmp   n224_lit_integer_β
.Lbinop_α_663_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_subscript_α
n225_binop_β:           mov              r11, 139
                        add              rsp, 16;                             jmp   n224_lit_integer_β
                        .size            n225_binop_bx, .-n225_binop_bx
                        .type            n226_subscript_bx, @function
n226_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_subscript_α:       sub              rsp, 16
                        mov              r11, 140
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
                        add              rsp, 16;                             jmp   n225_binop_β
.Lsubscript_α_664_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_deref_α
n226_subscript_β:       mov              r11, 140
                        add              rsp, 16;                             jmp   n225_binop_β
                        .size            n226_subscript_bx, .-n226_subscript_bx
                        .type            n227_deref_bx, @function
n227_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_deref_α:           sub              rsp, 16
                        mov              r11, 141
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
                        add              rsp, 16;                             jmp   n226_subscript_β
.Lderef_α_665_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_call_α
n227_deref_β:           mov              r11, 141
                        add              rsp, 16;                             jmp   n226_subscript_β
                        .size            n227_deref_bx, .-n227_deref_bx
                        .type            n228_call_bx, @function
n228_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_call_α:            sub              rsp, 16
                        mov              r11, 142
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
                        add              rsp, 16;                             jmp   n227_deref_β
.Lcall_α_667_240:                                                             jmp   n229_binop_α
n228_call_β:            mov              r11, 142;                            jmp   n227_deref_β
.Lcall_β_667_0:         .quad            .Lcall_β_667_0_s
.Lcall_β_667_0_s:       .string          "DRF"
                        .size            n228_call_bx, .-n228_call_bx
                        .type            n229_binop_bx, @function
n229_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_binop_α:           sub              rsp, 16
                        mov              r11, 143
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_668_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
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
.Lbinop_α_668_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_668_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_668_7:                                                              jmp   n230_assign_var_α
.Lbinop_α_668_0:        mov              rdi, qword ptr [rsp + 128]           # call
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
                        cmp              al, 104;                             jne   .Lbinop_α_668_240
                        add              rsp, 32;                             jmp   n227_deref_β
.Lbinop_α_668_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n230_assign_var_α
n229_binop_β:           mov              r11, 143
                        add              rsp, 32;                             jmp   n227_deref_β
                        .size            n229_binop_bx, .-n229_binop_bx
                        .type            n230_assign_var_bx, @function
n230_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_assign_var_α:      sub              rsp, 16
                        mov              r11, 144
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
                        add              rsp, 16;                             jmp   n229_binop_β
.Lassign_var_α_670_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n231_statement_end_α
.Lassign_var_α_670_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_670_239
                        add              rsp, 16;                             jmp   n229_binop_β
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
                        add              rsp, 16;                             jmp   n229_binop_β
.Lassign_var_α_670_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n231_statement_end_α
                        .size            n230_assign_var_bx, .-n230_assign_var_bx
                        .type            n231_statement_end_bx, @function
n231_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_statement_end_α:   mov              r11, 145
                        mov              r10, 16
                        add              rsp, 288;                            jmp   n232_statement_begin_α
                        .size            n231_statement_end_bx, .-n231_statement_end_bx
                        .type            n232_statement_begin_bx, @function
n232_statement_begin_bx:
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 44 0
n232_statement_begin_α: mov              r11, 146
                        mov              r10, 17;                             jmp   n233_lit_name_α
n232_statement_begin_β: mov              r11, 146;                            jmp   NRETURN
                        .size            n232_statement_begin_bx, .-n232_statement_begin_bx
                        .type            n233_lit_name_bx, @function
n233_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_name_α:        sub              rsp, 16
                        mov              r11, 147
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_675_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n234_assign_α
.Llit_name_α_675_0:     .quad            .Llit_name_α_675_0_s
.Llit_name_α_675_0_s:   .string          "dm"
                        .size            n233_lit_name_bx, .-n233_lit_name_bx
                        .type            n234_assign_bx, @function
n234_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_assign_α:          mov              r11, 148
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
                        mov              rdi, qword ptr [rip + .Lassign_α_676_0]
                        .section         .rodata
.Lassign_α_676_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_676_1_s]
                        mov              r8, 44
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
                        pop              rax;                                 jmp   n235_statement_end_α
.Lassign_α_676_0:       .quad            .Lassign_α_676_0_s
.Lassign_α_676_0_s:     .string          "ADD"
                        .size            n234_assign_bx, .-n234_assign_bx
                        .type            n235_statement_end_bx, @function
n235_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_end_α:   mov              r11, 149
                        mov              r10, 17
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n235_statement_end_bx, .-n235_statement_end_bx
                        .type            n236_statement_begin_bx, @function
n236_statement_begin_bx:
#=======================================================================================================================
# SUB     S[sp = sp - 1] = DRF(S[sp]) - DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 45 0
LBL__SUB:               mov              r11, 150
                        mov              r10, 18;                             jmp   n237_var_α
n236_statement_begin_β: mov              r11, 150;                            jmp   n257_statement_begin_α
                        .size            n236_statement_begin_bx, .-n236_statement_begin_bx
                        .type            n237_var_bx, @function
n237_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:             sub              rsp, 16
                        mov              r11, 151
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n238_var_α
                        .size            n237_var_bx, .-n237_var_bx
                        .type            n238_var_bx, @function
n238_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             sub              rsp, 16
                        mov              r11, 152
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_lit_integer_α
n238_var_β:             mov              r11, 152
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n236_statement_begin_β
                        .size            n238_var_bx, .-n238_var_bx
                        .type            n239_lit_integer_bx, @function
n239_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_integer_α:     sub              rsp, 16
                        mov              r11, 153
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_683_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n240_binop_α
n239_lit_integer_β:     mov              r11, 153
                        add              rsp, 16;                             jmp   n238_var_β
.Llit_integer_α_683_0:  .quad            1
                        .size            n239_lit_integer_bx, .-n239_lit_integer_bx
                        .type            n240_binop_bx, @function
n240_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_binop_α:           sub              rsp, 16
                        mov              r11, 154
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
.Lbinop_α_684_7:                                                              jmp   n241_assign_α
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
                        add              rsp, 16;                             jmp   n239_lit_integer_β
.Lbinop_α_684_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_assign_α
n240_binop_β:           mov              r11, 154
                        add              rsp, 16;                             jmp   n239_lit_integer_β
                        .size            n240_binop_bx, .-n240_binop_bx
                        .type            n241_assign_bx, @function
n241_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_α:          mov              r11, 155
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx
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
.Lassign_α_685_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_685_1_s]
                        mov              r8, 45
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
                        pop              rax;                                 jmp   n242_var_α
.Lassign_α_685_0:       .quad            .Lassign_α_685_0_s
.Lassign_α_685_0_s:     .string          "sp"
                        .size            n241_assign_bx, .-n241_assign_bx
                        .type            n242_var_bx, @function
n242_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             sub              rsp, 16
                        mov              r11, 156
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_var_α
n242_var_β:             mov              r11, 156
                        add              rsp, 16;                             jmp   n240_binop_β
                        .size            n242_var_bx, .-n242_var_bx
                        .type            n243_var_bx, @function
n243_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:             sub              rsp, 16
                        mov              r11, 157
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_subscript_α
n243_var_β:             mov              r11, 157
                        add              rsp, 16;                             jmp   n242_var_β
                        .size            n243_var_bx, .-n243_var_bx
                        .type            n244_subscript_bx, @function
n244_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_subscript_α:       sub              rsp, 16
                        mov              r11, 158
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
                        add              rsp, 16;                             jmp   n243_var_β
.Lsubscript_α_688_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n245_deref_α
n244_subscript_β:       mov              r11, 158
                        add              rsp, 16;                             jmp   n243_var_β
                        .size            n244_subscript_bx, .-n244_subscript_bx
                        .type            n245_deref_bx, @function
n245_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_deref_α:           sub              rsp, 16
                        mov              r11, 159
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
                        add              rsp, 16;                             jmp   n244_subscript_β
.Lderef_α_689_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n246_call_α
n245_deref_β:           mov              r11, 159
                        add              rsp, 16;                             jmp   n244_subscript_β
                        .size            n245_deref_bx, .-n245_deref_bx
                        .type            n246_call_bx, @function
n246_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_call_α:            sub              rsp, 16
                        mov              r11, 160
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
                        add              rsp, 16;                             jmp   n245_deref_β
.Lcall_α_691_240:                                                             jmp   n247_var_α
n246_call_β:            mov              r11, 160;                            jmp   n245_deref_β
.Lcall_β_691_0:         .quad            .Lcall_β_691_0_s
.Lcall_β_691_0_s:       .string          "DRF"
                        .size            n246_call_bx, .-n246_call_bx
                        .type            n247_var_bx, @function
n247_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:             sub              rsp, 16
                        mov              r11, 161
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n248_var_α
n247_var_β:             mov              r11, 161
                        add              rsp, 32;                             jmp   n245_deref_β
                        .size            n247_var_bx, .-n247_var_bx
                        .type            n248_var_bx, @function
n248_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:             sub              rsp, 16
                        mov              r11, 162
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n249_lit_integer_α
n248_var_β:             mov              r11, 162
                        add              rsp, 16;                             jmp   n247_var_β
                        .size            n248_var_bx, .-n248_var_bx
                        .type            n249_lit_integer_bx, @function
n249_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_integer_α:     sub              rsp, 16
                        mov              r11, 163
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_694_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n250_binop_α
n249_lit_integer_β:     mov              r11, 163
                        add              rsp, 16;                             jmp   n248_var_β
.Llit_integer_α_694_0:  .quad            1
                        .size            n249_lit_integer_bx, .-n249_lit_integer_bx
                        .type            n250_binop_bx, @function
n250_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_binop_α:           sub              rsp, 16
                        mov              r11, 164
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
.Lbinop_α_695_7:                                                              jmp   n251_subscript_α
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
                        add              rsp, 16;                             jmp   n249_lit_integer_β
.Lbinop_α_695_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_subscript_α
n250_binop_β:           mov              r11, 164
                        add              rsp, 16;                             jmp   n249_lit_integer_β
                        .size            n250_binop_bx, .-n250_binop_bx
                        .type            n251_subscript_bx, @function
n251_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_subscript_α:       sub              rsp, 16
                        mov              r11, 165
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
                        add              rsp, 16;                             jmp   n250_binop_β
.Lsubscript_α_696_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_deref_α
n251_subscript_β:       mov              r11, 165
                        add              rsp, 16;                             jmp   n250_binop_β
                        .size            n251_subscript_bx, .-n251_subscript_bx
                        .type            n252_deref_bx, @function
n252_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_deref_α:           sub              rsp, 16
                        mov              r11, 166
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
                        add              rsp, 16;                             jmp   n251_subscript_β
.Lderef_α_697_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n253_call_α
n252_deref_β:           mov              r11, 166
                        add              rsp, 16;                             jmp   n251_subscript_β
                        .size            n252_deref_bx, .-n252_deref_bx
                        .type            n253_call_bx, @function
n253_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_call_α:            sub              rsp, 16
                        mov              r11, 167
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
                        add              rsp, 16;                             jmp   n252_deref_β
.Lcall_α_699_240:                                                             jmp   n254_binop_α
n253_call_β:            mov              r11, 167;                            jmp   n252_deref_β
.Lcall_β_699_0:         .quad            .Lcall_β_699_0_s
.Lcall_β_699_0_s:       .string          "DRF"
                        .size            n253_call_bx, .-n253_call_bx
                        .type            n254_binop_bx, @function
n254_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_binop_α:           sub              rsp, 16
                        mov              r11, 168
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_700_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
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
.Lbinop_α_700_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_700_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_700_7:                                                              jmp   n255_assign_var_α
.Lbinop_α_700_0:        mov              rdi, qword ptr [rsp + 128]           # call
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
                        cmp              al, 104;                             jne   .Lbinop_α_700_240
                        add              rsp, 32;                             jmp   n252_deref_β
.Lbinop_α_700_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_assign_var_α
n254_binop_β:           mov              r11, 168
                        add              rsp, 32;                             jmp   n252_deref_β
                        .size            n254_binop_bx, .-n254_binop_bx
                        .type            n255_assign_var_bx, @function
n255_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_var_α:      sub              rsp, 16
                        mov              r11, 169
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
                        add              rsp, 16;                             jmp   n254_binop_β
.Lassign_var_α_702_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_statement_end_α
.Lassign_var_α_702_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_702_239
                        add              rsp, 16;                             jmp   n254_binop_β
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
                        add              rsp, 16;                             jmp   n254_binop_β
.Lassign_var_α_702_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_statement_end_α
                        .size            n255_assign_var_bx, .-n255_assign_var_bx
                        .type            n256_statement_end_bx, @function
n256_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_end_α:   mov              r11, 170
                        mov              r10, 18
                        add              rsp, 288;                            jmp   n257_statement_begin_α
                        .size            n256_statement_end_bx, .-n256_statement_end_bx
                        .type            n257_statement_begin_bx, @function
n257_statement_begin_bx:
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 46 0
n257_statement_begin_α: mov              r11, 171
                        mov              r10, 19;                             jmp   n258_lit_name_α
n257_statement_begin_β: mov              r11, 171;                            jmp   NRETURN
                        .size            n257_statement_begin_bx, .-n257_statement_begin_bx
                        .type            n258_lit_name_bx, @function
n258_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_name_α:        sub              rsp, 16
                        mov              r11, 172
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_707_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n259_assign_α
.Llit_name_α_707_0:     .quad            .Llit_name_α_707_0_s
.Llit_name_α_707_0_s:   .string          "dm"
                        .size            n258_lit_name_bx, .-n258_lit_name_bx
                        .type            n259_assign_bx, @function
n259_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_assign_α:          mov              r11, 173
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
                        mov              rdi, qword ptr [rip + .Lassign_α_708_0]
                        .section         .rodata
.Lassign_α_708_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_708_1_s]
                        mov              r8, 46
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
                        pop              rax;                                 jmp   n260_statement_end_α
.Lassign_α_708_0:       .quad            .Lassign_α_708_0_s
.Lassign_α_708_0_s:     .string          "SUB"
                        .size            n259_assign_bx, .-n259_assign_bx
                        .type            n260_statement_end_bx, @function
n260_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_statement_end_α:   mov              r11, 174
                        mov              r10, 19
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n260_statement_end_bx, .-n260_statement_end_bx
                        .type            n261_statement_begin_bx, @function
n261_statement_begin_bx:
#=======================================================================================================================
# MUL     S[sp = sp - 1] = DRF(S[sp]) * DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 47 0
LBL__MUL:               mov              r11, 175
                        mov              r10, 20;                             jmp   n262_var_α
n261_statement_begin_β: mov              r11, 175;                            jmp   n282_statement_begin_α
                        .size            n261_statement_begin_bx, .-n261_statement_begin_bx
                        .type            n262_var_bx, @function
n262_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_var_α:             sub              rsp, 16
                        mov              r11, 176
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n263_var_α
                        .size            n262_var_bx, .-n262_var_bx
                        .type            n263_var_bx, @function
n263_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:             sub              rsp, 16
                        mov              r11, 177
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n264_lit_integer_α
n263_var_β:             mov              r11, 177
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n261_statement_begin_β
                        .size            n263_var_bx, .-n263_var_bx
                        .type            n264_lit_integer_bx, @function
n264_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_integer_α:     sub              rsp, 16
                        mov              r11, 178
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_715_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n265_binop_α
n264_lit_integer_β:     mov              r11, 178
                        add              rsp, 16;                             jmp   n263_var_β
.Llit_integer_α_715_0:  .quad            1
                        .size            n264_lit_integer_bx, .-n264_lit_integer_bx
                        .type            n265_binop_bx, @function
n265_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_binop_α:           sub              rsp, 16
                        mov              r11, 179
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
.Lbinop_α_716_7:                                                              jmp   n266_assign_α
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
                        add              rsp, 16;                             jmp   n264_lit_integer_β
.Lbinop_α_716_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_assign_α
n265_binop_β:           mov              r11, 179
                        add              rsp, 16;                             jmp   n264_lit_integer_β
                        .size            n265_binop_bx, .-n265_binop_bx
                        .type            n266_assign_bx, @function
n266_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_assign_α:          mov              r11, 180
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx
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
.Lassign_α_717_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_717_1_s]
                        mov              r8, 47
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
                        pop              rax;                                 jmp   n267_var_α
.Lassign_α_717_0:       .quad            .Lassign_α_717_0_s
.Lassign_α_717_0_s:     .string          "sp"
                        .size            n266_assign_bx, .-n266_assign_bx
                        .type            n267_var_bx, @function
n267_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:             sub              rsp, 16
                        mov              r11, 181
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n268_var_α
n267_var_β:             mov              r11, 181
                        add              rsp, 16;                             jmp   n265_binop_β
                        .size            n267_var_bx, .-n267_var_bx
                        .type            n268_var_bx, @function
n268_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:             sub              rsp, 16
                        mov              r11, 182
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_subscript_α
n268_var_β:             mov              r11, 182
                        add              rsp, 16;                             jmp   n267_var_β
                        .size            n268_var_bx, .-n268_var_bx
                        .type            n269_subscript_bx, @function
n269_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_subscript_α:       sub              rsp, 16
                        mov              r11, 183
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
                        add              rsp, 16;                             jmp   n268_var_β
.Lsubscript_α_720_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n270_deref_α
n269_subscript_β:       mov              r11, 183
                        add              rsp, 16;                             jmp   n268_var_β
                        .size            n269_subscript_bx, .-n269_subscript_bx
                        .type            n270_deref_bx, @function
n270_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_deref_α:           sub              rsp, 16
                        mov              r11, 184
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
                        add              rsp, 16;                             jmp   n269_subscript_β
.Lderef_α_721_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n271_call_α
n270_deref_β:           mov              r11, 184
                        add              rsp, 16;                             jmp   n269_subscript_β
                        .size            n270_deref_bx, .-n270_deref_bx
                        .type            n271_call_bx, @function
n271_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_call_α:            sub              rsp, 16
                        mov              r11, 185
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
                        add              rsp, 16;                             jmp   n270_deref_β
.Lcall_α_723_240:                                                             jmp   n272_var_α
n271_call_β:            mov              r11, 185;                            jmp   n270_deref_β
.Lcall_β_723_0:         .quad            .Lcall_β_723_0_s
.Lcall_β_723_0_s:       .string          "DRF"
                        .size            n271_call_bx, .-n271_call_bx
                        .type            n272_var_bx, @function
n272_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:             sub              rsp, 16
                        mov              r11, 186
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_var_α
n272_var_β:             mov              r11, 186
                        add              rsp, 32;                             jmp   n270_deref_β
                        .size            n272_var_bx, .-n272_var_bx
                        .type            n273_var_bx, @function
n273_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:             sub              rsp, 16
                        mov              r11, 187
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n274_lit_integer_α
n273_var_β:             mov              r11, 187
                        add              rsp, 16;                             jmp   n272_var_β
                        .size            n273_var_bx, .-n273_var_bx
                        .type            n274_lit_integer_bx, @function
n274_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_integer_α:     sub              rsp, 16
                        mov              r11, 188
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_726_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n275_binop_α
n274_lit_integer_β:     mov              r11, 188
                        add              rsp, 16;                             jmp   n273_var_β
.Llit_integer_α_726_0:  .quad            1
                        .size            n274_lit_integer_bx, .-n274_lit_integer_bx
                        .type            n275_binop_bx, @function
n275_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_binop_α:           sub              rsp, 16
                        mov              r11, 189
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
.Lbinop_α_727_7:                                                              jmp   n276_subscript_α
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
                        add              rsp, 16;                             jmp   n274_lit_integer_β
.Lbinop_α_727_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_subscript_α
n275_binop_β:           mov              r11, 189
                        add              rsp, 16;                             jmp   n274_lit_integer_β
                        .size            n275_binop_bx, .-n275_binop_bx
                        .type            n276_subscript_bx, @function
n276_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_subscript_α:       sub              rsp, 16
                        mov              r11, 190
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
                        add              rsp, 16;                             jmp   n275_binop_β
.Lsubscript_α_728_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_deref_α
n276_subscript_β:       mov              r11, 190
                        add              rsp, 16;                             jmp   n275_binop_β
                        .size            n276_subscript_bx, .-n276_subscript_bx
                        .type            n277_deref_bx, @function
n277_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_deref_α:           sub              rsp, 16
                        mov              r11, 191
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
                        add              rsp, 16;                             jmp   n276_subscript_β
.Lderef_α_729_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n278_call_α
n277_deref_β:           mov              r11, 191
                        add              rsp, 16;                             jmp   n276_subscript_β
                        .size            n277_deref_bx, .-n277_deref_bx
                        .type            n278_call_bx, @function
n278_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_call_α:            sub              rsp, 16
                        mov              r11, 192
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
                        add              rsp, 16;                             jmp   n277_deref_β
.Lcall_α_731_240:                                                             jmp   n279_binop_α
n278_call_β:            mov              r11, 192;                            jmp   n277_deref_β
.Lcall_β_731_0:         .quad            .Lcall_β_731_0_s
.Lcall_β_731_0_s:       .string          "DRF"
                        .size            n278_call_bx, .-n278_call_bx
                        .type            n279_binop_bx, @function
n279_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_binop_α:           sub              rsp, 16
                        mov              r11, 193
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_732_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_732_7
.Lbinop_α_732_2:        and              edx, 1;                              jz    .Lbinop_α_732_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_732_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_732_4
.Lbinop_α_732_3:        movq             xmm0, rsi
.Lbinop_α_732_4:        cmp              cl, 5;                               je    .Lbinop_α_732_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_732_6
.Lbinop_α_732_5:        movq             xmm1, rdi
.Lbinop_α_732_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_732_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_732_7:                                                              jmp   n280_assign_var_α
.Lbinop_α_732_0:        mov              rdi, qword ptr [rsp + 128]           # call
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
                        cmp              al, 104;                             jne   .Lbinop_α_732_240
                        add              rsp, 32;                             jmp   n277_deref_β
.Lbinop_α_732_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n280_assign_var_α
n279_binop_β:           mov              r11, 193
                        add              rsp, 32;                             jmp   n277_deref_β
                        .size            n279_binop_bx, .-n279_binop_bx
                        .type            n280_assign_var_bx, @function
n280_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_assign_var_α:      sub              rsp, 16
                        mov              r11, 194
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
                        add              rsp, 16;                             jmp   n279_binop_β
.Lassign_var_α_734_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n281_statement_end_α
.Lassign_var_α_734_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_734_239
                        add              rsp, 16;                             jmp   n279_binop_β
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
                        add              rsp, 16;                             jmp   n279_binop_β
.Lassign_var_α_734_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n281_statement_end_α
                        .size            n280_assign_var_bx, .-n280_assign_var_bx
                        .type            n281_statement_end_bx, @function
n281_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_end_α:   mov              r11, 195
                        mov              r10, 20
                        add              rsp, 288;                            jmp   n282_statement_begin_α
                        .size            n281_statement_end_bx, .-n281_statement_end_bx
                        .type            n282_statement_begin_bx, @function
n282_statement_begin_bx:
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 48 0
n282_statement_begin_α: mov              r11, 196
                        mov              r10, 21;                             jmp   n283_lit_name_α
n282_statement_begin_β: mov              r11, 196;                            jmp   NRETURN
                        .size            n282_statement_begin_bx, .-n282_statement_begin_bx
                        .type            n283_lit_name_bx, @function
n283_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_name_α:        sub              rsp, 16
                        mov              r11, 197
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_739_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n284_assign_α
.Llit_name_α_739_0:     .quad            .Llit_name_α_739_0_s
.Llit_name_α_739_0_s:   .string          "dm"
                        .size            n283_lit_name_bx, .-n283_lit_name_bx
                        .type            n284_assign_bx, @function
n284_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_assign_α:          mov              r11, 198
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
                        mov              rdi, qword ptr [rip + .Lassign_α_740_0]
                        .section         .rodata
.Lassign_α_740_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_740_1_s]
                        mov              r8, 48
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
                        pop              rax;                                 jmp   n285_statement_end_α
.Lassign_α_740_0:       .quad            .Lassign_α_740_0_s
.Lassign_α_740_0_s:     .string          "MUL"
                        .size            n284_assign_bx, .-n284_assign_bx
                        .type            n285_statement_end_bx, @function
n285_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_statement_end_α:   mov              r11, 199
                        mov              r10, 21
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n285_statement_end_bx, .-n285_statement_end_bx
                        .type            n286_statement_begin_bx, @function
n286_statement_begin_bx:
#=======================================================================================================================
# DIV     S[sp = sp - 1] = DRF(S[sp]) / DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
LBL__DIV:               mov              r11, 200
                        mov              r10, 22;                             jmp   n287_var_α
n286_statement_begin_β: mov              r11, 200;                            jmp   n307_statement_begin_α
                        .size            n286_statement_begin_bx, .-n286_statement_begin_bx
                        .type            n287_var_bx, @function
n287_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:             sub              rsp, 16
                        mov              r11, 201
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n288_var_α
                        .size            n287_var_bx, .-n287_var_bx
                        .type            n288_var_bx, @function
n288_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             sub              rsp, 16
                        mov              r11, 202
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_lit_integer_α
n288_var_β:             mov              r11, 202
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n286_statement_begin_β
                        .size            n288_var_bx, .-n288_var_bx
                        .type            n289_lit_integer_bx, @function
n289_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_integer_α:     sub              rsp, 16
                        mov              r11, 203
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_747_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n290_binop_α
n289_lit_integer_β:     mov              r11, 203
                        add              rsp, 16;                             jmp   n288_var_β
.Llit_integer_α_747_0:  .quad            1
                        .size            n289_lit_integer_bx, .-n289_lit_integer_bx
                        .type            n290_binop_bx, @function
n290_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_binop_α:           sub              rsp, 16
                        mov              r11, 204
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_748_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_748_7
.Lbinop_α_748_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_748_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_748_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_748_4
.Lbinop_α_748_3:        movq             xmm0, rsi
.Lbinop_α_748_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_748_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_748_7:                                                              jmp   n291_assign_α
.Lbinop_α_748_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_748_240
                        add              rsp, 16;                             jmp   n289_lit_integer_β
.Lbinop_α_748_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n291_assign_α
n290_binop_β:           mov              r11, 204
                        add              rsp, 16;                             jmp   n289_lit_integer_β
                        .size            n290_binop_bx, .-n290_binop_bx
                        .type            n291_assign_bx, @function
n291_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_assign_α:          mov              r11, 205
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_749_0]
                        .section         .rodata
.Lassign_α_749_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_749_1_s]
                        mov              r8, 49
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
                        pop              rax;                                 jmp   n292_var_α
.Lassign_α_749_0:       .quad            .Lassign_α_749_0_s
.Lassign_α_749_0_s:     .string          "sp"
                        .size            n291_assign_bx, .-n291_assign_bx
                        .type            n292_var_bx, @function
n292_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:             sub              rsp, 16
                        mov              r11, 206
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_var_α
n292_var_β:             mov              r11, 206
                        add              rsp, 16;                             jmp   n290_binop_β
                        .size            n292_var_bx, .-n292_var_bx
                        .type            n293_var_bx, @function
n293_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:             sub              rsp, 16
                        mov              r11, 207
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_subscript_α
n293_var_β:             mov              r11, 207
                        add              rsp, 16;                             jmp   n292_var_β
                        .size            n293_var_bx, .-n293_var_bx
                        .type            n294_subscript_bx, @function
n294_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_subscript_α:       sub              rsp, 16
                        mov              r11, 208
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
                        cmp              al, 104;                             jne   .Lsubscript_α_752_240
                        add              rsp, 16;                             jmp   n293_var_β
.Lsubscript_α_752_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_deref_α
n294_subscript_β:       mov              r11, 208
                        add              rsp, 16;                             jmp   n293_var_β
                        .size            n294_subscript_bx, .-n294_subscript_bx
                        .type            n295_deref_bx, @function
n295_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_deref_α:           sub              rsp, 16
                        mov              r11, 209
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
                        cmp              al, 104;                             jne   .Lderef_α_753_240
                        add              rsp, 16;                             jmp   n294_subscript_β
.Lderef_α_753_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_call_α
n295_deref_β:           mov              r11, 209
                        add              rsp, 16;                             jmp   n294_subscript_β
                        .size            n295_deref_bx, .-n295_deref_bx
                        .type            n296_call_bx, @function
n296_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_call_α:            sub              rsp, 16
                        mov              r11, 210
                        lea              rcx, [rip + .Lcall_α_sig755z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig755z:       .quad            1
                        .quad            .Lcall_α_755_2
                        .quad            .Lcall_α_755_2
                        .quad            16
.Lcall_α_755_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_755_29
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
.Lcall_α_755_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_755_240
                        add              rsp, 16;                             jmp   n295_deref_β
.Lcall_α_755_240:                                                             jmp   n297_var_α
n296_call_β:            mov              r11, 210;                            jmp   n295_deref_β
.Lcall_β_755_0:         .quad            .Lcall_β_755_0_s
.Lcall_β_755_0_s:       .string          "DRF"
                        .size            n296_call_bx, .-n296_call_bx
                        .type            n297_var_bx, @function
n297_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_var_α:             sub              rsp, 16
                        mov              r11, 211
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_var_α
n297_var_β:             mov              r11, 211
                        add              rsp, 32;                             jmp   n295_deref_β
                        .size            n297_var_bx, .-n297_var_bx
                        .type            n298_var_bx, @function
n298_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_var_α:             sub              rsp, 16
                        mov              r11, 212
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n299_lit_integer_α
n298_var_β:             mov              r11, 212
                        add              rsp, 16;                             jmp   n297_var_β
                        .size            n298_var_bx, .-n298_var_bx
                        .type            n299_lit_integer_bx, @function
n299_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:     sub              rsp, 16
                        mov              r11, 213
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_758_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n300_binop_α
n299_lit_integer_β:     mov              r11, 213
                        add              rsp, 16;                             jmp   n298_var_β
.Llit_integer_α_758_0:  .quad            1
                        .size            n299_lit_integer_bx, .-n299_lit_integer_bx
                        .type            n300_binop_bx, @function
n300_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_binop_α:           sub              rsp, 16
                        mov              r11, 214
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_759_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_759_7
.Lbinop_α_759_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_759_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_759_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_759_4
.Lbinop_α_759_3:        movq             xmm0, rsi
.Lbinop_α_759_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_759_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_759_7:                                                              jmp   n301_subscript_α
.Lbinop_α_759_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_759_240
                        add              rsp, 16;                             jmp   n299_lit_integer_β
.Lbinop_α_759_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n301_subscript_α
n300_binop_β:           mov              r11, 214
                        add              rsp, 16;                             jmp   n299_lit_integer_β
                        .size            n300_binop_bx, .-n300_binop_bx
                        .type            n301_subscript_bx, @function
n301_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_subscript_α:       sub              rsp, 16
                        mov              r11, 215
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
                        cmp              al, 104;                             jne   .Lsubscript_α_760_240
                        add              rsp, 16;                             jmp   n300_binop_β
.Lsubscript_α_760_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n302_deref_α
n301_subscript_β:       mov              r11, 215
                        add              rsp, 16;                             jmp   n300_binop_β
                        .size            n301_subscript_bx, .-n301_subscript_bx
                        .type            n302_deref_bx, @function
n302_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_deref_α:           sub              rsp, 16
                        mov              r11, 216
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
                        cmp              al, 104;                             jne   .Lderef_α_761_240
                        add              rsp, 16;                             jmp   n301_subscript_β
.Lderef_α_761_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n303_call_α
n302_deref_β:           mov              r11, 216
                        add              rsp, 16;                             jmp   n301_subscript_β
                        .size            n302_deref_bx, .-n302_deref_bx
                        .type            n303_call_bx, @function
n303_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_call_α:            sub              rsp, 16
                        mov              r11, 217
                        lea              rcx, [rip + .Lcall_α_sig763z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig763z:       .quad            1
                        .quad            .Lcall_α_763_2
                        .quad            .Lcall_α_763_2
                        .quad            16
.Lcall_α_763_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_763_29
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
.Lcall_α_763_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_763_240
                        add              rsp, 16;                             jmp   n302_deref_β
.Lcall_α_763_240:                                                             jmp   n304_binop_α
n303_call_β:            mov              r11, 217;                            jmp   n302_deref_β
.Lcall_β_763_0:         .quad            .Lcall_β_763_0_s
.Lcall_β_763_0_s:       .string          "DRF"
                        .size            n303_call_bx, .-n303_call_bx
                        .type            n304_binop_bx, @function
n304_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_binop_α:           sub              rsp, 16
                        mov              r11, 218
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
                        cmp              al, 104;                             jne   .Lbinop_α_764_240
                        add              rsp, 32;                             jmp   n302_deref_β
.Lbinop_α_764_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n305_assign_var_α
n304_binop_β:           mov              r11, 218
                        add              rsp, 32;                             jmp   n302_deref_β
                        .size            n304_binop_bx, .-n304_binop_bx
                        .type            n305_assign_var_bx, @function
n305_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_assign_var_α:      sub              rsp, 16
                        mov              r11, 219
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lassign_var_α_766_0
                        test             rsi, rsi;                            je    .Lassign_var_α_766_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_766_238
                        add              rsp, 16;                             jmp   n304_binop_β
.Lassign_var_α_766_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n306_statement_end_α
.Lassign_var_α_766_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_766_239
                        add              rsp, 16;                             jmp   n304_binop_β
.Lassign_var_α_766_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_766_240
                        add              rsp, 16;                             jmp   n304_binop_β
.Lassign_var_α_766_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n306_statement_end_α
                        .size            n305_assign_var_bx, .-n305_assign_var_bx
                        .type            n306_statement_end_bx, @function
n306_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_end_α:   mov              r11, 220
                        mov              r10, 22
                        add              rsp, 288;                            jmp   n307_statement_begin_α
                        .size            n306_statement_end_bx, .-n306_statement_end_bx
                        .type            n307_statement_begin_bx, @function
n307_statement_begin_bx:
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 50 0
n307_statement_begin_α: mov              r11, 221
                        mov              r10, 23;                             jmp   n308_lit_name_α
n307_statement_begin_β: mov              r11, 221;                            jmp   NRETURN
                        .size            n307_statement_begin_bx, .-n307_statement_begin_bx
                        .type            n308_lit_name_bx, @function
n308_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_name_α:        sub              rsp, 16
                        mov              r11, 222
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_771_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n309_assign_α
.Llit_name_α_771_0:     .quad            .Llit_name_α_771_0_s
.Llit_name_α_771_0_s:   .string          "dm"
                        .size            n308_lit_name_bx, .-n308_lit_name_bx
                        .type            n309_assign_bx, @function
n309_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_assign_α:          mov              r11, 223
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
                        mov              rdi, qword ptr [rip + .Lassign_α_772_0]
                        .section         .rodata
.Lassign_α_772_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_772_1_s]
                        mov              r8, 50
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
                        pop              rax;                                 jmp   n310_statement_end_α
.Lassign_α_772_0:       .quad            .Lassign_α_772_0_s
.Lassign_α_772_0_s:     .string          "DIV"
                        .size            n309_assign_bx, .-n309_assign_bx
                        .type            n310_statement_end_bx, @function
n310_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_statement_end_α:   mov              r11, 224
                        mov              r10, 23
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n310_statement_end_bx, .-n310_statement_end_bx
                        .type            n311_statement_begin_bx, @function
n311_statement_begin_bx:
#=======================================================================================================================
# SGN     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 51 0
LBL__SGN:               mov              r11, 225
                        mov              r10, 24;                             jmp   n312_var_α
n311_statement_begin_β: mov              r11, 225;                            jmp   n319_statement_begin_α
                        .size            n311_statement_begin_bx, .-n311_statement_begin_bx
                        .type            n312_var_bx, @function
n312_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:             sub              rsp, 16
                        mov              r11, 226
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n313_var_α
                        .size            n312_var_bx, .-n312_var_bx
                        .type            n313_var_bx, @function
n313_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             sub              rsp, 16
                        mov              r11, 227
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_subscript_α
n313_var_β:             mov              r11, 227
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n311_statement_begin_β
                        .size            n313_var_bx, .-n313_var_bx
                        .type            n314_subscript_bx, @function
n314_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_subscript_α:       sub              rsp, 16
                        mov              r11, 228
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
                        cmp              al, 104;                             jne   .Lsubscript_α_779_240
                        add              rsp, 16;                             jmp   n313_var_β
.Lsubscript_α_779_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_deref_α
n314_subscript_β:       mov              r11, 228
                        add              rsp, 16;                             jmp   n313_var_β
                        .size            n314_subscript_bx, .-n314_subscript_bx
                        .type            n315_deref_bx, @function
n315_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_deref_α:           sub              rsp, 16
                        mov              r11, 229
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
                        cmp              al, 104;                             jne   .Lderef_α_780_240
                        add              rsp, 16;                             jmp   n314_subscript_β
.Lderef_α_780_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_call_α
n315_deref_β:           mov              r11, 229
                        add              rsp, 16;                             jmp   n314_subscript_β
                        .size            n315_deref_bx, .-n315_deref_bx
                        .type            n316_call_bx, @function
n316_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_call_α:            sub              rsp, 16
                        mov              r11, 230
                        lea              rcx, [rip + .Lcall_α_sig782z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lcall_α_sig782z:       .quad            1
                        .quad            .Lcall_α_782_2
                        .quad            .Lcall_α_782_2
                        .quad            16
.Lcall_α_782_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_782_29
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
.Lcall_α_782_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_782_240
                        add              rsp, 16;                             jmp   n315_deref_β
.Lcall_α_782_240:                                                             jmp   n317_assign_α
n316_call_β:            mov              r11, 230;                            jmp   n315_deref_β
.Lcall_β_782_0:         .quad            .Lcall_β_782_0_s
.Lcall_β_782_0_s:       .string          "DRF"
                        .size            n316_call_bx, .-n316_call_bx
                        .type            n317_assign_bx, @function
n317_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_assign_α:          mov              r11, 231
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # p1
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
                        mov              rdi, qword ptr [rip + .Lassign_α_783_0]
                        .section         .rodata
.Lassign_α_783_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_783_1_s]
                        mov              r8, 51
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
                        pop              rax;                                 jmp   n318_statement_end_α
.Lassign_α_783_0:       .quad            .Lassign_α_783_0_s
.Lassign_α_783_0_s:     .string          "p1"
                        .size            n317_assign_bx, .-n317_assign_bx
                        .type            n318_statement_end_bx, @function
n318_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_statement_end_α:   mov              r11, 232
                        mov              r10, 24
                        add              rsp, 80;                             jmp   n319_statement_begin_α
                        .size            n318_statement_end_bx, .-n318_statement_end_bx
                        .type            n319_statement_begin_bx, @function
n319_statement_begin_bx:
#=======================================================================================================================
#         p1 = IDENT(S[sp = sp - 1], '-') -p1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 52 0
n319_statement_begin_α: mov              r11, 233
                        mov              r10, 25;                             jmp   n320_var_α
n319_statement_begin_β: mov              r11, 233;                            jmp   n333_statement_begin_α
                        .size            n319_statement_begin_bx, .-n319_statement_begin_bx
                        .type            n320_var_bx, @function
n320_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:             sub              rsp, 16
                        mov              r11, 234
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n321_var_α
                        .size            n320_var_bx, .-n320_var_bx
                        .type            n321_var_bx, @function
n321_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_var_α:             sub              rsp, 16
                        mov              r11, 235
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n322_lit_integer_α
n321_var_β:             mov              r11, 235
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n319_statement_begin_β
                        .size            n321_var_bx, .-n321_var_bx
                        .type            n322_lit_integer_bx, @function
n322_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_integer_α:     sub              rsp, 16
                        mov              r11, 236
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_790_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n323_binop_α
n322_lit_integer_β:     mov              r11, 236
                        add              rsp, 16;                             jmp   n321_var_β
.Llit_integer_α_790_0:  .quad            1
                        .size            n322_lit_integer_bx, .-n322_lit_integer_bx
                        .type            n323_binop_bx, @function
n323_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_binop_α:           sub              rsp, 16
                        mov              r11, 237
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_791_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_791_7
.Lbinop_α_791_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_791_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_791_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_791_4
.Lbinop_α_791_3:        movq             xmm0, rsi
.Lbinop_α_791_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_791_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_791_7:                                                              jmp   n324_assign_α
.Lbinop_α_791_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_791_240
                        add              rsp, 16;                             jmp   n322_lit_integer_β
.Lbinop_α_791_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n324_assign_α
n323_binop_β:           mov              r11, 237
                        add              rsp, 16;                             jmp   n322_lit_integer_β
                        .size            n323_binop_bx, .-n323_binop_bx
                        .type            n324_assign_bx, @function
n324_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_assign_α:          mov              r11, 238
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_792_0]
                        .section         .rodata
.Lassign_α_792_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_792_1_s]
                        mov              r8, 52
                        mov              r9, 25
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
                        pop              rax;                                 jmp   n325_subscript_α
.Lassign_α_792_0:       .quad            .Lassign_α_792_0_s
.Lassign_α_792_0_s:     .string          "sp"
                        .size            n324_assign_bx, .-n324_assign_bx
                        .type            n325_subscript_bx, @function
n325_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_subscript_α:       sub              rsp, 16
                        mov              r11, 239
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # assign
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_793_240
                        add              rsp, 16;                             jmp   n323_binop_β
.Lsubscript_α_793_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n326_deref_α
n325_subscript_β:       mov              r11, 239
                        add              rsp, 16;                             jmp   n323_binop_β
                        .size            n325_subscript_bx, .-n325_subscript_bx
                        .type            n326_deref_bx, @function
n326_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_deref_α:           sub              rsp, 16
                        mov              r11, 240
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
                        cmp              al, 104;                             jne   .Lderef_α_794_240
                        add              rsp, 16;                             jmp   n325_subscript_β
.Lderef_α_794_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n327_lit_string_α
n326_deref_β:           mov              r11, 240
                        add              rsp, 16;                             jmp   n325_subscript_β
                        .size            n326_deref_bx, .-n326_deref_bx
                        .type            n327_lit_string_bx, @function
n327_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_string_α:      sub              rsp, 16
                        mov              r11, 241
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_795_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n328_ident_α
n327_lit_string_β:      mov              r11, 241
                        add              rsp, 16;                             jmp   n326_deref_β
.Llit_string_α_795_0:   .quad            .Llit_string_α_795_0_s
.Llit_string_α_795_0_s: .string          "-"
                        .size            n327_lit_string_bx, .-n327_lit_string_bx
                        .type            n328_ident_bx, @function
n328_ident_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_ident_α:           sub              rsp, 16
                        mov              r11, 242
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jne   .Lident_α_797_240
                        add              rsp, 16;                             jmp   n327_lit_string_β
.Lident_α_797_240:                                                            jmp   n329_var_α
n328_ident_β:           mov              r11, 242
                        add              rsp, 16;                             jmp   n327_lit_string_β
                        .size            n328_ident_bx, .-n328_ident_bx
                        .type            n329_var_bx, @function
n329_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_var_α:             sub              rsp, 16
                        mov              r11, 243
                        mov              rax, qword ptr [r9 + 144]            # p1
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n330_unop_α
n329_var_β:             mov              r11, 243
                        add              rsp, 16;                             jmp   n328_ident_β
                        .size            n329_var_bx, .-n329_var_bx
                        .type            n330_unop_bx, @function
n330_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_unop_α:            sub              rsp, 16
                        mov              r11, 244
                        mov              rdi, qword ptr [rsp + 16]            # var
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_assign_α
                        .size            n330_unop_bx, .-n330_unop_bx
                        .type            n331_assign_bx, @function
n331_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_assign_α:          mov              r11, 245
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # p1
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
                        mov              rdi, qword ptr [rip + .Lassign_α_800_0]
                        .section         .rodata
.Lassign_α_800_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_800_1_s]
                        mov              r8, 52
                        mov              r9, 25
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
.Lassign_α_800_0:       .quad            .Lassign_α_800_0_s
.Lassign_α_800_0_s:     .string          "p1"
                        .size            n331_assign_bx, .-n331_assign_bx
                        .type            n332_statement_end_bx, @function
n332_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_statement_end_α:   mov              r11, 246
                        mov              r10, 25
                        add              rsp, 160;                            jmp   n333_statement_begin_α
                        .size            n332_statement_end_bx, .-n332_statement_end_bx
                        .type            n333_statement_begin_bx, @function
n333_statement_begin_bx:
#=======================================================================================================================
#         S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 53 0
n333_statement_begin_α: mov              r11, 247
                        mov              r10, 26;                             jmp   n334_var_α
n333_statement_begin_β: mov              r11, 247;                            jmp   n339_statement_begin_α
                        .size            n333_statement_begin_bx, .-n333_statement_begin_bx
                        .type            n334_var_bx, @function
n334_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:             sub              rsp, 16
                        mov              r11, 248
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n335_var_α
                        .size            n334_var_bx, .-n334_var_bx
                        .type            n335_var_bx, @function
n335_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:             sub              rsp, 16
                        mov              r11, 249
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n336_var_α
n335_var_β:             mov              r11, 249
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n333_statement_begin_β
                        .size            n335_var_bx, .-n335_var_bx
                        .type            n336_var_bx, @function
n336_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:             sub              rsp, 16
                        mov              r11, 250
                        mov              rax, qword ptr [r9 + 144]            # p1
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n337_assign_var_α
n336_var_β:             mov              r11, 250
                        add              rsp, 16;                             jmp   n335_var_β
                        .size            n336_var_bx, .-n336_var_bx
                        .type            n337_assign_var_bx, @function
n337_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_assign_var_α:      sub              rsp, 16
                        mov              r11, 251
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_809_0
                        test             rsi, rsi;                            je    .Lassign_var_α_809_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_809_238
                        add              rsp, 16;                             jmp   n336_var_β
.Lassign_var_α_809_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n338_statement_end_α
.Lassign_var_α_809_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_809_239
                        add              rsp, 16;                             jmp   n336_var_β
.Lassign_var_α_809_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_809_240
                        add              rsp, 16;                             jmp   n336_var_β
.Lassign_var_α_809_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n338_statement_end_α
                        .size            n337_assign_var_bx, .-n337_assign_var_bx
                        .type            n338_statement_end_bx, @function
n338_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_end_α:   mov              r11, 252
                        mov              r10, 26
                        add              rsp, 64;                             jmp   n339_statement_begin_α
                        .size            n338_statement_end_bx, .-n338_statement_end_bx
                        .type            n339_statement_begin_bx, @function
n339_statement_begin_bx:
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
n339_statement_begin_α: mov              r11, 253
                        mov              r10, 27;                             jmp   n340_lit_name_α
n339_statement_begin_β: mov              r11, 253;                            jmp   NRETURN
                        .size            n339_statement_begin_bx, .-n339_statement_begin_bx
                        .type            n340_lit_name_bx, @function
n340_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_name_α:        sub              rsp, 16
                        mov              r11, 254
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_814_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n341_assign_α
.Llit_name_α_814_0:     .quad            .Llit_name_α_814_0_s
.Llit_name_α_814_0_s:   .string          "dm"
                        .size            n340_lit_name_bx, .-n340_lit_name_bx
                        .type            n341_assign_bx, @function
n341_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_assign_α:          mov              r11, 255
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # SGN
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
                        mov              rdi, qword ptr [rip + .Lassign_α_815_0]
                        .section         .rodata
.Lassign_α_815_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_815_1_s]
                        mov              r8, 54
                        mov              r9, 27
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
                        pop              rax;                                 jmp   n342_statement_end_α
.Lassign_α_815_0:       .quad            .Lassign_α_815_0_s
.Lassign_α_815_0_s:     .string          "SGN"
                        .size            n341_assign_bx, .-n341_assign_bx
                        .type            n342_statement_end_bx, @function
n342_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_statement_end_α:   mov              r11, 256
                        mov              r10, 27
                        add              rsp, 16;                             jmp   NRETURN
                        .size            n342_statement_end_bx, .-n342_statement_end_bx
                        .type            n343_statement_begin_bx, @function
n343_statement_begin_bx:
#=======================================================================================================================
# FNS_end
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 55 0
n343_statement_begin_α: mov              r11, 257
                        mov              r10, 28;                             jmp   n344_statement_end_α
n343_statement_begin_β: mov              r11, 257;                            jmp   n345_statement_begin_α
                        .size            n343_statement_begin_bx, .-n343_statement_begin_bx
                        .type            n344_statement_end_bx, @function
n344_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_statement_end_α:   mov              r11, 258
                        mov              r10, 28;                             jmp   n345_statement_begin_α
                        .size            n344_statement_end_bx, .-n344_statement_end_bx
                        .type            n345_statement_begin_bx, @function
n345_statement_begin_bx:
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 57 0
n345_statement_begin_α: mov              r11, 259
                        mov              r10, 29;                             jmp   n346_lit_integer_α
n345_statement_begin_β: mov              r11, 259;                            jmp   n350_statement_begin_α
                        .size            n345_statement_begin_bx, .-n345_statement_begin_bx
                        .type            n346_lit_integer_bx, @function
n346_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_integer_α:     sub              rsp, 16
                        mov              r11, 260
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_824_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n347_call_α
.Llit_integer_α_824_0:  .quad            65536
                        .size            n346_lit_integer_bx, .-n346_lit_integer_bx
                        .type            n347_call_bx, @function
n347_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_call_α:            sub              rsp, 16
                        mov              r11, 261
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd826:     .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd826]
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
                        cmp              al, 104;                             jne   .Lcall_α_825_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n345_statement_begin_β
.Lcall_α_825_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n348_assign_α
n347_call_β:            mov              r11, 261
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n345_statement_begin_β
                        .size            n347_call_bx, .-n347_call_bx
                        .type            n348_assign_bx, @function
n348_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_assign_α:          mov              r11, 262
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # S
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
                        mov              rdi, qword ptr [rip + .Lassign_α_827_0]
                        .section         .rodata
.Lassign_α_827_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_827_1_s]
                        mov              r8, 57
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
                        pop              rax;                                 jmp   n349_statement_end_α
.Lassign_α_827_0:       .quad            .Lassign_α_827_0_s
.Lassign_α_827_0_s:     .string          "S"
                        .size            n348_assign_bx, .-n348_assign_bx
                        .type            n349_statement_end_bx, @function
n349_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_statement_end_α:   mov              r11, 263
                        mov              r10, 29
                        add              rsp, 32;                             jmp   n350_statement_begin_α
                        .size            n349_statement_end_bx, .-n349_statement_end_bx
                        .type            n350_statement_begin_bx, @function
n350_statement_begin_bx:
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 58 0
n350_statement_begin_α: mov              r11, 264
                        mov              r10, 30;                             jmp   n351_kw_snobol4_α
n350_statement_begin_β: mov              r11, 264;                            jmp   n354_statement_begin_α
                        .size            n350_statement_begin_bx, .-n350_statement_begin_bx
                        .type            n351_kw_snobol4_bx, @function
n351_kw_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_kw_snobol4_α:      sub              rsp, 16
                        mov              r11, 265
                        mov              rdi, qword ptr [rip + .Lkw_snobol4_α_832_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n352_assign_α
.Lkw_snobol4_α_832_0:   .quad            26
                        .size            n351_kw_snobol4_bx, .-n351_kw_snobol4_bx
                        .type            n352_assign_bx, @function
n352_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_assign_α:          mov              r11, 266
                        mov              rax, qword ptr [rsp + 0]             # kw_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # LCASE
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
                        mov              rdi, qword ptr [rip + .Lassign_α_833_0]
                        .section         .rodata
.Lassign_α_833_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_833_1_s]
                        mov              r8, 58
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
                        pop              rax;                                 jmp   n353_statement_end_α
.Lassign_α_833_0:       .quad            .Lassign_α_833_0_s
.Lassign_α_833_0_s:     .string          "LCASE"
                        .size            n352_assign_bx, .-n352_assign_bx
                        .type            n353_statement_end_bx, @function
n353_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_statement_end_α:   mov              r11, 267
                        mov              r10, 30
                        add              rsp, 16;                             jmp   n354_statement_begin_α
                        .size            n353_statement_end_bx, .-n353_statement_end_bx
                        .type            n354_statement_begin_bx, @function
n354_statement_begin_bx:
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 59 0
n354_statement_begin_α: mov              r11, 268
                        mov              r10, 31;                             jmp   n355_lit_string_α
n354_statement_begin_β: mov              r11, 268;                            jmp   n358_statement_begin_α
                        .size            n354_statement_begin_bx, .-n354_statement_begin_bx
                        .type            n355_lit_string_bx, @function
n355_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:      sub              rsp, 16
                        mov              r11, 269
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_838_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n356_assign_α
.Llit_string_α_838_0:   .quad            .Llit_string_α_838_0_s
.Llit_string_α_838_0_s: .string          "0123456789"
                        .size            n355_lit_string_bx, .-n355_lit_string_bx
                        .type            n356_assign_bx, @function
n356_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_assign_α:          mov              r11, 270
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # DIGITS
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
                        mov              rdi, qword ptr [rip + .Lassign_α_839_0]
                        .section         .rodata
.Lassign_α_839_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_839_1_s]
                        mov              r8, 59
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
                        pop              rax;                                 jmp   n357_statement_end_α
.Lassign_α_839_0:       .quad            .Lassign_α_839_0_s
.Lassign_α_839_0_s:     .string          "DIGITS"
                        .size            n356_assign_bx, .-n356_assign_bx
                        .type            n357_statement_end_bx, @function
n357_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_statement_end_α:   mov              r11, 271
                        mov              r10, 31
                        add              rsp, 16;                             jmp   n358_statement_begin_α
                        .size            n357_statement_end_bx, .-n357_statement_end_bx
                        .type            n358_statement_begin_bx, @function
n358_statement_begin_bx:
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 60 0
n358_statement_begin_α: mov              r11, 272
                        mov              r10, 32;                             jmp   n359_lit_string_α
n358_statement_begin_β: mov              r11, 272;                            jmp   n363_statement_begin_α
                        .size            n358_statement_begin_bx, .-n358_statement_begin_bx
                        .type            n359_lit_string_bx, @function
n359_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:      sub              rsp, 16
                        mov              r11, 273
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_844_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n360_call_α
.Llit_string_α_844_0:   .quad            .Llit_string_α_844_0_s
.Llit_string_α_844_0_s: .string          "PAT$0"
                        .size            n359_lit_string_bx, .-n359_lit_string_bx
                        .type            n360_call_bx, @function
n360_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_call_α:            sub              rsp, 16
                        mov              r11, 274
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd846:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd846]
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
                        cmp              al, 104;                             jne   .Lcall_α_845_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n358_statement_begin_β
.Lcall_α_845_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n361_assign_α
n360_call_β:            mov              r11, 274
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n358_statement_begin_β
                        .size            n360_call_bx, .-n360_call_bx
                        .type            n361_assign_bx, @function
n361_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_assign_α:          mov              r11, 275
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # V
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
                        mov              rdi, qword ptr [rip + .Lassign_α_847_0]
                        .section         .rodata
.Lassign_α_847_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_847_1_s]
                        mov              r8, 60
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
                        pop              rax;                                 jmp   n362_statement_end_α
.Lassign_α_847_0:       .quad            .Lassign_α_847_0_s
.Lassign_α_847_0_s:     .string          "V"
                        .size            n361_assign_bx, .-n361_assign_bx
                        .type            n362_statement_end_bx, @function
n362_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_statement_end_α:   mov              r11, 276
                        mov              r10, 32
                        add              rsp, 32;                             jmp   n363_statement_begin_α
                        .size            n362_statement_end_bx, .-n362_statement_end_bx
                        .type            n363_statement_begin_bx, @function
n363_statement_begin_bx:
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 61 0
n363_statement_begin_α: mov              r11, 277
                        mov              r10, 33;                             jmp   n364_lit_string_α
n363_statement_begin_β: mov              r11, 277;                            jmp   n368_statement_begin_α
                        .size            n363_statement_begin_bx, .-n363_statement_begin_bx
                        .type            n364_lit_string_bx, @function
n364_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_string_α:      sub              rsp, 16
                        mov              r11, 278
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_852_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n365_call_α
.Llit_string_α_852_0:   .quad            .Llit_string_α_852_0_s
.Llit_string_α_852_0_s: .string          "PAT$1"
                        .size            n364_lit_string_bx, .-n364_lit_string_bx
                        .type            n365_call_bx, @function
n365_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_call_α:            sub              rsp, 16
                        mov              r11, 279
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd854:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd854]
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
                        cmp              al, 104;                             jne   .Lcall_α_853_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n363_statement_begin_β
.Lcall_α_853_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n366_assign_α
n365_call_β:            mov              r11, 279
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n363_statement_begin_β
                        .size            n365_call_bx, .-n365_call_bx
                        .type            n366_assign_bx, @function
n366_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_assign_α:          mov              r11, 280
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # I
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
                        mov              rdi, qword ptr [rip + .Lassign_α_855_0]
                        .section         .rodata
.Lassign_α_855_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_855_1_s]
                        mov              r8, 61
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
.Lassign_α_855_0:       .quad            .Lassign_α_855_0_s
.Lassign_α_855_0_s:     .string          "I"
                        .size            n366_assign_bx, .-n366_assign_bx
                        .type            n367_statement_end_bx, @function
n367_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_statement_end_α:   mov              r11, 281
                        mov              r10, 33
                        add              rsp, 32;                             jmp   n368_statement_begin_α
                        .size            n367_statement_end_bx, .-n367_statement_end_bx
                        .type            n368_statement_begin_bx, @function
n368_statement_begin_bx:
#=======================================================================================================================
#         A = FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 62 0
n368_statement_begin_α: mov              r11, 282
                        mov              r10, 34;                             jmp   n369_var_α
n368_statement_begin_β: mov              r11, 282;                            jmp   n378_statement_begin_α
                        .size            n368_statement_begin_bx, .-n368_statement_begin_bx
                        .type            n369_var_bx, @function
n369_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_var_α:             sub              rsp, 16
                        mov              r11, 283
                        mov              rax, qword ptr [r9 + 256]            # V
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n370_var_α
                        .size            n369_var_bx, .-n369_var_bx
                        .type            n370_var_bx, @function
n370_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:             sub              rsp, 16
                        mov              r11, 284
                        mov              rax, qword ptr [r9 + 272]            # I
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n371_assign_α
n370_var_β:             mov              r11, 284
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n368_statement_begin_β
                        .size            n370_var_bx, .-n370_var_bx
                        .type            n371_assign_bx, @function
n371_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_assign_α:          mov              r11, 285
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 448], rax            # PAT$2$V0
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
                        mov              rdi, qword ptr [rip + .Lassign_α_862_0]
                        .section         .rodata
.Lassign_α_862_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_862_1_s]
                        mov              r8, 62
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
                        pop              rax;                                 jmp   n372_assign_α
.Lassign_α_862_0:       .quad            .Lassign_α_862_0_s
.Lassign_α_862_0_s:     .string          "PAT$2$V0"
                        .size            n371_assign_bx, .-n371_assign_bx
                        .type            n372_assign_bx, @function
n372_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_assign_α:          mov              r11, 286
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # PAT$2$V1
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
                        mov              rdi, qword ptr [rip + .Lassign_α_863_0]
                        .section         .rodata
.Lassign_α_863_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_863_1_s]
                        mov              r8, 62
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
                        pop              rax;                                 jmp   n373_lit_string_α
.Lassign_α_863_0:       .quad            .Lassign_α_863_0_s
.Lassign_α_863_0_s:     .string          "PAT$2$V1"
                        .size            n372_assign_bx, .-n372_assign_bx
                        .type            n373_lit_string_bx, @function
n373_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:      sub              rsp, 16
                        mov              r11, 287
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_864_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n374_lit_string_α
n373_lit_string_β:      mov              r11, 287
                        add              rsp, 16;                             jmp   n370_var_β
.Llit_string_α_864_0:   .quad            .Llit_string_α_864_0_s
.Llit_string_α_864_0_s: .string          "PAT$2"
                        .size            n373_lit_string_bx, .-n373_lit_string_bx
                        .type            n374_lit_string_bx, @function
n374_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:      sub              rsp, 16
                        mov              r11, 288
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_865_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n375_call_α
n374_lit_string_β:      mov              r11, 288
                        add              rsp, 16;                             jmp   n373_lit_string_β
.Llit_string_α_865_0:   .quad            .Llit_string_α_865_0_s
.Llit_string_α_865_0_s: .string          "2"
                        .size            n374_lit_string_bx, .-n374_lit_string_bx
                        .type            n375_call_bx, @function
n375_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_call_α:            sub              rsp, 16
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
.Lcall_α_rkfnzd867:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd867]
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
                        cmp              al, 104;                             jne   .Lcall_α_866_240
                        add              rsp, 16;                             jmp   n374_lit_string_β
.Lcall_α_866_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n376_assign_α
n375_call_β:            mov              r11, 289
                        add              rsp, 16;                             jmp   n374_lit_string_β
                        .size            n375_call_bx, .-n375_call_bx
                        .type            n376_assign_bx, @function
n376_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_assign_α:          mov              r11, 290
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # A
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
                        mov              rdi, qword ptr [rip + .Lassign_α_868_0]
                        .section         .rodata
.Lassign_α_868_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_868_1_s]
                        mov              r8, 62
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
                        pop              rax;                                 jmp   n377_statement_end_α
.Lassign_α_868_0:       .quad            .Lassign_α_868_0_s
.Lassign_α_868_0_s:     .string          "A"
                        .size            n376_assign_bx, .-n376_assign_bx
                        .type            n377_statement_end_bx, @function
n377_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_statement_end_α:   mov              r11, 291
                        mov              r10, 34
                        add              rsp, 80;                             jmp   n378_statement_begin_α
                        .size            n377_statement_end_bx, .-n377_statement_end_bx
                        .type            n378_statement_begin_bx, @function
n378_statement_begin_bx:
#=======================================================================================================================
#         F = FENCE(A | ANY('+-') . *PSH() *F . *SGN())
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 63 0
n378_statement_begin_α: mov              r11, 292
                        mov              r10, 35;                             jmp   n379_var_α
n378_statement_begin_β: mov              r11, 292;                            jmp   n386_statement_begin_α
                        .size            n378_statement_begin_bx, .-n378_statement_begin_bx
                        .type            n379_var_bx, @function
n379_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_var_α:             sub              rsp, 16
                        mov              r11, 293
                        mov              rax, qword ptr [r9 + 288]            # A
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n380_assign_α
                        .size            n379_var_bx, .-n379_var_bx
                        .type            n380_assign_bx, @function
n380_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_assign_α:          mov              r11, 294
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # PAT$3$V0
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
                        mov              rdi, qword ptr [rip + .Lassign_α_874_0]
                        .section         .rodata
.Lassign_α_874_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_874_1_s]
                        mov              r8, 63
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
                        pop              rax;                                 jmp   n381_lit_string_α
.Lassign_α_874_0:       .quad            .Lassign_α_874_0_s
.Lassign_α_874_0_s:     .string          "PAT$3$V0"
                        .size            n380_assign_bx, .-n380_assign_bx
                        .type            n381_lit_string_bx, @function
n381_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:      sub              rsp, 16
                        mov              r11, 295
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_875_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n382_lit_string_α
n381_lit_string_β:      mov              r11, 295
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n378_statement_begin_β
.Llit_string_α_875_0:   .quad            .Llit_string_α_875_0_s
.Llit_string_α_875_0_s: .string          "PAT$3"
                        .size            n381_lit_string_bx, .-n381_lit_string_bx
                        .type            n382_lit_string_bx, @function
n382_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:      sub              rsp, 16
                        mov              r11, 296
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_876_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n383_call_α
n382_lit_string_β:      mov              r11, 296
                        add              rsp, 16;                             jmp   n381_lit_string_β
.Llit_string_α_876_0:   .quad            .Llit_string_α_876_0_s
.Llit_string_α_876_0_s: .string          "1"
                        .size            n382_lit_string_bx, .-n382_lit_string_bx
                        .type            n383_call_bx, @function
n383_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_call_α:            sub              rsp, 16
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
.Lcall_α_rkfnzd878:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd878]
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
                        cmp              al, 104;                             jne   .Lcall_α_877_240
                        add              rsp, 16;                             jmp   n382_lit_string_β
.Lcall_α_877_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n384_assign_α
n383_call_β:            mov              r11, 297
                        add              rsp, 16;                             jmp   n382_lit_string_β
                        .size            n383_call_bx, .-n383_call_bx
                        .type            n384_assign_bx, @function
n384_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_assign_α:          mov              r11, 298
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # F
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
                        mov              rdi, qword ptr [rip + .Lassign_α_879_0]
                        .section         .rodata
.Lassign_α_879_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_879_1_s]
                        mov              r8, 63
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
                        pop              rax;                                 jmp   n385_statement_end_α
.Lassign_α_879_0:       .quad            .Lassign_α_879_0_s
.Lassign_α_879_0_s:     .string          "F"
                        .size            n384_assign_bx, .-n384_assign_bx
                        .type            n385_statement_end_bx, @function
n385_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_statement_end_α:   mov              r11, 299
                        mov              r10, 35
                        add              rsp, 64;                             jmp   n386_statement_begin_α
                        .size            n385_statement_end_bx, .-n385_statement_end_bx
                        .type            n386_statement_begin_bx, @function
n386_statement_begin_bx:
#=======================================================================================================================
#         T = F ARBNO('*' F . *MUL() | '/' F . *DIV())
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 64 0
n386_statement_begin_α: mov              r11, 300
                        mov              r10, 36;                             jmp   n387_var_α
n386_statement_begin_β: mov              r11, 300;                            jmp   n398_statement_begin_α
                        .size            n386_statement_begin_bx, .-n386_statement_begin_bx
                        .type            n387_var_bx, @function
n387_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_var_α:             sub              rsp, 16
                        mov              r11, 301
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n388_var_α
                        .size            n387_var_bx, .-n387_var_bx
                        .type            n388_var_bx, @function
n388_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_var_α:             sub              rsp, 16
                        mov              r11, 302
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n389_var_α
n388_var_β:             mov              r11, 302
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n386_statement_begin_β
                        .size            n388_var_bx, .-n388_var_bx
                        .type            n389_var_bx, @function
n389_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_var_α:             sub              rsp, 16
                        mov              r11, 303
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n390_assign_α
n389_var_β:             mov              r11, 303
                        add              rsp, 16;                             jmp   n388_var_β
                        .size            n389_var_bx, .-n389_var_bx
                        .type            n390_assign_bx, @function
n390_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_assign_α:          mov              r11, 304
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 496], rax            # PAT$4$V0
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
                        mov              rdi, qword ptr [rip + .Lassign_α_887_0]
                        .section         .rodata
.Lassign_α_887_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_887_1_s]
                        mov              r8, 64
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
                        pop              rax;                                 jmp   n391_assign_α
.Lassign_α_887_0:       .quad            .Lassign_α_887_0_s
.Lassign_α_887_0_s:     .string          "PAT$4$V0"
                        .size            n390_assign_bx, .-n390_assign_bx
                        .type            n391_assign_bx, @function
n391_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_assign_α:          mov              r11, 305
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 512], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 520], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_888_0]
                        .section         .rodata
.Lassign_α_888_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_888_1_s]
                        mov              r8, 64
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
                        pop              rax;                                 jmp   n392_assign_α
.Lassign_α_888_0:       .quad            .Lassign_α_888_0_s
.Lassign_α_888_0_s:     .string          "PAT$4$V1"
                        .size            n391_assign_bx, .-n391_assign_bx
                        .type            n392_assign_bx, @function
n392_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_assign_α:          mov              r11, 306
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 528], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 536], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_889_0]
                        .section         .rodata
.Lassign_α_889_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_889_1_s]
                        mov              r8, 64
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
                        pop              rax;                                 jmp   n393_lit_string_α
.Lassign_α_889_0:       .quad            .Lassign_α_889_0_s
.Lassign_α_889_0_s:     .string          "PAT$4$V2"
                        .size            n392_assign_bx, .-n392_assign_bx
                        .type            n393_lit_string_bx, @function
n393_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_string_α:      sub              rsp, 16
                        mov              r11, 307
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_890_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n394_lit_string_α
n393_lit_string_β:      mov              r11, 307
                        add              rsp, 16;                             jmp   n389_var_β
.Llit_string_α_890_0:   .quad            .Llit_string_α_890_0_s
.Llit_string_α_890_0_s: .string          "PAT$4"
                        .size            n393_lit_string_bx, .-n393_lit_string_bx
                        .type            n394_lit_string_bx, @function
n394_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_lit_string_α:      sub              rsp, 16
                        mov              r11, 308
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_891_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n395_call_α
n394_lit_string_β:      mov              r11, 308
                        add              rsp, 16;                             jmp   n393_lit_string_β
.Llit_string_α_891_0:   .quad            .Llit_string_α_891_0_s
.Llit_string_α_891_0_s: .string          "3"
                        .size            n394_lit_string_bx, .-n394_lit_string_bx
                        .type            n395_call_bx, @function
n395_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_call_α:            sub              rsp, 16
                        mov              r11, 309
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
.Lcall_α_rkfnzd893:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd893]
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
                        cmp              al, 104;                             jne   .Lcall_α_892_240
                        add              rsp, 16;                             jmp   n394_lit_string_β
.Lcall_α_892_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n396_assign_α
n395_call_β:            mov              r11, 309
                        add              rsp, 16;                             jmp   n394_lit_string_β
                        .size            n395_call_bx, .-n395_call_bx
                        .type            n396_assign_bx, @function
n396_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_assign_α:          mov              r11, 310
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # T
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
                        mov              rdi, qword ptr [rip + .Lassign_α_894_0]
                        .section         .rodata
.Lassign_α_894_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_894_1_s]
                        mov              r8, 64
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
                        pop              rax;                                 jmp   n397_statement_end_α
.Lassign_α_894_0:       .quad            .Lassign_α_894_0_s
.Lassign_α_894_0_s:     .string          "T"
                        .size            n396_assign_bx, .-n396_assign_bx
                        .type            n397_statement_end_bx, @function
n397_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_statement_end_α:   mov              r11, 311
                        mov              r10, 36
                        add              rsp, 96;                             jmp   n398_statement_begin_α
                        .size            n397_statement_end_bx, .-n397_statement_end_bx
                        .type            n398_statement_begin_bx, @function
n398_statement_begin_bx:
#=======================================================================================================================
#         X = T ARBNO('+' T . *ADD() | '-' T . *SUB())
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 65 0
n398_statement_begin_α: mov              r11, 312
                        mov              r10, 37;                             jmp   n399_var_α
n398_statement_begin_β: mov              r11, 312;                            jmp   n410_statement_begin_α
                        .size            n398_statement_begin_bx, .-n398_statement_begin_bx
                        .type            n399_var_bx, @function
n399_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_var_α:             sub              rsp, 16
                        mov              r11, 313
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n400_var_α
                        .size            n399_var_bx, .-n399_var_bx
                        .type            n400_var_bx, @function
n400_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:             sub              rsp, 16
                        mov              r11, 314
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n401_var_α
n400_var_β:             mov              r11, 314
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n398_statement_begin_β
                        .size            n400_var_bx, .-n400_var_bx
                        .type            n401_var_bx, @function
n401_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_var_α:             sub              rsp, 16
                        mov              r11, 315
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n402_assign_α
n401_var_β:             mov              r11, 315
                        add              rsp, 16;                             jmp   n400_var_β
                        .size            n401_var_bx, .-n401_var_bx
                        .type            n402_assign_bx, @function
n402_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_assign_α:          mov              r11, 316
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 544], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 552], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_902_0]
                        .section         .rodata
.Lassign_α_902_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_902_1_s]
                        mov              r8, 65
                        mov              r9, 37
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
                        pop              rax;                                 jmp   n403_assign_α
.Lassign_α_902_0:       .quad            .Lassign_α_902_0_s
.Lassign_α_902_0_s:     .string          "PAT$5$V0"
                        .size            n402_assign_bx, .-n402_assign_bx
                        .type            n403_assign_bx, @function
n403_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_assign_α:          mov              r11, 317
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 560], rax            # PAT$5$V1
                        mov              qword ptr [r9 + 568], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_903_0]
                        .section         .rodata
.Lassign_α_903_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_903_1_s]
                        mov              r8, 65
                        mov              r9, 37
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
                        pop              rax;                                 jmp   n404_assign_α
.Lassign_α_903_0:       .quad            .Lassign_α_903_0_s
.Lassign_α_903_0_s:     .string          "PAT$5$V1"
                        .size            n403_assign_bx, .-n403_assign_bx
                        .type            n404_assign_bx, @function
n404_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_assign_α:          mov              r11, 318
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # PAT$5$V2
                        mov              qword ptr [r9 + 584], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_904_0]
                        .section         .rodata
.Lassign_α_904_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_904_1_s]
                        mov              r8, 65
                        mov              r9, 37
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
                        pop              rax;                                 jmp   n405_lit_string_α
.Lassign_α_904_0:       .quad            .Lassign_α_904_0_s
.Lassign_α_904_0_s:     .string          "PAT$5$V2"
                        .size            n404_assign_bx, .-n404_assign_bx
                        .type            n405_lit_string_bx, @function
n405_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:      sub              rsp, 16
                        mov              r11, 319
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_905_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n406_lit_string_α
n405_lit_string_β:      mov              r11, 319
                        add              rsp, 16;                             jmp   n401_var_β
.Llit_string_α_905_0:   .quad            .Llit_string_α_905_0_s
.Llit_string_α_905_0_s: .string          "PAT$5"
                        .size            n405_lit_string_bx, .-n405_lit_string_bx
                        .type            n406_lit_string_bx, @function
n406_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:      sub              rsp, 16
                        mov              r11, 320
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_906_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n407_call_α
n406_lit_string_β:      mov              r11, 320
                        add              rsp, 16;                             jmp   n405_lit_string_β
.Llit_string_α_906_0:   .quad            .Llit_string_α_906_0_s
.Llit_string_α_906_0_s: .string          "3"
                        .size            n406_lit_string_bx, .-n406_lit_string_bx
                        .type            n407_call_bx, @function
n407_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_call_α:            sub              rsp, 16
                        mov              r11, 321
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
.Lcall_α_rkfnzd908:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd908]
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
                        cmp              al, 104;                             jne   .Lcall_α_907_240
                        add              rsp, 16;                             jmp   n406_lit_string_β
.Lcall_α_907_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n408_assign_α
n407_call_β:            mov              r11, 321
                        add              rsp, 16;                             jmp   n406_lit_string_β
                        .size            n407_call_bx, .-n407_call_bx
                        .type            n408_assign_bx, @function
n408_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_assign_α:          mov              r11, 322
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # X
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
                        mov              rdi, qword ptr [rip + .Lassign_α_909_0]
                        .section         .rodata
.Lassign_α_909_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_909_1_s]
                        mov              r8, 65
                        mov              r9, 37
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
                        pop              rax;                                 jmp   n409_statement_end_α
.Lassign_α_909_0:       .quad            .Lassign_α_909_0_s
.Lassign_α_909_0_s:     .string          "X"
                        .size            n408_assign_bx, .-n408_assign_bx
                        .type            n409_statement_end_bx, @function
n409_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_statement_end_α:   mov              r11, 323
                        mov              r10, 37
                        add              rsp, 96;                             jmp   n410_statement_begin_α
                        .size            n409_statement_end_bx, .-n409_statement_end_bx
                        .type            n410_statement_begin_bx, @function
n410_statement_begin_bx:
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 66 0
n410_statement_begin_α: mov              r11, 324
                        mov              r10, 38;                             jmp   n411_lit_integer_α
n410_statement_begin_β: mov              r11, 324;                            jmp   n419_statement_begin_α
                        .size            n410_statement_begin_bx, .-n410_statement_begin_bx
                        .type            n411_lit_integer_bx, @function
n411_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_integer_α:     sub              rsp, 16
                        mov              r11, 325
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_914_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n412_call_α
.Llit_integer_α_914_0:  .quad            10
                        .size            n411_lit_integer_bx, .-n411_lit_integer_bx
                        .type            n412_call_bx, @function
n412_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_call_α:            sub              rsp, 16
                        mov              r11, 326
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd326: .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd326]
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
                        cmp              al, 104;                             jne   .Lcall_α_915_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n410_statement_begin_β
.Lcall_α_915_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n413_assign_α
n412_call_β:            mov              r11, 326
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n410_statement_begin_β
                        .size            n412_call_bx, .-n412_call_bx
                        .type            n413_assign_bx, @function
n413_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_assign_α:          mov              r11, 327
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # PAT$6$V0
                        mov              qword ptr [r9 + 600], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_916_0]
                        .section         .rodata
.Lassign_α_916_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_916_1_s]
                        mov              r8, 66
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
                        pop              rax;                                 jmp   n414_lit_string_α
.Lassign_α_916_0:       .quad            .Lassign_α_916_0_s
.Lassign_α_916_0_s:     .string          "PAT$6$V0"
                        .size            n413_assign_bx, .-n413_assign_bx
                        .type            n414_lit_string_bx, @function
n414_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:      sub              rsp, 16
                        mov              r11, 328
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_917_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n415_lit_string_α
n414_lit_string_β:      mov              r11, 328
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n410_statement_begin_β
.Llit_string_α_917_0:   .quad            .Llit_string_α_917_0_s
.Llit_string_α_917_0_s: .string          "PAT$6"
                        .size            n414_lit_string_bx, .-n414_lit_string_bx
                        .type            n415_lit_string_bx, @function
n415_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_string_α:      sub              rsp, 16
                        mov              r11, 329
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_918_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n416_call_α
n415_lit_string_β:      mov              r11, 329
                        add              rsp, 16;                             jmp   n414_lit_string_β
.Llit_string_α_918_0:   .quad            .Llit_string_α_918_0_s
.Llit_string_α_918_0_s: .string          "1"
                        .size            n415_lit_string_bx, .-n415_lit_string_bx
                        .type            n416_call_bx, @function
n416_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_call_α:            sub              rsp, 16
                        mov              r11, 330
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
.Lcall_α_rkfnzd920:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd920]
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
                        cmp              al, 104;                             jne   .Lcall_α_919_240
                        add              rsp, 16;                             jmp   n415_lit_string_β
.Lcall_α_919_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n417_assign_α
n416_call_β:            mov              r11, 330
                        add              rsp, 16;                             jmp   n415_lit_string_β
                        .size            n416_call_bx, .-n416_call_bx
                        .type            n417_assign_bx, @function
n417_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_assign_α:          mov              r11, 331
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # eol
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
.Lassign_α_921_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_921_1_s]
                        mov              r8, 66
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
                        pop              rax;                                 jmp   n418_statement_end_α
.Lassign_α_921_0:       .quad            .Lassign_α_921_0_s
.Lassign_α_921_0_s:     .string          "eol"
                        .size            n417_assign_bx, .-n417_assign_bx
                        .type            n418_statement_end_bx, @function
n418_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_statement_end_α:   mov              r11, 332
                        mov              r10, 38
                        add              rsp, 80;                             jmp   n419_statement_begin_α
                        .size            n418_statement_end_bx, .-n418_statement_end_bx
                        .type            n419_statement_begin_bx, @function
n419_statement_begin_bx:
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 67 0
n419_statement_begin_α: mov              r11, 333
                        mov              r10, 39;                             jmp   n420_var_α
n419_statement_begin_β: mov              r11, 333;                            jmp   n431_statement_begin_α
                        .size            n419_statement_begin_bx, .-n419_statement_begin_bx
                        .type            n420_var_bx, @function
n420_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_var_α:             sub              rsp, 16
                        mov              r11, 334
                        mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n421_var_α
                        .size            n420_var_bx, .-n420_var_bx
                        .type            n421_var_bx, @function
n421_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:             sub              rsp, 16
                        mov              r11, 335
                        mov              rax, qword ptr [r9 + 352]            # eol
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n422_var_α
n421_var_β:             mov              r11, 335
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n419_statement_begin_β
                        .size            n421_var_bx, .-n421_var_bx
                        .type            n422_var_bx, @function
n422_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:             sub              rsp, 16
                        mov              r11, 336
                        mov              rax, qword ptr [r9 + 384]            # epsilon
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n423_assign_α
n422_var_β:             mov              r11, 336
                        add              rsp, 16;                             jmp   n421_var_β
                        .size            n422_var_bx, .-n422_var_bx
                        .type            n423_assign_bx, @function
n423_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_assign_α:          mov              r11, 337
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 608], rax            # PAT$7$V0
                        mov              qword ptr [r9 + 616], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_929_0]
                        .section         .rodata
.Lassign_α_929_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_929_1_s]
                        mov              r8, 67
                        mov              r9, 39
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
                        pop              rax;                                 jmp   n424_assign_α
.Lassign_α_929_0:       .quad            .Lassign_α_929_0_s
.Lassign_α_929_0_s:     .string          "PAT$7$V0"
                        .size            n423_assign_bx, .-n423_assign_bx
                        .type            n424_assign_bx, @function
n424_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_assign_α:          mov              r11, 338
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 624], rax            # PAT$7$V1
                        mov              qword ptr [r9 + 632], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_930_0]
                        .section         .rodata
.Lassign_α_930_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_930_1_s]
                        mov              r8, 67
                        mov              r9, 39
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
                        pop              rax;                                 jmp   n425_assign_α
.Lassign_α_930_0:       .quad            .Lassign_α_930_0_s
.Lassign_α_930_0_s:     .string          "PAT$7$V1"
                        .size            n424_assign_bx, .-n424_assign_bx
                        .type            n425_assign_bx, @function
n425_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_assign_α:          mov              r11, 339
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 640], rax            # PAT$7$V2
                        mov              qword ptr [r9 + 648], rdx
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
.Lassign_α_931_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_931_1_s]
                        mov              r8, 67
                        mov              r9, 39
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
                        pop              rax;                                 jmp   n426_lit_string_α
.Lassign_α_931_0:       .quad            .Lassign_α_931_0_s
.Lassign_α_931_0_s:     .string          "PAT$7$V2"
                        .size            n425_assign_bx, .-n425_assign_bx
                        .type            n426_lit_string_bx, @function
n426_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_string_α:      sub              rsp, 16
                        mov              r11, 340
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_932_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n427_lit_string_α
n426_lit_string_β:      mov              r11, 340
                        add              rsp, 16;                             jmp   n422_var_β
.Llit_string_α_932_0:   .quad            .Llit_string_α_932_0_s
.Llit_string_α_932_0_s: .string          "PAT$7"
                        .size            n426_lit_string_bx, .-n426_lit_string_bx
                        .type            n427_lit_string_bx, @function
n427_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_string_α:      sub              rsp, 16
                        mov              r11, 341
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_933_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n428_call_α
n427_lit_string_β:      mov              r11, 341
                        add              rsp, 16;                             jmp   n426_lit_string_β
.Llit_string_α_933_0:   .quad            .Llit_string_α_933_0_s
.Llit_string_α_933_0_s: .string          "3"
                        .size            n427_lit_string_bx, .-n427_lit_string_bx
                        .type            n428_call_bx, @function
n428_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_call_α:            sub              rsp, 16
                        mov              r11, 342
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
                        add              rsp, 16;                             jmp   n427_lit_string_β
.Lcall_α_934_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n429_assign_α
n428_call_β:            mov              r11, 342
                        add              rsp, 16;                             jmp   n427_lit_string_β
                        .size            n428_call_bx, .-n428_call_bx
                        .type            n429_assign_bx, @function
n429_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_assign_α:          mov              r11, 343
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # C
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
                        mov              rdi, qword ptr [rip + .Lassign_α_936_0]
                        .section         .rodata
.Lassign_α_936_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_936_1_s]
                        mov              r8, 67
                        mov              r9, 39
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
.Lassign_α_936_0:       .quad            .Lassign_α_936_0_s
.Lassign_α_936_0_s:     .string          "C"
                        .size            n429_assign_bx, .-n429_assign_bx
                        .type            n430_statement_end_bx, @function
n430_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_statement_end_α:   mov              r11, 344
                        mov              r10, 39
                        add              rsp, 96;                             jmp   n431_statement_begin_α
                        .size            n430_statement_end_bx, .-n430_statement_end_bx
                        .type            n431_statement_begin_bx, @function
n431_statement_begin_bx:
#=======================================================================================================================
#         &TRIM = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 69 0
n431_statement_begin_α: mov              r11, 345
                        mov              r10, 40;                             jmp   n432_lit_integer_α
n431_statement_begin_β: mov              r11, 345;                            jmp   n435_statement_begin_α
                        .size            n431_statement_begin_bx, .-n431_statement_begin_bx
                        .type            n432_lit_integer_bx, @function
n432_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_integer_α:     sub              rsp, 16
                        mov              r11, 346
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_941_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n433_kw_assign_snobol4_α
.Llit_integer_α_941_0:  .quad            0
                        .size            n432_lit_integer_bx, .-n432_lit_integer_bx
                        .type            n433_kw_assign_snobol4_bx, @function
n433_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 347
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_942_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_942_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n431_statement_begin_β
.Lkw_assign_snobol4_α_942_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n434_statement_end_α
.Lkw_assign_snobol4_α_942_0:
                        .quad            1
                        .size            n433_kw_assign_snobol4_bx, .-n433_kw_assign_snobol4_bx
                        .type            n434_statement_end_bx, @function
n434_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_statement_end_α:   mov              r11, 348
                        mov              r10, 40
                        add              rsp, 32;                             jmp   n435_statement_begin_α
                        .size            n434_statement_end_bx, .-n434_statement_end_bx
                        .type            n435_statement_begin_bx, @function
n435_statement_begin_bx:
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 70 0
n435_statement_begin_α: mov              r11, 349
                        mov              r10, 41;                             jmp   n436_call_α
n435_statement_begin_β: mov              r11, 349;                            jmp   n439_statement_begin_α
                        .size            n435_statement_begin_bx, .-n435_statement_begin_bx
                        .type            n436_call_bx, @function
n436_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_call_α:            sub              rsp, 16
                        mov              r11, 350
                        .section         .rodata
.Lcall_α_rkfnzd948:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd948]
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
                        cmp              al, 104;                             jne   .Lcall_α_947_240
                        add              rsp, 16;                             jmp   n435_statement_begin_β
.Lcall_α_947_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n437_assign_α
n436_call_β:            mov              r11, 350
                        add              rsp, 16;                             jmp   n435_statement_begin_β
                        .size            n436_call_bx, .-n436_call_bx
                        .type            n437_assign_bx, @function
n437_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_assign_α:          mov              r11, 351
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # vars
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
                        mov              rdi, qword ptr [rip + .Lassign_α_949_0]
                        .section         .rodata
.Lassign_α_949_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_949_1_s]
                        mov              r8, 70
                        mov              r9, 41
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
                        pop              rax;                                 jmp   n438_statement_end_α
.Lassign_α_949_0:       .quad            .Lassign_α_949_0_s
.Lassign_α_949_0_s:     .string          "vars"
                        .size            n437_assign_bx, .-n437_assign_bx
                        .type            n438_statement_end_bx, @function
n438_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_statement_end_α:   mov              r11, 352
                        mov              r10, 41
                        add              rsp, 16;                             jmp   n439_statement_begin_α
                        .size            n438_statement_end_bx, .-n438_statement_end_bx
                        .type            n439_statement_begin_bx, @function
n439_statement_begin_bx:
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 71 0
n439_statement_begin_α: mov              r11, 353
                        mov              r10, 42;                             jmp   n440_var_α
n439_statement_begin_β: mov              r11, 353;                            jmp   n445_statement_begin_α
                        .size            n439_statement_begin_bx, .-n439_statement_begin_bx
                        .type            n440_var_bx, @function
n440_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_var_α:             sub              rsp, 16
                        mov              r11, 354
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n441_lit_string_α
                        .size            n440_var_bx, .-n440_var_bx
                        .type            n441_lit_string_bx, @function
n441_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_string_α:      sub              rsp, 16
                        mov              r11, 355
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_955_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n442_lit_integer_α
n441_lit_string_β:      mov              r11, 355
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n439_statement_begin_β
.Llit_string_α_955_0:   .quad            .Llit_string_α_955_0_s
.Llit_string_α_955_0_s: .string          "x"
                        .size            n441_lit_string_bx, .-n441_lit_string_bx
                        .type            n442_lit_integer_bx, @function
n442_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_integer_α:     sub              rsp, 16
                        mov              r11, 356
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_956_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n443_assign_var_α
n442_lit_integer_β:     mov              r11, 356
                        add              rsp, 16;                             jmp   n441_lit_string_β
.Llit_integer_α_956_0:  .quad            1
                        .size            n442_lit_integer_bx, .-n442_lit_integer_bx
                        .type            n443_assign_var_bx, @function
n443_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_assign_var_α:      sub              rsp, 16
                        mov              r11, 357
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_958_0
                        test             rsi, rsi;                            je    .Lassign_var_α_958_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_958_238
                        add              rsp, 16;                             jmp   n442_lit_integer_β
.Lassign_var_α_958_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n444_statement_end_α
.Lassign_var_α_958_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_958_239
                        add              rsp, 16;                             jmp   n442_lit_integer_β
.Lassign_var_α_958_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_958_240
                        add              rsp, 16;                             jmp   n442_lit_integer_β
.Lassign_var_α_958_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n444_statement_end_α
                        .size            n443_assign_var_bx, .-n443_assign_var_bx
                        .type            n444_statement_end_bx, @function
n444_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_statement_end_α:   mov              r11, 358
                        mov              r10, 42
                        add              rsp, 64;                             jmp   n445_statement_begin_α
                        .size            n444_statement_end_bx, .-n444_statement_end_bx
                        .type            n445_statement_begin_bx, @function
n445_statement_begin_bx:
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 72 0
n445_statement_begin_α: mov              r11, 359
                        mov              r10, 43;                             jmp   n446_var_α
n445_statement_begin_β: mov              r11, 359;                            jmp   n451_statement_begin_α
                        .size            n445_statement_begin_bx, .-n445_statement_begin_bx
                        .type            n446_var_bx, @function
n446_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_var_α:             sub              rsp, 16
                        mov              r11, 360
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n447_lit_string_α
                        .size            n446_var_bx, .-n446_var_bx
                        .type            n447_lit_string_bx, @function
n447_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_string_α:      sub              rsp, 16
                        mov              r11, 361
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_964_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n448_lit_integer_α
n447_lit_string_β:      mov              r11, 361
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n445_statement_begin_β
.Llit_string_α_964_0:   .quad            .Llit_string_α_964_0_s
.Llit_string_α_964_0_s: .string          "y"
                        .size            n447_lit_string_bx, .-n447_lit_string_bx
                        .type            n448_lit_integer_bx, @function
n448_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:     sub              rsp, 16
                        mov              r11, 362
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_965_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n449_assign_var_α
n448_lit_integer_β:     mov              r11, 362
                        add              rsp, 16;                             jmp   n447_lit_string_β
.Llit_integer_α_965_0:  .quad            2
                        .size            n448_lit_integer_bx, .-n448_lit_integer_bx
                        .type            n449_assign_var_bx, @function
n449_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_assign_var_α:      sub              rsp, 16
                        mov              r11, 363
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_967_0
                        test             rsi, rsi;                            je    .Lassign_var_α_967_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_967_238
                        add              rsp, 16;                             jmp   n448_lit_integer_β
.Lassign_var_α_967_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n450_statement_end_α
.Lassign_var_α_967_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_967_239
                        add              rsp, 16;                             jmp   n448_lit_integer_β
.Lassign_var_α_967_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_967_240
                        add              rsp, 16;                             jmp   n448_lit_integer_β
.Lassign_var_α_967_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n450_statement_end_α
                        .size            n449_assign_var_bx, .-n449_assign_var_bx
                        .type            n450_statement_end_bx, @function
n450_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_statement_end_α:   mov              r11, 364
                        mov              r10, 43
                        add              rsp, 64;                             jmp   n451_statement_begin_α
                        .size            n450_statement_end_bx, .-n450_statement_end_bx
                        .type            n451_statement_begin_bx, @function
n451_statement_begin_bx:
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 73 0
n451_statement_begin_α: mov              r11, 365
                        mov              r10, 44;                             jmp   n452_var_α
n451_statement_begin_β: mov              r11, 365;                            jmp   n457_statement_begin_α
                        .size            n451_statement_begin_bx, .-n451_statement_begin_bx
                        .type            n452_var_bx, @function
n452_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_var_α:             sub              rsp, 16
                        mov              r11, 366
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n453_lit_string_α
                        .size            n452_var_bx, .-n452_var_bx
                        .type            n453_lit_string_bx, @function
n453_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_string_α:      sub              rsp, 16
                        mov              r11, 367
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_973_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n454_lit_integer_α
n453_lit_string_β:      mov              r11, 367
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n451_statement_begin_β
.Llit_string_α_973_0:   .quad            .Llit_string_α_973_0_s
.Llit_string_α_973_0_s: .string          "z"
                        .size            n453_lit_string_bx, .-n453_lit_string_bx
                        .type            n454_lit_integer_bx, @function
n454_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_integer_α:     sub              rsp, 16
                        mov              r11, 368
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_974_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n455_assign_var_α
n454_lit_integer_β:     mov              r11, 368
                        add              rsp, 16;                             jmp   n453_lit_string_β
.Llit_integer_α_974_0:  .quad            3
                        .size            n454_lit_integer_bx, .-n454_lit_integer_bx
                        .type            n455_assign_var_bx, @function
n455_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_assign_var_α:      sub              rsp, 16
                        mov              r11, 369
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lassign_var_α_976_0
                        test             rsi, rsi;                            je    .Lassign_var_α_976_0
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
                        cmp              al, 104;                             jne   .Lassign_var_α_976_238
                        add              rsp, 16;                             jmp   n454_lit_integer_β
.Lassign_var_α_976_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n456_statement_end_α
.Lassign_var_α_976_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_976_239
                        add              rsp, 16;                             jmp   n454_lit_integer_β
.Lassign_var_α_976_239: mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lassign_var_α_976_240
                        add              rsp, 16;                             jmp   n454_lit_integer_β
.Lassign_var_α_976_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n456_statement_end_α
                        .size            n455_assign_var_bx, .-n455_assign_var_bx
                        .type            n456_statement_end_bx, @function
n456_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_statement_end_α:   mov              r11, 370
                        mov              r10, 44
                        add              rsp, 64;                             jmp   n457_statement_begin_α
                        .size            n456_statement_end_bx, .-n456_statement_end_bx
                        .type            n457_statement_begin_bx, @function
n457_statement_begin_bx:
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 75 0
n457_statement_begin_α: mov              r11, 371
                        mov              r10, 45;                             jmp   n458_lit_name_α
n457_statement_begin_β: mov              r11, 371;                            jmp   n463_statement_begin_α
                        .size            n457_statement_begin_bx, .-n457_statement_begin_bx
                        .type            n458_lit_name_bx, @function
n458_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_name_α:        sub              rsp, 16
                        mov              r11, 372
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_981_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n459_lit_integer_α
.Llit_name_α_981_0:     .quad            .Llit_name_α_981_0_s
.Llit_name_α_981_0_s:   .string          "INPUT"
                        .size            n458_lit_name_bx, .-n458_lit_name_bx
                        .type            n459_lit_integer_bx, @function
n459_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_integer_α:     sub              rsp, 16
                        mov              r11, 373
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_982_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n460_lit_string_α
n459_lit_integer_β:     mov              r11, 373
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n457_statement_begin_β
.Llit_integer_α_982_0:  .quad            9
                        .size            n459_lit_integer_bx, .-n459_lit_integer_bx
                        .type            n460_lit_string_bx, @function
n460_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_string_α:      sub              rsp, 16
                        mov              r11, 374
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_983_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n461_call_α
n460_lit_string_β:      mov              r11, 374
                        add              rsp, 16;                             jmp   n459_lit_integer_β
.Llit_string_α_983_0:   .quad            .Llit_string_α_983_0_s
.Llit_string_α_983_0_s: .string          "[-f0 -r4194304]"
                        .size            n460_lit_string_bx, .-n460_lit_string_bx
                        .type            n461_call_bx, @function
n461_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n461_call_α:            sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_α_984_240
                        add              rsp, 16;                             jmp   n460_lit_string_β
.Lcall_α_984_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n462_statement_end_α
n461_call_β:            mov              r11, 375
                        add              rsp, 16;                             jmp   n460_lit_string_β
                        .size            n461_call_bx, .-n461_call_bx
                        .type            n462_statement_end_bx, @function
n462_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_statement_end_α:   mov              r11, 376
                        mov              r10, 45
                        add              rsp, 64;                             jmp   n463_statement_begin_α
                        .size            n462_statement_end_bx, .-n462_statement_end_bx
                        .type            n463_statement_begin_bx, @function
n463_statement_begin_bx:
#=======================================================================================================================
#         src = INPUT
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 76 0
n463_statement_begin_α: mov              r11, 377
                        mov              r10, 46;                             jmp   n464_var_α
n463_statement_begin_β: mov              r11, 377;                            jmp   n467_statement_begin_α
                        .size            n463_statement_begin_bx, .-n463_statement_begin_bx
                        .type            n464_var_bx, @function
n464_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_var_α:             sub              rsp, 16
                        mov              r11, 378
                        mov              rdi, qword ptr [rip + .Lvar_α_989_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_989_240
                        add              rsp, 16;                             jmp   n463_statement_begin_β
.Lvar_α_989_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n465_assign_α
.Lvar_α_989_0:          .quad            .Lvar_α_989_0_s
.Lvar_α_989_0_s:        .string          "INPUT"
                        .size            n464_var_bx, .-n464_var_bx
                        .type            n465_assign_bx, @function
n465_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_assign_α:          mov              r11, 379
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # src
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
                        mov              rdi, qword ptr [rip + .Lassign_α_990_0]
                        .section         .rodata
.Lassign_α_990_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_990_1_s]
                        mov              r8, 76
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
                        pop              rax;                                 jmp   n466_statement_end_α
.Lassign_α_990_0:       .quad            .Lassign_α_990_0_s
.Lassign_α_990_0_s:     .string          "src"
                        .size            n465_assign_bx, .-n465_assign_bx
                        .type            n466_statement_end_bx, @function
n466_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n466_statement_end_α:   mov              r11, 380
                        mov              r10, 46
                        add              rsp, 16;                             jmp   n467_statement_begin_α
                        .size            n466_statement_end_bx, .-n466_statement_end_bx
                        .type            n467_statement_begin_bx, @function
n467_statement_begin_bx:
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 79 0
n467_statement_begin_α: mov              r11, 381
                        mov              r10, 47;                             jmp   n468_call_α
n467_statement_begin_β: mov              r11, 381;                            jmp   n471_statement_begin_α
                        .size            n467_statement_begin_bx, .-n467_statement_begin_bx
                        .type            n468_call_bx, @function
n468_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n468_call_α:            sub              rsp, 16
                        mov              r11, 382
                        .section         .rodata
.Lcall_α_rkfnzd996:     .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd996]
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
                        cmp              al, 104;                             jne   .Lcall_α_995_240
                        add              rsp, 16;                             jmp   n467_statement_begin_β
.Lcall_α_995_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n469_assign_α
n468_call_β:            mov              r11, 382
                        add              rsp, 16;                             jmp   n467_statement_begin_β
                        .size            n468_call_bx, .-n468_call_bx
                        .type            n469_assign_bx, @function
n469_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n469_assign_α:          mov              r11, 383
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # t0
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
                        mov              rdi, qword ptr [rip + .Lassign_α_997_0]
                        .section         .rodata
.Lassign_α_997_1_s:     .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_997_1_s]
                        mov              r8, 79
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
                        pop              rax;                                 jmp   n470_statement_end_α
.Lassign_α_997_0:       .quad            .Lassign_α_997_0_s
.Lassign_α_997_0_s:     .string          "t0"
                        .size            n469_assign_bx, .-n469_assign_bx
                        .type            n470_statement_end_bx, @function
n470_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n470_statement_end_α:   mov              r11, 384
                        mov              r10, 47
                        add              rsp, 16;                             jmp   n471_statement_begin_α
                        .size            n470_statement_end_bx, .-n470_statement_end_bx
                        .type            n471_statement_begin_bx, @function
n471_statement_begin_bx:
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 80 0
n471_statement_begin_α: mov              r11, 385
                        mov              r10, 48;                             jmp   n472_var_α
n471_statement_begin_β: mov              r11, 385;                            jmp   n493_statement_begin_α
                        .size            n471_statement_begin_bx, .-n471_statement_begin_bx
                        .type            n472_var_bx, @function
n472_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n472_var_α:             sub              rsp, 16
                        mov              r11, 386
                        mov              rax, qword ptr [r9 + 400]            # src
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n473_var_α
                        .size            n472_var_bx, .-n472_var_bx
                        .type            n473_var_bx, @function
n473_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n473_var_α:             sub              rsp, 16
                        mov              r11, 387
                        mov              rax, qword ptr [r9 + 368]            # C
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n474_assign_α
n473_var_β:             mov              r11, 387
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n493_statement_begin_α
                        .size            n473_var_bx, .-n473_var_bx
                        .type            n474_assign_bx, @function
n474_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n474_assign_α:          mov              r11, 388
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1004_0]
                        .section         .rodata
.Lassign_α_1004_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1004_1_s]
                        mov              r8, 80
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
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1004_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n475_match_begin_α
n474_assign_β:          mov              r11, 388;                            jmp   n473_var_β
.Lassign_α_1004_0:      .quad            .Lassign_α_1004_0_s
.Lassign_α_1004_0_s:    .string          "PATV$0"
                        .size            n474_assign_bx, .-n474_assign_bx
                        .type            n475_match_begin_bx, @function
n475_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n475_match_begin_α:     mov              r11, 389
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
.Lmatch_begin_α_1006_0: mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_1006_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n476_match_defer_α
n475_match_begin_β:     mov              r11, 389
.Lmatch_begin_α_1006_13:
                        lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_1006_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_1006_1
                                                                              jmp   .Lmatch_begin_α_1006_0
.Lmatch_begin_β_1006_1:
.Lmatch_begin_γ_475_af: mov              r11, 389
.Lmatch_begin_ω_475_af: mov              r11, 389
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
                        pop              rbp;                                 jmp   n474_assign_β
                        .size            n475_match_begin_bx, .-n475_match_begin_bx
                        .type            n476_match_defer_bx, @function
n476_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n476_match_defer_α:     mov              r11, 390
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S22]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_1007_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_1007_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_1007_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_1007_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_1007_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_1007_23
                                                                              jmp   .Lmatch_defer_α_1007_22
.Lmatch_defer_α_1007_32:
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_1007_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_1007_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_1007_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_1007_0
.Lmatch_defer_α_1007_31:
                        mov              edx, -1;                             jmp   .Lmatch_defer_α_1007_0
.Lmatch_defer_α_1007_22:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S22]
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
.Lmatch_defer_α_1007_23:
                        test             rax, rax;                            jz    .Lmatch_defer_α_1007_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_1007_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_1007_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_1007_4:                                                       jmp   n477_match_end_α
.Lmatch_defer_α_1007_5:                                                       jmp   n475_match_begin_β
.Lmatch_defer_α_1007_0: mov              eax, edx
                        test             eax, eax;                            js    n475_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_1007_6]
                        push             rcx
                        push             rax;                                 jmp   n477_match_end_α
.Lmatch_defer_α_1007_6: add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n475_match_begin_β
n476_match_defer_β:     mov              r11, 390
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_1007_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_1007_12
                                                                              jmp   rax
.Lmatch_defer_β_1007_12:
                                                                              jmp   qword ptr [rsp]
                        .size            n476_match_defer_bx, .-n476_match_defer_bx
                        .type            n477_match_end_bx, @function
n477_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n477_match_end_α:       mov              r11, 391
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
                        test             rax, rax;                            je    .Lmatch_end_α_1009_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_475_af
.Lmatch_end_α_1009_13:  add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n478_statement_end_α
                        .size            n477_match_end_bx, .-n477_match_end_bx
                        .type            n478_statement_end_bx, @function
n478_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n478_statement_end_α:   mov              r11, 392
                        mov              r10, 48
                        add              rsp, 32;                             jmp   n479_statement_begin_α
                        .size            n478_statement_end_bx, .-n478_statement_end_bx
                        .type            n479_statement_begin_bx, @function
n479_statement_begin_bx:
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 81 0
n479_statement_begin_α: mov              r11, 393
                        mov              r10, 49;                             jmp   n480_call_α
n479_statement_begin_β: mov              r11, 393;                            jmp   n483_statement_begin_α
                        .size            n479_statement_begin_bx, .-n479_statement_begin_bx
                        .type            n480_call_bx, @function
n480_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n480_call_α:            sub              rsp, 16
                        mov              r11, 394
                        .section         .rodata
.Lcall_α_rkfnzd1015:    .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1015]
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
                        cmp              al, 104;                             jne   .Lcall_α_1014_240
                        add              rsp, 16;                             jmp   n479_statement_begin_β
.Lcall_α_1014_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n481_assign_α
n480_call_β:            mov              r11, 394
                        add              rsp, 16;                             jmp   n479_statement_begin_β
                        .size            n480_call_bx, .-n480_call_bx
                        .type            n481_assign_bx, @function
n481_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n481_assign_α:          mov              r11, 395
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # t1
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1016_0]
                        .section         .rodata
.Lassign_α_1016_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1016_1_s]
                        mov              r8, 81
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
                        pop              rax;                                 jmp   n482_statement_end_α
.Lassign_α_1016_0:      .quad            .Lassign_α_1016_0_s
.Lassign_α_1016_0_s:    .string          "t1"
                        .size            n481_assign_bx, .-n481_assign_bx
                        .type            n482_statement_end_bx, @function
n482_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n482_statement_end_α:   mov              r11, 396
                        mov              r10, 49
                        add              rsp, 16;                             jmp   n483_statement_begin_α
                        .size            n482_statement_end_bx, .-n482_statement_end_bx
                        .type            n483_statement_begin_bx, @function
n483_statement_begin_bx:
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000        :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 82 0
n483_statement_begin_α: mov              r11, 397
                        mov              r10, 50;                             jmp   n484_lit_string_α
n483_statement_begin_β: mov              r11, 397;                            jmp   main_γ
                        .size            n483_statement_begin_bx, .-n483_statement_begin_bx
                        .type            n484_lit_string_bx, @function
n484_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_string_α:      sub              rsp, 16
                        mov              r11, 398
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_1021_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n485_var_α
.Llit_string_α_1021_0:  .quad            .Llit_string_α_1021_0_s
.Llit_string_α_1021_0_s:
                        .string          "match_ms="
                        .size            n484_lit_string_bx, .-n484_lit_string_bx
                        .type            n485_var_bx, @function
n485_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n485_var_α:             sub              rsp, 16
                        mov              r11, 399
                        mov              rax, qword ptr [r9 + 432]            # t1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n486_var_α
n485_var_β:             mov              r11, 399
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n483_statement_begin_β
                        .size            n485_var_bx, .-n485_var_bx
                        .type            n486_var_bx, @function
n486_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n486_var_α:             sub              rsp, 16
                        mov              r11, 400
                        mov              rax, qword ptr [r9 + 416]            # t0
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n487_binop_α
n486_var_β:             mov              r11, 400
                        add              rsp, 16;                             jmp   n485_var_β
                        .size            n486_var_bx, .-n486_var_bx
                        .type            n487_binop_bx, @function
n487_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n487_binop_α:           sub              rsp, 16
                        mov              r11, 401
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1024_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_1024_7
.Lbinop_α_1024_2:       and              edx, 1;                              jz    .Lbinop_α_1024_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_1024_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1024_4
.Lbinop_α_1024_3:       movq             xmm0, rsi
.Lbinop_α_1024_4:       cmp              cl, 5;                               je    .Lbinop_α_1024_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1024_6
.Lbinop_α_1024_5:       movq             xmm1, rdi
.Lbinop_α_1024_6:       subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_1024_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_1024_7:                                                             jmp   n488_lit_integer_α
.Lbinop_α_1024_0:       mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_1024_240
                        add              rsp, 16;                             jmp   n486_var_β
.Lbinop_α_1024_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n488_lit_integer_α
n487_binop_β:           mov              r11, 401
                        add              rsp, 16;                             jmp   n486_var_β
                        .size            n487_binop_bx, .-n487_binop_bx
                        .type            n488_lit_integer_bx, @function
n488_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_integer_α:     sub              rsp, 16
                        mov              r11, 402
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1025_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n489_binop_α
n488_lit_integer_β:     mov              r11, 402
                        add              rsp, 16;                             jmp   n487_binop_β
.Llit_integer_α_1025_0: .quad            1000000
                        .size            n488_lit_integer_bx, .-n488_lit_integer_bx
                        .type            n489_binop_bx, @function
n489_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n489_binop_α:           sub              rsp, 16
                        mov              r11, 403
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
                        cmp              al, 104;                             jne   .Lbinop_α_1026_240
                        add              rsp, 16;                             jmp   n488_lit_integer_β
.Lbinop_α_1026_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n490_binop_α
n489_binop_β:           mov              r11, 403
                        add              rsp, 16;                             jmp   n488_lit_integer_β
                        .size            n489_binop_bx, .-n489_binop_bx
                        .type            n490_binop_bx, @function
n490_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n490_binop_α:           sub              rsp, 16
                        mov              r11, 404
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n491_assign_α
                        .size            n490_binop_bx, .-n490_binop_bx
                        .type            n491_assign_bx, @function
n491_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n491_assign_α:          mov              r11, 405
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1028_0]
                        .section         .rodata
.Lassign_α_1028_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1028_1_s]
                        mov              r8, 82
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1028_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n492_statement_end_α
.Lassign_α_1028_0:      .quad            .Lassign_α_1028_0_s
.Lassign_α_1028_0_s:    .string          "TERMINAL"
                        .size            n491_assign_bx, .-n491_assign_bx
                        .type            n492_statement_end_bx, @function
n492_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n492_statement_end_α:   mov              r11, 406
                        mov              r10, 50
                        add              rsp, 112;                            jmp   main_γ
                        .size            n492_statement_end_bx, .-n492_statement_end_bx
                        .type            n493_statement_begin_bx, @function
n493_statement_begin_bx:
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 83 0
n493_statement_begin_α: mov              r11, 407
                        mov              r10, 51;                             jmp   n494_call_α
n493_statement_begin_β: mov              r11, 407;                            jmp   n497_statement_begin_α
                        .size            n493_statement_begin_bx, .-n493_statement_begin_bx
                        .type            n494_call_bx, @function
n494_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n494_call_α:            sub              rsp, 16
                        mov              r11, 408
                        .section         .rodata
.Lcall_α_rkfnzd1034:    .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd1034]
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
                        cmp              al, 104;                             jne   .Lcall_α_1033_240
                        add              rsp, 16;                             jmp   n493_statement_begin_β
.Lcall_α_1033_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n495_assign_α
n494_call_β:            mov              r11, 408
                        add              rsp, 16;                             jmp   n493_statement_begin_β
                        .size            n494_call_bx, .-n494_call_bx
                        .type            n495_assign_bx, @function
n495_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n495_assign_α:          mov              r11, 409
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # t1
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1035_0]
                        .section         .rodata
.Lassign_α_1035_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1035_1_s]
                        mov              r8, 83
                        mov              r9, 51
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
                        pop              rax;                                 jmp   n496_statement_end_α
.Lassign_α_1035_0:      .quad            .Lassign_α_1035_0_s
.Lassign_α_1035_0_s:    .string          "t1"
                        .size            n495_assign_bx, .-n495_assign_bx
                        .type            n496_statement_end_bx, @function
n496_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n496_statement_end_α:   mov              r11, 410
                        mov              r10, 51
                        add              rsp, 16;                             jmp   n497_statement_begin_α
                        .size            n496_statement_end_bx, .-n496_statement_end_bx
                        .type            n497_statement_begin_bx, @function
n497_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 84 0
n497_statement_begin_α: mov              r11, 411
                        mov              r10, 52;                             jmp   n498_lit_string_α
n497_statement_begin_β: mov              r11, 411;                            jmp   n501_statement_begin_α
                        .size            n497_statement_begin_bx, .-n497_statement_begin_bx
                        .type            n498_lit_string_bx, @function
n498_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:      sub              rsp, 16
                        mov              r11, 412
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1040_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n499_assign_α
.Llit_string_α_1040_0:  .quad            .Llit_string_α_1040_0_s
.Llit_string_α_1040_0_s:
                        .string          "Boo!"
                        .size            n498_lit_string_bx, .-n498_lit_string_bx
                        .type            n499_assign_bx, @function
n499_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n499_assign_α:          mov              r11, 413
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1041_0]
                        .section         .rodata
.Lassign_α_1041_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1041_1_s]
                        mov              r8, 84
                        mov              r9, 52
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1041_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n500_statement_end_α
.Lassign_α_1041_0:      .quad            .Lassign_α_1041_0_s
.Lassign_α_1041_0_s:    .string          "OUTPUT"
                        .size            n499_assign_bx, .-n499_assign_bx
                        .type            n500_statement_end_bx, @function
n500_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n500_statement_end_α:   mov              r11, 414
                        mov              r10, 52
                        add              rsp, 16;                             jmp   n501_statement_begin_α
                        .size            n500_statement_end_bx, .-n500_statement_end_bx
                        .type            n501_statement_begin_bx, @function
n501_statement_begin_bx:
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 85 0
n501_statement_begin_α: mov              r11, 415
                        mov              r10, 53;                             jmp   n502_lit_string_α
n501_statement_begin_β: mov              r11, 415;                            jmp   main_γ
                        .size            n501_statement_begin_bx, .-n501_statement_begin_bx
                        .type            n502_lit_string_bx, @function
n502_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_string_α:      sub              rsp, 16
                        mov              r11, 416
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_1046_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n503_var_α
.Llit_string_α_1046_0:  .quad            .Llit_string_α_1046_0_s
.Llit_string_α_1046_0_s:
                        .string          "match_ms="
                        .size            n502_lit_string_bx, .-n502_lit_string_bx
                        .type            n503_var_bx, @function
n503_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n503_var_α:             sub              rsp, 16
                        mov              r11, 417
                        mov              rax, qword ptr [r9 + 432]            # t1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n504_var_α
n503_var_β:             mov              r11, 417
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n501_statement_begin_β
                        .size            n503_var_bx, .-n503_var_bx
                        .type            n504_var_bx, @function
n504_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_var_α:             sub              rsp, 16
                        mov              r11, 418
                        mov              rax, qword ptr [r9 + 416]            # t0
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n505_binop_α
n504_var_β:             mov              r11, 418
                        add              rsp, 16;                             jmp   n503_var_β
                        .size            n504_var_bx, .-n504_var_bx
                        .type            n505_binop_bx, @function
n505_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n505_binop_α:           sub              rsp, 16
                        mov              r11, 419
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1049_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_1049_7
.Lbinop_α_1049_2:       and              edx, 1;                              jz    .Lbinop_α_1049_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_1049_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1049_4
.Lbinop_α_1049_3:       movq             xmm0, rsi
.Lbinop_α_1049_4:       cmp              cl, 5;                               je    .Lbinop_α_1049_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1049_6
.Lbinop_α_1049_5:       movq             xmm1, rdi
.Lbinop_α_1049_6:       subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_1049_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_1049_7:                                                             jmp   n506_lit_integer_α
.Lbinop_α_1049_0:       mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_1049_240
                        add              rsp, 16;                             jmp   n504_var_β
.Lbinop_α_1049_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n506_lit_integer_α
n505_binop_β:           mov              r11, 419
                        add              rsp, 16;                             jmp   n504_var_β
                        .size            n505_binop_bx, .-n505_binop_bx
                        .type            n506_lit_integer_bx, @function
n506_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_integer_α:     sub              rsp, 16
                        mov              r11, 420
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1050_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n507_binop_α
n506_lit_integer_β:     mov              r11, 420
                        add              rsp, 16;                             jmp   n505_binop_β
.Llit_integer_α_1050_0: .quad            1000000
                        .size            n506_lit_integer_bx, .-n506_lit_integer_bx
                        .type            n507_binop_bx, @function
n507_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_binop_α:           sub              rsp, 16
                        mov              r11, 421
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
                        cmp              al, 104;                             jne   .Lbinop_α_1051_240
                        add              rsp, 16;                             jmp   n506_lit_integer_β
.Lbinop_α_1051_240:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n508_binop_α
n507_binop_β:           mov              r11, 421
                        add              rsp, 16;                             jmp   n506_lit_integer_β
                        .size            n507_binop_bx, .-n507_binop_bx
                        .type            n508_binop_bx, @function
n508_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_binop_α:           sub              rsp, 16
                        mov              r11, 422
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n509_assign_α
                        .size            n508_binop_bx, .-n508_binop_bx
                        .type            n509_assign_bx, @function
n509_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_assign_α:          mov              r11, 423
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1053_0]
                        .section         .rodata
.Lassign_α_1053_1_s:    .string          "snobol4/calculator/calculator-2.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1053_1_s]
                        mov              r8, 85
                        mov              r9, 53
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
                        mov              rdi, qword ptr [rip + .Lassign_α_1053_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n510_statement_end_α
.Lassign_α_1053_0:      .quad            .Lassign_α_1053_0_s
.Lassign_α_1053_0_s:    .string          "TERMINAL"
                        .size            n509_assign_bx, .-n509_assign_bx
                        .type            n510_statement_end_bx, @function
n510_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n510_statement_end_α:   mov              r11, 424
                        mov              r10, 53
                        add              rsp, 112;                            jmp   main_γ
                        .size            n510_statement_end_bx, .-n510_statement_end_bx
                        .type            n511_goto_bx, @function
n511_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n511_goto_α:            mov              r11, 425;                            jmp   LBL__EMIT
n511_goto_β:            mov              r11, 425;                            jmp   main_ω
                        .size            n511_goto_bx, .-n511_goto_bx
                        .type            n512_goto_bx, @function
n512_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n512_goto_α:            mov              r11, 426;                            jmp   LBL__PSH
n512_goto_β:            mov              r11, 426;                            jmp   main_ω
                        .size            n512_goto_bx, .-n512_goto_bx
                        .type            n513_goto_bx, @function
n513_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n513_goto_α:            mov              r11, 427;                            jmp   LBL__DRF
n513_goto_β:            mov              r11, 427;                            jmp   main_ω
                        .size            n513_goto_bx, .-n513_goto_bx
                        .type            n514_goto_bx, @function
n514_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n514_goto_α:            mov              r11, 428;                            jmp   LBL__ADD
n514_goto_β:            mov              r11, 428;                            jmp   main_ω
                        .size            n514_goto_bx, .-n514_goto_bx
                        .type            n515_goto_bx, @function
n515_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n515_goto_α:            mov              r11, 429;                            jmp   LBL__SUB
n515_goto_β:            mov              r11, 429;                            jmp   main_ω
                        .size            n515_goto_bx, .-n515_goto_bx
                        .type            n516_goto_bx, @function
n516_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n516_goto_α:            mov              r11, 430;                            jmp   LBL__MUL
n516_goto_β:            mov              r11, 430;                            jmp   main_ω
                        .size            n516_goto_bx, .-n516_goto_bx
                        .type            n517_goto_bx, @function
n517_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n517_goto_α:            mov              r11, 431;                            jmp   LBL__DIV
n517_goto_β:            mov              r11, 431;                            jmp   main_ω
                        .size            n517_goto_bx, .-n517_goto_bx
                        .type            n518_goto_bx, @function
n518_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n518_goto_α:            mov              r11, 432;                            jmp   LBL__SGN
n518_goto_β:            mov              r11, 432;                            jmp   main_ω
                        .size            n518_goto_bx, .-n518_goto_bx
                        .type            n519_goto_bx, @function
n519_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n519_goto_α:            mov              r11, 433;                            jmp   n343_statement_begin_α
n519_goto_β:            mov              r11, 433;                            jmp   main_ω
                        .size            n519_goto_bx, .-n519_goto_bx
                        .type            n520_goto_bx, @function
n520_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n520_goto_α:            mov              r11, 434;                            jmp   n493_statement_begin_α
n520_goto_β:            mov              r11, 434;                            jmp   main_ω
                        .size            n520_goto_bx, .-n520_goto_bx
                        .type            n521_define_bx, @function
n521_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 435
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
                        .size            n521_define_bx, .-n521_define_bx
                        .type            n522_define_bx, @function
n522_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 436
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
                        .size            n522_define_bx, .-n522_define_bx
                        .type            n523_lit_string_bx, @function
n523_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 437
                        push             rax
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 1
                        pop              rax;                                 jmp   RETURN
                        .size            n523_lit_string_bx, .-n523_lit_string_bx
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
                        .long            4768
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
                        .long            4768
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
                        .long            4768
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
                        .long            4768
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
                        .long            4768
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
                        .long            4768
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
                        .long            4768
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "LBL__SGN"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            LBL__SGN
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4768
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
.Lseala15:              .string          "SGN"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            SGN_α
                        lea              rdi, [rip + .Lseala15]
                        mov              rsi, qword ptr [rip + SGN_α@GOTPCREL]
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
                        .long            208
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
                        .long            320
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
                        .long            320
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
                        .long            240
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
.S5:                    .string          "*SGN"
.S6:                    .string          "PAT$3$V0"
.S7:                    .string          "PAT$4$V0"
.S8:                    .string          "PAT$4$V2"
.S9:                    .string          "*DIV"
.S10:                   .string          "PAT$4$V1"
.S11:                   .string          "*MUL"
.S12:                   .string          "PAT$5$V0"
.S13:                   .string          "PAT$5$V2"
.S14:                   .string          "*SUB"
.S15:                   .string          "PAT$5$V1"
.S16:                   .string          "*ADD"
.S17:                   .string          "PAT$6$V0"
.S18:                   .string          "PAT$7$V0"
.S19:                   .string          "PAT$7$V1"
.S20:                   .string          "PAT$7$V2"
.S21:                   .string          "*EMIT"
.S22:                   .string          "PATV$0"
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
