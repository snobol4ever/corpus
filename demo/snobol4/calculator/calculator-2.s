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
n0_match_assign_save_α: sub              rsp, 16
                        mov              r11, 1
                        mov              dword ptr [rsp + 0], r14d;           jmp   n1_match_any_α
n0_match_assign_save_β: mov              r11, 1
                        add              rsp, 16;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_any_α:         mov              r11, 2
                        mov              eax, r14d
                        cmp              eax, r15d;                           jl    .LPAT$0_α_6_239
                        add              rsp, 16;                             jmp   PAT$0_ω
.LPAT$0_α_6_239:        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               jne   .LPAT$0_α_6_240
                        add              rsp, 16;                             jmp   PAT$0_ω
.LPAT$0_α_6_240:        add              r14d, 1;                             jmp   n2_match_assign_cond_α
n1_match_any_β:         mov              r11, 2
                        sub              r14d, 1
                        add              rsp, 16;                             jmp   PAT$0_ω
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
#-----------------------------------------------------------------------------------------------------------------------
n9_match_assign_save_α: sub              rsp, 16
                        mov              r11, 4
                        mov              dword ptr [rsp + 0], r14d;           jmp   n10_match_span_α
n9_match_assign_save_β: mov              r11, 4
                        add              rsp, 16;                             jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_match_span_α:       sub              rsp, 16
                        mov              r11, 5
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.LPAT$1_α_15_0:         cmp              ecx, r15d;                           jge   .LPAT$1_α_15_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .LPAT$1_α_15_1
                        add              ecx, 1;                              jmp   .LPAT$1_α_15_0
.LPAT$1_α_15_1:         cmp              ecx, r14d;                           jg    .LPAT$1_α_15_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$1_ω
.LPAT$1_α_15_240:       mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n11_match_assign_cond_α
n10_match_span_β:       mov              r11, 5
                        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$1_ω
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
#-----------------------------------------------------------------------------------------------------------------------
n18_match_alternate_α:  mov              r11, 7
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .LPAT$2_α_25_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n23_match_defer_α
.LPAT$2_α_25_21:        lea              rax, [rip + .LPAT$2_α_25_22]
                        mov              qword ptr [rbp + -56], rax;          jmp   n22_match_defer_α
.LPAT$2_α_25_22:        lea              rax, [rip + .LPAT$2_α_25_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n19_match_lit_α
n18_match_alternate_s0: mov              r11, 7
                        lea              rax, [rip + .LPAT$2_α_25_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   n18_match_alternate_as
n18_match_alternate_s1: mov              r11, 7
                        lea              rax, [rip + .LPAT$2_α_25_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   n18_match_alternate_as
n18_match_alternate_s2: mov              r11, 7
                        lea              rax, [rip + .LPAT$2_α_25_42]
                        mov              qword ptr [rbp + -64], rax;          jmp   n18_match_alternate_as
.LPAT$2_α_25_40:                                                              jmp   n23_match_defer_β
.LPAT$2_α_25_41:                                                              jmp   n22_match_defer_β
.LPAT$2_α_25_42:                                                              jmp   n21_match_lit_β
n18_match_alternate_as: mov              r11, 7;                              jmp   PAT$2_γ
n18_match_alternate_β:  mov              r11, 7
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
n18_match_alternate_af: mov              r11, 7
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.LPAT$2_α_25_19:                                                              jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_match_lit_α:        mov              r11, 8
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n18_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n18_match_alternate_af
                        add              r14d, 1;                             jmp   n20_match_defer_α
n19_match_lit_β:        mov              r11, 8
                        sub              r14d, 1;                             jmp   n18_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n20_match_defer_α:      mov              r11, 9
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .LPAT$2_α_28_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .LPAT$2_α_28_11
.LPAT$2_α_28_13:        mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        cmp              al, 8;                               jne   .LPAT$2_α_28_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$2_α_28_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 344];           jmp   .LPAT$2_α_28_10
.LPAT$2_α_28_9:         cmp              al, 88;                              jne   .LPAT$2_α_28_21
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
                        test             rax, rax;                            je    .LPAT$2_α_28_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .LPAT$2_α_28_10
.LPAT$2_α_28_21:        xor              eax, eax
.LPAT$2_α_28_10:        test             rax, rax;                            je    .LPAT$2_α_28_15
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rdx
.LPAT$2_α_28_15:
.LPAT$2_α_28_11:        test             rax, rax;                            jz    .LPAT$2_α_28_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$2_α_28_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$2_α_28_4]
                        push             rcx;                                 jmp   rax
.LPAT$2_α_28_4:                                                               jmp   n21_match_lit_α
.LPAT$2_α_28_5:                                                               jmp   n19_match_lit_β
.LPAT$2_α_28_0:         push             r14
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
                        lea              rax, [rip + .LPAT$2_α_28_6]
                        push             rcx
                        push             rax;                                 jmp   n21_match_lit_α
.LPAT$2_α_28_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n19_match_lit_β
n20_match_defer_β:      mov              r11, 9
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$2_β_28_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$2_β_28_12
                                                                              jmp   rax
.LPAT$2_β_28_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n21_match_lit_α:        mov              r11, 10
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n20_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n20_match_defer_β
                        add              r14d, 1;                             jmp   n18_match_alternate_s2
n21_match_lit_β:        mov              r11, 10
                        sub              r14d, 1;                             jmp   n20_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_defer_α:      mov              r11, 11
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$2_α_31_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$2_α_31_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .LPAT$2_α_31_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .LPAT$2_α_31_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .LPAT$2_α_31_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$2_α_31_18
.LPAT$2_α_31_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$2_α_31_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$2_α_31_16:
.LPAT$2_α_31_18:        test             rax, rax;                            jz    .LPAT$2_α_31_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$2_α_31_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$2_α_31_4]
                        push             rcx;                                 jmp   rax
.LPAT$2_α_31_4:                                                               jmp   n18_match_alternate_s1
.LPAT$2_α_31_5:                                                               jmp   n18_match_alternate_af
.LPAT$2_α_31_0:         push             r14
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
                        test             eax, eax;                            js    n18_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$2_α_31_6]
                        push             rcx
                        push             rax;                                 jmp   n18_match_alternate_s1
.LPAT$2_α_31_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n18_match_alternate_af
n22_match_defer_β:      mov              r11, 11
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$2_β_31_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$2_β_31_12
                                                                              jmp   rax
.LPAT$2_β_31_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n23_match_defer_α:      mov              r11, 12
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$2_α_32_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$2_α_32_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$2_α_32_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$2_α_32_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$2_α_32_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$2_α_32_18
.LPAT$2_α_32_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$2_α_32_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$2_α_32_16:
.LPAT$2_α_32_18:        test             rax, rax;                            jz    .LPAT$2_α_32_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$2_α_32_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$2_α_32_4]
                        push             rcx;                                 jmp   rax
.LPAT$2_α_32_4:                                                               jmp   n18_match_alternate_s0
.LPAT$2_α_32_5:                                                               jmp   n18_match_alternate_af
.LPAT$2_α_32_0:         push             r14
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
                        test             eax, eax;                            js    n18_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$2_α_32_6]
                        push             rcx
                        push             rax;                                 jmp   n18_match_alternate_s0
.LPAT$2_α_32_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n18_match_alternate_af
n23_match_defer_β:      mov              r11, 12
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$2_β_32_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$2_β_32_12
                                                                              jmp   rax
.LPAT$2_β_32_12:                                                              jmp   qword ptr [rsp]
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
#-----------------------------------------------------------------------------------------------------------------------
n33_match_alternate_α:  mov              r11, 13
                        mov              dword ptr [rbp + -120], r14d
                        lea              rax, [rip + .LPAT$3_α_42_21]
                        mov              qword ptr [rbp + -104], rax;         jmp   n40_match_defer_α
.LPAT$3_α_42_21:        lea              rax, [rip + .LPAT$3_α_42_19]
                        mov              qword ptr [rbp + -104], rax;         jmp   n34_match_assign_save_α
n33_match_alternate_s0: mov              r11, 13
                        lea              rax, [rip + .LPAT$3_α_42_40]
                        mov              qword ptr [rbp + -112], rax;         jmp   n33_match_alternate_as
n33_match_alternate_s1: mov              r11, 13
                        lea              rax, [rip + .LPAT$3_α_42_41]
                        mov              qword ptr [rbp + -112], rax;         jmp   n33_match_alternate_as
.LPAT$3_α_42_40:                                                              jmp   n40_match_defer_β
.LPAT$3_α_42_41:                                                              jmp   n39_match_assign_cond_β
n33_match_alternate_as: mov              r11, 13;                             jmp   PAT$3_γ
n33_match_alternate_β:  mov              r11, 13
                        mov              rax, qword ptr [rbp + -112];         jmp   rax
n33_match_alternate_af: mov              r11, 13
                        mov              r14d, dword ptr [rbp + -120]
                        mov              rax, qword ptr [rbp + -104];         jmp   rax
.LPAT$3_α_42_19:                                                              jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 14
                        mov              dword ptr [rbp + -48], r14d;         jmp   n35_match_any_α
n34_match_assign_save_β:
                        mov              r11, 14
                        add              rsp, 16;                             jmp   n33_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n35_match_any_α:        mov              r11, 15
                        mov              eax, r14d
                        cmp              eax, r15d;                           jl    .LPAT$3_α_46_240
                        add              rsp, 16;                             jmp   n33_match_alternate_af
.LPAT$3_α_46_240:       movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .LPAT$3_α_46_0
                        cmp              esi, 45;                             je    .LPAT$3_α_46_0
                        add              rsp, 16;                             jmp   n33_match_alternate_af
.LPAT$3_α_46_0:         add              r14d, 1;                             jmp   n36_match_assign_cond_α
n35_match_any_β:        mov              r11, 15
                        sub              r14d, 1
                        add              rsp, 16;                             jmp   n33_match_alternate_af
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
#-----------------------------------------------------------------------------------------------------------------------
n37_match_assign_save_α:
                        mov              r11, 17
                        mov              dword ptr [rbp + -64], r14d;         jmp   n38_match_defer_α
n37_match_assign_save_β:
                        mov              r11, 17;                             jmp   n36_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_defer_α:      mov              r11, 18
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        cmp              al, 8;                               jne   .LPAT$3_α_51_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$3_α_51_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 312];           jmp   .LPAT$3_α_51_10
.LPAT$3_α_51_9:         cmp              al, 88;                              jne   .LPAT$3_α_51_21
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
                        test             rax, rax;                            je    .LPAT$3_α_51_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .LPAT$3_α_51_10
.LPAT$3_α_51_21:        xor              eax, eax
.LPAT$3_α_51_10:        test             rax, rax;                            jz    .LPAT$3_α_51_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$3_α_51_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$3_α_51_4]
                        push             rcx;                                 jmp   rax
.LPAT$3_α_51_4:         mov              rsp, rbp
                        pop              rbp;                                 jmp   n39_match_assign_cond_α
.LPAT$3_α_51_5:         mov              rsp, rbp
                        pop              rbp;                                 jmp   n37_match_assign_save_β
.LPAT$3_α_51_0:         push             r14
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
                        lea              rax, [rip + .LPAT$3_α_51_6]
                        push             rcx
                        push             rax;                                 jmp   n39_match_assign_cond_α
.LPAT$3_α_51_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n37_match_assign_save_β
n38_match_defer_β:      mov              r11, 18
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n37_match_assign_save_β
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
                        add              r12, 24;                             jmp   n33_match_alternate_s1
n39_match_assign_cond_β:
                        mov              r11, 19
                        sub              r12, 24;                             jmp   n38_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n40_match_defer_α:      mov              r11, 20
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$3_α_54_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$3_α_54_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$3_α_54_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$3_α_54_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$3_α_54_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$3_α_54_18
.LPAT$3_α_54_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$3_α_54_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$3_α_54_16:
.LPAT$3_α_54_18:        test             rax, rax;                            jz    .LPAT$3_α_54_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$3_α_54_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$3_α_54_4]
                        push             rcx;                                 jmp   rax
.LPAT$3_α_54_4:                                                               jmp   n33_match_alternate_s0
.LPAT$3_α_54_5:                                                               jmp   n33_match_alternate_af
.LPAT$3_α_54_0:         push             r14
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
                        test             eax, eax;                            js    n33_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$3_α_54_6]
                        push             rcx
                        push             rax;                                 jmp   n33_match_alternate_s0
.LPAT$3_α_54_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n33_match_alternate_af
n40_match_defer_β:      mov              r11, 20
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$3_β_54_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$3_β_54_12
                                                                              jmp   rax
.LPAT$3_β_54_12:                                                              jmp   qword ptr [rsp]
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
#-----------------------------------------------------------------------------------------------------------------------
n55_match_defer_α:      sub              rsp, 16
                        mov              r11, 21
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$4_α_66_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$4_α_66_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$4_α_66_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$4_α_66_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$4_α_66_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$4_α_66_18
.LPAT$4_α_66_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$4_α_66_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$4_α_66_16:
.LPAT$4_α_66_18:        test             rax, rax;                            jz    .LPAT$4_α_66_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$4_α_66_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$4_α_66_4]
                        push             rcx;                                 jmp   rax
.LPAT$4_α_66_4:                                                               jmp   n56_match_arbno_α
.LPAT$4_α_66_5:         add              rsp, 16;                             jmp   PAT$4_ω
.LPAT$4_α_66_0:         push             r14
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
                        test             eax, eax;                            jns   .LPAT$4_α_66_240
                        add              rsp, 16;                             jmp   PAT$4_ω
.LPAT$4_α_66_240:       mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$4_α_66_6]
                        push             rcx
                        push             rax;                                 jmp   n56_match_arbno_α
.LPAT$4_α_66_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$4_ω
n55_match_defer_β:      mov              r11, 21
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$4_β_66_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$4_β_66_12
                                                                              jmp   rax
.LPAT$4_β_66_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n56_match_arbno_α:      mov              r11, 22
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$4_γ
n56_match_arbno_β:      mov              r11, 22
                        mov              r12, qword ptr [rbp + -40];          jmp   n57_match_alternate_α
n56_match_arbno_as:     mov              r11, 22
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n57_match_alternate_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$4_γ
n56_match_arbno_af:     mov              r11, 22
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n55_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n57_match_alternate_α:  mov              r11, 23
                        mov              dword ptr [rbp + -152], r14d
                        lea              rax, [rip + .LPAT$4_α_70_21]
                        mov              qword ptr [rbp + -136], rax;         jmp   n62_match_lit_α
.LPAT$4_α_70_21:        lea              rax, [rip + .LPAT$4_α_70_19]
                        mov              qword ptr [rbp + -136], rax;         jmp   n58_match_lit_α
n57_match_alternate_s0: mov              r11, 23
                        lea              rax, [rip + .LPAT$4_α_70_40]
                        mov              qword ptr [rbp + -144], rax;         jmp   n57_match_alternate_as
n57_match_alternate_s1: mov              r11, 23
                        lea              rax, [rip + .LPAT$4_α_70_41]
                        mov              qword ptr [rbp + -144], rax;         jmp   n57_match_alternate_as
.LPAT$4_α_70_40:                                                              jmp   n65_match_assign_cond_β
.LPAT$4_α_70_41:                                                              jmp   n61_match_assign_cond_β
n57_match_alternate_as: mov              r11, 23;                             jmp   n56_match_arbno_as
n57_match_alternate_β:  mov              r11, 23
                        mov              rax, qword ptr [rbp + -144];         jmp   rax
n57_match_alternate_af: mov              r11, 23
                        mov              r14d, dword ptr [rbp + -152]
                        mov              rax, qword ptr [rbp + -136];         jmp   rax
.LPAT$4_α_70_19:                                                              jmp   n56_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n58_match_lit_α:        mov              r11, 24
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n57_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                             jne   n57_match_alternate_af
                        add              r14d, 1;                             jmp   n59_match_assign_save_α
n58_match_lit_β:        mov              r11, 24
                        sub              r14d, 1;                             jmp   n57_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n59_match_assign_save_α:
                        mov              r11, 25
                        mov              dword ptr [rbp + -96], r14d;         jmp   n60_match_defer_α
n59_match_assign_save_β:
                        mov              r11, 25;                             jmp   n58_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n60_match_defer_α:      mov              r11, 26
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$4_α_75_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$4_α_75_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .LPAT$4_α_75_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .LPAT$4_α_75_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .LPAT$4_α_75_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$4_α_75_18
.LPAT$4_α_75_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$4_α_75_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$4_α_75_16:
.LPAT$4_α_75_18:        test             rax, rax;                            jz    .LPAT$4_α_75_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$4_α_75_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$4_α_75_4]
                        push             rcx;                                 jmp   rax
.LPAT$4_α_75_4:                                                               jmp   n61_match_assign_cond_α
.LPAT$4_α_75_5:                                                               jmp   n59_match_assign_save_β
.LPAT$4_α_75_0:         push             r14
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
                        lea              rax, [rip + .LPAT$4_α_75_6]
                        push             rcx
                        push             rax;                                 jmp   n61_match_assign_cond_α
.LPAT$4_α_75_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n59_match_assign_save_β
n60_match_defer_β:      mov              r11, 26
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$4_β_75_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$4_β_75_12
                                                                              jmp   rax
.LPAT$4_β_75_12:                                                              jmp   qword ptr [rsp]
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
                        add              r12, 24;                             jmp   n57_match_alternate_s1
n61_match_assign_cond_β:
                        mov              r11, 27
                        sub              r12, 24;                             jmp   n60_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n62_match_lit_α:        mov              r11, 28
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n57_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                             jne   n57_match_alternate_af
                        add              r14d, 1;                             jmp   n63_match_assign_save_α
n62_match_lit_β:        mov              r11, 28
                        sub              r14d, 1;                             jmp   n57_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n63_match_assign_save_α:
                        mov              r11, 29
                        mov              dword ptr [rbp + -64], r14d;         jmp   n64_match_defer_α
n63_match_assign_save_β:
                        mov              r11, 29;                             jmp   n62_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n64_match_defer_α:      mov              r11, 30
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$4_α_82_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$4_α_82_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .LPAT$4_α_82_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .LPAT$4_α_82_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .LPAT$4_α_82_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$4_α_82_18
.LPAT$4_α_82_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$4_α_82_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$4_α_82_16:
.LPAT$4_α_82_18:        test             rax, rax;                            jz    .LPAT$4_α_82_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$4_α_82_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$4_α_82_4]
                        push             rcx;                                 jmp   rax
.LPAT$4_α_82_4:                                                               jmp   n65_match_assign_cond_α
.LPAT$4_α_82_5:                                                               jmp   n63_match_assign_save_β
.LPAT$4_α_82_0:         push             r14
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
                        lea              rax, [rip + .LPAT$4_α_82_6]
                        push             rcx
                        push             rax;                                 jmp   n65_match_assign_cond_α
.LPAT$4_α_82_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n63_match_assign_save_β
n64_match_defer_β:      mov              r11, 30
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$4_β_82_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$4_β_82_12
                                                                              jmp   rax
.LPAT$4_β_82_12:                                                              jmp   qword ptr [rsp]
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
                        add              r12, 24;                             jmp   n57_match_alternate_s0
n65_match_assign_cond_β:
                        mov              r11, 31
                        sub              r12, 24;                             jmp   n64_match_defer_β
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
#-----------------------------------------------------------------------------------------------------------------------
n85_match_defer_α:      sub              rsp, 16
                        mov              r11, 32
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$5_α_96_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$5_α_96_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$5_α_96_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$5_α_96_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$5_α_96_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$5_α_96_18
.LPAT$5_α_96_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$5_α_96_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$5_α_96_16:
.LPAT$5_α_96_18:        test             rax, rax;                            jz    .LPAT$5_α_96_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$5_α_96_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$5_α_96_4]
                        push             rcx;                                 jmp   rax
.LPAT$5_α_96_4:                                                               jmp   n86_match_arbno_α
.LPAT$5_α_96_5:         add              rsp, 16;                             jmp   PAT$5_ω
.LPAT$5_α_96_0:         push             r14
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
                        test             eax, eax;                            jns   .LPAT$5_α_96_240
                        add              rsp, 16;                             jmp   PAT$5_ω
.LPAT$5_α_96_240:       mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$5_α_96_6]
                        push             rcx
                        push             rax;                                 jmp   n86_match_arbno_α
.LPAT$5_α_96_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$5_ω
n85_match_defer_β:      mov              r11, 32
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$5_β_96_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$5_β_96_12
                                                                              jmp   rax
.LPAT$5_β_96_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n86_match_arbno_α:      mov              r11, 33
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$5_γ
n86_match_arbno_β:      mov              r11, 33
                        mov              r12, qword ptr [rbp + -40];          jmp   n87_match_alternate_α
n86_match_arbno_as:     mov              r11, 33
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n87_match_alternate_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$5_γ
n86_match_arbno_af:     mov              r11, 33
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n85_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n87_match_alternate_α:  mov              r11, 34
                        mov              dword ptr [rbp + -152], r14d
                        lea              rax, [rip + .LPAT$5_α_100_21]
                        mov              qword ptr [rbp + -136], rax;         jmp   n92_match_lit_α
.LPAT$5_α_100_21:       lea              rax, [rip + .LPAT$5_α_100_19]
                        mov              qword ptr [rbp + -136], rax;         jmp   n88_match_lit_α
n87_match_alternate_s0: mov              r11, 34
                        lea              rax, [rip + .LPAT$5_α_100_40]
                        mov              qword ptr [rbp + -144], rax;         jmp   n87_match_alternate_as
n87_match_alternate_s1: mov              r11, 34
                        lea              rax, [rip + .LPAT$5_α_100_41]
                        mov              qword ptr [rbp + -144], rax;         jmp   n87_match_alternate_as
.LPAT$5_α_100_40:                                                             jmp   n95_match_assign_cond_β
.LPAT$5_α_100_41:                                                             jmp   n91_match_assign_cond_β
n87_match_alternate_as: mov              r11, 34;                             jmp   n86_match_arbno_as
n87_match_alternate_β:  mov              r11, 34
                        mov              rax, qword ptr [rbp + -144];         jmp   rax
n87_match_alternate_af: mov              r11, 34
                        mov              r14d, dword ptr [rbp + -152]
                        mov              rax, qword ptr [rbp + -136];         jmp   rax
.LPAT$5_α_100_19:                                                             jmp   n86_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n88_match_lit_α:        mov              r11, 35
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n87_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n87_match_alternate_af
                        add              r14d, 1;                             jmp   n89_match_assign_save_α
n88_match_lit_β:        mov              r11, 35
                        sub              r14d, 1;                             jmp   n87_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n89_match_assign_save_α:
                        mov              r11, 36
                        mov              dword ptr [rbp + -96], r14d;         jmp   n90_match_defer_α
n89_match_assign_save_β:
                        mov              r11, 36;                             jmp   n88_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n90_match_defer_α:      mov              r11, 37
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$5_α_105_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$5_α_105_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .LPAT$5_α_105_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .LPAT$5_α_105_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .LPAT$5_α_105_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$5_α_105_18
.LPAT$5_α_105_17:       mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$5_α_105_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$5_α_105_16:
.LPAT$5_α_105_18:       test             rax, rax;                            jz    .LPAT$5_α_105_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$5_α_105_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$5_α_105_4]
                        push             rcx;                                 jmp   rax
.LPAT$5_α_105_4:                                                              jmp   n91_match_assign_cond_α
.LPAT$5_α_105_5:                                                              jmp   n89_match_assign_save_β
.LPAT$5_α_105_0:        push             r14
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
                        lea              rax, [rip + .LPAT$5_α_105_6]
                        push             rcx
                        push             rax;                                 jmp   n91_match_assign_cond_α
.LPAT$5_α_105_6:        add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n89_match_assign_save_β
n90_match_defer_β:      mov              r11, 37
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$5_β_105_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$5_β_105_12
                                                                              jmp   rax
.LPAT$5_β_105_12:                                                             jmp   qword ptr [rsp]
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
                        add              r12, 24;                             jmp   n87_match_alternate_s1
n91_match_assign_cond_β:
                        mov              r11, 38
                        sub              r12, 24;                             jmp   n90_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n92_match_lit_α:        mov              r11, 39
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n87_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n87_match_alternate_af
                        add              r14d, 1;                             jmp   n93_match_assign_save_α
n92_match_lit_β:        mov              r11, 39
                        sub              r14d, 1;                             jmp   n87_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n93_match_assign_save_α:
                        mov              r11, 40
                        mov              dword ptr [rbp + -64], r14d;         jmp   n94_match_defer_α
n93_match_assign_save_β:
                        mov              r11, 40;                             jmp   n92_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n94_match_defer_α:      mov              r11, 41
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$5_α_112_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$5_α_112_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .LPAT$5_α_112_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .LPAT$5_α_112_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .LPAT$5_α_112_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$5_α_112_18
.LPAT$5_α_112_17:       mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$5_α_112_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$5_α_112_16:
.LPAT$5_α_112_18:       test             rax, rax;                            jz    .LPAT$5_α_112_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$5_α_112_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$5_α_112_4]
                        push             rcx;                                 jmp   rax
.LPAT$5_α_112_4:                                                              jmp   n95_match_assign_cond_α
.LPAT$5_α_112_5:                                                              jmp   n93_match_assign_save_β
.LPAT$5_α_112_0:        push             r14
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
                        lea              rax, [rip + .LPAT$5_α_112_6]
                        push             rcx
                        push             rax;                                 jmp   n95_match_assign_cond_α
.LPAT$5_α_112_6:        add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n93_match_assign_save_β
n94_match_defer_β:      mov              r11, 41
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$5_β_112_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$5_β_112_12
                                                                              jmp   rax
.LPAT$5_β_112_12:                                                             jmp   qword ptr [rsp]
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
                        add              r12, 24;                             jmp   n87_match_alternate_s0
n95_match_assign_cond_β:
                        mov              r11, 42
                        sub              r12, 24;                             jmp   n94_match_defer_β
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
#-----------------------------------------------------------------------------------------------------------------------
n115_match_defer_α:     sub              rsp, 16
                        mov              r11, 43
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$6_α_117_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$6_α_117_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$6_α_117_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$6_α_117_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$6_α_117_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$6_α_117_18
.LPAT$6_α_117_17:       mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$6_α_117_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$6_α_117_16:
.LPAT$6_α_117_18:       test             rax, rax;                            jz    .LPAT$6_α_117_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$6_α_117_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$6_α_117_4]
                        push             rcx;                                 jmp   rax
.LPAT$6_α_117_4:                                                              jmp   n116_match_fence0_α
.LPAT$6_α_117_5:        add              rsp, 16;                             jmp   PAT$6_ω
.LPAT$6_α_117_0:        push             r14
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
                        test             eax, eax;                            jns   .LPAT$6_α_117_240
                        add              rsp, 16;                             jmp   PAT$6_ω
.LPAT$6_α_117_240:      mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$6_α_117_6]
                        push             rcx
                        push             rax;                                 jmp   n116_match_fence0_α
.LPAT$6_α_117_6:        add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$6_ω
n115_match_defer_β:     mov              r11, 43
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$6_β_117_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$6_β_117_12
                                                                              jmp   rax
.LPAT$6_β_117_12:                                                             jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n116_match_fence0_α:    mov              r11, 44
                        mov              rsp, rbp
                        sub              rsp, 40;                             jmp   PAT$6_γ
n116_match_fence0_β:    mov              r11, 44;                             jmp   PAT$6_ω
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
#-----------------------------------------------------------------------------------------------------------------------
n120_match_pos_α:       mov              r11, 45
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$7_ω
                                                                              jmp   n121_match_arbno_α
n120_match_pos_β:       mov              r11, 45;                             jmp   PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_match_arbno_α:     mov              r11, 46
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n122_match_rpos_α
n121_match_arbno_β:     mov              r11, 46
                        mov              r12, qword ptr [rbp + -40];          jmp   n123_match_defer_α
n121_match_arbno_as:    mov              r11, 46
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n123_match_defer_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n122_match_rpos_α
n121_match_arbno_af:    mov              r11, 46
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n120_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n122_match_rpos_α:      mov              r11, 47
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n121_match_arbno_β
                                                                              jmp   PAT$7_γ
n122_match_rpos_β:      mov              r11, 47;                             jmp   n121_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n123_match_defer_α:     mov              r11, 48
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$7_α_132_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$7_α_132_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$7_α_132_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$7_α_132_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$7_α_132_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$7_α_132_18
.LPAT$7_α_132_17:       mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$7_α_132_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$7_α_132_16:
.LPAT$7_α_132_18:       test             rax, rax;                            jz    .LPAT$7_α_132_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$7_α_132_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$7_α_132_4]
                        push             rcx;                                 jmp   rax
.LPAT$7_α_132_4:                                                              jmp   n124_match_defer_α
.LPAT$7_α_132_5:                                                              jmp   n121_match_arbno_af
.LPAT$7_α_132_0:        push             r14
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
                        test             eax, eax;                            js    n121_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$7_α_132_6]
                        push             rcx
                        push             rax;                                 jmp   n124_match_defer_α
.LPAT$7_α_132_6:        add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n121_match_arbno_af
n123_match_defer_β:     mov              r11, 48
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$7_β_132_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$7_β_132_12
                                                                              jmp   rax
.LPAT$7_β_132_12:                                                             jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n124_match_defer_α:     mov              r11, 49
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$7_α_133_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$7_α_133_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .LPAT$7_α_133_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .LPAT$7_α_133_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .LPAT$7_α_133_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$7_α_133_18
.LPAT$7_α_133_17:       mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$7_α_133_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$7_α_133_16:
.LPAT$7_α_133_18:       test             rax, rax;                            jz    .LPAT$7_α_133_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$7_α_133_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$7_α_133_4]
                        push             rcx;                                 jmp   rax
.LPAT$7_α_133_4:                                                              jmp   n125_match_assign_save_α
.LPAT$7_α_133_5:                                                              jmp   n123_match_defer_β
.LPAT$7_α_133_0:        push             r14
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
                        lea              rax, [rip + .LPAT$7_α_133_6]
                        push             rcx
                        push             rax;                                 jmp   n125_match_assign_save_α
.LPAT$7_α_133_6:        add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n123_match_defer_β
n124_match_defer_β:     mov              r11, 49
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$7_β_133_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$7_β_133_12
                                                                              jmp   rax
.LPAT$7_β_133_12:                                                             jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n125_match_assign_save_α:
                        mov              r11, 50
                        mov              dword ptr [rbp + -80], r14d;         jmp   n126_match_defer_α
n125_match_assign_save_β:
                        mov              r11, 50;                             jmp   n124_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n126_match_defer_α:     mov              r11, 51
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$7_α_136_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$7_α_136_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .LPAT$7_α_136_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .LPAT$7_α_136_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .LPAT$7_α_136_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$7_α_136_18
.LPAT$7_α_136_17:       mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$7_α_136_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$7_α_136_16:
.LPAT$7_α_136_18:       test             rax, rax;                            jz    .LPAT$7_α_136_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$7_α_136_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$7_α_136_4]
                        push             rcx;                                 jmp   rax
.LPAT$7_α_136_4:                                                              jmp   n127_match_assign_cond_α
.LPAT$7_α_136_5:                                                              jmp   n125_match_assign_save_β
.LPAT$7_α_136_0:        push             r14
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
                        lea              rax, [rip + .LPAT$7_α_136_6]
                        push             rcx
                        push             rax;                                 jmp   n127_match_assign_cond_α
.LPAT$7_α_136_6:        add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n125_match_assign_save_β
n126_match_defer_β:     mov              r11, 51
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$7_β_136_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$7_β_136_12
                                                                              jmp   rax
.LPAT$7_β_136_12:                                                             jmp   qword ptr [rsp]
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
                        add              r12, 24;                             jmp   n121_match_arbno_as
n127_match_assign_cond_β:
                        mov              r11, 52
                        sub              r12, 24;                             jmp   n126_match_defer_β
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
                        sub              rsp, 8
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
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
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         DEFINE('EMIT()')
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_begin_α: mov              r11, 53
                        mov              r10, 1;                              jmp   n140_define_α
n139_statement_begin_β: mov              r11, 53;                             jmp   n142_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n140_define_α:          mov              r11, 54
                        mov              rdi, qword ptr [rip + .Lmain_α_513_0]
                        mov              rsi, qword ptr [rip + .Lmain_α_513_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n163_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lmain_α_513_0]
                        lea              rsi, [rip + EMIT_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n141_statement_end_α
n140_define_β:          mov              r11, 54;                             jmp   n139_statement_begin_β
.Lmain_α_513_0:         .quad            .Lmain_α_513_0_s
.Lmain_α_513_0_s:       .string          "EMIT"
.Lmain_α_513_1:         .quad            .Lmain_α_513_1_s
.Lmain_α_513_1_s:       .string          ""
                                                                              jmp   .Lmain_α_514_245
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
                        lea              rcx, [rip + EMIT_γ]
                        lea              rax, [rip + EMIT_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n163_statement_begin_α]; jmp   rax
EMIT_γ:                 mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lmain_α_514_245:
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:   mov              r11, 55
                        mov              r10, 1;                              jmp   n142_statement_begin_α
#=======================================================================================================================
#         DEFINE('PSH()')
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_begin_α: mov              r11, 56
                        mov              r10, 2;                              jmp   n143_define_α
n142_statement_begin_β: mov              r11, 56;                             jmp   n145_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n143_define_α:          mov              r11, 57
                        mov              rdi, qword ptr [rip + .Lmain_α_520_0]
                        mov              rsi, qword ptr [rip + .Lmain_α_520_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n179_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lmain_α_520_0]
                        lea              rsi, [rip + PSH_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n144_statement_end_α
n143_define_β:          mov              r11, 57;                             jmp   n142_statement_begin_β
.Lmain_α_520_0:         .quad            .Lmain_α_520_0_s
.Lmain_α_520_0_s:       .string          "PSH"
.Lmain_α_520_1:         .quad            .Lmain_α_520_1_s
.Lmain_α_520_1_s:       .string          ""
                                                                              jmp   .Lmain_α_521_245
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
                        lea              rcx, [rip + PSH_γ]
                        lea              rax, [rip + PSH_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n179_statement_begin_α]; jmp   rax
PSH_γ:                  mov              rdi, qword ptr [r9 + 16]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lmain_α_521_245:
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_end_α:   mov              r11, 58
                        mov              r10, 2;                              jmp   n145_statement_begin_α
#=======================================================================================================================
#         DEFINE('DRF(nm)')
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_begin_α: mov              r11, 59
                        mov              r10, 3;                              jmp   n146_define_α
n145_statement_begin_β: mov              r11, 59;                             jmp   n148_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n146_define_α:          mov              r11, 60
                        mov              rdi, qword ptr [rip + .Lmain_α_527_0]
                        mov              rsi, qword ptr [rip + .Lmain_α_527_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n188_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lmain_α_527_0]
                        lea              rsi, [rip + DRF_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n147_statement_end_α
n146_define_β:          mov              r11, 60;                             jmp   n145_statement_begin_β
.Lmain_α_527_0:         .quad            .Lmain_α_527_0_s
.Lmain_α_527_0_s:       .string          "DRF"
.Lmain_α_527_1:         .quad            .Lmain_α_527_1_s
.Lmain_α_527_1_s:       .string          "nm"
                                                                              jmp   .Lmain_α_528_245
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
                        cmp              rdx, 0;                              jbe   .Lmain_α_528_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # nm
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lmain_α_528_41
.Lmain_α_528_10:        mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lmain_α_528_41:        lea              rcx, [rip + DRF_γ]
                        lea              rax, [rip + DRF_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n188_statement_begin_α]; jmp   rax
DRF_γ:                  mov              rdi, qword ptr [r9 + 32]             # DRF
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lmain_α_528_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lmain_α_528_110
.Lmain_α_528_80:        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lmain_α_528_110:       mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lmain_α_528_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lmain_α_528_180
.Lmain_α_528_150:       mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lmain_α_528_180:       mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lmain_α_528_245:
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_end_α:   mov              r11, 61
                        mov              r10, 3;                              jmp   n148_statement_begin_α
#=======================================================================================================================
#         DEFINE('ADD()')
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_begin_α: mov              r11, 62
                        mov              r10, 4;                              jmp   n149_define_α
n148_statement_begin_β: mov              r11, 62;                             jmp   n151_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n149_define_α:          mov              r11, 63
                        mov              rdi, qword ptr [rip + .Lmain_α_534_0]
                        mov              rsi, qword ptr [rip + .Lmain_α_534_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n207_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lmain_α_534_0]
                        lea              rsi, [rip + ADD_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n150_statement_end_α
n149_define_β:          mov              r11, 63;                             jmp   n148_statement_begin_β
.Lmain_α_534_0:         .quad            .Lmain_α_534_0_s
.Lmain_α_534_0_s:       .string          "ADD"
.Lmain_α_534_1:         .quad            .Lmain_α_534_1_s
.Lmain_α_534_1_s:       .string          ""
                                                                              jmp   .Lmain_α_535_245
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
                        lea              rcx, [rip + ADD_γ]
                        lea              rax, [rip + ADD_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n207_statement_begin_α]; jmp   rax
ADD_γ:                  mov              rdi, qword ptr [r9 + 64]
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lmain_α_535_245:
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:   mov              r11, 64
                        mov              r10, 4;                              jmp   n151_statement_begin_α
#=======================================================================================================================
#         DEFINE('SUB()')
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_begin_α: mov              r11, 65
                        mov              r10, 5;                              jmp   n152_define_α
n151_statement_begin_β: mov              r11, 65;                             jmp   n154_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n152_define_α:          mov              r11, 66
                        mov              rdi, qword ptr [rip + .Lmain_α_541_0]
                        mov              rsi, qword ptr [rip + .Lmain_α_541_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n232_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lmain_α_541_0]
                        lea              rsi, [rip + SUB_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n153_statement_end_α
n152_define_β:          mov              r11, 66;                             jmp   n151_statement_begin_β
.Lmain_α_541_0:         .quad            .Lmain_α_541_0_s
.Lmain_α_541_0_s:       .string          "SUB"
.Lmain_α_541_1:         .quad            .Lmain_α_541_1_s
.Lmain_α_541_1_s:       .string          ""
                                                                              jmp   .Lmain_α_542_245
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
                        lea              rcx, [rip + SUB_γ]
                        lea              rax, [rip + SUB_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n232_statement_begin_α]; jmp   rax
SUB_γ:                  mov              rdi, qword ptr [r9 + 80]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 88], rax
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lmain_α_542_245:
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:   mov              r11, 67
                        mov              r10, 5;                              jmp   n154_statement_begin_α
#=======================================================================================================================
#         DEFINE('MUL()')
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_begin_α: mov              r11, 68
                        mov              r10, 6;                              jmp   n155_define_α
n154_statement_begin_β: mov              r11, 68;                             jmp   n157_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n155_define_α:          mov              r11, 69
                        mov              rdi, qword ptr [rip + .Lmain_α_548_0]
                        mov              rsi, qword ptr [rip + .Lmain_α_548_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n257_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lmain_α_548_0]
                        lea              rsi, [rip + MUL_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n156_statement_end_α
n155_define_β:          mov              r11, 69;                             jmp   n154_statement_begin_β
.Lmain_α_548_0:         .quad            .Lmain_α_548_0_s
.Lmain_α_548_0_s:       .string          "MUL"
.Lmain_α_548_1:         .quad            .Lmain_α_548_1_s
.Lmain_α_548_1_s:       .string          ""
                                                                              jmp   .Lmain_α_549_245
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
                        lea              rcx, [rip + MUL_γ]
                        lea              rax, [rip + MUL_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n257_statement_begin_α]; jmp   rax
MUL_γ:                  mov              rdi, qword ptr [r9 + 96]
                        mov              rsi, qword ptr [r9 + 104]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lmain_α_549_245:
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:   mov              r11, 70
                        mov              r10, 6;                              jmp   n157_statement_begin_α
#=======================================================================================================================
#         DEFINE('DIV()')
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_begin_α: mov              r11, 71
                        mov              r10, 7;                              jmp   n158_define_α
n157_statement_begin_β: mov              r11, 71;                             jmp   n160_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n158_define_α:          mov              r11, 72
                        mov              rdi, qword ptr [rip + .Lmain_α_555_0]
                        mov              rsi, qword ptr [rip + .Lmain_α_555_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n282_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lmain_α_555_0]
                        lea              rsi, [rip + DIV_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n159_statement_end_α
n158_define_β:          mov              r11, 72;                             jmp   n157_statement_begin_β
.Lmain_α_555_0:         .quad            .Lmain_α_555_0_s
.Lmain_α_555_0_s:       .string          "DIV"
.Lmain_α_555_1:         .quad            .Lmain_α_555_1_s
.Lmain_α_555_1_s:       .string          ""
                                                                              jmp   .Lmain_α_556_245
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
                        lea              rcx, [rip + DIV_γ]
                        lea              rax, [rip + DIV_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n282_statement_begin_α]; jmp   rax
DIV_γ:                  mov              rdi, qword ptr [r9 + 112]
                        mov              rsi, qword ptr [r9 + 120]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lmain_α_556_245:
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   mov              r11, 73
                        mov              r10, 7;                              jmp   n160_statement_begin_α
#=======================================================================================================================
#         DEFINE('SGN()p1')                       :(FNS_end)
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_begin_α: mov              r11, 74
                        mov              r10, 8;                              jmp   n161_define_α
n160_statement_begin_β: mov              r11, 74;                             jmp   n339_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n161_define_α:          mov              r11, 75
                        mov              rdi, qword ptr [rip + .Lmain_α_562_0]
                        mov              rsi, qword ptr [rip + .Lmain_α_562_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n307_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lmain_α_562_0]
                        lea              rsi, [rip + SGN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n162_statement_end_α
n161_define_β:          mov              r11, 75;                             jmp   n160_statement_begin_β
.Lmain_α_562_0:         .quad            .Lmain_α_562_0_s
.Lmain_α_562_0_s:       .string          "SGN"
.Lmain_α_562_1:         .quad            .Lmain_α_562_1_s
.Lmain_α_562_1_s:       .string          "p1"
                                                                              jmp   .Lmain_α_563_245
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
                        cmp              rdx, 0;                              jbe   .Lmain_α_563_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 144]            # p1
                        mov              qword ptr [r9 + 144], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 152]
                        mov              qword ptr [r9 + 152], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lmain_α_563_41
.Lmain_α_563_10:        mov              rax, qword ptr [r9 + 144]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
.Lmain_α_563_41:        lea              rcx, [rip + SGN_γ]
                        lea              rax, [rip + SGN_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n307_statement_begin_α]; jmp   rax
SGN_γ:                  mov              rdi, qword ptr [r9 + 128]            # SGN
                        mov              rsi, qword ptr [r9 + 136]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Lmain_α_563_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 152], rax;           jmp   .Lmain_α_563_110
.Lmain_α_563_80:        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 152], rax
.Lmain_α_563_110:       mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lmain_α_563_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 152], rax;           jmp   .Lmain_α_563_180
.Lmain_α_563_150:       mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 152], rax
.Lmain_α_563_180:       mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lmain_α_563_245:
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:   mov              r11, 76
                        mov              r10, 8;                              jmp   n339_statement_begin_α
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_begin_α: mov              r11, 77
                        mov              r10, 9;                              jmp   n164_var_α
n163_statement_begin_β: mov              r11, 77;                             jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             sub              rsp, 16
                        mov              r11, 78
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     sub              rsp, 16
                        mov              r11, 79
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_569_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_subscript_α
n165_lit_integer_β:     mov              r11, 79
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n163_statement_begin_β
.Lmain_α_569_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n166_subscript_α:       sub              rsp, 16
                        mov              r11, 80
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
                        cmp              al, 104;                             jne   .Lmain_α_570_240
                        add              rsp, 16;                             jmp   n165_lit_integer_β
.Lmain_α_570_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_deref_α
n166_subscript_β:       mov              r11, 80
                        add              rsp, 16;                             jmp   n165_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n167_deref_α:           sub              rsp, 16
                        mov              r11, 81
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
                        cmp              al, 104;                             jne   .Lmain_α_571_240
                        add              rsp, 16;                             jmp   n166_subscript_β
.Lmain_α_571_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_call_α
n167_deref_β:           mov              r11, 81
                        add              rsp, 16;                             jmp   n166_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:            sub              rsp, 16
                        mov              r11, 82
                        lea              rcx, [rip + .Lsig573z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig573z:              .quad            1
                        .quad            .Lmain_α_573_2
                        .quad            .Lmain_α_573_2
                        .quad            16
.Lmain_α_573_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_573_29
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
.Lmain_α_573_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lmain_α_573_240
                        add              rsp, 16;                             jmp   n167_deref_β
.Lmain_α_573_240:                                                             jmp   n169_assign_α
n168_call_β:            mov              r11, 82;                             jmp   n167_deref_β
.Lmain_β_573_0:         .quad            .Lmain_β_573_0_s
.Lmain_β_573_0_s:       .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:          mov              r11, 83
                        mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_574_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n170_statement_end_α
.Lmain_α_574_0:         .quad            .Lmain_α_574_0_s
.Lmain_α_574_0_s:       .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   mov              r11, 84
                        mov              r10, 9
                        add              rsp, 80;                             jmp   n171_statement_begin_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α: mov              r11, 85
                        mov              r10, 10;                             jmp   n172_lit_integer_α
n171_statement_begin_β: mov              r11, 85;                             jmp   n175_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_579_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_assign_α
.Lmain_α_579_0:         .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n173_assign_α:          mov              r11, 87
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n174_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:   mov              r11, 88
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n175_statement_begin_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_begin_α: mov              r11, 89
                        mov              r10, 11;                             jmp   n176_lit_name_α
n175_statement_begin_β: mov              r11, 89;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_name_α:        sub              rsp, 16
                        mov              r11, 90
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_585_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_assign_α
.Lmain_α_585_0:         .quad            .Lmain_α_585_0_s
.Lmain_α_585_0_s:       .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_α:          mov              r11, 91
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # EMIT
                        mov              qword ptr [r9 + 8], rdx;             jmp   n178_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_end_α:   mov              r11, 92
                        mov              r10, 11
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# PSH     PSH = .S[sp = sp + 1]                   :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_begin_α: mov              r11, 93
                        mov              r10, 12;                             jmp   n180_var_α
n179_statement_begin_β: mov              r11, 93;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             sub              rsp, 16
                        mov              r11, 94
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n181_var_α
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:             sub              rsp, 16
                        mov              r11, 95
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n182_lit_integer_α
n181_var_β:             mov              r11, 95
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n179_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:     sub              rsp, 16
                        mov              r11, 96
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_593_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n183_binop_α
n182_lit_integer_β:     mov              r11, 96
                        add              rsp, 16;                             jmp   n181_var_β
.Lmain_α_593_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n183_binop_α:           sub              rsp, 16
                        mov              r11, 97
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lmain_α_594_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmain_α_594_7
.Lmain_α_594_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lmain_α_594_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lmain_α_594_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_594_4
.Lmain_α_594_3:         movq             xmm0, rsi
.Lmain_α_594_4:         cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lmain_α_594_7:                                                               jmp   n184_assign_α
.Lmain_α_594_0:         mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lmain_α_594_240
                        add              rsp, 16;                             jmp   n182_lit_integer_β
.Lmain_α_594_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_assign_α
n183_binop_β:           mov              r11, 97
                        add              rsp, 16;                             jmp   n182_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n184_assign_α:          mov              r11, 98
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n185_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n185_subscript_α:       sub              rsp, 16
                        mov              r11, 99
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
                        cmp              al, 104;                             jne   .Lmain_α_596_240
                        add              rsp, 16;                             jmp   n183_binop_β
.Lmain_α_596_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:          mov              r11, 100
                        mov              rax, qword ptr [rsp + 0]             # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # PSH
                        mov              qword ptr [r9 + 24], rdx;            jmp   n187_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:   mov              r11, 101
                        mov              r10, 12
                        add              rsp, 80;                             jmp   NRETURN
#=======================================================================================================================
# DRF     DRF = nm
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_begin_α: mov              r11, 102
                        mov              r10, 13;                             jmp   n189_var_α
n188_statement_begin_β: mov              r11, 102;                            jmp   n192_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             sub              rsp, 16
                        mov              r11, 103
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:          mov              r11, 104
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n191_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_end_α:   mov              r11, 105
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n192_statement_begin_α
#=======================================================================================================================
#         nm POS(0) ANY(&LCASE) RPOS(0)           :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_begin_α: mov              r11, 106
                        mov              r10, 14;                             jmp   n193_var_α
n192_statement_begin_β: mov              r11, 106;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             sub              rsp, 16
                        mov              r11, 107
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n194_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n194_match_begin_α:     mov              r11, 108
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
.Lmain_α_610_0:         mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmain_α_610_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n195_match_pos_α
n194_match_begin_β:     mov              r11, 108
.Lmain_α_610_13:        lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmain_β_610_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmain_β_610_1
                                                                              jmp   .Lmain_α_610_0
.Lmain_β_610_1:
n194_match_begin_af:    mov              r11, 108
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
#-----------------------------------------------------------------------------------------------------------------------
n195_match_pos_α:       mov              r11, 109
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n194_match_begin_β
                                                                              jmp   n196_match_any_α
n195_match_pos_β:       mov              r11, 109;                            jmp   n194_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n196_match_any_α:       mov              r11, 110
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n194_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n194_match_begin_β
                        add              r14d, 1;                             jmp   n197_match_rpos_α
n196_match_any_β:       mov              r11, 110
                        sub              r14d, 1;                             jmp   n194_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n197_match_rpos_α:      mov              r11, 111
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n196_match_any_β
                                                                              jmp   n198_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n198_match_end_α:       mov              r11, 112
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
                        test             rax, rax;                            je    .Lmain_α_616_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n194_match_begin_af
.Lmain_α_616_13:        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n199_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_end_α:   mov              r11, 113
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n200_statement_begin_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_begin_α: mov              r11, 114
                        mov              r10, 15;                             jmp   n201_var_α
n200_statement_begin_β: mov              r11, 114;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             sub              rsp, 16
                        mov              r11, 115
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_var_α
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             sub              rsp, 16
                        mov              r11, 116
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_subscript_α
n202_var_β:             mov              r11, 116
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n200_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n203_subscript_α:       sub              rsp, 16
                        mov              r11, 117
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
                        cmp              al, 104;                             jne   .Lmain_α_623_240
                        add              rsp, 16;                             jmp   n202_var_β
.Lmain_α_623_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n204_deref_α
n203_subscript_β:       mov              r11, 117
                        add              rsp, 16;                             jmp   n202_var_β
#-----------------------------------------------------------------------------------------------------------------------
n204_deref_α:           sub              rsp, 16
                        mov              r11, 118
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
                        cmp              al, 104;                             jne   .Lmain_α_624_240
                        add              rsp, 16;                             jmp   n203_subscript_β
.Lmain_α_624_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n205_assign_α:          mov              r11, 119
                        mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n206_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_end_α:   mov              r11, 120
                        mov              r10, 15
                        add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# ADD     S[sp = sp - 1] = DRF(S[sp]) + DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
n207_statement_begin_α: mov              r11, 121
                        mov              r10, 16;                             jmp   n208_var_α
n207_statement_begin_β: mov              r11, 121;                            jmp   n228_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             sub              rsp, 16
                        mov              r11, 122
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_var_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:             sub              rsp, 16
                        mov              r11, 123
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n210_lit_integer_α
n209_var_β:             mov              r11, 123
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n207_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_integer_α:     sub              rsp, 16
                        mov              r11, 124
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_632_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n211_binop_α
n210_lit_integer_β:     mov              r11, 124
                        add              rsp, 16;                             jmp   n209_var_β
.Lmain_α_632_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n211_binop_α:           sub              rsp, 16
                        mov              r11, 125
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lmain_α_633_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmain_α_633_7
.Lmain_α_633_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lmain_α_633_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lmain_α_633_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_633_4
.Lmain_α_633_3:         movq             xmm0, rsi
.Lmain_α_633_4:         cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lmain_α_633_7:                                                               jmp   n212_assign_α
.Lmain_α_633_0:         mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lmain_α_633_240
                        add              rsp, 16;                             jmp   n210_lit_integer_β
.Lmain_α_633_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n212_assign_α
n211_binop_β:           mov              r11, 125
                        add              rsp, 16;                             jmp   n210_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n212_assign_α:          mov              r11, 126
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n213_var_α
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:             sub              rsp, 16
                        mov              r11, 127
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_var_α
n213_var_β:             mov              r11, 127
                        add              rsp, 16;                             jmp   n211_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             sub              rsp, 16
                        mov              r11, 128
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_subscript_α
n214_var_β:             mov              r11, 128
                        add              rsp, 16;                             jmp   n213_var_β
#-----------------------------------------------------------------------------------------------------------------------
n215_subscript_α:       sub              rsp, 16
                        mov              r11, 129
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
                        cmp              al, 104;                             jne   .Lmain_α_637_240
                        add              rsp, 16;                             jmp   n214_var_β
.Lmain_α_637_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_deref_α
n215_subscript_β:       mov              r11, 129
                        add              rsp, 16;                             jmp   n214_var_β
#-----------------------------------------------------------------------------------------------------------------------
n216_deref_α:           sub              rsp, 16
                        mov              r11, 130
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
                        cmp              al, 104;                             jne   .Lmain_α_638_240
                        add              rsp, 16;                             jmp   n215_subscript_β
.Lmain_α_638_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n217_call_α
n216_deref_β:           mov              r11, 130
                        add              rsp, 16;                             jmp   n215_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n217_call_α:            sub              rsp, 16
                        mov              r11, 131
                        lea              rcx, [rip + .Lsig640z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig640z:              .quad            1
                        .quad            .Lmain_α_640_2
                        .quad            .Lmain_α_640_2
                        .quad            16
.Lmain_α_640_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_640_29
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
.Lmain_α_640_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lmain_α_640_240
                        add              rsp, 16;                             jmp   n216_deref_β
.Lmain_α_640_240:                                                             jmp   n218_var_α
n217_call_β:            mov              r11, 131;                            jmp   n216_deref_β
.Lmain_β_640_0:         .quad            .Lmain_β_640_0_s
.Lmain_β_640_0_s:       .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:             sub              rsp, 16
                        mov              r11, 132
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_var_α
n218_var_β:             mov              r11, 132
                        add              rsp, 32;                             jmp   n216_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              r11, 133
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_lit_integer_α
n219_var_β:             mov              r11, 133
                        add              rsp, 16;                             jmp   n218_var_β
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_integer_α:     sub              rsp, 16
                        mov              r11, 134
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_643_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n221_binop_α
n220_lit_integer_β:     mov              r11, 134
                        add              rsp, 16;                             jmp   n219_var_β
.Lmain_α_643_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n221_binop_α:           sub              rsp, 16
                        mov              r11, 135
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lmain_α_644_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmain_α_644_7
.Lmain_α_644_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lmain_α_644_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lmain_α_644_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_644_4
.Lmain_α_644_3:         movq             xmm0, rsi
.Lmain_α_644_4:         cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lmain_α_644_7:                                                               jmp   n222_subscript_α
.Lmain_α_644_0:         mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lmain_α_644_240
                        add              rsp, 16;                             jmp   n220_lit_integer_β
.Lmain_α_644_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n222_subscript_α
n221_binop_β:           mov              r11, 135
                        add              rsp, 16;                             jmp   n220_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n222_subscript_α:       sub              rsp, 16
                        mov              r11, 136
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
                        cmp              al, 104;                             jne   .Lmain_α_645_240
                        add              rsp, 16;                             jmp   n221_binop_β
.Lmain_α_645_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_deref_α
n222_subscript_β:       mov              r11, 136
                        add              rsp, 16;                             jmp   n221_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n223_deref_α:           sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lmain_α_646_240
                        add              rsp, 16;                             jmp   n222_subscript_β
.Lmain_α_646_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_call_α
n223_deref_β:           mov              r11, 137
                        add              rsp, 16;                             jmp   n222_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n224_call_α:            sub              rsp, 16
                        mov              r11, 138
                        lea              rcx, [rip + .Lsig648z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig648z:              .quad            1
                        .quad            .Lmain_α_648_2
                        .quad            .Lmain_α_648_2
                        .quad            16
.Lmain_α_648_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_648_29
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
.Lmain_α_648_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lmain_α_648_240
                        add              rsp, 16;                             jmp   n223_deref_β
.Lmain_α_648_240:                                                             jmp   n225_binop_α
n224_call_β:            mov              r11, 138;                            jmp   n223_deref_β
.Lmain_β_648_0:         .quad            .Lmain_β_648_0_s
.Lmain_β_648_0_s:       .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n225_binop_α:           sub              rsp, 16
                        mov              r11, 139
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lmain_α_649_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmain_α_649_7
.Lmain_α_649_2:         and              edx, 1;                              jz    .Lmain_α_649_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lmain_α_649_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_649_4
.Lmain_α_649_3:         movq             xmm0, rsi
.Lmain_α_649_4:         cmp              cl, 5;                               je    .Lmain_α_649_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lmain_α_649_6
.Lmain_α_649_5:         movq             xmm1, rdi
.Lmain_α_649_6:         addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lmain_α_649_7:                                                               jmp   n226_assign_var_α
.Lmain_α_649_0:         mov              rdi, qword ptr [rsp + 128]           # call
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
                        cmp              al, 104;                             jne   .Lmain_α_649_240
                        add              rsp, 32;                             jmp   n223_deref_β
.Lmain_α_649_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_assign_var_α
n225_binop_β:           mov              r11, 139
                        add              rsp, 32;                             jmp   n223_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n226_assign_var_α:      sub              rsp, 16
                        mov              r11, 140
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lmain_α_651_0
                        test             rsi, rsi;                            je    .Lmain_α_651_0
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
                        cmp              al, 104;                             jne   .Lmain_α_651_238
                        add              rsp, 16;                             jmp   n225_binop_β
.Lmain_α_651_238:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_statement_end_α
.Lmain_α_651_0:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_651_239
                        add              rsp, 16;                             jmp   n225_binop_β
.Lmain_α_651_239:       mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lmain_α_651_240
                        add              rsp, 16;                             jmp   n225_binop_β
.Lmain_α_651_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n227_statement_end_α:   mov              r11, 141
                        mov              r10, 16
                        add              rsp, 288;                            jmp   n228_statement_begin_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n228_statement_begin_α: mov              r11, 142
                        mov              r10, 17;                             jmp   n229_lit_name_α
n228_statement_begin_β: mov              r11, 142;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_name_α:        sub              rsp, 16
                        mov              r11, 143
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_656_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n230_assign_α
.Lmain_α_656_0:         .quad            .Lmain_α_656_0_s
.Lmain_α_656_0_s:       .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n230_assign_α:          mov              r11, 144
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ADD
                        mov              qword ptr [r9 + 72], rdx;            jmp   n231_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n231_statement_end_α:   mov              r11, 145
                        mov              r10, 17
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# SUB     S[sp = sp - 1] = DRF(S[sp]) - DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
n232_statement_begin_α: mov              r11, 146
                        mov              r10, 18;                             jmp   n233_var_α
n232_statement_begin_β: mov              r11, 146;                            jmp   n253_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             sub              rsp, 16
                        mov              r11, 147
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_var_α
#-----------------------------------------------------------------------------------------------------------------------
n234_var_α:             sub              rsp, 16
                        mov              r11, 148
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n235_lit_integer_α
n234_var_β:             mov              r11, 148
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n232_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_integer_α:     sub              rsp, 16
                        mov              r11, 149
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_664_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n236_binop_α
n235_lit_integer_β:     mov              r11, 149
                        add              rsp, 16;                             jmp   n234_var_β
.Lmain_α_664_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n236_binop_α:           sub              rsp, 16
                        mov              r11, 150
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lmain_α_665_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmain_α_665_7
.Lmain_α_665_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lmain_α_665_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lmain_α_665_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_665_4
.Lmain_α_665_3:         movq             xmm0, rsi
.Lmain_α_665_4:         cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lmain_α_665_7:                                                               jmp   n237_assign_α
.Lmain_α_665_0:         mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lmain_α_665_240
                        add              rsp, 16;                             jmp   n235_lit_integer_β
.Lmain_α_665_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n237_assign_α
n236_binop_β:           mov              r11, 150
                        add              rsp, 16;                             jmp   n235_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n237_assign_α:          mov              r11, 151
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             sub              rsp, 16
                        mov              r11, 152
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_var_α
n238_var_β:             mov              r11, 152
                        add              rsp, 16;                             jmp   n236_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:             sub              rsp, 16
                        mov              r11, 153
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_subscript_α
n239_var_β:             mov              r11, 153
                        add              rsp, 16;                             jmp   n238_var_β
#-----------------------------------------------------------------------------------------------------------------------
n240_subscript_α:       sub              rsp, 16
                        mov              r11, 154
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
                        cmp              al, 104;                             jne   .Lmain_α_669_240
                        add              rsp, 16;                             jmp   n239_var_β
.Lmain_α_669_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_deref_α
n240_subscript_β:       mov              r11, 154
                        add              rsp, 16;                             jmp   n239_var_β
#-----------------------------------------------------------------------------------------------------------------------
n241_deref_α:           sub              rsp, 16
                        mov              r11, 155
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
                        cmp              al, 104;                             jne   .Lmain_α_670_240
                        add              rsp, 16;                             jmp   n240_subscript_β
.Lmain_α_670_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_call_α
n241_deref_β:           mov              r11, 155
                        add              rsp, 16;                             jmp   n240_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n242_call_α:            sub              rsp, 16
                        mov              r11, 156
                        lea              rcx, [rip + .Lsig672z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig672z:              .quad            1
                        .quad            .Lmain_α_672_2
                        .quad            .Lmain_α_672_2
                        .quad            16
.Lmain_α_672_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_672_29
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
.Lmain_α_672_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lmain_α_672_240
                        add              rsp, 16;                             jmp   n241_deref_β
.Lmain_α_672_240:                                                             jmp   n243_var_α
n242_call_β:            mov              r11, 156;                            jmp   n241_deref_β
.Lmain_β_672_0:         .quad            .Lmain_β_672_0_s
.Lmain_β_672_0_s:       .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:             sub              rsp, 16
                        mov              r11, 157
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_var_α
n243_var_β:             mov              r11, 157
                        add              rsp, 32;                             jmp   n241_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:             sub              rsp, 16
                        mov              r11, 158
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n245_lit_integer_α
n244_var_β:             mov              r11, 158
                        add              rsp, 16;                             jmp   n243_var_β
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_integer_α:     sub              rsp, 16
                        mov              r11, 159
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_675_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n246_binop_α
n245_lit_integer_β:     mov              r11, 159
                        add              rsp, 16;                             jmp   n244_var_β
.Lmain_α_675_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n246_binop_α:           sub              rsp, 16
                        mov              r11, 160
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lmain_α_676_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmain_α_676_7
.Lmain_α_676_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lmain_α_676_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lmain_α_676_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_676_4
.Lmain_α_676_3:         movq             xmm0, rsi
.Lmain_α_676_4:         cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lmain_α_676_7:                                                               jmp   n247_subscript_α
.Lmain_α_676_0:         mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lmain_α_676_240
                        add              rsp, 16;                             jmp   n245_lit_integer_β
.Lmain_α_676_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n247_subscript_α
n246_binop_β:           mov              r11, 160
                        add              rsp, 16;                             jmp   n245_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n247_subscript_α:       sub              rsp, 16
                        mov              r11, 161
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
                        cmp              al, 104;                             jne   .Lmain_α_677_240
                        add              rsp, 16;                             jmp   n246_binop_β
.Lmain_α_677_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n248_deref_α
n247_subscript_β:       mov              r11, 161
                        add              rsp, 16;                             jmp   n246_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n248_deref_α:           sub              rsp, 16
                        mov              r11, 162
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
                        cmp              al, 104;                             jne   .Lmain_α_678_240
                        add              rsp, 16;                             jmp   n247_subscript_β
.Lmain_α_678_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n249_call_α
n248_deref_β:           mov              r11, 162
                        add              rsp, 16;                             jmp   n247_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:            sub              rsp, 16
                        mov              r11, 163
                        lea              rcx, [rip + .Lsig680z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig680z:              .quad            1
                        .quad            .Lmain_α_680_2
                        .quad            .Lmain_α_680_2
                        .quad            16
.Lmain_α_680_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_680_29
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
.Lmain_α_680_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lmain_α_680_240
                        add              rsp, 16;                             jmp   n248_deref_β
.Lmain_α_680_240:                                                             jmp   n250_binop_α
n249_call_β:            mov              r11, 163;                            jmp   n248_deref_β
.Lmain_β_680_0:         .quad            .Lmain_β_680_0_s
.Lmain_β_680_0_s:       .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n250_binop_α:           sub              rsp, 16
                        mov              r11, 164
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lmain_α_681_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmain_α_681_7
.Lmain_α_681_2:         and              edx, 1;                              jz    .Lmain_α_681_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lmain_α_681_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_681_4
.Lmain_α_681_3:         movq             xmm0, rsi
.Lmain_α_681_4:         cmp              cl, 5;                               je    .Lmain_α_681_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lmain_α_681_6
.Lmain_α_681_5:         movq             xmm1, rdi
.Lmain_α_681_6:         subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lmain_α_681_7:                                                               jmp   n251_assign_var_α
.Lmain_α_681_0:         mov              rdi, qword ptr [rsp + 128]           # call
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
                        cmp              al, 104;                             jne   .Lmain_α_681_240
                        add              rsp, 32;                             jmp   n248_deref_β
.Lmain_α_681_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_assign_var_α
n250_binop_β:           mov              r11, 164
                        add              rsp, 32;                             jmp   n248_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n251_assign_var_α:      sub              rsp, 16
                        mov              r11, 165
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lmain_α_683_0
                        test             rsi, rsi;                            je    .Lmain_α_683_0
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
                        cmp              al, 104;                             jne   .Lmain_α_683_238
                        add              rsp, 16;                             jmp   n250_binop_β
.Lmain_α_683_238:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_statement_end_α
.Lmain_α_683_0:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_683_239
                        add              rsp, 16;                             jmp   n250_binop_β
.Lmain_α_683_239:       mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lmain_α_683_240
                        add              rsp, 16;                             jmp   n250_binop_β
.Lmain_α_683_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_end_α:   mov              r11, 166
                        mov              r10, 18
                        add              rsp, 288;                            jmp   n253_statement_begin_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_begin_α: mov              r11, 167
                        mov              r10, 19;                             jmp   n254_lit_name_α
n253_statement_begin_β: mov              r11, 167;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_name_α:        sub              rsp, 16
                        mov              r11, 168
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_688_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n255_assign_α
.Lmain_α_688_0:         .quad            .Lmain_α_688_0_s
.Lmain_α_688_0_s:       .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_α:          mov              r11, 169
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # SUB
                        mov              qword ptr [r9 + 88], rdx;            jmp   n256_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_end_α:   mov              r11, 170
                        mov              r10, 19
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# MUL     S[sp = sp - 1] = DRF(S[sp]) * DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_begin_α: mov              r11, 171
                        mov              r10, 20;                             jmp   n258_var_α
n257_statement_begin_β: mov              r11, 171;                            jmp   n278_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:             sub              rsp, 16
                        mov              r11, 172
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_var_α
#-----------------------------------------------------------------------------------------------------------------------
n259_var_α:             sub              rsp, 16
                        mov              r11, 173
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n260_lit_integer_α
n259_var_β:             mov              r11, 173
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n257_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_integer_α:     sub              rsp, 16
                        mov              r11, 174
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_696_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n261_binop_α
n260_lit_integer_β:     mov              r11, 174
                        add              rsp, 16;                             jmp   n259_var_β
.Lmain_α_696_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n261_binop_α:           sub              rsp, 16
                        mov              r11, 175
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lmain_α_697_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmain_α_697_7
.Lmain_α_697_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lmain_α_697_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lmain_α_697_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_697_4
.Lmain_α_697_3:         movq             xmm0, rsi
.Lmain_α_697_4:         cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lmain_α_697_7:                                                               jmp   n262_assign_α
.Lmain_α_697_0:         mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lmain_α_697_240
                        add              rsp, 16;                             jmp   n260_lit_integer_β
.Lmain_α_697_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_assign_α
n261_binop_β:           mov              r11, 175
                        add              rsp, 16;                             jmp   n260_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n262_assign_α:          mov              r11, 176
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n263_var_α
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:             sub              rsp, 16
                        mov              r11, 177
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n264_var_α
n263_var_β:             mov              r11, 177
                        add              rsp, 16;                             jmp   n261_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n264_var_α:             sub              rsp, 16
                        mov              r11, 178
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n265_subscript_α
n264_var_β:             mov              r11, 178
                        add              rsp, 16;                             jmp   n263_var_β
#-----------------------------------------------------------------------------------------------------------------------
n265_subscript_α:       sub              rsp, 16
                        mov              r11, 179
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
                        cmp              al, 104;                             jne   .Lmain_α_701_240
                        add              rsp, 16;                             jmp   n264_var_β
.Lmain_α_701_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_deref_α
n265_subscript_β:       mov              r11, 179
                        add              rsp, 16;                             jmp   n264_var_β
#-----------------------------------------------------------------------------------------------------------------------
n266_deref_α:           sub              rsp, 16
                        mov              r11, 180
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
                        cmp              al, 104;                             jne   .Lmain_α_702_240
                        add              rsp, 16;                             jmp   n265_subscript_β
.Lmain_α_702_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n267_call_α
n266_deref_β:           mov              r11, 180
                        add              rsp, 16;                             jmp   n265_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:            sub              rsp, 16
                        mov              r11, 181
                        lea              rcx, [rip + .Lsig704z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig704z:              .quad            1
                        .quad            .Lmain_α_704_2
                        .quad            .Lmain_α_704_2
                        .quad            16
.Lmain_α_704_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_704_29
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
.Lmain_α_704_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lmain_α_704_240
                        add              rsp, 16;                             jmp   n266_deref_β
.Lmain_α_704_240:                                                             jmp   n268_var_α
n267_call_β:            mov              r11, 181;                            jmp   n266_deref_β
.Lmain_β_704_0:         .quad            .Lmain_β_704_0_s
.Lmain_β_704_0_s:       .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:             sub              rsp, 16
                        mov              r11, 182
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_var_α
n268_var_β:             mov              r11, 182
                        add              rsp, 32;                             jmp   n266_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:             sub              rsp, 16
                        mov              r11, 183
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n270_lit_integer_α
n269_var_β:             mov              r11, 183
                        add              rsp, 16;                             jmp   n268_var_β
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_integer_α:     sub              rsp, 16
                        mov              r11, 184
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_707_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n271_binop_α
n270_lit_integer_β:     mov              r11, 184
                        add              rsp, 16;                             jmp   n269_var_β
.Lmain_α_707_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n271_binop_α:           sub              rsp, 16
                        mov              r11, 185
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lmain_α_708_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmain_α_708_7
.Lmain_α_708_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lmain_α_708_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lmain_α_708_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_708_4
.Lmain_α_708_3:         movq             xmm0, rsi
.Lmain_α_708_4:         cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lmain_α_708_7:                                                               jmp   n272_subscript_α
.Lmain_α_708_0:         mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lmain_α_708_240
                        add              rsp, 16;                             jmp   n270_lit_integer_β
.Lmain_α_708_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n272_subscript_α
n271_binop_β:           mov              r11, 185
                        add              rsp, 16;                             jmp   n270_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n272_subscript_α:       sub              rsp, 16
                        mov              r11, 186
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
                        cmp              al, 104;                             jne   .Lmain_α_709_240
                        add              rsp, 16;                             jmp   n271_binop_β
.Lmain_α_709_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_deref_α
n272_subscript_β:       mov              r11, 186
                        add              rsp, 16;                             jmp   n271_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n273_deref_α:           sub              rsp, 16
                        mov              r11, 187
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
                        cmp              al, 104;                             jne   .Lmain_α_710_240
                        add              rsp, 16;                             jmp   n272_subscript_β
.Lmain_α_710_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n274_call_α
n273_deref_β:           mov              r11, 187
                        add              rsp, 16;                             jmp   n272_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n274_call_α:            sub              rsp, 16
                        mov              r11, 188
                        lea              rcx, [rip + .Lsig712z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig712z:              .quad            1
                        .quad            .Lmain_α_712_2
                        .quad            .Lmain_α_712_2
                        .quad            16
.Lmain_α_712_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_712_29
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
.Lmain_α_712_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lmain_α_712_240
                        add              rsp, 16;                             jmp   n273_deref_β
.Lmain_α_712_240:                                                             jmp   n275_binop_α
n274_call_β:            mov              r11, 188;                            jmp   n273_deref_β
.Lmain_β_712_0:         .quad            .Lmain_β_712_0_s
.Lmain_β_712_0_s:       .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n275_binop_α:           sub              rsp, 16
                        mov              r11, 189
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lmain_α_713_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmain_α_713_7
.Lmain_α_713_2:         and              edx, 1;                              jz    .Lmain_α_713_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lmain_α_713_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_713_4
.Lmain_α_713_3:         movq             xmm0, rsi
.Lmain_α_713_4:         cmp              cl, 5;                               je    .Lmain_α_713_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lmain_α_713_6
.Lmain_α_713_5:         movq             xmm1, rdi
.Lmain_α_713_6:         mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lmain_α_713_7:                                                               jmp   n276_assign_var_α
.Lmain_α_713_0:         mov              rdi, qword ptr [rsp + 128]           # call
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
                        cmp              al, 104;                             jne   .Lmain_α_713_240
                        add              rsp, 32;                             jmp   n273_deref_β
.Lmain_α_713_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_assign_var_α
n275_binop_β:           mov              r11, 189
                        add              rsp, 32;                             jmp   n273_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n276_assign_var_α:      sub              rsp, 16
                        mov              r11, 190
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lmain_α_715_0
                        test             rsi, rsi;                            je    .Lmain_α_715_0
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
                        cmp              al, 104;                             jne   .Lmain_α_715_238
                        add              rsp, 16;                             jmp   n275_binop_β
.Lmain_α_715_238:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_statement_end_α
.Lmain_α_715_0:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_715_239
                        add              rsp, 16;                             jmp   n275_binop_β
.Lmain_α_715_239:       mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lmain_α_715_240
                        add              rsp, 16;                             jmp   n275_binop_β
.Lmain_α_715_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n277_statement_end_α:   mov              r11, 191
                        mov              r10, 20
                        add              rsp, 288;                            jmp   n278_statement_begin_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n278_statement_begin_α: mov              r11, 192
                        mov              r10, 21;                             jmp   n279_lit_name_α
n278_statement_begin_β: mov              r11, 192;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_name_α:        sub              rsp, 16
                        mov              r11, 193
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_720_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n280_assign_α
.Lmain_α_720_0:         .quad            .Lmain_α_720_0_s
.Lmain_α_720_0_s:       .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n280_assign_α:          mov              r11, 194
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # MUL
                        mov              qword ptr [r9 + 104], rdx;           jmp   n281_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_end_α:   mov              r11, 195
                        mov              r10, 21
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# DIV     S[sp = sp - 1] = DRF(S[sp]) / DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
n282_statement_begin_α: mov              r11, 196
                        mov              r10, 22;                             jmp   n283_var_α
n282_statement_begin_β: mov              r11, 196;                            jmp   n303_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             sub              rsp, 16
                        mov              r11, 197
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n284_var_α
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:             sub              rsp, 16
                        mov              r11, 198
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n285_lit_integer_α
n284_var_β:             mov              r11, 198
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n282_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_integer_α:     sub              rsp, 16
                        mov              r11, 199
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_728_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n286_binop_α
n285_lit_integer_β:     mov              r11, 199
                        add              rsp, 16;                             jmp   n284_var_β
.Lmain_α_728_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n286_binop_α:           sub              rsp, 16
                        mov              r11, 200
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lmain_α_729_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmain_α_729_7
.Lmain_α_729_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lmain_α_729_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lmain_α_729_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_729_4
.Lmain_α_729_3:         movq             xmm0, rsi
.Lmain_α_729_4:         cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lmain_α_729_7:                                                               jmp   n287_assign_α
.Lmain_α_729_0:         mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lmain_α_729_240
                        add              rsp, 16;                             jmp   n285_lit_integer_β
.Lmain_α_729_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n287_assign_α
n286_binop_β:           mov              r11, 200
                        add              rsp, 16;                             jmp   n285_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n287_assign_α:          mov              r11, 201
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n288_var_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             sub              rsp, 16
                        mov              r11, 202
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_var_α
n288_var_β:             mov              r11, 202
                        add              rsp, 16;                             jmp   n286_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n289_var_α:             sub              rsp, 16
                        mov              r11, 203
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n290_subscript_α
n289_var_β:             mov              r11, 203
                        add              rsp, 16;                             jmp   n288_var_β
#-----------------------------------------------------------------------------------------------------------------------
n290_subscript_α:       sub              rsp, 16
                        mov              r11, 204
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
                        cmp              al, 104;                             jne   .Lmain_α_733_240
                        add              rsp, 16;                             jmp   n289_var_β
.Lmain_α_733_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n291_deref_α
n290_subscript_β:       mov              r11, 204
                        add              rsp, 16;                             jmp   n289_var_β
#-----------------------------------------------------------------------------------------------------------------------
n291_deref_α:           sub              rsp, 16
                        mov              r11, 205
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
                        cmp              al, 104;                             jne   .Lmain_α_734_240
                        add              rsp, 16;                             jmp   n290_subscript_β
.Lmain_α_734_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n292_call_α
n291_deref_β:           mov              r11, 205
                        add              rsp, 16;                             jmp   n290_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n292_call_α:            sub              rsp, 16
                        mov              r11, 206
                        lea              rcx, [rip + .Lsig736z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig736z:              .quad            1
                        .quad            .Lmain_α_736_2
                        .quad            .Lmain_α_736_2
                        .quad            16
.Lmain_α_736_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_736_29
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
.Lmain_α_736_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lmain_α_736_240
                        add              rsp, 16;                             jmp   n291_deref_β
.Lmain_α_736_240:                                                             jmp   n293_var_α
n292_call_β:            mov              r11, 206;                            jmp   n291_deref_β
.Lmain_β_736_0:         .quad            .Lmain_β_736_0_s
.Lmain_β_736_0_s:       .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:             sub              rsp, 16
                        mov              r11, 207
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_var_α
n293_var_β:             mov              r11, 207
                        add              rsp, 32;                             jmp   n291_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             sub              rsp, 16
                        mov              r11, 208
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_lit_integer_α
n294_var_β:             mov              r11, 208
                        add              rsp, 16;                             jmp   n293_var_β
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_integer_α:     sub              rsp, 16
                        mov              r11, 209
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_739_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n296_binop_α
n295_lit_integer_β:     mov              r11, 209
                        add              rsp, 16;                             jmp   n294_var_β
.Lmain_α_739_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n296_binop_α:           sub              rsp, 16
                        mov              r11, 210
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lmain_α_740_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmain_α_740_7
.Lmain_α_740_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lmain_α_740_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lmain_α_740_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_740_4
.Lmain_α_740_3:         movq             xmm0, rsi
.Lmain_α_740_4:         cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lmain_α_740_7:                                                               jmp   n297_subscript_α
.Lmain_α_740_0:         mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lmain_α_740_240
                        add              rsp, 16;                             jmp   n295_lit_integer_β
.Lmain_α_740_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n297_subscript_α
n296_binop_β:           mov              r11, 210
                        add              rsp, 16;                             jmp   n295_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n297_subscript_α:       sub              rsp, 16
                        mov              r11, 211
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
                        cmp              al, 104;                             jne   .Lmain_α_741_240
                        add              rsp, 16;                             jmp   n296_binop_β
.Lmain_α_741_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_deref_α
n297_subscript_β:       mov              r11, 211
                        add              rsp, 16;                             jmp   n296_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n298_deref_α:           sub              rsp, 16
                        mov              r11, 212
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
                        cmp              al, 104;                             jne   .Lmain_α_742_240
                        add              rsp, 16;                             jmp   n297_subscript_β
.Lmain_α_742_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n299_call_α
n298_deref_β:           mov              r11, 212
                        add              rsp, 16;                             jmp   n297_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n299_call_α:            sub              rsp, 16
                        mov              r11, 213
                        lea              rcx, [rip + .Lsig744z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig744z:              .quad            1
                        .quad            .Lmain_α_744_2
                        .quad            .Lmain_α_744_2
                        .quad            16
.Lmain_α_744_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_744_29
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
.Lmain_α_744_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lmain_α_744_240
                        add              rsp, 16;                             jmp   n298_deref_β
.Lmain_α_744_240:                                                             jmp   n300_binop_α
n299_call_β:            mov              r11, 213;                            jmp   n298_deref_β
.Lmain_β_744_0:         .quad            .Lmain_β_744_0_s
.Lmain_β_744_0_s:       .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n300_binop_α:           sub              rsp, 16
                        mov              r11, 214
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
                        cmp              al, 104;                             jne   .Lmain_α_745_240
                        add              rsp, 32;                             jmp   n298_deref_β
.Lmain_α_745_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n301_assign_var_α
n300_binop_β:           mov              r11, 214
                        add              rsp, 32;                             jmp   n298_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n301_assign_var_α:      sub              rsp, 16
                        mov              r11, 215
                        mov              rdi, qword ptr [rsp + 272]           # var
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 224]           # assign
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              dil, 24;                             jne   .Lmain_α_747_0
                        test             rsi, rsi;                            je    .Lmain_α_747_0
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
                        cmp              al, 104;                             jne   .Lmain_α_747_238
                        add              rsp, 16;                             jmp   n300_binop_β
.Lmain_α_747_238:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n302_statement_end_α
.Lmain_α_747_0:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_747_239
                        add              rsp, 16;                             jmp   n300_binop_β
.Lmain_α_747_239:       mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lmain_α_747_240
                        add              rsp, 16;                             jmp   n300_binop_β
.Lmain_α_747_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n302_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n302_statement_end_α:   mov              r11, 216
                        mov              r10, 22
                        add              rsp, 288;                            jmp   n303_statement_begin_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n303_statement_begin_α: mov              r11, 217
                        mov              r10, 23;                             jmp   n304_lit_name_α
n303_statement_begin_β: mov              r11, 217;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_name_α:        sub              rsp, 16
                        mov              r11, 218
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_752_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n305_assign_α
.Lmain_α_752_0:         .quad            .Lmain_α_752_0_s
.Lmain_α_752_0_s:       .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n305_assign_α:          mov              r11, 219
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # DIV
                        mov              qword ptr [r9 + 120], rdx;           jmp   n306_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_end_α:   mov              r11, 220
                        mov              r10, 23
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# SGN     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n307_statement_begin_α: mov              r11, 221
                        mov              r10, 24;                             jmp   n308_var_α
n307_statement_begin_β: mov              r11, 221;                            jmp   n315_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             sub              rsp, 16
                        mov              r11, 222
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n309_var_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             sub              rsp, 16
                        mov              r11, 223
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_subscript_α
n309_var_β:             mov              r11, 223
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n307_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n310_subscript_α:       sub              rsp, 16
                        mov              r11, 224
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
                        cmp              al, 104;                             jne   .Lmain_α_760_240
                        add              rsp, 16;                             jmp   n309_var_β
.Lmain_α_760_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_deref_α
n310_subscript_β:       mov              r11, 224
                        add              rsp, 16;                             jmp   n309_var_β
#-----------------------------------------------------------------------------------------------------------------------
n311_deref_α:           sub              rsp, 16
                        mov              r11, 225
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
                        cmp              al, 104;                             jne   .Lmain_α_761_240
                        add              rsp, 16;                             jmp   n310_subscript_β
.Lmain_α_761_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_call_α
n311_deref_β:           mov              r11, 225
                        add              rsp, 16;                             jmp   n310_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:            sub              rsp, 16
                        mov              r11, 226
                        lea              rcx, [rip + .Lsig763z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig763z:              .quad            1
                        .quad            .Lmain_α_763_2
                        .quad            .Lmain_α_763_2
                        .quad            16
.Lmain_α_763_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_763_29
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
.Lmain_α_763_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lmain_α_763_240
                        add              rsp, 16;                             jmp   n311_deref_β
.Lmain_α_763_240:                                                             jmp   n313_assign_α
n312_call_β:            mov              r11, 226;                            jmp   n311_deref_β
.Lmain_β_763_0:         .quad            .Lmain_β_763_0_s
.Lmain_β_763_0_s:       .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n313_assign_α:          mov              r11, 227
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              qword ptr [r9 + 152], rdx;           jmp   n314_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n314_statement_end_α:   mov              r11, 228
                        mov              r10, 24
                        add              rsp, 80;                             jmp   n315_statement_begin_α
#=======================================================================================================================
#         p1 = IDENT(S[sp = sp - 1], '-') -p1
#-----------------------------------------------------------------------------------------------------------------------
n315_statement_begin_α: mov              r11, 229
                        mov              r10, 25;                             jmp   n316_var_α
n315_statement_begin_β: mov              r11, 229;                            jmp   n329_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:             sub              rsp, 16
                        mov              r11, 230
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n317_var_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_α:             sub              rsp, 16
                        mov              r11, 231
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n318_lit_integer_α
n317_var_β:             mov              r11, 231
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n315_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_integer_α:     sub              rsp, 16
                        mov              r11, 232
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_771_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n319_binop_α
n318_lit_integer_β:     mov              r11, 232
                        add              rsp, 16;                             jmp   n317_var_β
.Lmain_α_771_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n319_binop_α:           sub              rsp, 16
                        mov              r11, 233
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lmain_α_772_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmain_α_772_7
.Lmain_α_772_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lmain_α_772_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lmain_α_772_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_772_4
.Lmain_α_772_3:         movq             xmm0, rsi
.Lmain_α_772_4:         cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lmain_α_772_7:                                                               jmp   n320_assign_α
.Lmain_α_772_0:         mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lmain_α_772_240
                        add              rsp, 16;                             jmp   n318_lit_integer_β
.Lmain_α_772_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n320_assign_α
n319_binop_β:           mov              r11, 233
                        add              rsp, 16;                             jmp   n318_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n320_assign_α:          mov              r11, 234
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # sp
                        mov              qword ptr [r9 + 184], rdx;           jmp   n321_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n321_subscript_α:       sub              rsp, 16
                        mov              r11, 235
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
                        cmp              al, 104;                             jne   .Lmain_α_774_240
                        add              rsp, 16;                             jmp   n319_binop_β
.Lmain_α_774_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n322_deref_α
n321_subscript_β:       mov              r11, 235
                        add              rsp, 16;                             jmp   n319_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n322_deref_α:           sub              rsp, 16
                        mov              r11, 236
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
                        cmp              al, 104;                             jne   .Lmain_α_775_240
                        add              rsp, 16;                             jmp   n321_subscript_β
.Lmain_α_775_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n323_lit_string_α
n322_deref_β:           mov              r11, 236
                        add              rsp, 16;                             jmp   n321_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      sub              rsp, 16
                        mov              r11, 237
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_776_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n324_ident_α
n323_lit_string_β:      mov              r11, 237
                        add              rsp, 16;                             jmp   n322_deref_β
.Lmain_α_776_0:         .quad            .Lmain_α_776_0_s
.Lmain_α_776_0_s:       .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n324_ident_α:           sub              rsp, 16
                        mov              r11, 238
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
                        test             eax, eax;                            jne   .Lmain_α_778_240
                        add              rsp, 16;                             jmp   n323_lit_string_β
.Lmain_α_778_240:                                                             jmp   n325_var_α
n324_ident_β:           mov              r11, 238
                        add              rsp, 16;                             jmp   n323_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n325_var_α:             sub              rsp, 16
                        mov              r11, 239
                        mov              rax, qword ptr [r9 + 144]            # p1
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n326_unop_α
n325_var_β:             mov              r11, 239
                        add              rsp, 16;                             jmp   n324_ident_β
#-----------------------------------------------------------------------------------------------------------------------
n326_unop_α:            sub              rsp, 16
                        mov              r11, 240
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n327_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n327_assign_α:          mov              r11, 241
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # p1
                        mov              qword ptr [r9 + 152], rdx;           jmp   n328_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_end_α:   mov              r11, 242
                        mov              r10, 25
                        add              rsp, 160;                            jmp   n329_statement_begin_α
#=======================================================================================================================
#         S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
n329_statement_begin_α: mov              r11, 243
                        mov              r10, 26;                             jmp   n330_var_α
n329_statement_begin_β: mov              r11, 243;                            jmp   n335_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:             sub              rsp, 16
                        mov              r11, 244
                        mov              rax, qword ptr [r9 + 160]            # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_var_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:             sub              rsp, 16
                        mov              r11, 245
                        mov              rax, qword ptr [r9 + 176]            # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n332_var_α
n331_var_β:             mov              r11, 245
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n329_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n332_var_α:             sub              rsp, 16
                        mov              r11, 246
                        mov              rax, qword ptr [r9 + 144]            # p1
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n333_assign_var_α
n332_var_β:             mov              r11, 246
                        add              rsp, 16;                             jmp   n331_var_β
#-----------------------------------------------------------------------------------------------------------------------
n333_assign_var_α:      sub              rsp, 16
                        mov              r11, 247
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lmain_α_790_0
                        test             rsi, rsi;                            je    .Lmain_α_790_0
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
                        cmp              al, 104;                             jne   .Lmain_α_790_238
                        add              rsp, 16;                             jmp   n332_var_β
.Lmain_α_790_238:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_statement_end_α
.Lmain_α_790_0:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_790_239
                        add              rsp, 16;                             jmp   n332_var_β
.Lmain_α_790_239:       mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lmain_α_790_240
                        add              rsp, 16;                             jmp   n332_var_β
.Lmain_α_790_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n334_statement_end_α:   mov              r11, 248
                        mov              r10, 26
                        add              rsp, 64;                             jmp   n335_statement_begin_α
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n335_statement_begin_α: mov              r11, 249
                        mov              r10, 27;                             jmp   n336_lit_name_α
n335_statement_begin_β: mov              r11, 249;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_name_α:        sub              rsp, 16
                        mov              r11, 250
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_795_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n337_assign_α
.Lmain_α_795_0:         .quad            .Lmain_α_795_0_s
.Lmain_α_795_0_s:       .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n337_assign_α:          mov              r11, 251
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # SGN
                        mov              qword ptr [r9 + 136], rdx;           jmp   n338_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_end_α:   mov              r11, 252
                        mov              r10, 27
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# FNS_end  <stmt 28, line 56: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n339_statement_begin_α: mov              r11, 253
                        mov              r10, 28;                             jmp   n340_statement_end_α
n339_statement_begin_β: mov              r11, 253;                            jmp   n341_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n340_statement_end_α:   mov              r11, 254
                        mov              r10, 28;                             jmp   n341_statement_begin_α
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_begin_α: mov              r11, 255
                        mov              r10, 29;                             jmp   n342_lit_integer_α
n341_statement_begin_β: mov              r11, 255;                            jmp   n346_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_integer_α:     sub              rsp, 16
                        mov              r11, 256
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_805_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n343_call_α
.Lmain_α_805_0:         .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n343_call_α:            sub              rsp, 16
                        mov              r11, 257
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd807:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd807]
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
                        cmp              al, 104;                             jne   .Lmain_α_806_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n341_statement_begin_β
.Lmain_α_806_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n344_assign_α
n343_call_β:            mov              r11, 257
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n341_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n344_assign_α:          mov              r11, 258
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # S
                        mov              qword ptr [r9 + 168], rdx;           jmp   n345_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n345_statement_end_α:   mov              r11, 259
                        mov              r10, 29
                        add              rsp, 32;                             jmp   n346_statement_begin_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n346_statement_begin_α: mov              r11, 260
                        mov              r10, 30;                             jmp   n347_kw_snobol4_α
n346_statement_begin_β: mov              r11, 260;                            jmp   n350_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n347_kw_snobol4_α:      sub              rsp, 16
                        mov              r11, 261
                        mov              rdi, qword ptr [rip + .Lmain_α_813_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n348_assign_α
.Lmain_α_813_0:         .quad            26
#-----------------------------------------------------------------------------------------------------------------------
n348_assign_α:          mov              r11, 262
                        mov              rax, qword ptr [rsp + 0]             # kw_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # LCASE
                        mov              qword ptr [r9 + 232], rdx;           jmp   n349_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n349_statement_end_α:   mov              r11, 263
                        mov              r10, 30
                        add              rsp, 16;                             jmp   n350_statement_begin_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n350_statement_begin_α: mov              r11, 264
                        mov              r10, 31;                             jmp   n351_lit_string_α
n350_statement_begin_β: mov              r11, 264;                            jmp   n354_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:      sub              rsp, 16
                        mov              r11, 265
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lmain_α_819_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n352_assign_α
.Lmain_α_819_0:         .quad            .Lmain_α_819_0_s
.Lmain_α_819_0_s:       .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n352_assign_α:          mov              r11, 266
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # DIGITS
                        mov              qword ptr [r9 + 248], rdx;           jmp   n353_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n353_statement_end_α:   mov              r11, 267
                        mov              r10, 31
                        add              rsp, 16;                             jmp   n354_statement_begin_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n354_statement_begin_α: mov              r11, 268
                        mov              r10, 32;                             jmp   n355_lit_string_α
n354_statement_begin_β: mov              r11, 268;                            jmp   n359_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:      sub              rsp, 16
                        mov              r11, 269
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_825_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n356_call_α
.Lmain_α_825_0:         .quad            .Lmain_α_825_0_s
.Lmain_α_825_0_s:       .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n356_call_α:            sub              rsp, 16
                        mov              r11, 270
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd827:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd827]
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
                        cmp              al, 104;                             jne   .Lmain_α_826_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n354_statement_begin_β
.Lmain_α_826_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n357_assign_α
n356_call_β:            mov              r11, 270
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n354_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n357_assign_α:          mov              r11, 271
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # V
                        mov              qword ptr [r9 + 264], rdx;           jmp   n358_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n358_statement_end_α:   mov              r11, 272
                        mov              r10, 32
                        add              rsp, 32;                             jmp   n359_statement_begin_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n359_statement_begin_α: mov              r11, 273
                        mov              r10, 33;                             jmp   n360_lit_string_α
n359_statement_begin_β: mov              r11, 273;                            jmp   n364_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:      sub              rsp, 16
                        mov              r11, 274
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_833_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n361_call_α
.Lmain_α_833_0:         .quad            .Lmain_α_833_0_s
.Lmain_α_833_0_s:       .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n361_call_α:            sub              rsp, 16
                        mov              r11, 275
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd835:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd835]
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
                        cmp              al, 104;                             jne   .Lmain_α_834_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n359_statement_begin_β
.Lmain_α_834_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n362_assign_α
n361_call_β:            mov              r11, 275
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n359_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n362_assign_α:          mov              r11, 276
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # I
                        mov              qword ptr [r9 + 280], rdx;           jmp   n363_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_end_α:   mov              r11, 277
                        mov              r10, 33
                        add              rsp, 32;                             jmp   n364_statement_begin_α
#=======================================================================================================================
#         A = FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n364_statement_begin_α: mov              r11, 278
                        mov              r10, 34;                             jmp   n365_var_α
n364_statement_begin_β: mov              r11, 278;                            jmp   n374_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:             sub              rsp, 16
                        mov              r11, 279
                        mov              rax, qword ptr [r9 + 256]            # V
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n366_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n366_assign_α:          mov              r11, 280
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 456], rdx;           jmp   n367_var_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             sub              rsp, 16
                        mov              r11, 281
                        mov              rax, qword ptr [r9 + 272]            # I
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n368_assign_α
n367_var_β:             mov              r11, 281
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n364_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n368_assign_α:          mov              r11, 282
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 472], rdx;           jmp   n369_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:      sub              rsp, 16
                        mov              r11, 283
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_845_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n370_lit_string_α
n369_lit_string_β:      mov              r11, 283
                        add              rsp, 16;                             jmp   n367_var_β
.Lmain_α_845_0:         .quad            .Lmain_α_845_0_s
.Lmain_α_845_0_s:       .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:      sub              rsp, 16
                        mov              r11, 284
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_846_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n371_call_α
n370_lit_string_β:      mov              r11, 284
                        add              rsp, 16;                             jmp   n369_lit_string_β
.Lmain_α_846_0:         .quad            .Lmain_α_846_0_s
.Lmain_α_846_0_s:       .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n371_call_α:            sub              rsp, 16
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
.Lrkfnzd848:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd848]
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
                        cmp              al, 104;                             jne   .Lmain_α_847_240
                        add              rsp, 16;                             jmp   n370_lit_string_β
.Lmain_α_847_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n372_assign_α
n371_call_β:            mov              r11, 285
                        add              rsp, 16;                             jmp   n370_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n372_assign_α:          mov              r11, 286
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # A
                        mov              qword ptr [r9 + 296], rdx;           jmp   n373_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n373_statement_end_α:   mov              r11, 287
                        mov              r10, 34
                        add              rsp, 80;                             jmp   n374_statement_begin_α
#=======================================================================================================================
#         F = FENCE(A | ANY('+-') . *PSH() *F . *SGN())
#-----------------------------------------------------------------------------------------------------------------------
n374_statement_begin_α: mov              r11, 288
                        mov              r10, 35;                             jmp   n375_var_α
n374_statement_begin_β: mov              r11, 288;                            jmp   n382_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n375_var_α:             sub              rsp, 16
                        mov              r11, 289
                        mov              rax, qword ptr [r9 + 288]            # A
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n376_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n376_assign_α:          mov              r11, 290
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 488], rdx;           jmp   n377_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:      sub              rsp, 16
                        mov              r11, 291
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_856_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n378_lit_string_α
n377_lit_string_β:      mov              r11, 291
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n374_statement_begin_β
.Lmain_α_856_0:         .quad            .Lmain_α_856_0_s
.Lmain_α_856_0_s:       .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:      sub              rsp, 16
                        mov              r11, 292
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_857_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n379_call_α
n378_lit_string_β:      mov              r11, 292
                        add              rsp, 16;                             jmp   n377_lit_string_β
.Lmain_α_857_0:         .quad            .Lmain_α_857_0_s
.Lmain_α_857_0_s:       .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n379_call_α:            sub              rsp, 16
                        mov              r11, 293
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
.Lrkfnzd859:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd859]
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
                        cmp              al, 104;                             jne   .Lmain_α_858_240
                        add              rsp, 16;                             jmp   n378_lit_string_β
.Lmain_α_858_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n380_assign_α
n379_call_β:            mov              r11, 293
                        add              rsp, 16;                             jmp   n378_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n380_assign_α:          mov              r11, 294
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # F
                        mov              qword ptr [r9 + 312], rdx;           jmp   n381_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n381_statement_end_α:   mov              r11, 295
                        mov              r10, 35
                        add              rsp, 64;                             jmp   n382_statement_begin_α
#=======================================================================================================================
#         T = F ARBNO('*' F . *MUL() | '/' F . *DIV())
#-----------------------------------------------------------------------------------------------------------------------
n382_statement_begin_α: mov              r11, 296
                        mov              r10, 36;                             jmp   n383_var_α
n382_statement_begin_β: mov              r11, 296;                            jmp   n394_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:             sub              rsp, 16
                        mov              r11, 297
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n384_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n384_assign_α:          mov              r11, 298
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 504], rdx;           jmp   n385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n385_var_α:             sub              rsp, 16
                        mov              r11, 299
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n386_assign_α
n385_var_β:             mov              r11, 299
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n382_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n386_assign_α:          mov              r11, 300
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 520], rdx;           jmp   n387_var_α
#-----------------------------------------------------------------------------------------------------------------------
n387_var_α:             sub              rsp, 16
                        mov              r11, 301
                        mov              rax, qword ptr [r9 + 304]            # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n388_assign_α
n387_var_β:             mov              r11, 301
                        add              rsp, 16;                             jmp   n385_var_β
#-----------------------------------------------------------------------------------------------------------------------
n388_assign_α:          mov              r11, 302
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 528], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 536], rdx;           jmp   n389_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_string_α:      sub              rsp, 16
                        mov              r11, 303
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_871_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n390_lit_string_α
n389_lit_string_β:      mov              r11, 303
                        add              rsp, 16;                             jmp   n387_var_β
.Lmain_α_871_0:         .quad            .Lmain_α_871_0_s
.Lmain_α_871_0_s:       .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:      sub              rsp, 16
                        mov              r11, 304
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_872_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n391_call_α
n390_lit_string_β:      mov              r11, 304
                        add              rsp, 16;                             jmp   n389_lit_string_β
.Lmain_α_872_0:         .quad            .Lmain_α_872_0_s
.Lmain_α_872_0_s:       .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n391_call_α:            sub              rsp, 16
                        mov              r11, 305
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
.Lrkfnzd874:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd874]
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
                        cmp              al, 104;                             jne   .Lmain_α_873_240
                        add              rsp, 16;                             jmp   n390_lit_string_β
.Lmain_α_873_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n392_assign_α
n391_call_β:            mov              r11, 305
                        add              rsp, 16;                             jmp   n390_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n392_assign_α:          mov              r11, 306
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # T
                        mov              qword ptr [r9 + 328], rdx;           jmp   n393_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n393_statement_end_α:   mov              r11, 307
                        mov              r10, 36
                        add              rsp, 96;                             jmp   n394_statement_begin_α
#=======================================================================================================================
#         X = T ARBNO('+' T . *ADD() | '-' T . *SUB())
#-----------------------------------------------------------------------------------------------------------------------
n394_statement_begin_α: mov              r11, 308
                        mov              r10, 37;                             jmp   n395_var_α
n394_statement_begin_β: mov              r11, 308;                            jmp   n406_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n395_var_α:             sub              rsp, 16
                        mov              r11, 309
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n396_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n396_assign_α:          mov              r11, 310
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 552], rdx;           jmp   n397_var_α
#-----------------------------------------------------------------------------------------------------------------------
n397_var_α:             sub              rsp, 16
                        mov              r11, 311
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n398_assign_α
n397_var_β:             mov              r11, 311
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n394_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n398_assign_α:          mov              r11, 312
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # PAT$5$V1
                        mov              qword ptr [r9 + 568], rdx;           jmp   n399_var_α
#-----------------------------------------------------------------------------------------------------------------------
n399_var_α:             sub              rsp, 16
                        mov              r11, 313
                        mov              rax, qword ptr [r9 + 320]            # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n400_assign_α
n399_var_β:             mov              r11, 313
                        add              rsp, 16;                             jmp   n397_var_β
#-----------------------------------------------------------------------------------------------------------------------
n400_assign_α:          mov              r11, 314
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # PAT$5$V2
                        mov              qword ptr [r9 + 584], rdx;           jmp   n401_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:      sub              rsp, 16
                        mov              r11, 315
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_886_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n402_lit_string_α
n401_lit_string_β:      mov              r11, 315
                        add              rsp, 16;                             jmp   n399_var_β
.Lmain_α_886_0:         .quad            .Lmain_α_886_0_s
.Lmain_α_886_0_s:       .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:      sub              rsp, 16
                        mov              r11, 316
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_887_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n403_call_α
n402_lit_string_β:      mov              r11, 316
                        add              rsp, 16;                             jmp   n401_lit_string_β
.Lmain_α_887_0:         .quad            .Lmain_α_887_0_s
.Lmain_α_887_0_s:       .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n403_call_α:            sub              rsp, 16
                        mov              r11, 317
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
.Lrkfnzd889:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd889]
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
                        cmp              al, 104;                             jne   .Lmain_α_888_240
                        add              rsp, 16;                             jmp   n402_lit_string_β
.Lmain_α_888_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n404_assign_α
n403_call_β:            mov              r11, 317
                        add              rsp, 16;                             jmp   n402_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n404_assign_α:          mov              r11, 318
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # X
                        mov              qword ptr [r9 + 344], rdx;           jmp   n405_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n405_statement_end_α:   mov              r11, 319
                        mov              r10, 37
                        add              rsp, 96;                             jmp   n406_statement_begin_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n406_statement_begin_α: mov              r11, 320
                        mov              r10, 38;                             jmp   n407_lit_integer_α
n406_statement_begin_β: mov              r11, 320;                            jmp   n415_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_integer_α:     sub              rsp, 16
                        mov              r11, 321
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_895_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n408_call_α
.Lmain_α_895_0:         .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n408_call_α:            sub              rsp, 16
                        mov              r11, 322
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd322:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd322]
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
                        cmp              al, 104;                             jne   .Lmain_α_896_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n406_statement_begin_β
.Lmain_α_896_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n409_assign_α
n408_call_β:            mov              r11, 322
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n406_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n409_assign_α:          mov              r11, 323
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # PAT$6$V0
                        mov              qword ptr [r9 + 600], rdx;           jmp   n410_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_string_α:      sub              rsp, 16
                        mov              r11, 324
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_898_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n411_lit_string_α
n410_lit_string_β:      mov              r11, 324
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n406_statement_begin_β
.Lmain_α_898_0:         .quad            .Lmain_α_898_0_s
.Lmain_α_898_0_s:       .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_string_α:      sub              rsp, 16
                        mov              r11, 325
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_899_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n412_call_α
n411_lit_string_β:      mov              r11, 325
                        add              rsp, 16;                             jmp   n410_lit_string_β
.Lmain_α_899_0:         .quad            .Lmain_α_899_0_s
.Lmain_α_899_0_s:       .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n412_call_α:            sub              rsp, 16
                        mov              r11, 326
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
.Lrkfnzd901:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd901]
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
                        cmp              al, 104;                             jne   .Lmain_α_900_240
                        add              rsp, 16;                             jmp   n411_lit_string_β
.Lmain_α_900_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n413_assign_α
n412_call_β:            mov              r11, 326
                        add              rsp, 16;                             jmp   n411_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n413_assign_α:          mov              r11, 327
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # eol
                        mov              qword ptr [r9 + 360], rdx;           jmp   n414_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n414_statement_end_α:   mov              r11, 328
                        mov              r10, 38
                        add              rsp, 80;                             jmp   n415_statement_begin_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n415_statement_begin_α: mov              r11, 329
                        mov              r10, 39;                             jmp   n416_var_α
n415_statement_begin_β: mov              r11, 329;                            jmp   n427_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:             sub              rsp, 16
                        mov              r11, 330
                        mov              rax, qword ptr [r9 + 336]            # X
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n417_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n417_assign_α:          mov              r11, 331
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # PAT$7$V0
                        mov              qword ptr [r9 + 616], rdx;           jmp   n418_var_α
#-----------------------------------------------------------------------------------------------------------------------
n418_var_α:             sub              rsp, 16
                        mov              r11, 332
                        mov              rax, qword ptr [r9 + 352]            # eol
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n419_assign_α
n418_var_β:             mov              r11, 332
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n415_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n419_assign_α:          mov              r11, 333
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # PAT$7$V1
                        mov              qword ptr [r9 + 632], rdx;           jmp   n420_var_α
#-----------------------------------------------------------------------------------------------------------------------
n420_var_α:             sub              rsp, 16
                        mov              r11, 334
                        mov              rax, qword ptr [r9 + 384]            # epsilon
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n421_assign_α
n420_var_β:             mov              r11, 334
                        add              rsp, 16;                             jmp   n418_var_β
#-----------------------------------------------------------------------------------------------------------------------
n421_assign_α:          mov              r11, 335
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 640], rax            # PAT$7$V2
                        mov              qword ptr [r9 + 648], rdx;           jmp   n422_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      sub              rsp, 16
                        mov              r11, 336
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_913_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n423_lit_string_α
n422_lit_string_β:      mov              r11, 336
                        add              rsp, 16;                             jmp   n420_var_β
.Lmain_α_913_0:         .quad            .Lmain_α_913_0_s
.Lmain_α_913_0_s:       .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_string_α:      sub              rsp, 16
                        mov              r11, 337
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_914_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n424_call_α
n423_lit_string_β:      mov              r11, 337
                        add              rsp, 16;                             jmp   n422_lit_string_β
.Lmain_α_914_0:         .quad            .Lmain_α_914_0_s
.Lmain_α_914_0_s:       .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n424_call_α:            sub              rsp, 16
                        mov              r11, 338
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
.Lrkfnzd916:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd916]
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
                        cmp              al, 104;                             jne   .Lmain_α_915_240
                        add              rsp, 16;                             jmp   n423_lit_string_β
.Lmain_α_915_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n425_assign_α
n424_call_β:            mov              r11, 338
                        add              rsp, 16;                             jmp   n423_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n425_assign_α:          mov              r11, 339
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # C
                        mov              qword ptr [r9 + 376], rdx;           jmp   n426_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n426_statement_end_α:   mov              r11, 340
                        mov              r10, 39
                        add              rsp, 96;                             jmp   n427_statement_begin_α
#=======================================================================================================================
#         &TRIM = 0
#-----------------------------------------------------------------------------------------------------------------------
n427_statement_begin_α: mov              r11, 341
                        mov              r10, 40;                             jmp   n428_lit_integer_α
n427_statement_begin_β: mov              r11, 341;                            jmp   n431_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_integer_α:     sub              rsp, 16
                        mov              r11, 342
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_922_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n429_kw_assign_snobol4_α
.Lmain_α_922_0:         .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n429_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 343
                        mov              rdi, qword ptr [rip + .Lmain_α_923_0]
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
                        cmp              al, 104;                             jne   .Lmain_α_923_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n427_statement_begin_β
.Lmain_α_923_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n430_statement_end_α
.Lmain_α_923_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n430_statement_end_α:   mov              r11, 344
                        mov              r10, 40
                        add              rsp, 32;                             jmp   n431_statement_begin_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n431_statement_begin_α: mov              r11, 345
                        mov              r10, 41;                             jmp   n432_call_α
n431_statement_begin_β: mov              r11, 345;                            jmp   n435_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n432_call_α:            sub              rsp, 16
                        mov              r11, 346
                        .section         .rodata
.Lrkfnzd929:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd929]
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
                        cmp              al, 104;                             jne   .Lmain_α_928_240
                        add              rsp, 16;                             jmp   n431_statement_begin_β
.Lmain_α_928_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n433_assign_α
n432_call_β:            mov              r11, 346
                        add              rsp, 16;                             jmp   n431_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n433_assign_α:          mov              r11, 347
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # vars
                        mov              qword ptr [r9 + 216], rdx;           jmp   n434_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n434_statement_end_α:   mov              r11, 348
                        mov              r10, 41
                        add              rsp, 16;                             jmp   n435_statement_begin_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n435_statement_begin_α: mov              r11, 349
                        mov              r10, 42;                             jmp   n436_var_α
n435_statement_begin_β: mov              r11, 349;                            jmp   n441_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n436_var_α:             sub              rsp, 16
                        mov              r11, 350
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n437_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:      sub              rsp, 16
                        mov              r11, 351
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_936_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n438_lit_integer_α
n437_lit_string_β:      mov              r11, 351
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n435_statement_begin_β
.Lmain_α_936_0:         .quad            .Lmain_α_936_0_s
.Lmain_α_936_0_s:       .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_integer_α:     sub              rsp, 16
                        mov              r11, 352
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_937_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n439_assign_var_α
n438_lit_integer_β:     mov              r11, 352
                        add              rsp, 16;                             jmp   n437_lit_string_β
.Lmain_α_937_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n439_assign_var_α:      sub              rsp, 16
                        mov              r11, 353
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lmain_α_939_0
                        test             rsi, rsi;                            je    .Lmain_α_939_0
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
                        cmp              al, 104;                             jne   .Lmain_α_939_238
                        add              rsp, 16;                             jmp   n438_lit_integer_β
.Lmain_α_939_238:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n440_statement_end_α
.Lmain_α_939_0:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_939_239
                        add              rsp, 16;                             jmp   n438_lit_integer_β
.Lmain_α_939_239:       mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lmain_α_939_240
                        add              rsp, 16;                             jmp   n438_lit_integer_β
.Lmain_α_939_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n440_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n440_statement_end_α:   mov              r11, 354
                        mov              r10, 42
                        add              rsp, 64;                             jmp   n441_statement_begin_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n441_statement_begin_α: mov              r11, 355
                        mov              r10, 43;                             jmp   n442_var_α
n441_statement_begin_β: mov              r11, 355;                            jmp   n447_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:             sub              rsp, 16
                        mov              r11, 356
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n443_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n443_lit_string_α:      sub              rsp, 16
                        mov              r11, 357
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_945_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n444_lit_integer_α
n443_lit_string_β:      mov              r11, 357
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n441_statement_begin_β
.Lmain_α_945_0:         .quad            .Lmain_α_945_0_s
.Lmain_α_945_0_s:       .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_integer_α:     sub              rsp, 16
                        mov              r11, 358
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_946_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n445_assign_var_α
n444_lit_integer_β:     mov              r11, 358
                        add              rsp, 16;                             jmp   n443_lit_string_β
.Lmain_α_946_0:         .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n445_assign_var_α:      sub              rsp, 16
                        mov              r11, 359
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lmain_α_948_0
                        test             rsi, rsi;                            je    .Lmain_α_948_0
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
                        cmp              al, 104;                             jne   .Lmain_α_948_238
                        add              rsp, 16;                             jmp   n444_lit_integer_β
.Lmain_α_948_238:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n446_statement_end_α
.Lmain_α_948_0:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_948_239
                        add              rsp, 16;                             jmp   n444_lit_integer_β
.Lmain_α_948_239:       mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lmain_α_948_240
                        add              rsp, 16;                             jmp   n444_lit_integer_β
.Lmain_α_948_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n446_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n446_statement_end_α:   mov              r11, 360
                        mov              r10, 43
                        add              rsp, 64;                             jmp   n447_statement_begin_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n447_statement_begin_α: mov              r11, 361
                        mov              r10, 44;                             jmp   n448_var_α
n447_statement_begin_β: mov              r11, 361;                            jmp   n453_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n448_var_α:             sub              rsp, 16
                        mov              r11, 362
                        mov              rax, qword ptr [r9 + 208]            # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n449_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_string_α:      sub              rsp, 16
                        mov              r11, 363
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_954_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n450_lit_integer_α
n449_lit_string_β:      mov              r11, 363
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n447_statement_begin_β
.Lmain_α_954_0:         .quad            .Lmain_α_954_0_s
.Lmain_α_954_0_s:       .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n450_lit_integer_α:     sub              rsp, 16
                        mov              r11, 364
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_955_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n451_assign_var_α
n450_lit_integer_β:     mov              r11, 364
                        add              rsp, 16;                             jmp   n449_lit_string_β
.Lmain_α_955_0:         .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n451_assign_var_α:      sub              rsp, 16
                        mov              r11, 365
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lmain_α_957_0
                        test             rsi, rsi;                            je    .Lmain_α_957_0
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
                        cmp              al, 104;                             jne   .Lmain_α_957_238
                        add              rsp, 16;                             jmp   n450_lit_integer_β
.Lmain_α_957_238:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n452_statement_end_α
.Lmain_α_957_0:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_957_239
                        add              rsp, 16;                             jmp   n450_lit_integer_β
.Lmain_α_957_239:       mov              rdi, rax
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
                        cmp              al, 104;                             jne   .Lmain_α_957_240
                        add              rsp, 16;                             jmp   n450_lit_integer_β
.Lmain_α_957_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n452_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n452_statement_end_α:   mov              r11, 366
                        mov              r10, 44
                        add              rsp, 64;                             jmp   n453_statement_begin_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
n453_statement_begin_α: mov              r11, 367
                        mov              r10, 45;                             jmp   n454_lit_name_α
n453_statement_begin_β: mov              r11, 367;                            jmp   n459_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_name_α:        sub              rsp, 16
                        mov              r11, 368
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_962_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n455_lit_integer_α
.Lmain_α_962_0:         .quad            .Lmain_α_962_0_s
.Lmain_α_962_0_s:       .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n455_lit_integer_α:     sub              rsp, 16
                        mov              r11, 369
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_963_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n456_lit_string_α
n455_lit_integer_β:     mov              r11, 369
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n453_statement_begin_β
.Lmain_α_963_0:         .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_string_α:      sub              rsp, 16
                        mov              r11, 370
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lmain_α_964_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n457_call_α
n456_lit_string_β:      mov              r11, 370
                        add              rsp, 16;                             jmp   n455_lit_integer_β
.Lmain_α_964_0:         .quad            .Lmain_α_964_0_s
.Lmain_α_964_0_s:       .string          "[-f0 -r4194304]"
#-----------------------------------------------------------------------------------------------------------------------
n457_call_α:            sub              rsp, 16
                        mov              r11, 371
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
.Lbynamefnzd371:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd371]
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
                        cmp              al, 104;                             jne   .Lmain_α_965_240
                        add              rsp, 16;                             jmp   n456_lit_string_β
.Lmain_α_965_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n458_statement_end_α
n457_call_β:            mov              r11, 371
                        add              rsp, 16;                             jmp   n456_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n458_statement_end_α:   mov              r11, 372
                        mov              r10, 45
                        add              rsp, 64;                             jmp   n459_statement_begin_α
#=======================================================================================================================
#         src = INPUT
#-----------------------------------------------------------------------------------------------------------------------
n459_statement_begin_α: mov              r11, 373
                        mov              r10, 46;                             jmp   n460_var_α
n459_statement_begin_β: mov              r11, 373;                            jmp   n463_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n460_var_α:             sub              rsp, 16
                        mov              r11, 374
                        mov              rdi, qword ptr [rip + .Lmain_α_970_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_970_240
                        add              rsp, 16;                             jmp   n459_statement_begin_β
.Lmain_α_970_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n461_assign_α
.Lmain_α_970_0:         .quad            .Lmain_α_970_0_s
.Lmain_α_970_0_s:       .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n461_assign_α:          mov              r11, 375
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # src
                        mov              qword ptr [r9 + 408], rdx;           jmp   n462_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n462_statement_end_α:   mov              r11, 376
                        mov              r10, 46
                        add              rsp, 16;                             jmp   n463_statement_begin_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n463_statement_begin_α: mov              r11, 377
                        mov              r10, 47;                             jmp   n464_call_α
n463_statement_begin_β: mov              r11, 377;                            jmp   n467_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n464_call_α:            sub              rsp, 16
                        mov              r11, 378
                        .section         .rodata
.Lrkfnzd977:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd977]
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
                        cmp              al, 104;                             jne   .Lmain_α_976_240
                        add              rsp, 16;                             jmp   n463_statement_begin_β
.Lmain_α_976_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n465_assign_α
n464_call_β:            mov              r11, 378
                        add              rsp, 16;                             jmp   n463_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n465_assign_α:          mov              r11, 379
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # t0
                        mov              qword ptr [r9 + 424], rdx;           jmp   n466_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n466_statement_end_α:   mov              r11, 380
                        mov              r10, 47
                        add              rsp, 16;                             jmp   n467_statement_begin_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n467_statement_begin_α: mov              r11, 381
                        mov              r10, 48;                             jmp   n468_var_α
n467_statement_begin_β: mov              r11, 381;                            jmp   n489_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n468_var_α:             sub              rsp, 16
                        mov              r11, 382
                        mov              rax, qword ptr [r9 + 400]            # src
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n469_var_α
#-----------------------------------------------------------------------------------------------------------------------
n469_var_α:             sub              rsp, 16
                        mov              r11, 383
                        mov              rax, qword ptr [r9 + 368]            # C
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n470_assign_α
n469_var_β:             mov              r11, 383
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n489_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n470_assign_α:          mov              r11, 384
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_985_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n471_match_begin_α
n470_assign_β:          mov              r11, 384;                            jmp   n469_var_β
.Lmain_α_985_0:         .quad            .Lmain_α_985_0_s
.Lmain_α_985_0_s:       .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n471_match_begin_α:     mov              r11, 385
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
.Lmain_α_987_0:         mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmain_α_987_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n472_match_defer_α
n471_match_begin_β:     mov              r11, 385
.Lmain_α_987_13:        lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmain_β_987_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmain_β_987_1
                                                                              jmp   .Lmain_α_987_0
.Lmain_β_987_1:
n471_match_begin_af:    mov              r11, 385
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
                        pop              rbp;                                 jmp   n470_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n472_match_defer_α:     mov              r11, 386
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S22]
                        cmp              rax, rdx;                            jne   .Lmain_α_988_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lmain_α_988_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmain_α_988_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmain_α_988_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmain_α_988_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmain_α_988_0
.Lmain_α_988_31:        mov              edx, -1;                             jmp   .Lmain_α_988_0
.Lmain_α_988_30:        lea              rsi, [rip + g_sno_defer_cells+16384]
                        lea              rdi, [rip + .S22]
                        mov              rcx, qword ptr [rsi + 0]
                        cmp              rcx, rdi;                            jne   .Lmain_α_988_22
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            je    .Lmain_α_988_22
                        mov              rax, qword ptr [rcx + 0]
                        cmp              al, 8;                               jne   .Lmain_α_988_22
                        mov              rdx, qword ptr [rcx + 8]
                        test             rdx, rdx;                            je    .Lmain_α_988_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmain_α_988_23
.Lmain_α_988_22:        push             r14
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
.Lmain_α_988_23:        test             rax, rax;                            jz    .Lmain_α_988_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmain_α_988_5]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_988_4]
                        push             rcx;                                 jmp   rax
.Lmain_α_988_4:                                                               jmp   n473_match_end_α
.Lmain_α_988_5:                                                               jmp   n471_match_begin_β
.Lmain_α_988_0:         mov              eax, edx
                        test             eax, eax;                            js    n471_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmain_α_988_6]
                        push             rcx
                        push             rax;                                 jmp   n473_match_end_α
.Lmain_α_988_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n471_match_begin_β
n472_match_defer_β:     mov              r11, 386
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmain_β_988_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmain_β_988_12
                                                                              jmp   rax
.Lmain_β_988_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n473_match_end_α:       mov              r11, 387
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
                        test             rax, rax;                            je    .Lmain_α_990_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n471_match_begin_af
.Lmain_α_990_13:        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n474_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n474_statement_end_α:   mov              r11, 388
                        mov              r10, 48
                        add              rsp, 32;                             jmp   n475_statement_begin_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n475_statement_begin_α: mov              r11, 389
                        mov              r10, 49;                             jmp   n476_call_α
n475_statement_begin_β: mov              r11, 389;                            jmp   n479_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n476_call_α:            sub              rsp, 16
                        mov              r11, 390
                        .section         .rodata
.Lrkfnzd996:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd996]
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
                        cmp              al, 104;                             jne   .Lmain_α_995_240
                        add              rsp, 16;                             jmp   n475_statement_begin_β
.Lmain_α_995_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n477_assign_α
n476_call_β:            mov              r11, 390
                        add              rsp, 16;                             jmp   n475_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n477_assign_α:          mov              r11, 391
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # t1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n478_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n478_statement_end_α:   mov              r11, 392
                        mov              r10, 49
                        add              rsp, 16;                             jmp   n479_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n479_statement_begin_α: mov              r11, 393
                        mov              r10, 50;                             jmp   n480_lit_string_α
n479_statement_begin_β: mov              r11, 393;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:      sub              rsp, 16
                        mov              r11, 394
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lmain_α_1002_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n481_var_α
.Lmain_α_1002_0:        .quad            .Lmain_α_1002_0_s
.Lmain_α_1002_0_s:      .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n481_var_α:             sub              rsp, 16
                        mov              r11, 395
                        mov              rax, qword ptr [r9 + 432]            # t1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n482_var_α
n481_var_β:             mov              r11, 395
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n479_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n482_var_α:             sub              rsp, 16
                        mov              r11, 396
                        mov              rax, qword ptr [r9 + 416]            # t0
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n483_binop_α
n482_var_β:             mov              r11, 396
                        add              rsp, 16;                             jmp   n481_var_β
#-----------------------------------------------------------------------------------------------------------------------
n483_binop_α:           sub              rsp, 16
                        mov              r11, 397
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lmain_α_1005_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmain_α_1005_7
.Lmain_α_1005_2:        and              edx, 1;                              jz    .Lmain_α_1005_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lmain_α_1005_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_1005_4
.Lmain_α_1005_3:        movq             xmm0, rsi
.Lmain_α_1005_4:        cmp              cl, 5;                               je    .Lmain_α_1005_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lmain_α_1005_6
.Lmain_α_1005_5:        movq             xmm1, rdi
.Lmain_α_1005_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lmain_α_1005_7:                                                              jmp   n484_lit_integer_α
.Lmain_α_1005_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lmain_α_1005_240
                        add              rsp, 16;                             jmp   n482_var_β
.Lmain_α_1005_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n484_lit_integer_α
n483_binop_β:           mov              r11, 397
                        add              rsp, 16;                             jmp   n482_var_β
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_integer_α:     sub              rsp, 16
                        mov              r11, 398
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_1006_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n485_binop_α
n484_lit_integer_β:     mov              r11, 398
                        add              rsp, 16;                             jmp   n483_binop_β
.Lmain_α_1006_0:        .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n485_binop_α:           sub              rsp, 16
                        mov              r11, 399
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
                        cmp              al, 104;                             jne   .Lmain_α_1007_240
                        add              rsp, 16;                             jmp   n484_lit_integer_β
.Lmain_α_1007_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n486_binop_α
n485_binop_β:           mov              r11, 399
                        add              rsp, 16;                             jmp   n484_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n486_binop_α:           sub              rsp, 16
                        mov              r11, 400
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n487_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n487_assign_α:          mov              r11, 401
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_1009_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n488_statement_end_α
.Lmain_α_1009_0:        .quad            .Lmain_α_1009_0_s
.Lmain_α_1009_0_s:      .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n488_statement_end_α:   mov              r11, 402
                        mov              r10, 50
                        add              rsp, 112;                            jmp   main_γ
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n489_statement_begin_α: mov              r11, 403
                        mov              r10, 51;                             jmp   n490_call_α
n489_statement_begin_β: mov              r11, 403;                            jmp   n493_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n490_call_α:            sub              rsp, 16
                        mov              r11, 404
                        .section         .rodata
.Lrkfnzd1015:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1015]
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
                        cmp              al, 104;                             jne   .Lmain_α_1014_240
                        add              rsp, 16;                             jmp   n489_statement_begin_β
.Lmain_α_1014_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n491_assign_α
n490_call_β:            mov              r11, 404
                        add              rsp, 16;                             jmp   n489_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n491_assign_α:          mov              r11, 405
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # t1
                        mov              qword ptr [r9 + 440], rdx;           jmp   n492_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n492_statement_end_α:   mov              r11, 406
                        mov              r10, 51
                        add              rsp, 16;                             jmp   n493_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n493_statement_begin_α: mov              r11, 407
                        mov              r10, 52;                             jmp   n494_lit_string_α
n493_statement_begin_β: mov              r11, 407;                            jmp   n497_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_string_α:      sub              rsp, 16
                        mov              r11, 408
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lmain_α_1021_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n495_assign_α
.Lmain_α_1021_0:        .quad            .Lmain_α_1021_0_s
.Lmain_α_1021_0_s:      .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n495_assign_α:          mov              r11, 409
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_1022_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n496_statement_end_α
.Lmain_α_1022_0:        .quad            .Lmain_α_1022_0_s
.Lmain_α_1022_0_s:      .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n496_statement_end_α:   mov              r11, 410
                        mov              r10, 52
                        add              rsp, 16;                             jmp   n497_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000
#-----------------------------------------------------------------------------------------------------------------------
n497_statement_begin_α: mov              r11, 411
                        mov              r10, 53;                             jmp   n498_lit_string_α
n497_statement_begin_β: mov              r11, 411;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:      sub              rsp, 16
                        mov              r11, 412
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lmain_α_1027_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n499_var_α
.Lmain_α_1027_0:        .quad            .Lmain_α_1027_0_s
.Lmain_α_1027_0_s:      .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n499_var_α:             sub              rsp, 16
                        mov              r11, 413
                        mov              rax, qword ptr [r9 + 432]            # t1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n500_var_α
n499_var_β:             mov              r11, 413
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n497_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n500_var_α:             sub              rsp, 16
                        mov              r11, 414
                        mov              rax, qword ptr [r9 + 416]            # t0
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n501_binop_α
n500_var_β:             mov              r11, 414
                        add              rsp, 16;                             jmp   n499_var_β
#-----------------------------------------------------------------------------------------------------------------------
n501_binop_α:           sub              rsp, 16
                        mov              r11, 415
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lmain_α_1030_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmain_α_1030_7
.Lmain_α_1030_2:        and              edx, 1;                              jz    .Lmain_α_1030_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lmain_α_1030_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_1030_4
.Lmain_α_1030_3:        movq             xmm0, rsi
.Lmain_α_1030_4:        cmp              cl, 5;                               je    .Lmain_α_1030_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lmain_α_1030_6
.Lmain_α_1030_5:        movq             xmm1, rdi
.Lmain_α_1030_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lmain_α_1030_7:                                                              jmp   n502_lit_integer_α
.Lmain_α_1030_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lmain_α_1030_240
                        add              rsp, 16;                             jmp   n500_var_β
.Lmain_α_1030_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n502_lit_integer_α
n501_binop_β:           mov              r11, 415
                        add              rsp, 16;                             jmp   n500_var_β
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_integer_α:     sub              rsp, 16
                        mov              r11, 416
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_1031_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n503_binop_α
n502_lit_integer_β:     mov              r11, 416
                        add              rsp, 16;                             jmp   n501_binop_β
.Lmain_α_1031_0:        .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n503_binop_α:           sub              rsp, 16
                        mov              r11, 417
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
                        cmp              al, 104;                             jne   .Lmain_α_1032_240
                        add              rsp, 16;                             jmp   n502_lit_integer_β
.Lmain_α_1032_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n504_binop_α
n503_binop_β:           mov              r11, 417
                        add              rsp, 16;                             jmp   n502_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n504_binop_α:           sub              rsp, 16
                        mov              r11, 418
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n505_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n505_assign_α:          mov              r11, 419
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_1034_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n506_statement_end_α
.Lmain_α_1034_0:        .quad            .Lmain_α_1034_0_s
.Lmain_α_1034_0_s:      .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n506_statement_end_α:   mov              r11, 420
                        mov              r10, 53
                        add              rsp, 112;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 421
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
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 422
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
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 423
                        push             rax
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 1
                        pop              rax;                                 jmp   RETURN
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
